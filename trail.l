%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%}   

letter    [A-Za-z]
number    [0-9]
ID   	({letter}({letter}|[.]|[_]|{number})*)|([.]({letter}|[_])({letter}|[.]|[_]|{number})*)

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
"<-"|"<<-"|"->"|"->>"|"=" {printf("%s - Assignment Operators \n",yytext);}
":"|"%in%"|"%*%" {printf("%s - Miscellaneous Operators \n",yytext);}

({number}{number}*)[.]({number}{number}*)  {printf("%s - Numeric Type \n",yytext);}
{number}{number}* {printf("%s - Integer Type \n",yytext);} 
{number}*[+]{number}*[i]|{number}*[-]{number}*[i]|{number}*[i]|{number}*[i][+]{number}*|{number}*[i][-]{number}*     {printf("%s - Complex Type \n",yytext);}
"TRUE"|"FALSE"  {printf("%s - Booleans\n",yytext);}

"if" {printf("%s - If \n",yytext);}
"while"    {printf("%s - While Loop\n",yytext);}
"for"\s*\(|"for "\s*\(       {printf("%s - For Loop\n",yytext);}
"print"\s*\(    {printf("%s - Print\n",yytext);}
"paste"     {printf("%s - Paste\n",yytext);}
"function"[(].*[)] {printf("%s - Function \n",yytext);}
"return" {printf("%s - Return \n",yytext);}
"else if" {printf("%s - Else_if \n",yytext);}
"class"   {printf("%s - Class \n",yytext);}
"else" {printf("%s - Else \n",yytext);}

{ID}\s*\(  {printf("%s - Function Call \n",yytext);}

{ID}  {printf("%s - Identifiers\n",yytext);}   //For Identifier
  
(["].*["])|(['].*[']) {printf("%s - String \n",yytext);}

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
