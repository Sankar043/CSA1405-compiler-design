%{
    int count=0;
%}

%%

Shankar  count++;
(.|\n)    ;

%%

int yywrap(){}

int main()
{
   printf("enter string with the Shankar::");
    yylex();
    printf("Count of \"Shankar\"= %d \n",count);  
    return 0;
}
