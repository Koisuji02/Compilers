import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

nl = \n|\r|\r\n
ws = [ \t]

number = [0-9]+
integer =  ([1-9][0-9]*|0)
integer_grosso =  ("-")?([1-9][0-9]*|0) (e|E('+'|'-')?[0-9]+)?

double = [0-9]+\.([0-9]+)
double_con_2_cifre = [0-9]+\.([0-9]{2})
double_grosso = (([0-9]+\.[0-9]*) | ([0-9]*\.[0-9]+)) (e|E('+'|'-')?[0-9]+)?

string = [a-zA-Z]+
var = [A-Za-z_][A-Za-z0-9_]*

comment_monolinea = "//".*
comment_multilinea = "/*"([^*] | (\*+[^*/]))*\*+"/"

date = ((0[1-9])|([1-2][0-9])|(3(0|1)))"/"((0[1-9])|(1(0|1|2)))"/"(2[0-9][0-9][0-9])
hour = (((0|1)[0-9])|(2[0-3]))":"([0-5][0-9])

timeAmPm    = ((0[0-9])|(1[0-2]))":"([0-5][0-9]) ("am"|"pm")?

ip_num = (2(([0-4][0-9])|(5[0-5])))|(1[0-9][0-9])|([1-9][0-9])|([0-9])
ip = {ip_num}"."{ip_num}"."{ip_num}"."{ip_num}

email = ([a-zA-Z0-9_\.])+"@"([a-zA-Z])+"."([a-zA-Z])+

file = [a-zA-Z][a-zA-Z0-9]*"."[a-zA-Z]{3}

%%


comment                 {;}
{nl}                    {;}
{ws}                    {;}