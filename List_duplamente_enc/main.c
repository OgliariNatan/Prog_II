#include <stdio.h>
#include <stdlib.h>

#include "lista_enc.h"
#include "no.h"

int main()
{
    no_t* elemento = NULL;
    lista_enc_t* lista = NULL;

    int index;
    char nome_1[] = "IFSC";
    char nome_2[] = "DAELN";
    char nome_3[] = "Eletronica";
    char nome_4[] = "Helena";

    lista = cria_lista_enc();

    elemento = cria_no((void*)nome_1);
    add_cabeca(lista, elemento);

    elemento = cria_no((void*)nome_2);
    add_cauda(lista, elemento);

    elemento = cria_no((void*)nome_3);
    add_cabeca(lista, elemento);

    elemento = cria_no((void*)nome_4);
    add_cauda(lista, elemento);

    imprimi_lista(lista);

    printf("Digite uma posicao a ser removida\n");
    scanf("%d",&index);
    remove_pos (lista, index);


    imprimi_lista_tras (lista);

    lista_vazia(lista);

    lista_tamanho (lista);

    return 0;
}
