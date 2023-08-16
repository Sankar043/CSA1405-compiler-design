%{
%}

%%

[0-3][1-9]["."][0-1][1-9]["."][0-2][0-2][0-9][0-9] {printf("\n DOB valid\n");}
.+ {printf("\n DOB invalid\n");}

%%
int yywrap(){}

int main()
{
printf("\n enter the DOB:");
yylex();
printf("\n");
}
