programa
{
	cadeia msg
	inteiro numConta
	real saldo, debito, credito, saldoAtual
	funcao inicio()
	{
		escreva("Entre com o número da conta: ")
		leia(numConta)
		escreva("Entre com o valor do saldo: ")
		leia(saldo)
		escreva("Entre com o valor do débito: ")
		leia(debito)
		escreva("Entre com o valor do crédito: ")
		leia(credito)
		
		saldoAtual = saldo - debito + credito
		
		se (saldoAtual >= 0) {
		   msg = "positivo"
		} senao {
		     msg = "negativo"
		}
		
		escreva("Saldo ", msg)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */