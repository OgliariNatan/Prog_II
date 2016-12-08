#include <stdio.h>
#include <stdlib.h>

#include "fila.h"

struct filas{
    int cabeca;
    int cauda;
    int tamanho;
    int index;
    int tamanho_max;
    void **dados;
};

//cria uma nova fila
fila_t* cria_fila(int tamanho){
    fila_t *p = NULL;

    //aloca memória
    p = (fila_t*)malloc(sizeof(fila_t));


    //variaveis de controle
    p->cabeca = 0;
    p->cauda = tamanho-1;
    p->tamanho = 0;
    p->index = 0;
    p->tamanho_max = tamanho;

    p->dados = (void*)malloc(sizeof(void)*tamanho);

    return p;
}

//libera memoria
void libera_fila(fila_t* fila){
    fila_t *p = fila;

    if (p == NULL)
    {
        fprintf(stderr, "Erro desalocando memoria da fila, ponteiro invalido!");
        exit(EXIT_FAILURE);
    }
    free(p->dados);
}


int enqueue(void *x, fila_t* fila){

    int cauda = fila->cauda;
    int tamanho = fila->tamanho;

    if(fila == NULL){
        perror("enqueue:");
        exit(EXIT_FAILURE);
    }

    if(tamanho == fila->tamanho_max){
        fprintf(stderr, "enqueue() em fila cheia!");
        return -1;
    }else{
        if(cauda == (fila->tamanho_max-1)){
            fila->index = 0;
        }
        fila->index++;
        fila->tamanho++;
        fila->cauda = fila->index - 1;
        fila->dados[fila->cauda] = x;
    }
    return 0;
}

void *dequeue(fila_t* fila){

    int cabeca = fila->cabeca;

    if(fila == NULL){
        perror("dequeue:");
        exit(EXIT_FAILURE);
    }

    if(cabeca == fila->tamanho_max){
        cabeca = 0;
    }
    if(vazia(fila)){
        fprintf(stderr, "dequeue() em fila vazia!");
        exit(EXIT_FAILURE);
    }
    fila->tamanho--;
    cabeca++;
    fila->cabeca = cabeca;
    return fila->dados[cabeca-1];
}

//------------------
//funcoes adicionais

int fila_tamanho(fila_t *fila){
    if(fila == NULL){
        perror("fila_tamanho:");
        exit(EXIT_FAILURE);
    }
    return fila->tamanho;
}

int cabeca(fila_t* fila){
    if(fila == NULL){
        perror("cabeca:");
        exit(EXIT_FAILURE);
    }
    return fila->cabeca;
}

void imprimir(fila_t* fila){
    int i;

    if(fila == NULL){
        perror("imprimir:");
        exit(EXIT_FAILURE);
    }
    for(i = 0; i < fila->tamanho_max; i++)
        printf("[%d]: %p\n", i, fila->dados[i]);
}

int contem(fila_t* fila, void *x){

    int i;

    if(fila == NULL){
        perror("contem:");
        exit(EXIT_FAILURE);
    }
    for(i = 0; i < fila->tamanho_max; i++)
        if(fila->dados[i] == x)
            return i;
    return -1;
}

int tamanho(fila_t* fila){
    if(fila == NULL){
        perror("tamanho:");
        exit(EXIT_FAILURE);
    }
    return fila->tamanho_max;
}

int vazia(fila_t* fila){
    if(fila == NULL){
        perror("vazia:");
        exit(EXIT_FAILURE);
    }
    if(fila->tamanho == 0){
        return 1;
    }
    return 0;
}
