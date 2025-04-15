import java_cup.runtime.*;

%%

%unicode
%cup
%debug

%init{
    //
%init}

%eof{
    //
%eof}

nl = [\r\n]+
space = [ \t]+
SC = ";"
CO = ","
DO = ":"
ARROW = "->"
separator = "%%"
int = [0-9]
char = [a-zA-Z]
hex = [0-9a-fA-F]
invalid = "LI BO"
num_pages = {int}+

user_name = \"[^\"]+\"{space}*{DO}{space}*
writer_name = \"[^\"]+\"{space}*{ARROW}{space}*

ISBN = {int}{2}\-{int}{2}\-{hex}{5}\-({int}|{char})
book = \"[^\"]+\"
collocation = ("LI"|"LS"){space}+("AV"|"BO"|"SO"){space}+{int}*{space}*{char}?
date = {int}{2}\/{int}{2}\/{int}{4}
book_entry = {ISBN}{DO}{book}{DO}{num_pages}{DO}?{collocation}?
loan_entry = {date}{space}+{ISBN}

%%

{separator}    { return new Symbol(sym.SEP); }
{writer_name}  { return new Symbol(sym.WRITER); }
{loan_entry}   { return new Symbol(sym.LOAN); }
{user_name}    { return new Symbol(sym.USER); }
{book_entry}   { return new Symbol(sym.BOOK); }
{CO}           { return new Symbol(sym.CO); }
{SC}           { return new Symbol(sym.SC); }
{invalid}      { return new Symbol(sym.INVALID); }
{space}        {/* ignora */}
{nl}           {/* ignora */}
. {
    System.err.println("Errore: carattere non riconosciuto -> '" + yytext() + "'");
    throw new Error("Errore: carattere non riconosciuto -> '" + yytext() + "'");
}