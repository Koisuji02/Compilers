
%%

%standalone
%class Calc

nl		=  \n|\r|\r\n
symbol  =  [a-zA-Z\#\:\.\%0-9]

Url = {symbol}*"://"({symbol}*"/")*({symbol}*)?


%%

{Url} {System.out.println("Url: " +yytext());}

// {nl}|" "|\t 	{;}

.		{System.out.println("Error: " + yytext());}