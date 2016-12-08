/*
 ============================================================================
 Name        : main.c
 Author      : Renan Augusto Starke e Natan Ogliari
 Version     :
 Copyright   : Renan, todos os direitos reservados
 Description : Calculadora a pós-fixada: baseado no exemplo de Estururas
 	 	 	 	 de dados: Celes_Rangel
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include "calc.h"

int main(void)
{

    char c;
    float v;

    calc_t* HP;

    HP = cria_calc();

    /* Está implementação já está concluída *
     * Alterações aqui estão sob sua responsabilidade */

    do
    {
        /* le proximo caractere nao branco */
        scanf(" %c",&c);

        /* verifica se e' operador valido */
        if (c=='+' || c=='-' || c=='*' || c=='/')
        {
            operador(HP,c);
        }

        /* Se 'p', imprime os dados da pilha */
        if (c == 'p')
        {
            imprime_operandos(HP);
        }

        /* devolve caractere lido e tenta ler número */
        else
        {
            ungetc(c,stdin);

            if (scanf("%f",&v) == 1)
            {
                operando(HP,v);
            }
        }
        getchar();

    }
    while (c!='q');

    libera_calc(HP);


    return EXIT_SUCCESS;
}
