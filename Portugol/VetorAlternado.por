programa
{
	inteiro vA[10], vB[10], vC[20], i = 0, j= 0
	funcao inicio()
	{
		
		escreva("Vetor A\n")
		para(i; i < 10; i++){
			escreva("Valor ", i+1, ": ")
			leia(vA[i])
			vC[j] = vA[i]
			j += 2
		}

		j = 1
		escreva("\nVetor B\n")
		para(i = 0; i < 10; i++){
			escreva("Valor ", i+1, ": ")
			leia(vB[i])
			vC[j] = vB[i]
			j += 2
		}

		escreva("\nVetor C\n")
		para(i = 0; i < 20; i++){
			escreva("Valor ", i+1, ": ", vC[i], "\n")
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vA, 3, 9, 2}-{vB, 3, 17, 2}-{vC, 3, 25, 2}-{i, 3, 33, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */