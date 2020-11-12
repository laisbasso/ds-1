#include <stdio.h>

int mediaAlunos(int argc, char *argv[]) {
	
	float n1, n2, mediaIndividual, mediaGeral;
	int fem = 0, masc = 0, qtdAlunos, sexo;
	
	printf("Entre com a quantidade de alunos: ");
	scanf("%d", &qtdAlunos);
	
	while (qtdAlunos > 0){
		printf("Digite 1 para feminino e 2 para masculino: ");    
		scanf("%d", &sexo);
    if (sexo == 1){
      	fem++;
    } else {
      	masc++;
    }
	printf("Entre com a primeira nota: ");
	scanf("%f", &n1);
	printf("Entre com a segunda nota: ");
	scanf("%f", &n2);
	mediaIndividual = (n1 + n2) / 2;
	printf("A média das notas é %.2f", mediaIndividual);
	printf("\n");
	qtdAlunos--;
	}
  
	printf("Quantidade de alunas: %d", fem);
	printf("\n");
	printf("Quantidade de alunos: %d", masc);
	
	return 0;
}