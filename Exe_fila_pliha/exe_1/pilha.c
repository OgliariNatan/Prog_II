#include <stdlib.h>
#include <stdio.h>

#include "pilha.h"

struct pilhas
{
    int tam;
    int topo;
    int *data;
};


//cria uma pilha para inteiros
pilha_t * cria_pilha (int x)
{
    pilha_t *pilha = (pilha_t*)malloc(sizeof(pilha_t));

    if(pilha == NULL)
    {
        perror("Erro ao alocar memo\n");
        exit(EXIT_FAILURE);
    }

    pilha->topo = 0;
    pilha->tam = x;

    pilha->data = (int *)malloc(sizeof(int)*x);
    //pilha->data = NULL;//!<Teste de verificação

    if(pilha->data == NULL)
    {
        perror("Erro ao alocar memo\n");
        exit(EXIT_FAILURE);
    }

    return pilha;
}


//adiciona elemento
void push(int dado, pilha_t *pilha)
{
    int topo = pilha->topo;

    if (topo >= pilha->tam)
    {
        fprintf(stderr, "Tamanho maximo da pilha atingido %d!\n", topo);
        //exit(EXIT_FAILURE);
        pilha->tam = pilha->tam*2;
        pilha->data = realloc(pilha->data, sizeof(int)*pilha->tam);
    }

    pilha->data[topo] = dado;
    pilha->topo++;
}

//retira elemento do topo
int pop(pilha_t *pilha)
{
    int topo = pilha->topo;



    if (topo < 0 || topo > pilha->tam)
    {
        fprintf(stderr, "Pilha corrompida!\n");
        exit(EXIT_FAILURE);
    }
    if (topo == 0)
    {
        fprintf(stderr, "pop() em pilha vazia!\n");
        return 0;
    }

     //fprintf(stderr, "Tamanho maximo da pilha atingido %d!\n", topo);

    pilha->topo--;
    return pilha->data[topo - 1];
}

libera_pilha(pilha_t *pilha)
{

     free(pilha->data);
     free(pilha);
}
