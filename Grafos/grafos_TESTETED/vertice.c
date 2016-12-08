#include <stdio.h>
#include <stdlib.h>

#include "lista_enc.h"
#include "vertice.h"
#include "no.h"

struct vertice{
    int id;
    lista_enc_t *arestas; // ai o no.c dados vai ser aresta
    int visitado;
    no_t *pai;
    int dist;
};

vertice_t *cria_vertice(int id){

    vertice_t *p = malloc(sizeof(vertice_t));

    if (p == NULL){
        perror("cria_vertice:");
        exit(EXIT_FAILURE);
    }

    p->id = id;
    p->pai = NULL;
    p->dist = 0;
    p->visitado = FALSE;
    p->arestas = cria_lista_enc();

    return p;
}

void set_visitado(vertice_t *vertice, int visitado){

    if(vertice == NULL){
        perror("set_visitado:");
        exit(EXIT_FAILURE);
    }
    vertice->visitado = visitado;
}

int obtem_visitado(vertice_t *vertice){
    if(vertice == NULL){
        perror("set_visitado:");
        exit(EXIT_FAILURE);
    }
    return vertice->visitado;
}

no_t *obtem_pai(vertice_t *vertice){
    if(vertice == NULL){
        perror("obtem_pai:");
        exit(EXIT_FAILURE);
    }
    return vertice->pai;
}

void liga_vertices(vertice_t *vertice1, vertice_t *vertice2){

    no_t *destino = NULL;
    no_t *fonte = NULL;

    if(vertice1 == NULL){
        perror("liga_vertices:");
        exit(EXIT_FAILURE);
    }

    if(vertice2 == NULL){
        perror("liga_vertices:");
        exit(EXIT_FAILURE);
    }

    destino = cria_no(vertice2);
    fonte = cria_no(vertice1);

    add_cauda(vertice1->arestas, destino);
    pai(vertice2, fonte);
}

void imprime_arestas(vertice_t *vertice){

    if(vertice == NULL){
        perror("imprime_arestas:");
        exit(EXIT_FAILURE);
    }
    imprime_lista(vertice->arestas);
}

void libera_vertice(vertice_t *vertice){

    if(vertice == NULL){
        perror("libera_vertice:");
        exit(EXIT_FAILURE);
    }
    libera_lista(vertice->arestas);
    free(vertice);
}

no_t* obter_cabeca_arestas(vertice_t *vertice){

    if(vertice == NULL){
        perror("obter_cabeca_arestas:");
        exit(EXIT_FAILURE);
    }
    return obter_cabeca(vertice->arestas);
}

int obter_tamanho_arestas(vertice_t *vertice){
    if(vertice == NULL){
        perror("obter_tamanho_arestas:");
        exit(EXIT_FAILURE);
    }
    return obter_tamanho(vertice->arestas);
}

int obter_id(vertice_t *vertice){

    if(vertice == NULL){
        perror("obter_id:");
        exit(EXIT_FAILURE);
    }
    return vertice->id;
}

void pai(vertice_t *vertice, no_t *pai){
    if(vertice == NULL){
        perror("obter_tamanho_arestas:");
        exit(EXIT_FAILURE);
    }
    vertice->pai = pai;
}

void dist(vertice_t *vertice, int dist){
    if(vertice == NULL){
        perror("dist:");
        exit(EXIT_FAILURE);
    }
    vertice->dist = dist;
}

int obter_dist(vertice_t *vertice){
    if(vertice == NULL){
        perror("obter_dist:");
        exit(EXIT_FAILURE);
    }
    return vertice->dist;
}

