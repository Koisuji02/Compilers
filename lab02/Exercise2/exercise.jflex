%%

%standalone
%caseless
%class Calc

%{
    int totalTags = 0;
    int tableTags = 0;
    int h1Tags = 0;
    int h2Tags = 0;
    int h3Tags = 0;
    int h4Tags = 0;
%}

%eof{
    System.out.println("\nTotal number of tags: " + totalTags);
    System.out.println("Total number of table tags: " + tableTags);
    System.out.println("Total number of h1 tags: " + h1Tags);
    System.out.println("Total number of h2 tags: " + h2Tags);
    System.out.println("Total number of h3 tags: " + h3Tags);
    System.out.println("Total number of h4 tags: " + h4Tags);
%eof}

%state COMMENT
%state TAG

%%

// Regole generali
<YYINITIAL> {

    "<!--"  {
        yybegin(COMMENT);
    }

    "<"     {
        yybegin(TAG);
        totalTags++;
        System.out.print("<");
    }
    [^<]+   {
        System.out.print(yytext()); // testo generico
    }
}

// Regole COMMENT
<COMMENT> {
    "-->"   {
        yybegin(YYINITIAL); // fine commento
    }
    .|[\n\r]  {
        /* Ignora contenuto commento */
    }
}

// Regole TAG
<TAG> {
    "table"([ \t\n\r][^>]+)?     { tableTags++; System.out.print("table"); }
    "/table"    { tableTags++; System.out.print("/table"); }
    "h1"([ \t\n\r][^>]+)?       { h1Tags++; System.out.print("h1"); }
    "/h1"       { h1Tags++; System.out.print("/h1"); }
    "h2"([ \t\n\r][^>]+)?        { h2Tags++; System.out.print("h2"); }
    "/h2"       { h2Tags++; System.out.print("/h2"); }
    "h3"([ \t\n\r][^>]+)?        { h3Tags++; System.out.print("h3"); }
    "/h3"       { h3Tags++; System.out.print("h3"); }
    "h4"([ \t\n\r][^>]+)?       { h4Tags++; System.out.print("h4"); }
    "/h4"       { h4Tags++; System.out.print("/h4"); }
    [^>]+       { System.out.print(yytext()); } // altri contenuti dei tag
    ">"         { System.out.print(">"); yybegin(YYINITIAL); } // fine tag
}