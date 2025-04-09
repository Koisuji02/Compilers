
%%

%standalone
%class Calc

nl		=  \n|\r|\r\n
letter  =  [a-zA-Z]|[^/\\,*?\"->|\n\r]
digit	=  [0-9]
id      = ({letter}|{digit})({letter}|{digit})*
pathname = {id}
filename = {id}
filetype = {id}
drive = {letter}
PathFileName = ({drive}:)?(\\)?({pathname}\\)*{filename}(\.{filetype})?{nl}


%%

{PathFileName} {System.out.println("PathFileName: " +yytext());}

// {nl}|" "|\t 	{;}

.		{System.out.println("Error: " + yytext());}