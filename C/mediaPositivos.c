#include <stdio.h>

int main(int argc, char *argv[])
{

    float media, soma = 0;
    int n = 1, cont = 0;

    do
    {
        printf("Entre com um valor positivo. Digite 0 ou um valor negativo para encerrar: ");
        scanf("%d", &n);

        if (n > 0)
        {
            soma += n;
            cont++;
        }
    } while (n > 0);

    media = soma / cont;

    printf("A média dos valores positivos é %.2f", media);

    return 0;
}
