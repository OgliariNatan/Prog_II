#ifndef FILA_H_INCLUDED
#define FILA_H_INCLUDED

typedef struct filas fila_t;

int  dequeue(fila_t* fila);
void enqueue(int x, fila_t* fila);

int topo (fila_t *fila);
int imprimi (fila_t *fila);
int tamanho(fila_t *fila);
void vazia (fila_t *fila);

fila_t* cria_fila(int tamanho);
void libera_fila(fila_t* fila);

#endif // FILA_H_INCLUDED
