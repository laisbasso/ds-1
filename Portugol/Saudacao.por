programa
{
	cadeia nome, sexo, msg
	funcao inicio()
	{
		escreva("Entre com seu nome: ")
		leia(nome)
		escreva("Entre com seu sexo [F/M]: ")
		leia(sexo)
		
		se (sexo == "F") {
		   msg = "Ilma Sra. "
		} senao {
		   msg = "Ilmo Sr. "
		}
		
		escreva(msg + nome)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 170; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */