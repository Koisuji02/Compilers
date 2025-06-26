import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

nl = \n|\r|\r\n
ws = [ \t]


separator = "####"

comment2 = "(*" ~ "*)"

value1 = "X-"(03":"51":"4[7-9]|03":"51":"5[0-9]|03":"5[2-9]":"[0-5][0-9]|0[4-9]":"[0-5][0-9]":"[0-5][0-9]|1[0-9]":"[0-5][0-9]":"[0-5][0-9]|2[0-2]":"[0-5][0-9]":"[0-5][0-9]|23":"[0-3][0-9]":"[0-5][0-9]|23":"4[0-4]":"[0-5][0-9]|23":"45":"[0-2][0-9]|23":"45":"3[0-4])(("aa"|"ab"|"ba"|"bb"){5}(("aa"|"ab"|"ba"|"bb"){2})*)?
tok1 = {value1}{ws}*";"


value2 = "Y-"(1[0-1]1|110|1[0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1][0-1]|100[0-1][0-1][0-1][0-1]|101000[0-1])("-"(1[0-1]1|110|1[0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1][0-1]|100[0-1][0-1][0-1][0-1]|101000[0-1])){3}(("-"(1[0-1]1|110|1[0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1][0-1]|100[0-1][0-1][0-1][0-1]|101000[0-1])){119}(("-"(1[0-1]1|110|1[0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1]|1[0-1][0-1][0-1][0-1][0-1]|100[0-1][0-1][0-1][0-1]|101000[0-1])){134})?)?
tok2 = {value2}{ws}*";"



string = \" ~ \"
number = [0-9]+\.([0-9]{2})
euroKg = "euro"\/"kg"
quantity =  ([1-9][0-9]*|0)


%%

";"                     {return new Symbol(sym.SC);}
":"                     {return new Symbol(sym.CO);}
","                     {return new Symbol(sym.CM);}
"{"                     {return new Symbol(sym.GBO);}
"}"                     {return new Symbol(sym.GBC);}
"."                     {return new Symbol(sym.DOT);}
"euro"                  {return new Symbol(sym.EURO);}
"kg"                  {return new Symbol(sym.KG);}


{euroKg}                {return new Symbol(sym.EUROKG);}
{separator}             {return new Symbol(sym.SEP);}

{string}                  {return new Symbol(sym.STRING, new String(yytext()));}
{number}               {return new Symbol(sym.NUMBER, new Double(yytext()));}
{quantity}               {return new Symbol(sym.QTY, new Integer(yytext()));}

{tok1}                  {return new Symbol(sym.TOK1);}
{tok2}                  {return new Symbol(sym.TOK2);}

                 

{comment2}              {;}
{nl}                    {;}
{ws}                    {;}

. {
  System.err.println("Unrecognized input: \"" + yytext() + "\" at line " + (yyline+1) + ", column " + (yycolumn+1));
  throw new Error("Error: could not match input");
}