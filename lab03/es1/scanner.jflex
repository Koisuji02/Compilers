import java_cup.runtime.*;

%%

%unicode
%cup

%init{
    //
%init}

%eof{
    //
%eof}

comment = "/*"([^*] | (\*+[^*/]))*\*+"/"

square_open             = [\[]
square_close            = [\]]
round_open              = [\(]
round_close             = [\)]
brace_open              = [\{]
brace_close             = [\}]

plus                    = [\+]
minus                   = [\-]
star                    = [\*]
dash                    = [\/]
equal                   = [\=]
minor                   = [\<]
major                   = [\>]

semicolon               = [\;]
dot                     = [\.]
colon                   = [\,]

and                     = [\&\&]
or                      = [\|\|]
not                     = [\!]

eq                      = "=="
leq                     = "<="
geq                     = ">="
neq                     = "!="

int_type                = "int"
double_type             = "double"
if                      = "if"
else                    = "else"
while                   = "while"
print                   = "print"

int                     = [0-9]+
double                  = [0-9]+(\.)[0-9]+

id                      = [_a-zA-Z][_a-zA-Z0-9]*

discard = ("#include"[.]*[\n\r]) | [\t\n\r] | (" ")

%%

{comment} { /* Ignora i commenti multilinea */ }

{square_open} {
    System.out.print("SO ");
    return new Symbol(sym.SQUARE_OPEN);
}

{square_close} {
    System.out.print("SC ");
    return new Symbol(sym.SQUARE_CLOSE);
}

{round_open} {
    System.out.print("RO ");
    return new Symbol(sym.ROUND_OPEN);
}

{round_close} {
    System.out.print("RC ");
    return new Symbol(sym.ROUND_CLOSE);
}

{brace_open} {
    System.out.print("BO ");
    return new Symbol(sym.BRACE_OPEN);
}

{brace_close} {
    System.out.print("BC ");
    return new Symbol(sym.BRACE_CLOSE);
}

{eq} {
    System.out.print("EQ ");
    return new Symbol(sym.EQ);
}

{leq} {
    System.out.print("LEQ ");
    return new Symbol(sym.LEQ);
}

{geq} {
    System.out.print("GEQ ");
    return new Symbol(sym.GEQ);
}

{neq} {
    System.out.print("NEQ ");
    return new Symbol(sym.NEQ);
}

{plus} {
    System.out.print("PLUS ");
    return new Symbol(sym.PLUS);
}

{minus} {
    System.out.print("MINUS ");
    return new Symbol(sym.MINUS);
}

{star} {
    System.out.print("STAR ");
    return new Symbol(sym.STAR);
}

{dash} {
    System.out.print("DASH ");
    return new Symbol(sym.DASH);
}

{equal} {
    System.out.print("EQ ");
    return new Symbol(sym.EQUAL);
}

{minor} {
    System.out.print("MIN ");
    return new Symbol(sym.MINOR);
}

{major} {
    System.out.print("MAJ ");
    return new Symbol(sym.MAJOR);
}

{semicolon} {
    System.out.print("S ");
    return new Symbol(sym.SEMICOLON);
}

{dot} {
    System.out.print("D ");
    return new Symbol(sym.DOT);
}

{colon} {
    System.out.print("C ");
    return new Symbol(sym.COMMA);
}

{and} {
    System.out.print("AND ");
    return new Symbol(sym.AND);
}

{or} {
    System.out.print("OR ");
    return new Symbol(sym.OR);
}

{not} {
    System.out.print("NOT ");
    return new Symbol(sym.NOT);
}

{int_type} {
    System.out.print("INT_TYPE ");
    return new Symbol(sym.INT_TYPE);
}

{double_type} {
    System.out.print("DOUBLE_TYPE ");
    return new Symbol(sym.DOUBLE_TYPE);
}

{if} {
    System.out.print("IF ");
    return new Symbol(sym.IF);
}

{else} {
    System.out.print("ELSE ");
    return new Symbol(sym.ELSE);
}

{while} {
    System.out.print("WHILE ");
    return new Symbol(sym.WHILE);
}

{print} {
    System.out.print("PRINT ");
    return new Symbol(sym.PRINT);
}

{int} {
    System.out.print("INT:"+yytext()+" ");
    return new Symbol(sym.INT);
}

{double} {
    System.out.print("DOUBLE:"+yytext()+" ");
    return new Symbol(sym.DOUBLE);
}

{id} {
    System.out.print("ID:"+yytext()+" ");
    return new Symbol(sym.ID);
}

{discard}   {;}

.           {;}
