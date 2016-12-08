#include <stdlib.h>
#include <stdio.h>

#include "pilha.h"

#define FALSO 0
#define VERDADEIRO 1

struct pilhas {
    int topo;
    long long int *data;
    int tamanho_max;
};


//cria uma pilha para inteiros
pilha_t * cria_pilha (int n)
{
    pilha_t *pilha = (pilha_t*)malloc(sizeof(pilha_t));

    if (pilha == NULL) {
        perror("cria_pilha.");
        exit(EXIT_FAILURE);
    }

    pilha->data = (long long int*) malloc (sizeof(long long int)*n);

     if (pilha->data == NULL) {
        perror("cria_pilha.");
        exit(EXIT_FAILURE);
    }

    pilha->topo = 0;
    pilha->tamanho_max = n;

    return pilha;
}


//adiciona elemento
void push(long long int dado, pilha_t *pilha)
{
    long long int topo = 0;

    if (pilha == NULL) {
        fprintf(stderr, "cria_pilha: ponteiro invalido");
        exit(EXIT_FAILURE);
    }

    topo = pilha->topo;

    if (topo >= pilha->tamanho_max) {
        fprintf(stderr, "Tamanho maximo da pilha atingido!\n");
        exit(EXIT_FAILURE);
    }

    pilha->data[topo] = dado;
    pilha->topo++;
}

//retira elemento do topo
long long int pop(pilha_t *pilha)
{
    long long int topo;

    if (pilha == NULL) {
        fprintf(stderr, "cria_pilha: ponteiro invalido");
        exit(EXIT_FAILURE);
    }

    topo =  pilha->topo;

    if (topo < 0 || topo >= pilha->tamanho_max){
        fprintf(stderr, "Pilha corrompida!\n");
        exit(EXIT_FAILURE);
    }

    if (topo == 0) {
        fprintf(stderr, "pop() em pilha vazia!\n");
        return 0;
    }

    pilha->topo--;
    return pilha->data[topo - 1];
}


void libera_pilha(pilha_t *pilha)
{
    if (pilha == NULL) {
        fprintf(stderr, "cria_pilha: ponteiro invalido");
        exit(EXIT_FAILURE);
    }

    free(pilha->data);
    free(pilha);
}

int pilha_vazia(pilha_t *pilha)
{
    int ret = 0;


    if (pilha == NULL) {
        fprintf(stderr, "pilha_vazia: pilha invalida\n");
        exit(EXIT_FAILURE);
    }

    (pilha->topo == 0) ? (ret = VERDADEIRO) : (ret = FALSO); //utilizar um IF || ELSE IF

    return ret;
}

