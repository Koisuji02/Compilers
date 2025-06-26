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
    private Symbol my_symbol(int type, Object value){
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
digits = [0-9]+
lower = [a-z]
upper = [A-Z]
e = [eE]
semicolon = \;
interrog = \?

minus = \-
plus = \+
prod = \*
div = \/
exp = \^
eq = \=
dot = \.

number = {minus}?{digits}({dot}{digits})?({e}{minus}?{digits})?
square_open = \[
square_close = \]
round_open = \(
round_close = \)
comma = \,


%%

{number} {return my_symbol(sym.NUM, new Double(yytext()));}
{lower} {return my_symbol(sym.LOW, new Character(yycharat(0)));}
{upper} {return my_symbol(sym.UPP, new Character(yycharat(0)));}

{minus} {return my_symbol(sym.MINUS);}
{plus} {return my_symbol(sym.PLUS);}
{prod} {return my_symbol(sym.PROD);}
{div} {return my_symbol(sym.DIV);}
{exp} {return my_symbol(sym.EXP);}
{eq} {return my_symbol(sym.EQ);}
{dot} {return my_symbol(sym.DOT);}
{semicolon} {return my_symbol(sym.SEM);}
{interrog} {return my_symbol(sym.INT);}
{square_open} {return my_symbol(sym.SO);}
{square_close} {return my_symbol(sym.SC);}
{round_open} {return my_symbol(sym.RO);}
{round_close} {return my_symbol(sym.RC);}
{comma} {return my_symbol(sym.COM);}


{space} {;}
{nl} {;}
. {;}
