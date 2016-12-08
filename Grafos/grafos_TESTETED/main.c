#include <stdio.h>
#include <stdlib.h>

#include "lista_enc.h"
#include "no.h"
#include "vertice.h"
#include "grafo.h"
#include "fila.h"

int main()
{
    grafo_t *grafo = NULL;
    no_t *elemento1 = NULL;
    vertice_t *vertice1 = NULL;
    no_t *elemento2 = NULL;
    vertice_t *vertice2 = NULL;
    no_t *elemento3 = NULL;
    vertice_t *vertice3 = NULL;
    fila_t *f = cria_fila(5);


    grafo     = cria_grafo()     ;
    vertice1  = cria_vertice(0)  ;
    elemento1 = cria_no(vertice1);
    vertice2  = cria_vertice(1)  ;
    elemento2 = cria_no(vertice2);
    vertice3  = cria_vertice(2)  ;
    elemento3 = cria_no(vertice3);


    printf("-%p-\n", elemento1);

    add_cabeca_grafo(grafo, elemento1);
    add_cabeca_grafo(grafo, elemento2);
    add_cabeca_grafo(grafo, elemento3);


    liga_vertices(vertice1, vertice2);
    liga_vertices(vertice1, vertice3);
    liga_vertices(vertice2, vertice3);
    liga_vertices(vertice3, vertice2);





    enqueue((void*)1, f);
    printf("\n%d", (int)dequeue(f));
    enqueue((void*)2, f);
    enqueue((void*)3, f);
    printf("\n%d", (int)dequeue(f));
    enqueue((void*)6, f);
    printf("\n%d", (int)dequeue(f));
    enqueue((void*)8, f);
    printf("\n%d", (int)dequeue(f));
    printf("\n%d", (int)dequeue(f));


    printf("\n0: %p 1: %p 2: %p 3:\n", vertice1, vertice2, vertice3);

    busca_largura(grafo, elemento1);

   // imprime_grafo(grafo);

    //imprime_arvore(grafo);

    libera_grafo(grafo)     ;
    libera_vertice(vertice1);
    libera_vertice(vertice2);
    libera_vertice(vertice3);

    free(elemento1);
    free(elemento2);
    free(elemento3);


    return 0;
}
