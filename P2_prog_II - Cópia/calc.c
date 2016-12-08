/*
 * calc.c
 *
 *  Created on: Oct 3, 2016
 *      Author: Renan Augusto Starke e Natan Ogliari
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "calc.h"
#include "pilha.h"

#define DEBUG //!<Ativa a depuração


struct calculadora{
    pilha_t* pilha;
};

/* Implemente esta função */
void operando (calc_t* c, float v)
{
    float *p = malloc(sizeof(float));

    if (p == NULL)    {
         perror("ERRO ao alocar *P*\n");
         exit(EXIT_FAILURE);
    }

    *p = v;

    push(p, c->pilha);


#ifdef DEBUG
    printf("----------------------\n");
    printf("**Operando**\n");
    printf("----------------------\n");
#endif /// DEBUG
}

/* Implemente esta função */
void operador (calc_t* c, char op)
{
    float *aux, *aux1;

    if (c == NULL){
          fprintf(stderr,"operador: ponteiro invalido\n");
          exit(EXIT_FAILURE);
    }

    if (op == '-'){//!<Realiza a subtração

        aux  = pop (c->pilha);
        aux1 = pop (c->pilha);

        if (aux == NULL || aux1 == NULL) {
               fprintf(stderr,"Ponteiro de subtracao invalido.\n");
               exit(EXIT_FAILURE);
        }

        *aux = *aux - *aux1;
        push (aux, c->pilha);
        free(aux1);
#ifdef DEBUG
        printf("A subtracao vale: %f\n",*aux);
#endif /// DEBUG
    }

    if (op == '+'){//!<Realiza a adição

        aux  = pop (c->pilha);
        aux1 = pop (c->pilha);

         if (aux == NULL || aux1 == NULL) {
               fprintf(stderr,"Ponteiro de subtracao invalido.\n");
               exit(EXIT_FAILURE);
        }

        *aux = *aux + *aux1;
        push (aux, c->pilha);
        free(aux1);
#ifdef DEBUG
        printf("A Adicao vale: %f\n",*aux);
#endif /// DEBUG
    }

    if (op == '*'){//!<Realiza a multiplicação

        aux = pop(c->pilha);
        aux1 = pop (c->pilha);

         if (aux == NULL || aux1 == NULL) {
               fprintf(stderr,"Ponteiro de subtracao invalido.\n");
               exit(EXIT_FAILURE);
        }

        *aux = *aux * *aux1;
        push (aux, c->pilha);
        free(aux1);
#ifdef DEBUG
        printf("A Multiplicacao vale: %f\n",*aux);
#endif /// DEBUG
    }

    if (op == '/'){//!<Realiza a divisão

        aux = pop(c->pilha);
        aux1 = pop (c->pilha);

         if (aux == NULL || aux1 == NULL) {
               fprintf(stderr,"Ponteiro de subtracao invalido.\n");
               exit(EXIT_FAILURE);
        }

        *aux = *aux / *aux1;
        push (aux, c->pilha);
        free(aux1);
#ifdef DEBUG
        printf("A Divisao vale: %f\n",*aux);
#endif /// DEBUG
    }
}

/* Implemente esta função */
void libera_calc (calc_t* c){
    float *dado;

    if (c == NULL){//!< Verifica se "c" é valido

         fprintf(stderr,"Libera_cal: Ponteiro invalido\n");
         exit(EXIT_FAILURE);
    }

    while (!pilha_vazia(c->pilha)){//!< remove e libera todos os dados remanescentes da pilha

         dado = pop(c->pilha);
         free(dado);
    }
    //!< Libera pilha e calculadora
    libera_pilha(c->pilha);
    free(c);
}

/*------------------------------------------------*/

calc_t* cria_calc (){
    calc_t* c = (calc_t*) malloc(sizeof(calc_t));

    if (c == NULL)    {
        perror("cria_calc");
        exit(EXIT_FAILURE);
    }

    /* cria pilha vazia */
    c->pilha = cria_pilha(FLOAT);

    return c;
}


void imprime_operandos (calc_t *c)
{

    if (c == NULL){
        fprintf(stderr, "operador: ponteiro invalido.\n");
        exit(EXIT_FAILURE);
    }

    imprime_pilha(FLOAT, c->pilha);
}

/*
    printf("----------------------\n");
    printf("TESTE DE DEPURACAO\n");
    printf("----------------------\n");
*/
