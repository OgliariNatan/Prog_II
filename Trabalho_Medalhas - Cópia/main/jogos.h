/**
* @file jogos.h
* @brief Medalhas
*
* @author Natan Ogliari
*
* @date 04/09/2016
*/
#ifndef JOGOS_H_INCLUDED
#define JOGOS_H_INCLUDED

typedef struct medalhas medalha_t;


medalha_t** openFile (char *nomearq, int *tamanho);

medalha_t* cria_nacao (int pos, char *nacao, int ouro, int prata, int bronze);

void imprimiPais (medalha_t** lista_medalha, int tamanho);

int buscaNacao ( medalha_t** lista_medalha, char *nomeNacao, int tamanho);

void desMemo (medalha_t** lista_medalha, int tamanho);

#endif // JOGOS_H_INCLUDED
