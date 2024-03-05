%{
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
%}

%union {
    double dval;
}
%start program
%token <dval> NUMBER;
%left '+' '-'
%left '*' '/'
%right '^'
%type <dval> expr
%token COMMENT

%%

program: expr 	 { printf("RESULT IS %f\n", $1); }
    | COMMENT  { printf(" Vaid Comment \n"); } 
expr:
    expr '+' expr { $$ = $1 + $3;}
    | expr '-' expr { $$ = $1 - $3; }
    | expr '*' expr { $$ = $1 * $3; }
    | expr '/' expr {
        if ($3 == 0) {
            yyerror("CANNOT DIVIDE BY ZERO");
            exit(1);
        } else {
            $$ = $1 / $3;
        }
    }
    | '-' expr { $$ = - $2; }
    | '(' expr ')' { $$ = $2; }
    | NUMBER { $$ = $1; }
    ;

%%

extern int yylex(void);
void yyerror(const char *s)
{
    fprintf(stderr, "%s\n", s);
    exit(1);
}

int main()
{
    yyparse();
    return 0;
}

