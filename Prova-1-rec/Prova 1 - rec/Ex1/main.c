#include <stdio.h>
#include <stdlib.h>
#include "pilha.h"
#include "locale.h"

int main()
{
    setlocale(LC_ALL,"portuguese");
    pilha_t* pilha;
    long long int anterior, ultimo, resultado, x;
    int i,n;

    printf("Escolha o número de termos (até 90) para que seja feita a lista de sequencia de fibonacci: ");
    scanf("%i",&n);
    printf("\n");
    pilha=cria_pilha(n+1);

    push(1,pilha);
    push(1,pilha);

    for(i=0;i<n-2;i++){
        ultimo=pop(pilha);
        anterior=pop(pilha);
        resultado=ultimo+anterior;
        push(anterior,pilha);
        push(ultimo,pilha);
        push(resultado,pilha);
    }

    for(i=n;i>0;i--){
        x=pop(pilha);
        printf("n=%i ---> %lld \n",i,x);
    }

    libera_pilha(pilha);

    return 0;
}
