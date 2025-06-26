import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

nl = \n|\r|\r\n
ws = [ \t]


separator = "***"

comment1 = "//".*
comment2 = "{{" ~ "}}"

hex = ([2-9]|[a-fA-F])([7-9]|[a-fA-F])([a-fA-F])|1([0-2])([0-9][a-bA-B])([0-3])
final_token = ("****"("**")*)|("YX"("XX")*"Y")
tok1 = {hex}"*"([a-zA-Z]{5}([a-zA-Z][a-zA-Z])*)"-"{final_token}?";"

ip_num = (2(([0-4][0-9])|(5[0-5])))|(1[0-9][0-9])|([1-9][0-9])|([0-9])
ip = {ip_num}"."{ip_num}"."{ip_num}"."{ip_num}

date = ((0[5-9])|(1[0-9])|(2[0-9])|(3[0-1])\/10\/2023)|
        ((0[1-9])|(1[0-9])|(2[0-9])|(3[0])\/11\/2023)|
        ((0[1-9])|(1[0-9])|(2[0-9])|(3[0-1])\/12\/2023)|
        ((0[1-9])|(1[0-9])|(2[0-9])|(3[0-1])\/01\/2024)|
        ((0[1-9])|(1[0-9])|(2[0-9])\/02\/2024)|
        ((0[1-3])\/03\/2024)

tok2 = {ip}"-"{date}";"

number = ([1-9][0-9]{3})|([1-9][0-9]{5})

tok3 = {number}{number}{number}({number}{number})?";"


name = \" ~ \"
integer = ([1-9][0-9]*|0)
prod_cost = [0-9]+\.([0-9]+)
euro = "euro"


%%

"*"                     {return new Symbol(sym.STAR);}
"-"                     {return new Symbol(sym.MINUS);}
";"                     {return new Symbol(sym.SC);}
","                     {return new Symbol(sym.CM);}
"%"                     {return new Symbol(sym.PERC);}

{euro}                  {return new Symbol(sym.EURO, new String(yytext()));}

{name}                  {return new Symbol(sym.NAME, new String(yytext()));}
{integer}               {return new Symbol(sym.INT, new Integer(yytext()));}
{prod_cost}             {return new Symbol(sym.COST, new Double(yytext()));}

{separator}             {return new Symbol(sym.SEP);}

{tok1}                  {return new Symbol(sym.TOK1);}
{tok2}                  {return new Symbol(sym.TOK2);}
{tok3}                  {return new Symbol(sym.TOK3);}

                 

{comment1}              {;}
{comment2}              {;}
{nl}                    {;}
{ws}                    {;}