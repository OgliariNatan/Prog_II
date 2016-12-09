/*
 ============================================================================
 Name        : main.c
 Author      :
 Version     :
 Copyright   : Renan Augusto Starke, todos os direitos reservados
 Description : arvores com lista encadeadas, Ansi-style
             : estruturas disponiveis:
             : pilha e fila
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "arvore/arvore.h"
#include "arvore/huffman.h"


int main(void) {

	arvore_t *huffman;

	puts("Boa Prova!");


	huffman = inicializa();



	arvore_exportar_grafo_dot("grafo.dot", huffman);

	libera_arvore(huffman);

	return EXIT_SUCCESS;
}




