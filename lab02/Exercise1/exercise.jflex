
%%

%standalone
%class Calc

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

and                     = [\&]
or                      = [\|]
not                     = [\!]

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
}

{square_close} {
    System.out.print("SC ");
}

{round_open} {
    System.out.print("RO ");
}

{round_close} {
    System.out.print("RC ");
}

{brace_open} {
    System.out.print("BO ");
}

{brace_close} {
    System.out.print("BC ");
}

{plus} {
    System.out.print("PLUS ");
}

{minus} {
    System.out.print("MINUS ");
}

{star} {
    System.out.print("STAR ");
}

{dash} {
    System.out.print("DASH ");
}

{equal} {
    System.out.print("EQ ");
}

{minor} {
    System.out.print("MIN ");
}

{major} {
    System.out.print("MAJ ");
}

{semicolon} {
    System.out.print("S ");
}

{dot} {
    System.out.print("D ");
}

{colon} {
    System.out.print("C ");
}

{and} {
    System.out.print("AND ");
}

{or} {
    System.out.print("OR ");
}

{not} {
    System.out.print("NOT ");
}

{int_type} {
    System.out.print("INT_TYPE ");
}

{double_type} {
    System.out.print("DOUBLE_TYPE ");
}

{if} {
    System.out.print("IF ");
}

{else} {
    System.out.print("ELSE ");
}

{while} {
    System.out.print("WHILE ");
}

{print} {
    System.out.print("PRINT ");
}

{int} {
    System.out.print("INT:"+yytext()+" ");
}

{double} {
    System.out.print("DOUBLE:"+yytext()+" ");
}

{id} {
    System.out.print("ID:"+yytext()+" ");
}

{discard}   {;}
.           {;}
