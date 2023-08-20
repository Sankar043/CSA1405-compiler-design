%{
#include<stdio.h>
int count=0,s=0;
%}

%%
[^\t\n]+ {count+=yyleng;}
[ \t] {s+=yyleng;}
%%

int yywrap(){}

int main()
{
printf("enter the word:");
yylex();
printf("The length of the word is : %d",count-s);
}
