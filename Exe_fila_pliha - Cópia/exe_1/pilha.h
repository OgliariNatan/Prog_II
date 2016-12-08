#ifndef PILHA_H_INCLUDED
#define PILHA_H_INCLUDED



typedef struct pilhas pilha_t;


pilha_t * cria_pilha (int x);

void push(int dado, pilha_t *pilha);
int pop(pilha_t *pilha);

void libera_pilha(pilha_t *pilha);

#endif // PILHA_H_INCLUDED
