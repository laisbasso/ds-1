programa
{
	inteiro vA[5], vB[5], vC[5], i = 0
	funcao inicio()
	{
		
		escreva("Vetor A\n")
		para(i; i < 5; i++){
			escreva("Valor ", i+1, ": ")
			leia(vA[i])
		}
		
		escreva("\nVetor B\n")
		para(i = 0; i < 5; i++){
			escreva("Valor ", i+1, ": ")
			leia(vB[i])
			vC[i] = vA[i] + vB[i]
		}

		escreva("\nVetor C\n")
		para(i = 0; i < 5; i++){
			escreva("Valor ", i+1, ": ", vC[i], "\n")
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */