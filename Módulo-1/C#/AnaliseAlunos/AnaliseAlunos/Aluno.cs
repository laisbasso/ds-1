using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnaliseAlunos
{
    class Aluno
    {
        public int idade { get; set; }
        public int ra { get; set; }
        public int avaliacao { get; set; }

        int raMaisNovo, idadeMaisNovo, raMaisVelho, idadeMaisVelho, notaMaxima = 0, notaBaixa = 0, somaIdades = 0;

        public void atribuirValoresIniciais()
        {
            raMaisNovo = ra;
            idadeMaisNovo = idade;
            raMaisVelho = ra;
            idadeMaisVelho = idade;
        }

        public void compararIdades()
        {
            if (idade < idadeMaisNovo)
            {
                raMaisNovo = ra;
                idadeMaisNovo = idade;
            } else if (idade > idadeMaisVelho)
            {
                raMaisVelho = ra;
                idadeMaisVelho = idade;
            }
        }

        public void compararAvaliacao()
        {
            if (avaliacao == 10)
            {
                notaMaxima++;
            }
            else if (avaliacao <= 5)
            {
                notaBaixa++;
            }
        }

        public void somarIdades()
        {
            somaIdades += idade;
        }

        public decimal calcularMediaIdades(int somaIdades, int totalAlunos)
        {
            decimal mediaIdades = somaIdades / totalAlunos;
            return mediaIdades;
        }
        public decimal calcularPorcentagemBaixa(int totalAlunos)
        {
            decimal porcentagemBaixa = (decimal)(notaBaixa * 100) / totalAlunos;
            return porcentagemBaixa;
        }

        public String concatenarDados(int totalAlunos)
        {
            String mensagem = "Quantidade de pontuações máximas: " + notaMaxima
                + "\nMédia de idade dos alunos: " + calcularMediaIdades(somaIdades, totalAlunos)
                + "\n" + calcularPorcentagemBaixa(totalAlunos).ToString("0.00") + "% responderam 5 ou menos para a opinião do curso"
                + "\nRA do aluno mais novo: " + raMaisNovo
                + "\nRA do aluno mais velho: " + raMaisVelho;

            return mensagem;
        }
    }
}
