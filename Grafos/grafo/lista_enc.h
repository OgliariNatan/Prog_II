#ifndef LISTA_ENC_H_INCLUDED
#define LISTA_ENC_H_INCLUDED

#include "no.h"

typedef struct listas_enc lista_enc_t;

lista_enc_t *cria_lista_enc(void);

void add_cauda(lista_enc_t*, no_t*);
void add_cabeca(lista_enc_t*, no_t*);
void rem_elemento(lista_enc_t*, int);
void imprime_lista(lista_enc_t*);
void imprime_lista_tras(lista_enc_t*);
void libera_lista(lista_enc_t*);
no_t* obter_cabeca(lista_enc_t*);

void bubble_sort(lista_enc_t*);
void select_sort(lista_enc_t*);

int posicao(lista_enc_t*, no_t*);
int tamanho_enc(lista_enc_t*);
int lista_vazia(lista_enc_t*);
int obter_tamanho(lista_enc_t*);

#endif // LISTA_ENC_H_INCLUDED
