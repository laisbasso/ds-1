#include <stdio.h>

int main(void) {

  int matriz[5][10];

  for (int i = 0; i < 5; i++){
    for (int j = 0; j < 10; j++){
      printf("Entre com o valor para a posição [%d][%d] \n", i, j);
      scanf("%d", &matriz[i][j]);
    }
  }
  
  for (int i = 0; i < 5; i++){
    printf("|");
    for (int j = 0; j < 10; j++){
      printf("  %d  |", matriz[i][j]);
    }
    printf("\n");
  }

  //for (int i = 0; i < 5; i++){
  //  for (int j = 0; j < 10; j++){
  //    printf("Posição [%d][%d] = %d\n", i, j, matriz[i][j]);
  //  }
  //}

  return 0;
}