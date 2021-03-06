#include <stdio.h>

int main(void) {

  int qtdeAlunos;
  float somaIdades = 0, media;

  printf("Entre com a quantidade de alunos da classe: ");
  scanf("%d", &qtdeAlunos);

  int idades[qtdeAlunos];

  for (int i = 0; i < qtdeAlunos; i++){
    printf("Entre com a idade do %dº aluno: ", i+1);
    scanf("%d", &idades[i]);
    somaIdades += idades[i];
  }

  for (int i = 0; i < qtdeAlunos; i++){
    printf("Idade do %dº aluno: %d\n", i+1, idades[i]);
  }

  media = somaIdades / qtdeAlunos;

  printf("Média de idades: %.2f", media);
  
  return 0;
}