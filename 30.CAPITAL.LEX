%{
#include<stdio.h>
%}
%%
[A-Z]+[\t\n] { printf("%s",yytext); }
. ;
%%
int yywrap(){}
int main()
{
printf("enter the input string:\n");
yylex();
}
