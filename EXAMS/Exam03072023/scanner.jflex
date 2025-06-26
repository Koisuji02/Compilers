import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

nl = \n|\r|\r\n
ws = [ \t]


separator = "$$$"("$$")*

comment2 = "<*" ~ "*>"

value1 = ("!!!!"("!!")*)("-"1[02468]|"-"[2468]|[02468]|[1-9][02468]|1[0-9][02468]|2[0-7][02468]|28[0246])
value2 = "?????"("??")*
tok1 = ({value1}|{value2})";"

date1 = ((0[2-9]|1[0-9]|2[0-9]|3[0-1])"/"07"/"2023)|
((0[1-9]|1[0-9]|2[0-9]|3[0-1])"/"08"/"2023)|
((0[1-9]|1[0-9]|2[0-9]|30)"/"09"/"2023)|
((0[1-6])"/"10"/"2023)
date2 = (2023"/"07"/"(0[2-9]|1[0-9]|2[0-9]|3[0-1]))|
(2023"/"08"/"(0[1-9]|1[0-9]|2[0-9]|3[0-1]))|
(2023"/"09"/"(0[1-9]|1[0-9]|2[0-9]|30))|
(2023"/"10"/"(0[1-6]))
tok2 = ({date1}|{date2})";"

hour = (07":"37(":"(19|[2-5][0-9]))?)|(07":"3[7-9](":"([0-5][0-9]))?)|(07":"[4-5][0-9](":"([0-5][0-9]))?)|(0[8-9]":"[0-5][0-9](":"([0-5][0-9]))?)|(1[0-9]":"[0-5][0-9](":"([0-5][0-9]))?)|(2[0-1]":"[0-5][0-9](":"([0-5][0-9]))?)|(22":"[0-3][0-8](":"([0-5][0-9]))?)|(22":"39(":"([0-1][0-9]))?)|(22":"39(":"(2[0-3]))?)
tok3 = {hour}";"


house = "house"
start = "start"
end = "end"
if = "if"
then = "then"
fi = "fi"
and = "and"
or = "or"
not = "not"
eq = "=="
true = "true"
false = "false"
print = "print"
string = \" ~ \"
size = ([1-9][0-9]*|0)


%%

";"                     {return new Symbol(sym.SC);}
","                     {return new Symbol(sym.CM);}
"("                     {return new Symbol(sym.RO);}
")"                     {return new Symbol(sym.RC);}
"."                     {return new Symbol(sym.DOT);}


{house}                  {return new Symbol(sym.HOUSE);}
{start}                  {return new Symbol(sym.START);}
{end}                  {return new Symbol(sym.END);}
{if}                  {return new Symbol(sym.IF);}
{then}                  {return new Symbol(sym.THEN);}
{fi}                  {return new Symbol(sym.FI);}
{and}                  {return new Symbol(sym.AND, new String(yytext()));}
{or}                  {return new Symbol(sym.OR, new String(yytext()));}
{not}                  {return new Symbol(sym.NOT);}
{eq}                  {return new Symbol(sym.EQ);}
{true}                  {return new Symbol(sym.TRUE);}
{false}                  {return new Symbol(sym.FALSE);}
{print}                  {return new Symbol(sym.PRINT);}

{separator}             {return new Symbol(sym.SEP);}

{string}                  {return new Symbol(sym.STRING, new String(yytext()));}
{size}               {return new Symbol(sym.SIZE, new Integer(yytext()));}

{tok1}                  {return new Symbol(sym.TOK1);}
{tok2}                  {return new Symbol(sym.TOK2);}
{tok3}                  {return new Symbol(sym.TOK3);}

                 

{comment2}              {;}
{nl}                    {;}
{ws}                    {;}