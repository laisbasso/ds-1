programa
{
	inteiro cont = 1, numAndares, totalPessoas = 0, qtdEntrada, qtdSaida
	funcao inicio()
	{
		escreva("Entre com o número de andares do prédio: ")
		leia(numAndares)
		escreva("Entre com o número de pessoas que entraram e saíram do elevador em cada andar.")
		escreva("\n\n* Térreo *")
		escreva("\nEntraram: ")
		leia(totalPessoas)
		para (cont; cont <= numAndares; cont++){
			escreva("\n* ", cont, " andar *")
			escreva("\nEntraram: ")
			leia(qtdEntrada)
			escreva("Saíram: ")
			leia(qtdSaida)
			totalPessoas += qtdEntrada - qtdSaida
			enquanto (totalPessoas > 15){
				escreva("\nExcesso de passageiros. Devem sair ", totalPessoas - 15, " pessoas.")
				escreva("\nSaíram: ")
				leia(qtdSaida)
				totalPessoas -= qtdSaida
			}
		}
		escreva("\n", totalPessoas, " pessoas permaneceram no elevador para descer.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 836; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */