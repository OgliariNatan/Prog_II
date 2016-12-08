/*
 * grafo.c
 *
 *  Created on: Jul 5, 2016
 *      Author: Renan Augusto Starke
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include "grafo.h"
#include "vertice.h"
#include "../lista_enc/lista_enc.h"
#include "../lista_enc/no.h"
#include "../fila/fila.h"

#include "../pilha/pilha.h"

#define FALSE 0
#define TRUE 1

#define DEBUGMEU

#define INFINITO INT_MAX

struct grafos {
	int id;
	lista_enc_t *vertices;
};


void bfs(grafo_t *grafo, vertice_t* inicial)
{
     puts("Inicio do BFS");
    if (grafo == NULL || inicial == NULL){
        fprintf(stderr,"bfs: ponteiros invalidos");
        exit(EXIT_FAILURE);
    }

     no_t *no;
     vertice_t *vertice1, *vertice2;
     lista_enc_t *lista;
     arestas_t *aresta;
     int distancia, grupo;      //nivel da arvore gerada
     fila_t *fila = cria_fila();

     lista = grafo->vertices;

     no = obter_cabeca(lista);

     while (no){         //inicializa o grafo para a busca em largura
          vertice1 = obter_dado(no);
          vertice_set_grupo(vertice1,INFINITO);
          vertice_set_pai(vertice1,NULL);
          no = obtem_proximo(no);
     }

     vertice1 = inicial;
     distancia = 0;

     vertice_set_grupo(vertice1,distancia);
     enqueue(vertice1, fila);

     while (!fila_vazia(fila)){
          distancia++;
          vertice1 = dequeue(fila);
          lista = vertice_get_arestas(vertice1);
          no = obter_cabeca(lista);
          printf("\nProximo Vertice: %p\nLista: %p\nNo: %p\n",vertice1,lista,no);
          while (no){
               aresta = (arestas_t*)obter_dado(no);
               vertice2 = aresta_get_adjacente(aresta);
               grupo = vertice_get_grupo(vertice2);
               printf("vertice %d: %p\n",grupo,vertice2);
               if (grupo == INFINITO){
                    printf("New_dist: %d\n",distancia);
                    vertice_set_pai(vertice2, vertice1);
                    vertice_set_grupo(vertice2,distancia);
                    enqueue(vertice2, fila);
               }
               no = obtem_proximo(no);
          }
     }

     puts("FIM do BFS");
     libera_fila(fila);
}


void dfs(grafo_t *G, vertice_t* u)
{
     if (G == NULL || u == NULL){
        perror("busca_profundidade: ponteiro invalido.");
        exit(EXIT_FAILURE);
    }

    pilha_t *pilha;
    lista_enc_t *arestas;
    vertice_t *v;
    arestas_t *a;
    no_t *no_vertice, *no_aresta;

    no_vertice = obter_cabeca(G->vertices);

    while (no_vertice){
        v = (vertice_t*)obter_dado(no_vertice);
        vertice_set_visitado(v,FALSE);
        no_vertice = obtem_proximo(no_vertice);
    }
    pilha = cria_pilha();
    push(u,pilha);

   while (!pilha_vazia(pilha)){

     u = pop(pilha);

     if (vertice_get_visitado(u)==FALSE){
         vertice_set_visitado(u,TRUE);

          arestas = vertice_get_arestas(u);
          no_aresta = obter_cabeca(arestas);

          while (no_aresta){

               a = (arestas_t*)obter_dado(no_aresta);
               v = aresta_get_adjacente(a);

               push(v,pilha);

               no_aresta = obtem_proximo(no_aresta);
          }
     }
   }
}

//--------------------------------------------------------------------------------------

grafo_t *cria_grafo(int id)
{
	grafo_t *p = NULL;

	p = (grafo_t*) malloc(sizeof(grafo_t));

	if (p == NULL)	{
		perror("cria_grafo:");
		exit(EXIT_FAILURE);
	}

	p->id = id;
	p->vertices = cria_lista_enc();

	return p;
}

vertice_t* grafo_adicionar_vertice(grafo_t *grafo, int id)
{
	vertice_t *vertice;
	no_t *no;

#ifdef DEBUG
	printf("grafo_adicionar_vertice: %d\n", id);
#endif

	if (grafo == NULL)	{
			fprintf(stderr,"grafo_adicionar_vertice: grafo invalido!");
			exit(EXIT_FAILURE);
	}

	if (procura_vertice(grafo, id) != NULL) {
		fprintf(stderr,"grafo_adicionar_vertice: vertice duplicado!\n");
		exit(EXIT_FAILURE);
	}

	vertice = cria_vertice(id);
	no = cria_no(vertice);

	add_cauda(grafo->vertices, no);

	return vertice;
}

vertice_t* procura_vertice(grafo_t *grafo, int id)
{
	no_t *no_lista;
	vertice_t *vertice;
	int meu_id;

	if (grafo == NULL)	{
		fprintf(stderr,"procura_vertice: grafo invalido!");
		exit(EXIT_FAILURE);
	}

	if (lista_vazia(grafo->vertices) == TRUE)
		return FALSE;

	no_lista = obter_cabeca(grafo->vertices);

	while (no_lista)
	{
		//obtem o endereco da lista
		vertice = obter_dado(no_lista);

		//obterm o id do vertice
		meu_id = vertice_get_id(vertice);

		if (meu_id == id) {
			return vertice;
		}

		no_lista = obtem_proximo(no_lista);
	}

	return NULL;
}

void adiciona_adjacentes(grafo_t *grafo, vertice_t *vertice, int n, ...)
{
	va_list argumentos;
	vertice_t *sucessor;
	arestas_t *aresta;

	int id_sucessor;
	int peso;
        int x;

	/* Initializing arguments to store all values after num */
	va_start (argumentos, n);

	for (x = 0; x < n; x=x+2 )
	{
		id_sucessor = va_arg(argumentos, int);
		peso = va_arg(argumentos, int);

		sucessor = procura_vertice(grafo, id_sucessor);

		if (sucessor == NULL) {
			fprintf(stderr, "adiciona_adjacentes: sucessor nao encontrado no grafo\n");
			exit(EXIT_FAILURE);
		}

		aresta = cria_aresta(vertice, sucessor,peso);
		adiciona_aresta(vertice, aresta);

#ifdef DEBUG
		printf("\tvertice: %d\n", vertice_get_id(vertice));
		printf("\tsucessor: %d\n", id_sucessor);
		printf("\tpeso: %d\n", peso);
#endif

	}

	va_end (argumentos);
}

