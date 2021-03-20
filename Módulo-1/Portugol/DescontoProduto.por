programa
{
	cadeia descricao
	inteiro qtde, desconto
	real precoUnidade, total, totalPagar
	funcao inicio()
	{
		escreva("Entre com a descrição do produto: ")
		leia(descricao)
		escreva("Entre com a quantidade adquirida: ")
		leia(qtde)
		escreva("Entre com o valor do preço unitário: ")
		leia(precoUnidade)
		
		se (qtde <= 5) {
		   desconto = 2
		} senao {
			se (qtde > 5 e qtde <= 10) {
		     	desconto = 3
		     } senao {
		     	desconto = 5
		     }
		}
		
		total = qtde * precoUnidade
		totalPagar = total - (total * desconto / 100)
		
		escreva("O valor total com desconto é de R$", totalPagar)
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 611; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */