%{
#include <stdio.h>
%}

%%
[ \t\n]  ; // Skip whitespace
[0-9]+   { printf("NUMBER: %s\n", yytext); }
"+"      { printf("ADD\n"); }
"-"      { printf("SUBTRACT\n"); }
"*"      { printf("MULTIPLY\n"); }
"/"      { printf("DIVIDE\n"); }
"("      { printf("LEFT PARENTHESIS\n"); }
")"      { printf("RIGHT PARENTHESIS\n"); }
.        { printf("INVALID CHARACTER: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
