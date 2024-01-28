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

"<-"|"->"|"+"|"-"|"*"|"/"|"^"|"%%"|"%/%" {printf("%s - Operators \n",yytext);}     // Operaters
({number}{number}*)[.]({number}{number}*)  {printf("%s - Numeric Type \n",yytext);}
{number}{number}* {printf("%s - Integer Type \n",yytext);} 
{number}[i]     {printf("%s - Complex Type \n",yytext);}
(\"([a-zA-Z])*\")|(\'([a-zA-Z])*\') {printf("%s - String \n",yytext);}

({letter}({letter}|[.]|[_]|{number})*)|([.]({letter}|[_])({letter}|[.]|[_]|{number})*)  {printf("%s - Identifiers\n",yytext);}   //For Identifier




%%   
int yywrap(void){return 1;}   
int main() 
{    
      printf("Enter the input");
      yylex();   
     return 0; 
} 
