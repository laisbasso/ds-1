programa
{
	inteiro time1, time2
	funcao inicio()
	{
		escreva ("Entre com o número de gols do primeiro time: ")
		leia(time1)
		escreva ("Entre com o número de gols do segundo time: ")
		leia(time2)
		
		se (time1 == time2) {
			escreva("Empate")
		} senao {
			se (time1 > time2) {
				escreva("Time 1 é o vencedor")
			} senao {
				escreva("Time 2 é o vencedor")
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */