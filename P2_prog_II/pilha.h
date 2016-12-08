#ifndef PILHA_H_INCLUDED
#define PILHA_H_INCLUDED

typedef struct pilhas pilha_t;

typedef enum {
    CHAR,
	STRING,
    INT,
    FLOAT,
    DOUBLE
} TIPO_PILHA;

pilha_t * cria_pilha (TIPO_PILHA tipo);

void imprime_pilha(TIPO_PILHA t, pilha_t *pilha);

void push(void *dado, pilha_t *pilha);
void* pop(pilha_t *pilha);

void *topo_pilha(pilha_t *pilha);

int pilha_vazia(pilha_t *pilha);
void libera_pilha(pilha_t *pilha);

#endif // PILHA_H_INCLUDED
