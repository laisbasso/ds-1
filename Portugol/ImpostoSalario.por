programa
{
	real sal, salMenosImposto, salFinal
	funcao inicio()
	{
		escreva("Entre com o valor do seu salário: ")
		leia(sal)
		salMenosImposto = sal - ( sal * 10 / 100)
		salFinal = salMenosImposto + 50
		escreva("Seu salário final é R$", salFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */