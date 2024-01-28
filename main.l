%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%}   

letter    [A-Za-z]

%% 

 //Rules for R variables are:
 //A variable name must start with a letter and can be a combination of letters, digits, period(.)
 //and underscore(_). If it starts with period(.), it cannot be followed by a digit.
 //A variable name cannot start with a number or underscore (_)
 // Variable names are case-sensitive (age, Age and AGE are three different variables)
 // Reserved words cannot be used as variables (TRUE, FALSE, NULL, if...)

 ("#"({letter}|[0-9]|[[^a-zA-Z0-9])*)    {printf("%s - Comments \n",yytext);}  //Comments
"<-"|"->"|"+"|"-"|"*"|"/"|"^"|"%%"|"%/%" {printf("%s - Operators \n",yytext);}     // Operaters
([0-9]+)|([0-9]+"."[0-9]+)|([\"][a-zA-Z][\"])|"True"|"False"  {printf("%s - Constants \n",yytext);} 
({letter}({letter}|[.]|[_]|[0-9])*)|([.]({letter}|[_])({letter}|[.]|[_]|[0-9])*)  {printf("%s - Identifiers\n",yytext);}   //For Identifier



.|\n                   { /* Ignore any other characters */ }

%%   
int yywrap(void){return 1;}   
int main() 
{    
      yylex();   
     return 0; 
} 
