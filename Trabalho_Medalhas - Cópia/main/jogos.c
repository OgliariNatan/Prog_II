/**
* @file jogos.c
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
#include <windows.h>

#include "jogos.h"

//#define DEBUG
#define TAM_BUFFER 100

struct medalhas
{
    int pos;
    char nacao[TAM_BUFFER];
    int ouro;
    int prata;
    int bronze;
};


/** \brief Função que abre o arquivo e lee
 *
 * \param arquivo a ser aberto
 * \param tamanho do arquivo
 * \return ponteiros dos dados do arquivo
 *
 */
medalha_t** openFile(char *nomearq, int *tamanho)
{
    setlocale(LC_CTYPE,"portuguese");

    medalha_t** lista;

    /**<define as variaveis locais  */
    unsigned int linha = 0, i = 0;
    char buffer[TAM_BUFFER];
    char nacao [TAM_BUFFER];
    int pos, ouro, prata, bronze, ret;

    FILE *fp = NULL;

    fp = fopen(nomearq, "r"); //!< Abre o arquivo das medalhas

    if (fp == NULL)  //!< Verrifica se o arquivo foi aberto
    {
        perror("Erro ao abrir o arquivo");
        exit(EXIT_FAILURE);
    }

    while (fgets(buffer,TAM_BUFFER,fp) != NULL) //!< Conta quantas linha tem
    {
        linha++;
    }

    linha-=1;
    *tamanho = linha;

#ifdef DEBUG
    printf("\nO tamanho do arquivo é :%d\n",linha);
    printf("---------------------------------------");
#endif // DEBUG


    lista = (medalha_t**) malloc(sizeof(medalha_t*)*linha);//<! aloca lista no tamanho do documento

    if (lista == NULL)  //!< verifica se lista foi alocada
    {
        perror("Cria lista: memoria isuficiente\n");
        exit(EXIT_FAILURE);
    }

    rewind(fp);

    fgets(buffer,TAM_BUFFER,fp);//!< não le a primeira linha

    while (fgets(buffer,TAM_BUFFER,fp) != NULL )   //!< verifica o final do arquivo
    {
        ret = sscanf(buffer, "%d;%50[^;];%d;%d;%d\n", &pos, nacao, &ouro, &prata, &bronze);//!< Realiza a leitura por linha

#ifdef DEBUG
        printf("\nLIDO ret  : %d\n", ret);//!<retorna a quantidade de tipos lido
        printf("LIDO posição: %d\n", pos);
        printf("LIDO nação  : %s\n", nacao);
        printf("LIDO ouro   : %d\n", ouro);
        printf("LIDO prata  : %d\n", prata);
        printf("LIDO bronze : %d\n", bronze);
#endif // DEBUG

        if (ret != 5)//!<Verifica se leu todos os tipos da linha
        {
            printf("ERRO: ao ler todos os arquivos");
            exit(EXIT_FAILURE);
        }

        lista[i] = cria_nacao(pos, nacao, ouro, prata, bronze);//!<Cria um pacote de nação

        i++;
    }

    fclose(fp);

    return lista;
}




/** \brief
 *   aloca dinamicamente cinco elementos
 * \param 5 dados a serem armazenados em um arrey de ponteiros
 * \return pais, que contem int; char; int; int; int;
 *
 */
medalha_t* cria_nacao(int pos, char *nacao, int ouro, int prata, int bronze)
{
    setlocale(LC_CTYPE,"portuguese");
    medalha_t* pais;

    pais = (medalha_t*) malloc(sizeof(medalha_t));//<! aloca pais para armazenar os dados

    pais->pos = pos;
    strncpy(pais->nacao, nacao, TAM_BUFFER);
    pais->ouro = ouro;
    pais->prata = prata;
    pais->bronze = bronze;

    return pais;
}



/** \brief Função que ira imprimir os dados na tela
 *
 * \param vetor de dados
 * \param tamanho do vetor
 * \return zero
 *
 */
void imprimiPais (medalha_t** lista_medalha, int tamanho)
{
    setlocale(LC_CTYPE,"portuguese");
    int x;
    for (x = 0; x<tamanho; x++)
    {
        medalha_t* pais = lista_medalha[x];
        printf("Posição = %d\n",   pais->pos);
        printf("Nação   = %s\n", pais->nacao);
        printf("Ouro    = %d\n",  pais->ouro);
        printf("Prata   = %d\n", pais->prata);
        printf("Bronze  = %d\n",pais->bronze);

    }
}



/** \brief Função que busca uma nação para listar o numero de medalhas
 *
 * \param ponteiro das posições
 * \param Nome da nação
 * \param Tamanho dos dados
 *
 */
int buscaNacao ( medalha_t** lista_medalha, char *nomeNacao, int tamanho)
{
    setlocale(LC_CTYPE,"portuguese");
    int soma = 0, x;
    char * com;;

    for (x=0; x<tamanho; x++)
    {
        medalha_t* pais = lista_medalha[x];

        com = strstr(pais->nacao, nomeNacao);

        if (com != NULL)
        {
            soma += pais->ouro;
            soma += pais->prata;
            soma += pais->bronze;
            break;
        }
    }

    return soma;
}



/** \brief Função para desalocar memoria alocada dinamicamente
 *
 * \param Lista de ponteiros
 * \param Tamanho da lista de ponteiros
 *
 */
void desMemo (medalha_t** lista_medalha, int tamanho)
{
    setlocale(LC_CTYPE,"portuguese");
    int x;
    for (x=0; x<tamanho; x++)
    {
        medalha_t* pais = lista_medalha[x];
        free(pais);
    }
    free(lista_medalha);
}


