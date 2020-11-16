        using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AnaliseAlunos
{
    class Program
    {
        static void Main(string[] args)
        {
            int notaMaxima = 0, notaBaixa = 0, somaIdades = 0, raMaisVelho = 0, raMaisNovo = 0, idadeMaisVelho = 0, idadeMaisNovo = 0;
            decimal mediaIdades, porcentagemBaixa;

            Aluno aluno = new Aluno();

            Console.WriteLine("Entre com o valor total de alunos: ");
            int totalAlunos = int.Parse(Console.ReadLine());
            Console.WriteLine();

            for (int cont = 1; cont <= totalAlunos; cont++)
            {
                Console.WriteLine("Entre com o RA do aluno: ");
                aluno.ra = int.Parse(Console.ReadLine());

                Console.WriteLine("Entre com a idade do aluno: ");
                aluno.idade = int.Parse(Console.ReadLine());
                somaIdades += aluno.idade;
                if (cont == 1)
                {
                    raMaisVelho = aluno.ra;
                    idadeMaisVelho = aluno.idade;
                    raMaisNovo = aluno.ra;
                    idadeMaisNovo = aluno.idade;
                } else if (aluno.idade > idadeMaisVelho)
                {
                    raMaisVelho = aluno.ra;
                    idadeMaisVelho = aluno.idade;
                } else if (aluno.idade < idadeMaisNovo)
                {
                    raMaisNovo = aluno.ra;
                    idadeMaisNovo = aluno.idade;
                }

                Console.WriteLine("Entre com uma avaliação de 0 a 10 em relação às aulas: ");
                aluno.avaliacao = int.Parse(Console.ReadLine());
                if (aluno.avaliacao == 10)
                {
                    notaMaxima++;
                } else if (aluno.avaliacao <= 5)
                {
                    notaBaixa++;
                }
                Console.WriteLine();
            }

            mediaIdades = somaIdades / totalAlunos;
            porcentagemBaixa = (decimal) (notaBaixa * 100) / totalAlunos;

            Console.WriteLine("Quantidade de pontuações máximas: " + notaMaxima);
            Console.WriteLine("Média de idade dos alunos: " + mediaIdades);
            Console.WriteLine(porcentagemBaixa.ToString("0.00") + "% responderam 5 ou menos para a opinião do curso");
            Console.WriteLine("RA do aluno mais novo: " + raMaisNovo);
            Console.WriteLine("RA do aluno mais velho: " + raMaisVelho);
            Console.ReadKey();
        }
    }
}
