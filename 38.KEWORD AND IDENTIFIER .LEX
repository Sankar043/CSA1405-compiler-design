%{
#include<stdio.h>
%}

%%
[\t ]+ ;
if|else|while|int|switch|printf|return|for|char { printf("its a keyword");}
[a-z]+ { printf("\n%s is IDENTIFIER", yytext);}
\n { ECHO;}
%%

int main()
{
	while( yylex());
}

int yywrap( )
{
	return 0;
}
