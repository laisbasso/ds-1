programa
{
	inteiro contador = 1, maiorValor = 0, valor
	funcao inicio()
	{
		enquanto (contador <= 10){
			escreva("Entre com o ", contador, "º valor: ")
			leia(valor)
			se (valor > maiorValor){
				maiorValor = valor
			}
			contador++
		}
		escreva("O maior valor é ", maiorValor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */