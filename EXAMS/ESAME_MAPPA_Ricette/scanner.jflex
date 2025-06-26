import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

nl = \n|\r|\r\n
ws = [ \t]


separator = "$$$$"("$$")*

comment2 = "(*-" ~ "-*)"

value1 = ("%*"|"*%"|"%%"){6,17}
value2 = ([0-9a-fA-F]{2}|[0-9a-fA-F]{3}|[0-9a-fA-F]{6})"+"([0-9a-fA-F]{2}|[0-9a-fA-F]{3}|[0-9a-fA-F]{6})"+"([0-9a-fA-F]{2}|[0-9a-fA-F]{3}|[0-9a-fA-F]{6})("+"([0-9a-fA-F]{2}|[0-9a-fA-F]{3}|[0-9a-fA-F]{6})"+"([0-9a-fA-F]{2}|[0-9a-fA-F]{3}|[0-9a-fA-F]{6})"+"([0-9a-fA-F]{2}|[0-9a-fA-F]{3}|[0-9a-fA-F]{6}))?
tok1 = {value1}{value2}{ws}*";"

date = ((2022"/"11"/"(1[5-9]|2[0-9]|30))|
(2022"/"12"/"(0[1-9]|1[0-2]|1[4-9]|2[0-9]|3[0-1]))|
(2023"/"01"/"(0[1-9]|1[0-9]|2[0-9]|3[0-1]))|
(2023"/"02"/"(0[1-9]|1[0-3]|1[5-9]|2[0-8]))|
(2023"/"03"/"(0[1-9]|1[0-9]|2[0-9]|30)))
("$"|"%")
((2022"/"11"/"(1[5-9]|2[0-9]|30))|
(2022"/"12"/"(0[1-9]|1[0-2]|1[4-9]|2[0-9]|3[0-1]))|
(2023"/"01"/"(0[1-9]|1[0-9]|2[0-9]|3[0-1]))|
(2023"/"02"/"(0[1-9]|1[0-3]|1[5-9]|2[0-8]))|
(2023"/"03"/"(0[1-9]|1[0-9]|2[0-9]|30)))
("$"|"%")
((2022"/"11"/"(1[5-9]|2[0-9]|30))|
(2022"/"12"/"(0[1-9]|1[0-2]|1[4-9]|2[0-9]|3[0-1]))|
(2023"/"01"/"(0[1-9]|1[0-9]|2[0-9]|3[0-1]))|
(2023"/"02"/"(0[1-9]|1[0-3]|1[5-9]|2[0-8]))|
(2023"/"03"/"(0[1-9]|1[0-9]|2[0-9]|30)))
binary = (1011)|(11[0-1][0-1])|(10[0-1][0-1][0-1])
tok2 = {date}("-"{binary})?{ws}*";"



string = \" ~ \"
kgprice = [0-9]+\.([0-9]{2})
euroKg = "EURO"\/"kg"
number =  ([1-9][0-9]*|0)
weight = [0-9]+\.([0-9])
kg = "kg"


%%

";"                     {return new Symbol(sym.SC);}
":"                     {return new Symbol(sym.CO);}
","                     {return new Symbol(sym.CM);}
"["                     {return new Symbol(sym.SQO);}
"]"                     {return new Symbol(sym.SQC);}
"."                     {return new Symbol(sym.DOT);}

{euroKg}                {return new Symbol(sym.EUROKG);}
{kg}                {return new Symbol(sym.KG);}
{separator}             {return new Symbol(sym.SEP);}

{string}                  {return new Symbol(sym.STRING, new String(yytext()));}
{weight}               {return new Symbol(sym.WEIGHT, new Double(yytext()));}
{kgprice}               {return new Symbol(sym.KGPRICE, new Double(yytext()));}
{number}               {return new Symbol(sym.NUMBER, new Integer(yytext()));}

{tok1}                  {return new Symbol(sym.TOK1);}
{tok2}                  {return new Symbol(sym.TOK2);}

                 

{comment2}              {;}
{nl}                    {;}
{ws}                    {;}

. {
  System.err.println("Unrecognized input: \"" + yytext() + "\" at line " + (yyline+1) + ", column " + (yycolumn+1));
  throw new Error("Error: could not match input");
}