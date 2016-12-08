#ifndef FILA_H_INCLUDED
#define FILA_H_INCLUDED

typedef struct filas fila_t;

fila_t* cria_fila(int);

void *dequeue(fila_t*);
int enqueue(void*, fila_t*);
int cabeca(fila_t*);
int contem(fila_t*, void*);
int tamanho(fila_t*);
int vazia(fila_t*);
int fila_tamanho(fila_t*);

void libera_fila(fila_t*);
void imprimir(fila_t*);

#endif // FILA_H_INCLUDED
