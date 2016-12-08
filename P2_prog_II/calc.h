/*
 * calc.h
 *
 *  Created on: Oct 3, 2016
 *      Author: Renan Augusto Starke e Natan Ogliari
 */

#ifndef CALC_H_
#define CALC_H_


/* Arquivo que define a interface da calculadora */
typedef struct calculadora calc_t;

/* Cria calculadora */
calc_t* cria_calc();

/* operações */
void operando (calc_t* c, float v);
void operador (calc_t* c, char op);

/* impressão de operandos armazenados */
void imprime_operandos (calc_t *c);

/* liberação */
void libera_calc (calc_t* c);


#endif /* CALC_H_ */
