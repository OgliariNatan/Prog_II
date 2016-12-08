#ifndef VERTICE_H_INCLUDED
#define VERTICE_H_INCLUDED

#define INFINITO 0
#define TRUE 1
#define FALSE 0

typedef struct vertice vertice_t;

vertice_t* cria_vertice(int);

int obter_id(vertice_t*);
int obter_tamanho_arestas(vertice_t*);
int obtem_visitado(vertice_t*);
int obter_dist(vertice_t*);

void liga_vertices(vertice_t*, vertice_t*);
void imprime_arestas(vertice_t*);
void libera_vertice(vertice_t*);
void pai(vertice_t*, no_t*);
void dist(vertice_t*, int);
void set_visitado(vertice_t*, int);

no_t* obter_cabeca_arestas(vertice_t*);
no_t *obtem_pai(vertice_t*);

#endif // VERTICE_H_INCLUDED
