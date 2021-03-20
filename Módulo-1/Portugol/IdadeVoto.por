programa
{
	inteiro anoAtual, anoNasc, idade
	funcao inicio()
	{
		escreva("Entre com o ano atual: ")
		leia(anoAtual)
		escreva("Entre com o seu ano de nascimento: ")
		leia(anoNasc)
		idade = anoAtual - anoNasc
		
		se (idade >= 16) {
		   escreva("Poderá votar")
		} senao {
		     escreva("Não poderá votar")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */