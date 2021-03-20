programa
{	
	inteiro cont = 0, num, pares = 0
	real soma = 0, media
	funcao inicio()
	{		
		escreva("Digite 10 números inteiros \n")

		para (cont; cont < 10; cont++){
			escreva("Entre com o ", cont + 1, "º número: ")
			leia(num)
			se (num % 2 == 0){
				pares++
				soma += num
			}
		}
		media = soma / pares
		escreva("Total de números pares digitados: ", pares)
		escreva("\nSoma dos números pares digitados: ", soma)
		escreva("\nMédia dos números pares digitados: ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
