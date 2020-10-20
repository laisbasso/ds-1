programa
{
	cadeia cpf, nome
	real rendimentoAnual, impostoRetido, contribuicaoPrevidenciaria,
			despesasMedicas,numDependentes, descontoDependentes, totalDeducoes,
			baseCalculo, calculoImposto, impostoAPagar, impostoARestituir
	funcao inicio()
	{
		escreva("Entre com seu nome: ")
		leia(nome)
		escreva("Entre com seu CPF: ")
		leia(cpf)
		escreva("Entre com o valor do seu rendimento anual: ")
		leia(rendimentoAnual)
		escreva("Entre com o valor do seu imposto retido na fonte: ")
		leia(impostoRetido)
		escreva("Entre com o valor da sua contribuição previdenciária: ")
		leia(contribuicaoPrevidenciaria)
		escreva("Entre com o valor das suas despesas médicas: ")
		leia(despesasMedicas)
		escreva("Entre com seu número de dependentes: ")
		leia(numDependentes)
		
		descontoDependentes = numDependentes * 1080
		totalDeducoes = contribuicaoPrevidenciaria + despesasMedicas + descontoDependentes
		baseCalculo = rendimentoAnual - totalDeducoes
		
		se (baseCalculo <= 10800) {
			calculoImposto = 0
			escreva("Alíquota isenta. \n")
		} senao {
			se(baseCalculo >= 10800.01 e baseCalculo <= 21600) {
				calculoImposto = (baseCalculo * 15 / 100) - 1620
			} senao {
				calculoImposto = (baseCalculo * 25 / 100) - 3780
			}
		}
		
		se (calculoImposto == impostoRetido) {
			escreva("O imposto está em dia.")
		} senao {
			se (calculoImposto > impostoRetido) {
				impostoAPagar = calculoImposto - impostoRetido
				escreva("Valor a pagar: R$", impostoAPagar)
			} senao {
				impostoARestituir = (calculoImposto - impostoRetido) * -1
				escreva("Valor a restituir: R$", impostoARestituir)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */