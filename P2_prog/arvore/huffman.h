/*
 * huffman.h
 *
 *  Created on: Nov 29, 2016
 *      Author: xtarke
 */

#ifndef ARVORE_HUFFMAN_H_
#define ARVORE_HUFFMAN_H_

arvore_t *inicializa(void);
void decode(const char *file_name, arvore_t* arvore);
void pre_ordem_recursivo(vertice_t *vertice);

#endif /* ARVORE_HUFFMAN_H_ */
