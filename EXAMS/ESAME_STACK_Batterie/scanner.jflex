import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column


nl = \r|\n|\r\n
ws = [ \t]


id = [A-Za-z_][A-Za-z0-9_]*

integer = ([1-9][0-9]*|0)
integer_multi =  ("-")?([1-9][0-9]*|0) (e|E('+'|'-')?[0-9]+)?

double = [0-9]+\.([0-9]*)
double_multi = (([0-9]+\.[0-9]*) | ([0-9]*\.[0-9]+)) (e|E('+'|'-')?[0-9]+)?

sign = ("+"|"-")

date = ((0[1-9])|([1-2][0-9])|(3(0|1)))"/"((0[1-9])|(1(0|1|2)))"/"(2[0-9][0-9][0-9])

hour = (((0|1)[0-9])|(2[0-3]))":"([0-5][0-9])

timeAmPm    = ((0[0-9])|(1[0-2]))":"([0-5][0-9]) ("am"|"pm")?

ip_num = (2(([0-4][0-9])|(5[0-5])))|(1[0-9][0-9])|([1-9][0-9])|([0-9])

ip = {ip_num}"."{ip_num}"."{ip_num}"."{ip_num}

q_string = \" ~ \"

email = ([a-zA-Z0-9_\.])+"@"([a-zA-Z])+"."([a-zA-Z])+
 
file = [a-zA-Z][a-zA-Z0-9]*"."[a-zA-Z]{3}

hex = ([a-fA-F]|[0-9]){3}





separator = "%%%%%%"("%%")*
comment = ("(((-" ~ "-)))")|("---".*)
binary = 1*01*01*|1*01*01*01*01*01*
symbols = ("*""+")*("*")?|("+""*")*("+")?
token1 = ("A_"{binary})|("A_"{symbols})

words = (("-"((3[0-2])|(2[0-9])|(1[0-9])|([1-9])))|(([0-9])|([1-9][1-9])|([1-9][1-9][1-9])|(1[1][0-9][0-9])|(12[0-3][0-9])|(124[0-6])))(("*"|"$"|"+")(("-"((3[0-2])|(2[0-9])|(1[0-9])|([1-9])))|(([0-9])|([1-9][1-9])|([1-9][1-9][1-9])|(1[1][0-9][0-9])|(12[0-3][0-9])|(124[0-6])))){3}(("*"|"$"|"+")(("-"((3[0-2])|(2[0-9])|(1[0-9])|([1-9])))|(([0-9])|([1-9][1-9])|([1-9][1-9][1-9])|(1[1][0-9][0-9])|(12[0-3][0-9])|(124[0-6]))))*
token2 = "B_"{words}
double = [0-9]+\.([0-9]*)



%%

"-" {return new Symbol(sym.MINUS);}
"km" {return new Symbol(sym.KM);}
"units/km" {return new Symbol(sym.UNITS);}
"DO" {return new Symbol(sym.DO);}
"DONE" {return new Symbol(sym.DONE);}
"FUEL" {return new Symbol(sym.FUEL);}
"START" {return new Symbol(sym.START);}
"STAR" {return new Symbol(sym.STAR);}
"PLUS" {return new Symbol(sym.PLUS);}
"BATTERY" {return new Symbol(sym.BAT);}
"liters" {return new Symbol(sym.LIT);}
"kWh" {return new Symbol(sym.KWH);}
"MAX" {return new Symbol(sym.MAX);}
"MOD" {return new Symbol(sym.MOD);}
"USE" {return new Symbol(sym.USE);}



{token1} {return new Symbol(sym.TOK1);}
{token2} {return new Symbol(sym.TOK2);}
{separator} {return new Symbol(sym.SEP);}
{double} {return new Symbol(sym.DOUBLE, new Double(yytext()));}

; {return new Symbol(sym.SC);}
, {return new Symbol(sym.CM);}

"(" {return new Symbol(sym.RO);}

")" {return new Symbol(sym.RC);}




{comment} {;}






{ws}|{nl} {;}

. { System.out.println("SCANNER TOKEN: Error at line " + (yyline+1) + ", col " + (yycolumn+1) + ": '" + yytext() + "'"); }


