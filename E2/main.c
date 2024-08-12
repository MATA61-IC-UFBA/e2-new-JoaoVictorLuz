/* main.c */
#include <stdio.h>
#include "token.h"

extern int yylex();
extern char *yytext;

int main() {

// nome da função que retorna o próximo token é yylex()
//laço para chamar yylex() até o final da entrada

    token_t token = -1;
    while (token != EOL){
        token = yylex();                        // call yylex
        if (token == ERROR)
            printf("erro léxico: %s\n", yytext);

        else
            if (token == NUMBER)
            printf("constante decimal: %s\n", yytext);
            else
                printf("Código do token: %d\n", token);
    }
    

}
