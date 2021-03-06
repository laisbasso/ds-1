programa
{
	inteiro vA[5], vB[5], i = 0, j = 4
	funcao inicio()
	{
		
		escreva("Vetor A\n")
		para(i; i < 5; i++){
			escreva("Valor ", i+1, ": ")
			leia(vA[i])
			vB[j] = vA[i]
			j--
		}
		
		escreva("\nVetor B\n")
		para(i = 0; i < 5; i++){
			escreva("Valor ", i+1, ": ", vB[i], "\n")
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 190; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vA, 3, 9, 2}-{vB, 3, 16, 2}-{i, 3, 23, 1}-{j, 3, 30, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */