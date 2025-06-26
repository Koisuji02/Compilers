import java_cup.runtime.*;

%%

%unicode
%cup
%line
%column

%{
    private Symbol my_symbol(int type){
        System.out.println("SYMBOL: "+yytext());
        return new Symbol(type, yyline, yycolumn);    
    }
    private Symbol my_symbol(int type, Object value){       //Semantic analysis
        System.out.println("SYMBOL: "+yytext());
        return new Symbol(type, yyline, yycolumn, value);    
    }
%}

%init{
    //
%init}

%eof{
    //
%eof}

comment = "/*"([^*] | (\*+[^*/]))*\*+"/"

square_open             = \[
square_close            = \]
round_open              = \(
round_close             = \)
brace_open              = \{
brace_close             = \}

plus                    = \+
minus                   = \-
star                    = \*
dash                    = \/
equal                   = \=
minor                   = \<
major                   = \>

semicolon               = \;
dot                     = \.
colon                   = \,

and                     = \&\&
or                      = \|\|
not                     = \!

eq                      = \=\=
leq                     = \<\=
geq                     = \>\=
neq                     = \!\=

int_type                = "int"
double_type             = "double"
if                      = "if"
else                    = "else"
while                   = "while"
print                   = "print"

int                     = [0-9]+
double                  = {int}\.{int}

id                      = [_a-zA-Z][_a-zA-Z0-9]*

discard = ("#include"[.]*[\n\r]) | [\t\n\r] | (" ")

%%

{comment} { /* Ignora i commenti multilinea */ }
{square_open} {return my_symbol(sym.SQUARE_OPEN);}
{square_close} {return my_symbol(sym.SQUARE_CLOSE);}
{round_open} {return my_symbol(sym.ROUND_OPEN);}
{round_close} {return my_symbol(sym.ROUND_CLOSE);}
{brace_open} {return my_symbol(sym.BRACE_OPEN);}
{brace_close} {return my_symbol(sym.BRACE_CLOSE);}
{eq} {return my_symbol(sym.EQ);}
{leq} {return my_symbol(sym.LEQ);}
{geq} {return my_symbol(sym.GEQ);}
{neq} {return my_symbol(sym.NEQ);}
{plus} {return my_symbol(sym.PLUS);}
{minus} {return my_symbol(sym.MINUS);}
{star} {return my_symbol(sym.STAR);}
{dash} {return my_symbol(sym.DASH);}
{equal} {return my_symbol(sym.EQUAL);}
{minor} {return my_symbol(sym.MINOR);}
{major} {return my_symbol(sym.MAJOR);}
{semicolon} {return my_symbol(sym.SEMICOLON);}
{dot} {return my_symbol(sym.DOT);}
{colon} {return my_symbol(sym.COMMA);}
{and} {return my_symbol(sym.AND);}
{or} {return my_symbol(sym.OR);}
{not} {return my_symbol(sym.NOT);}
{int_type} {return my_symbol(sym.INT_TYPE);}
{double_type} {return my_symbol(sym.DOUBLE_TYPE);}
{if} {return my_symbol(sym.IF);}
{else} {return my_symbol(sym.ELSE);}
{while} {return my_symbol(sym.WHILE);}
{print} {return my_symbol(sym.PRINT);}
{int} {return my_symbol(sym.INT);}
{double} {return my_symbol(sym.DOUBLE);}
{id} {return my_symbol(sym.ID);}
{discard}   {;}
.           {;}
