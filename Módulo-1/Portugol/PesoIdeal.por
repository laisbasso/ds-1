programa
{
	cadeia sexo
	real altura, peso
	funcao inicio()
	{
		escreva("Entre com sua altura: ")
		leia(altura)
		escreva("Entre com seu sexo [F/M]: ")
		leia(sexo)
		
		se (sexo == "F") {
		   peso = (62.1 * altura) - 44.7
		} senao {
		     peso = (72.2 * altura) - 58
		}
		
		escreva("Seu peso ideal é de ", peso, " kgs.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 62; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */