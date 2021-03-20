programa
{
	real salFixo, salTotal, vendas, comissao, comissaoUltra
	funcao inicio()
	{
		escreva("Entre com o valor do salário fixo: ")
		leia(salFixo)
		escreva("Entre com o valor das vendas: ")
		leia(vendas)
		
		se (vendas <= 1500) {
		   comissao = vendas * 3 / 100
		} senao {
		     comissao = 1500 * 3 / 100
		     comissaoUltra = (vendas - 1500) * 5 / 100
		     comissao = comissao + comissaoUltra
		}
		
		salTotal = salFixo + comissao
		
		escreva("O valor total do salário é de: ", salTotal)

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