#include <stdio.h>

int main(int argc, char *argv[])
{
    int num, pares = 0, soma = 0;
    float media;

    printf("Digite 4 números inteiros");

    for (int cont = 0; cont < 4; cont++)
    {
        printf("\nEntre com o %d º número: ", (cont + 1));
        scanf("%d", &num);
        if (num % 2 == 0)
        {
            pares++;
            soma += num;
        }
    }
    media = soma / pares;
    printf("\nTotal de números pares digitados: %d", pares);
    printf("\nSoma dos números pares digitados: %d", soma);
    printf("\nMédia dos números pares digitados: %.2f", media);
    return 0;
}
