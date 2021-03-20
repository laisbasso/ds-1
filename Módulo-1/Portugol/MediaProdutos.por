programa
{
	inteiro qtdProdutos, cont = 1
	real maiorValor = 0, media, valor, soma = 0
	funcao inicio()
	{
		escreva("Entre com a quantidade de produtos: ")
		leia(qtdProdutos)

		faca {
			escreva("Entre com o ", cont, "º valor: ")
			leia(valor)
			se (valor > maiorValor){
				maiorValor = valor 
			}
			soma += valor
			cont++
		} enquanto (cont <= qtdProdutos)

		media = soma / qtdProdutos

		escreva("O maior valor é R$ ", maiorValor)
		escreva("\nA média de valores é R$ ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 456; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */