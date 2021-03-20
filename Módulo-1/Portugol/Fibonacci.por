programa
{	
	inteiro num, fibonacciAnterior = 0, fibonacci = 1, trocarElemento
	funcao inicio()
	{
		escreva("Digite um número maior ou igual a 2: ")
		leia(num)
		se (num >= 2){
			escreva(fibonacciAnterior, " ")
			escreva(fibonacci, " ")
			enquanto (num > 0){
				trocarElemento = fibonacci
				fibonacci += fibonacciAnterior
				fibonacciAnterior = trocarElemento
				escreva(fibonacci, " ")
				num--
			}
		} senao {
			escreva("Número inválido!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 3, 9, 3}-{fibonacciAnterior, 3, 14, 17}-{fibonacci, 3, 37, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */