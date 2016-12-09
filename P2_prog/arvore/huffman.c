/*
 * huffman.c
 *
 *  Created on: Nov 29, 2016
 *      Author: Renan Augusto Starke
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "arvore.h"
#include "vertice.h"
#include "../fila/fila.h"
#include "../pilha/pilha.h"

#define DEBUG
#define CODE_SIZE 7

vertice_t *cria_folha_huffman(int id, int freq, char simbolo);
void ordenar_prioridade(fila_t *fila);
void *dequeue_menor_freq(fila_t *fila);

struct sim_tb {
	char simbolo;
	int freq;
	vertice_t *folha;
	char code[CODE_SIZE + 1];
};


/*------------------------------------------------------------------------------*
*
*     IMPLEMENTE SUA PROVA AQUI, SOMENTE NA FUNÇÃO:
*      - arvore_t *inicializa(void)
*
*
*     Evite reimplementações.
*
*
*     May the force be with you.
*
*-------------------------------------------------------------------------------*/


arvore_t *inicializa(void){

	int i,n;
	arvore_t *arvore_huffman;
	vertice_t *folha_1;
	vertice_t *folha_2;
	vertice_t *pai;
	fila_t *fila;

	/* Tabela de símbols  */
	struct sim_tb tabela[] = {{ ' ', 31},{ 'e', 18},{ 't', 14},{ 'r', 12},{ 'h', 12},{ 'a', 11},{ 'i', 10},{ 'c', 10},{ 'n', 7},{ 'd', 7},{ 's', 6},{ 'o', 5},{ 'l', 4},{ 'w', 3},{ 'u', 3},{ 'm', 2},{ 'f', 2},{ 'y', 1},{ 'p', 1},{ 'I', 1},{ 'g', 1},{ 'b', 1},{ '.', 1},{ ',', 1}};

	/* Tamanho da tabela se símbolos */
	n = sizeof(tabela)/sizeof(struct sim_tb);
#ifdef DEBUG
	puts("--------------------");
	printf("Tamanho de n: %d\n",n);
	puts("--------------------");
#endif // DEBUG

	/* Cria estruturas */
	arvore_huffman = cria_arvore(0);
	fila = cria_fila();

    if (fila == NULL || arvore_huffman == NULL){
        fprintf(stderr,"Cria fila OU arvore_huffman: INVALIDA\n");
        exit(EXIT_FAILURE);
    }

#ifdef DEBUG
puts("--------------------");
    puts("ENTROU NO FOR");
#endif // DEBUG
	//Cria todos as folhas
	for (i=0; i < n; i++){

    folha_1 = cria_folha_huffman(i, tabela[i].freq, tabela[i].simbolo);
    arvore_adicionar_vertice (arvore_huffman, folha_1);
    enqueue(folha_1 ,fila);//!<Add folha_1 na fila de prioridades
	}
#ifdef DEBUG
    puts("FIM DO FOR");
    puts("--------------------");
#endif // DEBUG


    while(fila_tamanho(fila) > 1){


        folha_1 = dequeue_menor_freq(fila);//!< Desenfileira com menor frequencia
        folha_2 = dequeue_menor_freq(fila);//!< Desenfileira com menor frequencia
        pai = cria_folha_huffman(i, tabela[i].freq, '+');
        i++;
#ifdef DEBUG
        printf("numero de interacao do while vale: %d\n",i);
#endif // DEBUG


        vertice_set_freq(pai, (vertice_get_freq(folha_1) + vertice_get_freq(folha_2)));
        vertice_set_esq(pai, folha_1);
        vertice_set_dir(pai, folha_2);
        enqueue(pai,fila);//!<Add pai na fila de prioridades
        arvore_adicionar_vertice(arvore_huffman, pai);
#ifdef DEBUG
        printf("Vertice vale como folha_1: %d\nVertice vale como folha_2: %d\n", vertice_eh_folha(folha_1),vertice_eh_folha(folha_2));
#endif // DEBUG
    }

    folha_1 = dequeue(fila);//!< tornar como RAIZ
    arvore_set_raiz(arvore_huffman, folha_1);

    libera_fila(fila);
#ifdef DEBUG
    puts("FIM do INICIALIZA()");
#endif // DEBUG
	return arvore_huffman;
}



/*------------------------------------------------------------------------------*/

vertice_t *cria_folha_huffman(int id, int freq, char simbolo){
	vertice_t *folha;

	folha = cria_vertice(id);
	vertice_set_freq(folha, freq);
	vertice_set_simbolo(folha, simbolo);

	return folha;
}


/* Coloca vertice com menor frequencia no topo da fila */
void ordenar_prioridade(fila_t *fila){

	fila_t* fila_2;

    vertice_t *vertice;
    vertice_t *mais_freq = NULL;

	if (fila == NULL)      {
		fprintf(stderr, "promover_mais_velho: fila invalida\n");
		exit(EXIT_FAILURE);
	}

	fila_2 = cria_fila();

	while (!fila_vazia(fila)){

		vertice = dequeue(fila);

		if (mais_freq == NULL)
			mais_freq = vertice;
		else {
			if (vertice_get_freq(vertice) < vertice_get_freq(mais_freq))
				mais_freq = vertice;
		}

		enqueue(vertice, fila_2);
	}

	enqueue(mais_freq, fila);

	while (!fila_vazia(fila_2)){
		vertice = dequeue(fila_2);

		if (vertice != mais_freq)
			enqueue(vertice, fila);
	}

	libera_fila(fila_2);
}

/* Dequeue em uma fila de prioridades, removendo o vertice com menor frequencia */
void *dequeue_menor_freq(fila_t *fila){

	void *dado;

	ordenar_prioridade(fila);
	dado = dequeue(fila);

	return dado;
}

