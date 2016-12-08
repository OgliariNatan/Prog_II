#ifndef GRAFO_H_INCLUDED
#define GRAFO_H_INCLUDED

#include "no.h"
#include "vertice.h"

typedef struct grafos grafo_t;

grafo_t* cria_grafo();

void libera_grafo(grafo_t*);
void imprime_grafo(grafo_t*);
void imprime_arvore(grafo_t*);
void add_cabeca_grafo(grafo_t*, no_t*);
void busca_largura(grafo_t*, no_t*);

#endif // GRAFO_H_INCLUDED
