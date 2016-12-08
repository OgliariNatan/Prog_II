/*

 ============================================================================
 Name        : grafos-adj-matrix.c
 Author      : Renan Augusto Starke
 Version     :
 Copyright   : Renan, todo os direitos reservados
 Description : grafos com matriz de adjacencia, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#include "grafo.h"
#include "no.h"

//#define DEBUG //!<Ativa a depuração

int main(void) {

	grafo_t *g;

	g = cria_grafo(TAM);//!< Cria um grafo

	cria_adjacencia(g, 1, 3);
     cria_adjacencia(g, 3, 1);
     cria_adjacencia(g, 1, 0);
     cria_adjacencia(g, 3, 2);
     cria_adjacencia(g, 1, 4);


     rem_adjacencia(g, 1, 4);
	libera_grafo(g);

	return EXIT_SUCCESS;
}
