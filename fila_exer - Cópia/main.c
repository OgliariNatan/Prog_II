#include <stdio.h>
#include <stdlib.h>

#include "fila.h"

#define TAM_FILA 3

int main()
{
    fila_t* fila = NULL;
    int x, s, z;
    fila = cria_fila(TAM_FILA);

    enqueue(10, fila);
    enqueue(18, fila);
    enqueue(9990, fila);

     x = dequeue(fila);
     x = dequeue(fila);
     enqueue(-1, fila);
     enqueue(-4, fila);


    s = topo(fila);
    printf("\n------\nO dado no topo vale: %d\n--------\n",s);

    imprimi(fila);

    z = tamanho(fila);
    printf("O tamanho da fila vale: %d\n",z);

    vazia(fila);

    x = dequeue(fila);
    printf("%d\n",x);
    x = dequeue(fila);
    printf("%d\n",x);
    x = dequeue(fila);
    printf("%d\n",x);

    //(...)
    libera_fila(fila);


    return 0;
}
