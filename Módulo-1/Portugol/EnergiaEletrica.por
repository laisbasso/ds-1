programa
{
	inteiro cod
	real preco, qtd, total
	funcao inicio()
	{
		escreva("Entre com o código do consumidor: ")
		leia(cod)
		escreva("Entre com o preço do Kw:  ")
		leia(preco)
		escreva("Entre com a quantidade de Kw consumida:  ")
		leia(qtd)
		
		total = preco * qtd
		
		se (total < 11.20) {
		   total = 11.20
		}
		
		escreva("Código do consumidor: ", cod, "\n")
		escreva("Total a pagar: R$", total)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */