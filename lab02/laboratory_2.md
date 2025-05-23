﻿Formal Languages and Compilers Laboratory n ° 1![ref1]

Formal Languages and Compilers

Laboratory n ° 2

1 Exercise

Write a scanner for the C programming language. The scanner must:

- Recognize the C language comments ( /\* and \*/ )
- Recognize the symbols: \ f\, \ g", \(\, \)", \[\, \]", \+", \-", \\*", \/", \=", \;", \.", \,", \ < ", \ > ", \&", \j", \!".
- Recognize some C keywords: int , double , if , else , while , print
- Recognize integer and double numbers
- Any #include , space, tab and newline must be discarded

The scanner must provide as output the recognized units (the TOKENS) printing them separated by a space. Regarding the integers, the double numbers and the identiers, it must also print, in addition to the recognized token, the token value (e.g. INT:30)

The recognized C language, as shown in the example, is a simplied version where functions do not exist and the variables can be declared only at the beginning of the le.

NB: The scanner written for this laboratory will be used in the next laboratories for building a complete compiler. This compiler will be able to compile programs similar to the one shown in the following example.

Stefano Scanzio 1 http://www.skenz.it/compilers![ref2]
Formal Languages and Compilers Laboratory n ° ![ref1]

1. Input le example

Observe the example. Given the following input le:

/\* Example of Bubble sort sorting algorithm\*/

double x[5]; int i, j; double swap; int pos;

/\* Vector initialization \*/ x[0] = -2.0;

x[1] = -3.0;

x[2] = 3.0;

x[3] = 5.0;

x[4] = 2.5;

/\* Bubble sort \*/

pos = 5;

while(pos > 0){

i = 0;

while (i < pos - 1){

j = i + 1;

if (x[i] > x[j]){

swap = x[j]; x[j] = x[i];

x[i] = swap; }

i = i + 1;

}

pos = pos-1;

}

/\* Print results \*/ i = 0; while(i<5){

print (x[i]);

i = i + 1;

}

2. Output example

the output must be the following:

DOUBLE\_TYPE ID:x SO INT:5 SC S INT\_TYPE ID:i C ID:j

S DOUBLE\_TYPE ID:swap S INT\_TYPE ID:pos S ID:x SO

INT:0 SC EQ MINUS DOUBLE:2.0 S ID:x SO INT:1 SC ...

...

ID:pos EQ INT:5 S WHILE RO ID:pos MAJ INT:0 RC BO ID:i

EQ INT:0 S WHILE RO ID:i MIN ID:pos MINUS ID:1 RC BO ID:j ...

Stefano Scanzio  http://www.skenz.it/compilers![ref2]
Formal Languages and Compilers Laboratory n ° 3![ref1]

2 Exercise

Write a lexical analyzer using JFLEX which is able to recognize the principal elements of an HTML document. An HTML document consists of an ASCII text annotated by appropriate keywords.

All the keyword are enclosed between the symbols \<" and \>". Within these symbols there could also be some modiers and keyword parameters. Keywords and parameters are case insensitive. The two delimiter characters and their content dene a tag. The keywords consist of alphanumeric characters and begin with an alphabetic character. Furthermore, the closing tags can be preceded by the character \/". An HTML document can contain some comments. Comments start with characters \<!  " and end with characters \   >". Among the keywords that could appear, the lexical analyzer must explicitly recognize the keywords \head", \body", \html", \title", \table", \h1", \h2", \h3", \h4".

The lexical analyzer must produce as output the HTML input document with all comments removed. Fur- thermore, at the end of the le it must print the following statistics:

- the total number of tags;
- the number of table, h1, h2, h3 and h4 tags (and the corresponding closing tags).

Some hints

- Use the %caseless jex directive to generate a case insensitive scanner
- Use the states to distinguish comments and tags from generic text
1. Input le example

<HTML><HEAD><TITLE>Prova</TITLE></HEAD>

<BODY>

<!-- .... <table>Finta tabella (da non contare)</table> --> <H1>Titolo\_1</h1>

<h2>Titolo\_1\_1</H2>

Testo <b>vario</b>

<H1>Titolo\_2</h1>

<h2>Titolo\_2\_1</H2>

<table border=2><tr><td>Idem</td></tr></table>

<a href="top.html"><img src="/img/top.gif" alt="top"></a> <h2>Titolo\_2\_2</H2>

<table border=0><tr><td>

<table border=0><tr><td> Tabella annidata livello1</td></tr> </table>

</table>

<!-- I tag che seguono indicano una lista non numerata -->

<ul>

<li><a href="pippo.htm">pippo</a>

<li><a href="pluto.htm">pluto<i>pi&ugrave;</i>pippo</a>

</ul>

<table border=0><tr><td>

<table border=0><tr><td>

<table border=0><tr><td>Tabel la annidata livello 2</td></tr> </table>

</td></tr>

</table>

</table>

<img src="/img/bottom.gif" height="10" width="10" alt="bottom"> <hr>

</body></HTML>

2. Output example

<HTML><HEAD><TITLE>Prova</TITLE></HEAD> <BODY>

<H1>Titolo\_1</h1>

<h2>Titolo\_1\_1</H2>

Testo <b>vario</b>

<H1>Titolo\_2</h1>

<h2>Titolo\_2\_1</H2>

<table border=2><tr><td>Idem</td></tr></table>

<a href="top.html"><img src="/img/top.gif" alt="top"></a> <h2>Titolo\_2\_2</H2>

<table border=0><tr><td>

<table border=0><tr><td>Tabella annidata livello1</td></tr> </table>

</table>

<ul>

<li><a href="pippo.htm">pippo</a>

<li><a href="pluto.htm">pluto<i>pi&ugrave;</i>pippo</a>

</ul>

<table border=0><tr><td>

<table border=0><tr><td>

<table border=0><tr><td>Tabel la annidata livello2</td></tr> </table>

</td></tr>

</table>

</table>

<img src="/img/bottom.gif" height="10" width="10" alt="bottom"> <hr>

</body></HTML>

Total number of tags: 67 Total number of table tags: 12 Total number of h1 tags: 4 Total number of h2 tags: 6 Total number of h3 tags: 0 Total number of h4 tags: 0
Stefano Scanzio 3 http://www.skenz.it/compilers![ref2]

[ref1]: Aspose.Words.b43ba2b8-53c7-4263-a42b-aaa5ae23d4f3.001.png
[ref2]: Aspose.Words.b43ba2b8-53c7-4263-a42b-aaa5ae23d4f3.002.png
