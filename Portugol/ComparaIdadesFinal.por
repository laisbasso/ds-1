programa
{
	inteiro cont = 1, maiorIdade = 0, novaIdade, idadeAnterior, menorIdade
	cadeia nome, maisVelha, maisNova
	funcao inicio()
	{		
		escreva("Digite o nome de 10 pessoas e suas respectivas idades \n")

		faca {
			escreva("Entre com a ", cont, "º pessoa: ")
			leia(nome)
			escreva("Entre com a idade: ")
			leia(novaIdade)
			
			se (cont == 1){
				idadeAnterior = novaIdade
				menorIdade = novaIdade
				maisNova = nome
				maiorIdade = novaIdade
				maisVelha = nome
			} senao se (novaIdade > maiorIdade){
				maiorIdade = novaIdade
				maisVelha = nome
			} senao se (novaIdade < menorIdade){
				menorIdade = novaIdade
				maisNova = nome
			}
			idadeAnterior = novaIdade
			cont++
		} enquanto (cont <= 10);
				
		escreva(maisNova, " é a pessoa mais nova e ", maisVelha, " é a pessoa mais velha.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 721; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cont, 3, 9, 4}-{maiorIdade, 3, 19, 10}-{novaIdade, 3, 35, 9}-{idadeAnterior, 3, 46, 13}-{menorIdade, 3, 61, 10}-{nome, 4, 8, 4}-{maisVelha, 4, 14, 9}-{maisNova, 4, 25, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */