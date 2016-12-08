#include <stdio.h>
#include <stdlib.h>

#include "lista_enc.h"
#include "no.h"

#define DEBUG

struct listas_enc{
    no_t *cabeca;
    no_t *cauda;
    int tamanho;
};

//cria uma lista vazia
lista_enc_t *cria_lista_enc (void){
    lista_enc_t *p = malloc(sizeof(lista_enc_t));

    if (p == NULL) {
        perror("cria_lista_enc:");
        exit(EXIT_FAILURE);
    }

    p->cabeca = NULL;
    p->cauda = NULL;
    p->tamanho = 0;

    return p;
}

void add_cauda(lista_enc_t *lista, no_t* elemento){
    if (lista == NULL || elemento == NULL) {
        fprintf(stderr,"add_cauda: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

#ifdef DEBUG
    printf("Adicionando %p --- tamanho: %d\n", elemento, lista->tamanho);
#endif // DEBUG

    //lista vazia
    //if ((lista->cabeca ou cauda == NULL))//!< VERIFICAR COM O PROFESSOR
    if (lista->tamanho == 0){
#ifdef DEBUG
        printf("add_cauda: add primeiro elemento: %p\n", elemento);
#endif // DEBUG

        lista->cauda = elemento;
        lista->cabeca = elemento;
        lista->tamanho++;

        desliga_no(elemento);
    }
    else{
        // Remove qualquer ligacao antiga
        desliga_no(elemento);
        // Liga cauda da lista com novo elemento
        liga_nos(lista->cauda, elemento);

        lista->cauda = elemento;
        lista->tamanho++;
    }
#ifdef DEBUG
    printf("-------------------\n");
    printf("Adicionando a CAUDA\n");
    printf("-------------------\n");
#endif // DEBUG
}

void add_cabeca (lista_enc_t *lista, no_t* elemento){ //!<Adiciona um elemento na cabeça

    if (lista == NULL || elemento == NULL){
        fprintf(stderr,"add_cabeca: ponteiros invalidos\n");
        exit(EXIT_FAILURE);
    }

#ifdef DEBUG
    printf("Adicionando a cabeca %p --- tamanho: %d\n", elemento, lista->tamanho);
#endif // DEBUG

    //lista vazia
    if (lista->tamanho == 0){
#ifdef DEBUG
        printf("add_cabeca: add primeiro elemento: %p\n", elemento);
#endif // DEBUG

        lista->cauda = elemento;
        lista->cabeca = elemento;
        lista->tamanho++;

        desliga_no(elemento);
    }

    else{
        // Remove qualquer ligacao antiga
        desliga_no(elemento);
        // Liga cauda da lista com novo elemento

        liga_nos(lista->cabeca, elemento);
        lista->cabeca = elemento;
        lista->tamanho++;

    }
#ifdef DEBUG
    printf("--------------------\n");
    printf("Adicionando a CABECA\n");
    printf("--------------------\n");
#endif // DEBUG
}


void imprimi_lista (lista_enc_t *lista){ //!< Imprimi a lista do inicio para o fim
    no_t *no = NULL;

    if (lista == NULL){

        fprintf(stderr, "imprimi_lista : Ponteiros invalidos \n");
        exit(EXIT_FAILURE);
    }

    no = lista->cabeca;

    while (no){
        printf("---------\n");
        printf("Dados: %p\n",obtem_dado(no));
        printf("---------\n");

        no = obtem_proximo(no);
    }
}

void imprimi_lista_tras (lista_enc_t *lista){ //!< Imprimi a lista de trás pra frente
    no_t *no = NULL;

    if (lista == NULL){
        fprintf(stderr, "imprimi_lista_tras : Ponteiros invalidos \n");
        exit(EXIT_FAILURE);
    }

    no = lista->cauda;

    while (no){
        printf("Dados: %p\n", obtem_dado(no));

        no = obtem_anterior(no);
    }
}

int lista_vazia (lista_enc_t *lista){

     if (lista->tamanho == 0){
          printf("Sua lista esta VAZIA\n");
          return 1;
     }
     else{
          return 0;
     }
}

int lista_tamanho (lista_enc_t *lista){

    printf("--------------------------------\n");
    printf("O tamanho da sua lista vale: %d \n",lista->tamanho);
    printf("--------------------------------\n");

return lista->tamanho;
}

void *remove_pos (lista_enc_t *lista, int index){

    no_t *cabeca_nova;
    char *dado;

    if (index == 0){
     dado = obtem_dado(lista->cabeca);
     lista->tamanho--;




     cabeca_nova = obtem_proximo(lista->cabeca);



     free(lista->cabeca);



#ifdef DEBUG
        printf("remove_pos: remove o elemento: %p\n", dado);
#endif // DEBUG
    }

    else if (lista->tamanho == index){

    }
    else{

    }
return dado;
}

void *remove_cabeca (lista_enc_t *lista){
    char *dado;
    dado = obtem_dado(lista->cabeca);

    desliga_no(lista->cabeca);

return dado;
}

