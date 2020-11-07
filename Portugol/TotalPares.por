programa
{
	inteiro cont = 1, num, pares = 0, soma = 0, media = 0
	funcao inicio()
	{		
		escreva("Digite 10 números inteiros \n")

		enquanto (cont <= 10){
			escreva("Entre com o ", cont, "º número: ")
			leia(num)
			se (num % 2 == 0){
				pares++
				soma += num
			}
			cont++
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
 * @POSICAO-CURSOR = 433; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */