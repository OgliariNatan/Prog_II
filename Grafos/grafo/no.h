#ifndef NO_H_INCLUDED
#define NO_H_INCLUDED

typedef struct nos no_t;

no_t *cria_no(void*);
no_t *obtem_proximo(no_t*);
no_t *obtem_anterior(no_t*);

void *obtem_dado(no_t*);

void liga_nos(no_t*, no_t*);
void desliga_no(no_t*);
void swap_no(no_t*, no_t*);

#endif // NO_H_INCLUDED
