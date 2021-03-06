programa
{
	inteiro anos, cigarrosAoDia, totalCigarros
	real valorCarteira, valorTotal
	funcao inicio()
	{
		escreva("Há quantos anos você é fumante? ")
		leia(anos)
		escreva("Quantos cigarros você fuma por dia? ")
		leia(cigarrosAoDia)
		escreva("Qual o valor da carteira com 20 cigarros? ")
		leia(valorCarteira)
		
		totalCigarros = (anos * 365) * cigarrosAoDia
		valorTotal = (totalCigarros / 20) * valorCarteira
		escreva("Você já gastou R$", valorTotal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */