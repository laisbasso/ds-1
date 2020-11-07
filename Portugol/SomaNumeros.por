programa
{
	inteiro qtde, soma = 0, num
	funcao inicio()
	{
		escreva("Entre com a quantidade de números para somar: ")
		leia(qtde)
		
		enquanto (qtde > 0){
			escreva("Entre com um valor para somar: ")
			leia(num)
			soma += num
			qtde--
		}

		escreva("A soma total dos números digitados é ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */