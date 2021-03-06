programa
{
    inteiro codigo, quantidade
    real precoUnitario, precoTotal
    funcao inicio()
    {
        escreva("Digite o código do item pedido: ")
        leia(codigo)
        escreva("Digite a quantidade de itens: ")
        leia(quantidade)
 
        escolha(codigo)
        {
            caso 100:
                precoUnitario = 1.20
                pare
            caso 101:
                precoUnitario = 1.30
                pare
            caso 102:
                precoUnitario = 1.50
                pare
            caso 103:
                precoUnitario = 1.20
                pare
            caso 104:
                precoUnitario = 1.30
                pare
            caso 105:
                precoUnitario = 1
                pare
        }        
        
        precoTotal = quantidade * precoUnitario
        escreva("O valor total da compra é de R$", precoTotal)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */