/* recognize tokens for the calculator 
 *expressions: integer literals, +, -, *, /
 *tokens: NUMBER, PLUS, MINUS, TIMES, DIV, ERROR
 *example: 1  + 23 - 34 * 3 / 10
 */

%option noyywrap yylineno
%{
#include "token.h"
%}

%%
"+"     { return PLUS;}
"-"     { return MINUS;}
"*"     { return TIMES;}
"/"     { return DIV;}
[0-9]+  {return NUMBER;}
[ \t]    {/* skitp whitespace*/}
"\n"    {return EOL;}
.       { return ERROR; }
%%
