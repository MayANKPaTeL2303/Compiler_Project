%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%}   

letter    [A-Za-z]
number    [0-9]

%% 

 //Rules for R variables are:
 //A variable name must start with a letter and can be a combination of letters, digits, period(.)
 //and underscore(_). If it starts with period(.), it cannot be followed by a digit.
 //A variable name cannot start with a number or underscore (_)
 // Variable names are case-sensitive (age, Age and AGE are three different variables)
 // Reserved words cannot be used as variables (TRUE, FALSE, NULL, if...)

"+"|"-"|"*"|"/"|"^"|"%%"|"%/%" {printf("%s - Arithmetic Operators \n",yytext);}     // Operaters
"=="|"!="|">"|"<"|">="|"<=" {printf("%s - Comparison Operators \n",yytext);}
"&"|"&&"|"|"|"||"|"!" {printf("%s - Logical Operators \n",yytext);}
"<-"|"<<-"|"->"|"->>" {printf("%s - Assignment Operators \n",yytext);}
":"|"%in%"|"%*%" {printf("%s - Miscellaneous Operators \n",yytext);}

({number}{number}*)[.]({number}{number}*)  {printf("%s - Numeric Type \n",yytext);}
{number}{number}* {printf("%s - Integer Type \n",yytext);} 
{number}[i]     {printf("%s - Complex Type \n",yytext);}
"TRUE"|"FALSE"  {printf("%s - Booleans\n",yytext);}

"if" {printf("%s - If \n",yytext);}
"while"    {printf("%s - While Loop\n",yytext);}
"for"      {printf("%s - For Loop\n",yytext);}
"print"    {printf("%s - Print the variable value\n",yytext);}
"function" {printf("%s - Function \n",yytext);}
"return" {printf("%s - Return \n",yytext);}
"else if" {printf("%s - Else_if \n",yytext);}
"else" {printf("%s - Else \n",yytext);}
[A-Za-z]*[(][)]  {printf("%s - Function Call \n",yytext);}

(\"({letter})*\")|(\'({letter})*\') {printf("%s - String \n",yytext);}
({letter}({letter}|[.]|[_]|{number})*)|([.]({letter}|[_])({letter}|[.]|[_]|{number})*)  {printf("%s - Identifiers\n",yytext);}   //For Identifier

"#".*   { printf("%s - Comment\n", yytext); } // comment



%%   
int yywrap(void){return 1;}   
int main() 
{    
      printf("Enter the input");
      printf("\n");
      yylex();   
     return 0; 
} 
