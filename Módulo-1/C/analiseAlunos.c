#include <stdio.h>

int main(int argc, char *argv[])
{

    float mediaIdade, porcentagemBaixa;
    int qtdAlunos, ra, cont = 1, novaIdade, idadeAnterior, menorIdade, maiorIdade, maisVelha, maisNova, pontuacao, notaMax = 0, somaIdade = 0, notaBaixa = 0;

    printf("Entre com a quantidade de alunos: ");
    scanf("%d", &qtdAlunos);

    while (cont <= qtdAlunos)
    {
        printf("Entre com o RA: ");
        scanf("%d", &ra);
        printf("Entre com a idade: ");
        scanf("%d", &novaIdade);

        somaIdade += novaIdade;

        if (cont == 1)
        {
            idadeAnterior = novaIdade;
            menorIdade = novaIdade;
            maisNova = ra;
            maiorIdade = novaIdade;
            maisVelha = ra;
        }
        else if (novaIdade > maiorIdade)
        {
            maiorIdade = novaIdade;
            maisVelha = ra;
        }
        else if (novaIdade < menorIdade)
        {
            menorIdade = novaIdade;
            maisNova = ra;
        }
        idadeAnterior = novaIdade;
        cont++;

        printf("Entre com uma pontuação para as aulas de 0 a 10: ");
        scanf("%d", &pontuacao);
        if (pontuacao == 10)
        {
            notaMax++;
        }
        else if (pontuacao <= 5)
        {
            notaBaixa++;
        }
    }

    mediaIdade = somaIdade / qtdAlunos;
    porcentagemBaixa = (notaBaixa * 100) / qtdAlunos;

    printf("Quantidade de pontuações máximas: %d", notaMax);
    printf("\n");
    printf("Média de idade dos alunos: %.2f", mediaIdade);
    printf("\n");
    printf("%.2f %% responderam 5 ou menos para a opinião do curso", porcentagemBaixa);
    printf("\n");
    printf("RA do aluno mais novo: %d", maisNova);
    printf("\n");
    printf("RA do aluno mais velho: %d", maisVelha);
    printf("\n");

    return 0;
}