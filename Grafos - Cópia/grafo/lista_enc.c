#include <stdio.h>
#include <stdlib.h>

#include "lista_enc.h"
#include "grafo.h"
#include "no.h"

#define DEBUG

struct listas_enc {
    no_t *cabeca;
    no_t *cauda;
    int tamanho;
};

//cria uma lista vazia
lista_enc_t *cria_lista_enc (void) {

    lista_enc_t *p = malloc(sizeof(lista_enc_t));

    if (p == NULL){
        perror("cria_lista_enc:");
        exit(EXIT_FAILURE);
    }

    p->cabeca = NULL;
    p->cauda = NULL;
    p->tamanho = 0;

    return p;
}

no_t* obter_cabeca(lista_enc_t *lista){

    if (lista == NULL){
        fprintf(stderr,"\nobter_cabeca: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }
    return lista->cabeca;
}

int obter_tamanho(lista_enc_t *lista){
    if (lista == NULL){
        fprintf(stderr,"\nobter_tamanho: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }
    return lista->tamanho;
}

void add_cauda(lista_enc_t *lista, no_t* elemento){

    #ifdef DEBUG
        printf("\n\nadd_cauda():");
    #endif // DEBUG

    if (lista == NULL || elemento == NULL){
        fprintf(stderr,"\nadd_cauda: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    #ifdef DEBUG
        printf("\nadicionando %p --- tamanho: %d", elemento, lista->tamanho);
    #endif // DEBUG

   //lista vazia
   if (lista->tamanho == 0){
        lista->cauda = elemento;
        lista->cabeca = elemento;
        lista->tamanho++;

        desliga_no(elemento);
   }
   else {
        // Remove qualquer ligacao antiga
        desliga_no(elemento);
        // Liga cauda da lista com novo elemento
        liga_nos(lista->cauda, elemento);

        lista->cauda = elemento;
        lista->tamanho++;
   }
    #ifdef DEBUG
        printf("\nelemento %p adicionado --- tamanho: %d", elemento, lista->tamanho);
    #endif // DEBUG
}
void add_cabeca(lista_enc_t *lista, no_t* elemento){

    #ifdef DEBUG
        printf("\n\nadd_cabeca():");
    #endif // DEBUG

    if (lista == NULL || elemento == NULL){
        fprintf(stderr,"\nadd_cabeca: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    #ifdef DEBUG
        printf("\nadicionando %p --- tamanho: %d", elemento, lista->tamanho);
    #endif // DEBUG

   //lista vazia
   if (lista->tamanho == 0){
        lista->cauda = elemento;
        lista->cabeca = elemento;
        lista->tamanho++;
        desliga_no(elemento);
   }
   else {
        // Remove qualquer ligacao antiga
        desliga_no(elemento);
        // Liga cabeca da lista com novo elemento
        liga_nos(elemento, lista->cabeca);
        lista->cabeca = elemento;
        lista->tamanho++;
   }
    #ifdef DEBUG
        printf("\nelemento %p adicionado --- tamanho: %d", elemento, lista->tamanho);
    #endif // DEBUG
}
void rem_elemento(lista_enc_t* lista, int index){

    no_t *no = NULL;
    int i = 1;

    #ifdef DEBUG
        printf("\n\nrem_elemento():");
    #endif // DEBUG

    if (lista == NULL){
        fprintf(stderr,"rem_elemento: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }
    if(lista->tamanho == 0){
        fprintf(stderr, "rem_elemento: lista vazia!");
        return;
    }
    no = lista->cabeca;
    while(no){
        #ifdef DEBUG
            printf("\ni: %d", i);
        #endif // DEBUG
        if(i == index){
            if(index == 1){
                lista->cabeca = obtem_proximo(no);
                desliga_no(no);
            }
            else if(index == lista->tamanho){
                lista->cauda = obtem_anterior(no);
                desliga_no(no);
            }
            else{
                liga_nos(obtem_anterior(no), obtem_proximo(no));
                desliga_no(no);
            }
            lista->tamanho--;
            #ifdef DEBUG
                printf("\nDado removido: %p", obtem_dado(no));
            #endif // DEBUG
            return;
        }
        no = obtem_proximo(no);
        i++;
    }
}
int posicao(lista_enc_t *lista, no_t *elemento){

    no_t *no = NULL;
    int index = 1;

    #ifdef DEBUG
        printf("\n\nposicao():");
    #endif // DEBUG

    if (lista == NULL || elemento == NULL){
        fprintf(stderr,"\nposicao: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }
    no = lista->cabeca;
    while (no){
        #ifdef DEBUG
            printf("\nindex: %d", index);
        #endif // DEBUG
        if(no == elemento)
            return index;
        no = obtem_proximo(no);
        index++;
    }
    return -1;
}
int tamanho_enc(lista_enc_t *lista){

    if (lista == NULL){
        fprintf(stderr,"\ntamanho: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }
    return lista->tamanho;
}
int lista_vazia(lista_enc_t *lista){

    if (lista == NULL){
        fprintf(stderr,"\nlista_vazia: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }
    if(lista->tamanho == 0)
        return 1;
    return 0;
}
void imprime_lista (lista_enc_t *lista){

    no_t *no = NULL;

    #ifdef DEBUG
        printf("\n\nimprime_lista():");
    #endif // DEBUG

    if (lista == NULL){
        fprintf(stderr,"\nimprime_lista: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    no = lista->cabeca;

    while (no){
        printf("\nDados: %p", obtem_dado(no));
        no = obtem_proximo(no);
    }
}
void imprime_lista_tras(lista_enc_t *lista){

    no_t * no = NULL ;

    #ifdef DEBUG
        printf("\n\nimprime_lista_tras():");
    #endif // DEBUG

    if(lista == NULL){
        fprintf(stderr, "imprime_lista_tras: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    no = lista->cauda;
    while(no){
        printf("Dados: %p\n", obtem_dado(no));
        no = obtem_anterior(no);
    }
}
void libera_lista(lista_enc_t *lista){

    no_t *no = NULL;
    no_t *proximo = NULL;

    #ifdef DEBUG
        printf("\n\nlibera_lista():");
    #endif // DEBUG

    if (lista == NULL){
        fprintf(stderr,"\nlibera_lista: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    proximo = lista->cabeca;

    while (no){
        no = proximo;
        free(no);
        no = obtem_proximo(proximo);
    }
    free(lista);
    #ifdef DEBUG
        printf("\nlista liberada!");
    #endif // DEBUG
}

void bubble_sort(lista_enc_t *lista){

    no_t *no = NULL;

    int i, j;

    #ifdef DEBUG
        printf("\n\nbubble_sort(): ");
    #endif // DEBUG

    if (lista == NULL){
        fprintf(stderr,"\nbubble_sort: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    for(i = lista->tamanho; i > 1; i--){
        no = lista->cabeca;
        for(j = 0; j < i - 1; j++){
            if(obtem_dado(no) > obtem_dado(obtem_proximo(no))){
                swap_no(no, obtem_proximo(no));
                #ifdef DEBUG
                    imprime_lista(lista);
                #endif // DEBUG
            }
            no = obtem_proximo(no);
        }
    }
}

void select_sort(lista_enc_t *lista){

    no_t *no = NULL;
    no_t *max = NULL;
    no_t *fim = NULL;

    int i, j;

    #ifdef DEBUG
        printf("\n\nselect_sort():");
    #endif // DEBUG

    if (lista == NULL){
        fprintf(stderr,"\nselect_sort: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

    fim = lista->cauda;
    for(i = lista->tamanho; i > 1; i--){
        max = lista->cabeca;
        no = lista->cabeca;
        j = 0;
        do{
            if((obtem_dado(no)) > ((obtem_dado(max))))
                max = no;
            if(obtem_proximo(no))
                no = obtem_proximo(no);
            j++;
        }while(j < i);
        swap_no(fim, max);
        #ifdef DEBUG
            imprime_lista(lista);
        #endif // DEBUG
        fim = obtem_anterior(fim);
    }
}
