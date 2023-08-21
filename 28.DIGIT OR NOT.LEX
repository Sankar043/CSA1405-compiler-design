%{
%}

%%
[0-9]+ {printf("It is digit");}
.+ {printf("It is not digit");}
%%

int yywrap()
{}

int main()
{
printf("Enter the number::");
yylex();
}
