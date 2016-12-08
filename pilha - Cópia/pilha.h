#ifndef PILHA_H_INCLUDED
#define PILHA_H_INCLUDED

#define TAMANHO_DADOS_PILHA 100

typedef struct pilhas pilha_t;


pilha_t * cria_pilha (void);

void push(int dado, pilha_t *pilha);
int pop(pilha_t *pilha);

#endif // PILHA_H_INCLUDED
