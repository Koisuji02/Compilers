
%%

%standalone
%class Calc
%init{
    System.out.println("<HTML>");
    System.out.println("<BODY bgcolor = \"#FFFFFF\">");
    System.out.println("<H2>main.c</H2>");
    System.out.println("<CODE>");
%init}

%eof{
    System.out.println("</CODE></BODY></HTML>");
%eof}

nl		=  \n|\r|\r\n
letter  = [a-zA-Z]
number  = [0-9]*
other   = [^a-zA-Z0-9\*/]
type    = "int"|"float"|"char"|"double"
header  = "#include <"{letter}*".h>"
construct = "if"|"else"|"return"|"for"|"while"|"break"|"continue"|"switch"
comment = "/\*"({letter}|{number}|{other})*"*/"
bracket = [\{\}]

%%

{number} {
    System.out.println("<FONT COLOR=\"#FF0000\">" + yytext() + "</FONT>");
}

{type} {
    System.out.println("<FONT COLOR=\"#0000FF\">" + yytext() + "</FONT>");
}

{header} {
    System.out.println("<FONT COLOR=\"#00FF00\">" + yytext() + "</FONT>");
}

{construct} {
    System.out.println("<FONT COLOR=\"#0000FF\">" + yytext() + "</FONT>");
}

{comment} {
    System.out.println("<FONT COLOR=\"#C0C0C0\">" + yytext() + "</FONT>");
}

{bracket} {
    System.out.println("<BR>" + yytext() + "<BR>");
}

{nl}|" "|\t 	{;}

.		{System.out.print(yytext());}