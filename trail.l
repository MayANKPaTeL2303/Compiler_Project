%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%}   

letter    [A-Za-z]
number    [0-9]
ID   	({letter}({letter}|[.]|[_]|{number})*)|([.]({letter}|[_])({letter}|[.]|[_]|{number})*)

%% 


"+"|"-"|"*"|"/"|"^"|"%%"|"%/%" {printf("%s - Arithmetic Operators \n",yytext);} // Arithmetic Operaters
"=="|"!="|">"|"<"|">="|"<=" {printf("%s - Comparison Operators \n",yytext);}//Comparison Operators
"&"|"&&"|"|"|"||"|"!" {printf("%s - Logical Operators \n",yytext);}//Logical Operators
"<-"|"<<-"|"->"|"->>"|"=" {printf("%s - Assignment Operators \n",yytext);}//Assignment Operators
":"|"%in%"|"%*%" {printf("%s - Miscellaneous Operators \n",yytext);}//Miscellaneous Operators


"class"\s*\(    {printf("%s - Class \n",yytext);} // Class Function
({number}{number}*)[.]({number}{number}*)|{number}{number}*  {printf("%s - Numeric Type \n",yytext);}// NNumeric data Type 
{number}{number}*"L" {printf("%s - Integer Type \n",yytext);} // Integer data Type
{number}*[+]{number}*[i]|{number}*[-]{number}*[i]|{number}*[i]|{number}*[i][+]{number}*|{number}*[i][-]{number}*     {printf("%s - Complex Type \n",yytext);} // Complex data Type
"TRUE"|"FALSE"  {printf("%s - Booleans\n",yytext);} //  Booleans data Type 


break  {printf("%s - Break \n",yytext);} //BREAK statement
next   {printf("%s - Next \n",yytext);} //Next	Statement


"return" {printf("%s - Return \n",yytext);} // Return() function

"while"\s*\(|"while "\s*\(    {printf("%s - While Loop\n",yytext);}// While LOOP
"for"\s*\(|"for "\s*\(       {printf("%s - For Loop\n",yytext);}// FOR LOOP


"print"\s*\(    {printf("%s - Print\n",yytext);}// PRINT FUNCTION
"paste"\s*\(    {printf("%s - Paste\n",yytext);}// PASTE FUNCTION


"if"\s*\(|"if "\s*\(  {printf("%s - If \n",yytext);} // IF Statement
"else if"\s*\(|"else if "\s*\(  {printf("%s - Else_if \n",yytext);}//ELSE IF  Statement
"else"\s*\{|"else "\s*\{ {printf("%s - Else \n",yytext);} // ELse Statement

"c"[(] {printf("%s - VECTOR \n",yytext);} // Vectors ( c() FUNCTION )
"length"[(] {printf("%s - LENGTH FUNCTION \n",yytext);} // LENGTH FUNCTION
"seq"[(]  {printf("%s - SEQ FUNCTION \n",yytext);} // FOR Generating Sequenced Vectors // seq() FUNCTION


"list"[(] {printf("%s - LIST \n",yytext);} // LIST FUNCTION
"append"[(] {printf("%s - APPEND \n",yytext);} // APPEND FUNCTION

"matrix"[(] {printf("%s - MATRIX \n",yytext);} // MATRIX FUNCTION




"array"[(] {printf("%s - Arrays \n",yytext);} //ARRAYS

"data.frame "[(]|"data.frame"[(] {printf("%s - Data_Frames  \n",yytext);} //Data Frames

"factor"[(]  {printf("%s -  Factors Function  \n",yytext);} //FACTORS
"levels"[C]  {printf("%s -  Levels Function  \n",yytext);} //LEVELS Function

"which.max"[(]       {printf("%s - Max function(Find the maximum value \n",yytext);} //WHICH _MAX FUNCTION
"which.min"[(]          {printf("%s - Min function(Find the minimum value \n",yytext);}// WHICH_MIN FUNCTION
"rownames"[(]         {printf("%s - Rowname function \n ",yytext);}//ROWNAMES
"mean"[(]          {printf("%s - Mean function(Give the mean of the data set \n ",yytext);}//MEAN FUNCTION
"median"[(]         {printf("%s - Median function(Give the median of the dataset \n",yytext);}//MEDIAN FUNCTION
"sort"[(]        {printf("%s - Sort function(sort the data set \n",yytext);}// SORT FUNCTION

"function"[(].*[)] {printf("%s - Function \n",yytext);} // function() Keyword
{ID}\s*\(  {printf("%s - Function Call \n",yytext);} // Call a Function
{ID}  {printf("%s - Identifiers\n",yytext);}   //For Identifier  
(["].*["])|(['].*['])|(["].*["])|(["].*["])[,] {printf("%s - String \n",yytext);} // Strings
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