void exportar_grafo_dot(const char *filename, grafo_t *grafo)
{
	FILE *file;

	no_t *no_vert;
	no_t *no_arest;
	vertice_t *vertice;
	vertice_t *adjacente;
	arestas_t *aresta;
	arestas_t *contra_aresta;
	lista_enc_t *lista_arestas;

	int peso;

	if (filename == NULL || grafo == NULL){
		fprintf(stderr, "exportar_grafp_dot: ponteiros invalidos\n");
		exit(EXIT_FAILURE);
	}

	file = fopen(filename, "w");

	if (file == NULL){
		perror("exportar_grafp_dot:");
		exit(EXIT_FAILURE);
	}

	fprintf(file, "graph {\n");

	//obtem todos os nos da lista
	no_vert = obter_cabeca(grafo->vertices);
	while (no_vert){
		vertice = obter_dado(no_vert);

		//obtem todos as arestas
		lista_arestas = vertice_get_arestas(vertice);

		no_arest = obter_cabeca(lista_arestas);
		while (no_arest) {
			aresta = obter_dado(no_arest);

			//ignora caso já exportada
			if (aresta_get_status(aresta) == EXPORTADA) {
				no_arest = obtem_proximo(no_arest);
				continue;
			}

			//marca como exportada esta aresta
			aresta_set_status(aresta, EXPORTADA);
			adjacente = aresta_get_adjacente(aresta);

			//marca contra-aresta também como exporta no caso de grafo não direcionados
			contra_aresta = procurar_adjacente(adjacente, vertice);
			aresta_set_status(contra_aresta, EXPORTADA);

			//obtem peso
			peso = aresta_get_peso(aresta);

			fprintf(file, "\t%d -- %d [label = %d];\n",
					vertice_get_id(vertice),
					vertice_get_id(adjacente),
					peso);

			no_arest = obtem_proximo(no_arest);
		}
		no_vert = obtem_proximo(no_vert);
	}
	fprintf(file, "}\n");
	fclose(file);
}


void libera_grafo (grafo_t *grafo){
	no_t *no_vert;
	no_t *no_arest;
	no_t *no_liberado;
	vertice_t *vertice;
	arestas_t *aresta;
	lista_enc_t *lista_arestas;

	if (grafo == NULL) {
		fprintf(stderr, "libera_grafo: grafo invalido\n");
		exit(EXIT_FAILURE);
	}

	//varre todos os vertices
	no_vert = obter_cabeca(grafo->vertices);
	while (no_vert){
		vertice = obter_dado(no_vert);

		//libera todas as arestas
		lista_arestas = vertice_get_arestas(vertice);
		no_arest = obter_cabeca(lista_arestas);
		while (no_arest){
			aresta = obter_dado(no_arest);

			//libera aresta
			free(aresta);

			//libera no da lsita
			no_liberado = no_arest;
			no_arest = obtem_proximo(no_arest);
			free(no_liberado);
		}

		//libera lista de arestas e vertice
		free(lista_arestas);
		free(vertice);

		//libera no da lista
		no_liberado = no_vert;
		no_vert = obtem_proximo(no_vert);
		free(no_liberado);
	}

	//libera grafo e vertice
	free(grafo->vertices);
	free(grafo);
}
