%{

#include <stdio.h>
#include <stdio.h>
#include <string.h>

%}
PC 	{SELECT}|{FROM}|{WHERE}
SELECT 	(S|s)(E|e)(L|l)(E|e)(C|c)(T|t)
FROM 	(F|f)(R|r)(O|o)(M|m)
WHERE 	(W|w)(H|h)(E|e)(R|r)(E|e)
ID 	[a-zA-Z]([a-zA-Z0-9]*)
%option noyywrap
%%

{PC}		{printf ("PC: %s\n", yytext);}
{ID}		{printf ("ID: %s\n", yytext);} 
%%

int main(int argc,char *argv[])
{
    char NomArch[30];
    printf("Ingrese nombre de archivo: ");
    gets(NomArch);
    if ((yyin = fopen(NomArch, "rt")) == NULL)
    {
        printf("\nNo se puede abrir el archivo: %s\n", NomArch);
    }
    else
    {
        yylex();
    }
    fclose(yyin);
    getch();
    return 0;
}
  

