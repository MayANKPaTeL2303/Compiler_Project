%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%}   
/* Rules Section*/
%% 
[a-zA-Z]([a-zA-Z]|[0-9]|[_])*     {printf("%s - Identifiers\n",yytext);}   //For Identifier
"<-"|"->"|"+"|"-"|"*"|"/"|"^"|"%%"|"%/%" {printf("%s - Operators \n",yytext);}     	  // Operaters

%%   
int yywrap(void){return 1;}   
int main() 
{    
      yylex();   
     return 0; 
} 

