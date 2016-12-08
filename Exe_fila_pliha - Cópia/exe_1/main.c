#include <stdio.h>
#include <stdlib.h>

#include "pilha.h"



int main()
{
    int x = 0;
    pilha_t *pilha;
    pilha = cria_pilha(2);

    push(45, pilha);
    push(10, pilha);
    push(22, pilha);
    push(14, pilha);

    x = pop(pilha);
    printf("%d\n",x);
    x = pop(pilha);
    printf("%d\n",x);
    x = pop(pilha);
    printf("%d\n",x);
    x = pop(pilha);
    printf("%d\n",x);
    //x = pop(pilha);
    //printf("%d\n",x);

    libera_pilha(pilha);

    return 0;
}
