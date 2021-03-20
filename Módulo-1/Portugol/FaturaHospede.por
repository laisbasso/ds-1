programa
{
    inteiro qtdeDiarias, codApartamento
    real valorConsumoInterno, valorFinal, valorPorDiaria = 0, valorTotalDiarias, subtotal, taxaServico
    cadeia nome, tipoApartamento
    funcao inicio()
    {
        escreva("Entre com o nome do hóspede: ")
        leia(nome)
        escreva("Entre com o número referente ao tipo de apartamento:", "\n")
        escreva("[1] para tipo A \n")
        escreva("[2] para tipo B \n")
        escreva("[3] para tipo C \n")
        escreva("[4] para tipo D \n")
        leia(codApartamento)
        escreva("Entre com a quantidade de diárias utilizadas: ")
        leia(qtdeDiarias)
        escreva("Entre com o valor do consumo interno: ")
        leia(valorConsumoInterno)
 
        escolha(codApartamento)
        {
            caso 1:
                valorPorDiaria = 150
                tipoApartamento = "A"
                pare
            caso 2:
                valorPorDiaria = 100
                tipoApartamento = "B"
                pare
            caso 3:
                valorPorDiaria = 75
                tipoApartamento = "C"
                pare
            caso 4:
                valorPorDiaria = 50
                tipoApartamento = "D"
                pare
        }
 
        valorTotalDiarias = qtdeDiarias * valorPorDiaria
        subtotal = valorTotalDiarias + valorConsumoInterno
        taxaServico = subtotal * 10 / 100
        valorFinal = subtotal + taxaServico
    
        escreva("Hóspede: ", nome, "\n")
        escreva("Tipo de apartamento: ", tipoApartamento, "\n")
        escreva("Quantidade de diárias utilizadas: ", qtdeDiarias, "\n")
        escreva("Valor unitário da diária: R$", valorPorDiaria, "\n")
        escreva("Valor total das diárias: R$", valorTotalDiarias, "\n")
        escreva("Valor do consumo interno: R$", valorConsumoInterno, "\n")
        escreva("Subtotal: R$", subtotal, "\n")
        escreva("Taxa de serviço: R$", taxaServico, "\n")
        escreva("Valor total: R$", valorFinal, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2010; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */