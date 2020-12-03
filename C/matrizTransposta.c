#include <stdio.h>

int main(void) {

  int matriz[4][4];

  for (int i = 0; i < 4; i++){
    for (int j = 0; j < 4; j++){
      printf("Entre com o valor para a posição [%d][%d]\n", i, j);
      scanf("%d", &matriz[i][j]);
    }
  }
  
  printf("\nMatriz original\n");
  for (int i = 0; i < 4; i++){
    printf("|");
    for (int j = 0; j < 4; j++){
      printf("  %d  |", matriz[i][j]);
    }
    printf("\n");
  }

  printf("\nMatriz transposta\n");
  for (int i = 0; i < 4; i++){
    printf("|");
    for (int j = 0; j < 4; j++){
      printf("  %d  |", matriz[j][i]);
    }
    printf("\n");
  }

  return 0;
}