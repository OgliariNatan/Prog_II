#ifndef PILHA_H_INCLUDED
#define PILHA_H_INCLUDED

#define TAMANHO_DADOS_PILHA 100

typedef struct pilhas pilha_t;


pilha_t * cria_pilha (int n);
void libera_pilha(pilha_t *pilha);

void push(long long int dado, pilha_t *pilha);
long long int pop(pilha_t *pilha);

int pilha_vazia(pilha_t *pilha);

#endif // PILHA_H_INCLUDED
