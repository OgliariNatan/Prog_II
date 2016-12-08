#include <stdio.h>
#include <stdlib.h>

#include "no.h"

struct nos{
    void* dados; // os dados sao vertices tem q ser void* no.c nao mexe
    no_t *proximo;
    no_t *anterior;
};

// Cria um novo no
no_t *cria_no(void *dado){

    no_t *p = malloc(sizeof(no_t));

    if (p == NULL){
        perror("cria_no:");
        exit(EXIT_FAILURE);
    }

    p->dados = dado;
    p->proximo = NULL;
    p->anterior = NULL;

    return p;
}

void liga_nos (no_t *fonte, no_t *destino)
{
    if (fonte == NULL || destino == NULL){
        fprintf(stderr,"liga_nos: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    fonte->proximo = destino;
    destino->anterior = fonte;
}

void desliga_no (no_t *no)
{
    if (no == NULL) {
        fprintf(stderr,"desliga_nos: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    no->proximo = NULL;
    no->anterior = NULL;
}

void *obtem_dado (no_t *no)
{
    if (no == NULL) {
        fprintf(stderr,"obtem_dado: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    return no->dados;
}

no_t *obtem_proximo (no_t *no)
{
    if (no == NULL) {
        fprintf(stderr,"obtem_proximo: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    return no->proximo;
}
no_t *obtem_anterior (no_t *no)
{
    if (no == NULL) {
        fprintf(stderr,"obtem_anterior: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    return no->anterior;
}

void swap_no(no_t *no1, no_t *no2){

    if (no1 == NULL || no2 == NULL) {
        fprintf(stderr,"swap_no: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    int* temp = NULL;
    temp = no2->dados;
    no2->dados = no1->dados;
    no1->dados = temp;
}

