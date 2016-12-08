/**
* @file main.c
* @brief Medalhas
*
* @author Natan Ogliari
*
* @date 04/09/2016
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
#include "jogos.h"



//#define DEBUG //!<Ativa a depuração



int main()
{
    setlocale(LC_CTYPE,"portuguese");
    char nomeNacao[30];
    int tamanho = 0, soma = 0, menu;
    medalha_t **lista_medalha;

    lista_medalha = openFile("medalhas.csv", &tamanho); //!< Chama a função para abrir arquivo

    imprimiPais (lista_medalha, tamanho);

#ifdef DEBUG
    printf("teste de depuração\n");
#endif /// DEBUG


    do//!< Cria um menu
    {
        printf("Digite o nome da nação a ser buscada:\n");
        fflush(stdin); //!<Limpa buffer do teclado
        gets(nomeNacao);

        soma = buscaNacao (lista_medalha, nomeNacao, tamanho);
        printf("A Soma das Medalhas do país %s é: %d\n",nomeNacao, soma);

        printf("Digite <0> para sair\n");
        scanf("%d",&menu);
    }
    while(!(menu==0));

    desMemo (lista_medalha, tamanho);

    return 0;
}
