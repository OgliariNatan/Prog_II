#include <stdio.h>
#include <stdlib.h>

#include "fila.h"

struct filas
{
    int cabeca;
    int cauda;
    int tamanho;
    int tamanho_max;
    int *dados;
};

//cria uma nova fila
fila_t* cria_fila(int tamanho)
{
    fila_t *p = NULL;

    //aloca memória
    p = (fila_t*)malloc(sizeof(fila_t));


    //variaveis de controle
    p->cabeca = 0;
    p->cauda = tamanho-1;
    p->tamanho = 0;
    p->tamanho_max = tamanho;

    p->dados = (int*) malloc(sizeof(int) * tamanho);

    return p;
}

//libera memoria
void libera_fila(fila_t* fila)
{
    fila_t *p = fila;

    if (p == NULL)
    {
        fprintf(stderr, "Erro desalocando memoria da fila, ponteiro invalido!");
        exit(EXIT_FAILURE);
    }


    free(p->dados);
    free(p);
}


void enqueue(int x, fila_t* fila)
{
    if (fila == NULL)   {
        fprintf(stderr,"FILA invalidia");
        exit(-1);
    }
    if(fila->tamanho < fila->tamanho_max)  {

        fila->cauda = ((fila->cauda+1) % fila->tamanho_max);
        fila->tamanho++;
        fila->dados[fila->cauda] = x;
    }
    else
    {
        printf("ERRO: NO ADD fila %d\n",x);
        exit(-1);
    }
}

int dequeue(fila_t* fila)
{
     if (fila == NULL) {
        fprintf(stderr,"FILA invalidia");
        exit(-1);
    }
    int x;
    x = fila->dados[fila->cabeca];
    fila->cabeca = ((fila->cabeca+1) % fila->tamanho_max);
    fila->tamanho--;

    return x;
}

//------------------
//funcoes adicionais

int topo (fila_t *fila)
{
     if (fila == NULL)  {
        fprintf(stderr,"FILA invalidia");
        exit(-1);
    }
    int s;
    s = fila->dados[fila->cabeca];
    return s;
}

int imprimi (fila_t *fila)
{
    if (fila == NULL)  {
        fprintf(stderr,"FILA invalidia");
        exit(-1);
    }

    int w, i;
    printf("-----------------------\n");
    printf("Os Valores armazenados sao:\n");
    for (i=0; i<fila->tamanho; i++)  {
        w = fila->dados[i];
        printf("%d\n",w);
    }
    printf("-----------------------\n");
    return 0;
}

int tamanho(fila_t *fila)
{
    if (fila == NULL){
        fprintf(stderr,"FILA invalidia");
        exit(-1);
    }

    int z;
    z = fila->tamanho;
    return z;
}

void vazia (fila_t *fila)
{
    if (fila->tamanho != fila->tamanho_max)
    {
        printf("A pilha esta vazia\n");
    }
}
