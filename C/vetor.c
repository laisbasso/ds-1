#include <stdio.h>

int main(void) {
  int vetor[5];
  
  for (int i = 0; i < 5; i++){
    vetor[i] = i;
    printf("%d", vetor[i]);
    printf("\n");
  }
}