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

nl = [\r\n]+
space = [ \t]+
comment = "/*"([^*] | (\*+[^*/]))*\*+"/"
atom = [_a-z][_a-zA-Z0-9]*|[-+]?[0-9]+[\.]?[0-9]*[\^]?[0-9]*
variable = [_A-Z][_a-zA-Z0-9]*
round_open = [\(]
round_close = [\)]
interrogation_symbol = \?\-
rule_symbol = \:\-
dot = [\.]
comma = [\,]

%%

{comment} {return my_symbol(sym.COMMENT);}
{atom} {return my_symbol(sym.ATOM);}
{variable} {return my_symbol(sym.VAR);}
{round_open} {return my_symbol(sym.RO);}
{round_close} {return my_symbol(sym.RC);}
{interrogation_symbol} {return my_symbol(sym.IS);}
{rule_symbol} {return my_symbol(sym.RS);}
{dot} {return my_symbol(sym.DOT);}
{comma} {return my_symbol(sym.COM);}

{space} {;}
{nl} {;}
. {;}
