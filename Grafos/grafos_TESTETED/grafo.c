#include <stdio.h>
#include <stdlib.h>

#include "lista_enc.h"
#include "grafo.h"
#include "vertice.h"
#include "fila.h"
#include "no.h"

//#define DEBUG //!<Ativa a depuração


struct grafos{
    lista_enc_t* vertices; // correto
};

grafo_t *cria_grafo(void){

    grafo_t *p = malloc(sizeof(grafo_t));

    if (p == NULL){
        perror("cria_grafo:");
        exit(EXIT_FAILURE);
    }

    p->vertices = cria_lista_enc();

    return p;
}

void add_cabeca_grafo(grafo_t *grafo, no_t *no){

    if (grafo == NULL){
        perror("add_cabeca_grafo:");
        exit(EXIT_FAILURE);
    }

    add_cabeca(grafo->vertices, no);
}

void imprime_grafo(grafo_t *grafo){
printf("\n\n imprime_grafo");
    FILE *fp = NULL;
    no_t *no_vertice = NULL;
    no_t *no_aresta = NULL;
    vertice_t *p = NULL;
printf("\n\n4444444444");

    if (grafo == NULL){
        perror("imprime_grafo:");
        exit(EXIT_FAILURE);
    }
    printf("\n\n4444222222222222444444");
     fp = fopen("grafo3.txt","w");
printf("\n\n1111155555555511");
    if(fp == NULL){
        perror("imprime_grafo:");
        return;
    }
    printf("\n\n114411111");
    fprintf(fp, "graph {\n");
    no_vertice = obter_cabeca(grafo->vertices);
    printf("\n\22");
    while(no_vertice){
        p = obtem_dado(no_vertice);
        no_aresta = obter_cabeca_arestas(p);
        while(no_aresta){
            fprintf(fp, "%d -- %d\n", obter_id(p), obter_id(obtem_dado(no_aresta)));
            no_aresta = obtem_proximo(no_aresta);
        }
        no_vertice = obtem_proximo(no_vertice);
    }
    fprintf(fp,"}");
    fclose(fp);
}

void libera_grafo(grafo_t *grafo){

    if (grafo == NULL){
        perror("libera_grafo:");
        exit(EXIT_FAILURE);
    }
    libera_lista(grafo->vertices);
    free(grafo);
}

void busca_largura(grafo_t *grafo, no_t *elemento){

    fila_t *fila = NULL;
    no_t *no = NULL;
    no_t *no2 = NULL;
    vertice_t *ptr = NULL;
    vertice_t *ptr2 = NULL;

    if (grafo == NULL){
        perror("busca_largura:");
        exit(EXIT_FAILURE);
    }

    no = obter_cabeca(grafo->vertices);

    // inicializa todos os nos
    while(no){
        dist(obtem_dado(no), INFINITO);
        pai(obtem_dado(no), NULL);
        set_visitado(obtem_dado(no), FALSE);
        no = obtem_proximo(no);
    }
    //cria fila
    fila = cria_fila(obter_tamanho(grafo->vertices));
    dist(obtem_dado(elemento), 0);
    enqueue(elemento, fila);

    while(!vazia(fila)){
    printf("AAAAAAAA");
        no = dequeue(fila);
printf(" BBBBBBB");
        ptr = obtem_dado(no);
printf("AAAAARRRRRRRRRRRAAA");
        printf("ptr: %p\n", ptr);
        printf("fila: %d", fila_tamanho(fila));
        printf("--%d--", obtem_visitado(ptr));
        if(!obtem_visitado(ptr)){
            no2 = obter_cabeca_arestas(ptr);

            while(no2){
                ptr2 = obtem_dado(no2);
                printf("ptr2: %p\n", ptr2);
                if(obter_dist(ptr2) == INFINITO)
                    dist(ptr2, obter_dist(ptr) + 1);
                pai(ptr2, no);
                enqueue(no2, fila);
                set_visitado(ptr, 1);
                no2 = obtem_proximo(no2);
            }
        }
    }
    printf("aaaaaaaaaaaaaal");


    printf("eeeeeeeeeeeeel");
}

void imprime_arvore(grafo_t *grafo){

    FILE *fp = NULL;
    no_t *no_vertice = NULL;
    vertice_t *p = NULL;

    fp = fopen("arvore.txt", "w");

    if(fp == NULL){
        perror("imprime_arvore:");
        return;
    }

    if(grafo == NULL){
        perror("imprime_arvore:");
        exit(EXIT_FAILURE);
    }
    fprintf(fp, "graph {\n");
    no_vertice = obter_cabeca(grafo->vertices);
    while(no_vertice){
        p = obtem_dado(no_vertice);
        fprintf(fp, "%d -- %d\n", obter_id(obtem_dado(obtem_pai(p))), obter_id(p));
        no_vertice = obtem_proximo(no_vertice);
    }
    fprintf(fp,"}");
    fclose(fp);
}
