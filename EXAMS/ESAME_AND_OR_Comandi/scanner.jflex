import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

nl = \n|\r|\r\n
ws = [ \t]


separator = "$$$"

comment2 = "{++" ~ "++}"

value1 = "?"[A-Z]{6}([A-Z][A-Z])*
value2 = ("-"1[0-2][0-7]|"-"[1-7][0-7]|"-"[1-7]|0|[1-7]|[1-7][1-7]|[1-2][1-7][1-7]|3[0-1][0-7]|32[0-3])(("xx"|"yy"|"zz"){4}("xx"|"yy"|"zz")*)?
tok1 = {value1}{value2}

email = ([a-zA-Z0-9\_\.]+"@"[a-zA-Z0-9]+"."("it"|"org"|"com"))((("!"|"/")[a-zA-Z0-9\_\.]+"@"[a-zA-Z0-9]+"."("it"|"org"|"com"|"net"))|(("!"|"/")[a-zA-Z0-9\_\.]+"@"[a-zA-Z0-9]+"."("it"|"org"|"com"|"net")){11}|(("!"|"/")[a-zA-Z0-9\_\.]+"@"[a-zA-Z0-9]+"."("it"|"org"|"com"|"net")){14})
tok2 = {email}

tok3 = "tk3"

var = [_a-zA-Z][_a-zA-Z0-9]*



string = \" ~ \"


%%

";"                     {return new Symbol(sym.SC);}
","                     {return new Symbol(sym.CM);}
"("                     {return new Symbol(sym.RBO);}
")"                     {return new Symbol(sym.RBC);}
"["                     {return new Symbol(sym.SBO);}
"]"                     {return new Symbol(sym.SBC);}
"CMP"                     {return new Symbol(sym.CMP);}
"AND"                     {return new Symbol(sym.AND, new String(yytext()));}
"OR"                     {return new Symbol(sym.OR, new String(yytext()));}
"NOT"                     {return new Symbol(sym.NOT, new String(yytext()));}
"T"                     {return new Symbol(sym.TRUE, new String(yytext()));}
"F"                     {return new Symbol(sym.FALSE, new String(yytext()));}
"fz_and"                {return new Symbol(sym.FZ_AND);}
"WITH"                  {return new Symbol(sym.WITH);}
"print"                 {return new Symbol(sym.PRINT);}
"="                     {return new Symbol(sym.EQ);}

{tok3}                  {return new Symbol(sym.TOK3);}

{separator}             {return new Symbol(sym.SEP);}

{string}                  {return new Symbol(sym.STRING, new String(yytext()));}

{tok1}                  {return new Symbol(sym.TOK1);}
{tok2}                  {return new Symbol(sym.TOK2);}
{var}                  {return new Symbol(sym.VAR, new String(yytext()));}

                 

{comment2}              {;}
{nl}                    {;}
{ws}                    {;}

. {
  System.err.println("Unrecognized input: \"" + yytext() + "\" at line " + (yyline+1) + ", column " + (yycolumn+1));
  throw new Error("Error: could not match input");
}