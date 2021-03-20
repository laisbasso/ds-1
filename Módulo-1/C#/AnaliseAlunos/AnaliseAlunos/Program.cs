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
                aluno.somarIdades();
                if (cont == 1)
                {
                    aluno.atribuirValoresIniciais();
                } else
                {
                    aluno.compararIdades();
                }

                Console.WriteLine("Entre com uma avaliação de 0 a 10 em relação às aulas: ");
                aluno.avaliacao = int.Parse(Console.ReadLine());
                aluno.compararAvaliacao();
                Console.WriteLine();
            }

            Console.WriteLine(aluno.concatenarDados(totalAlunos));
            Console.ReadKey();
        }
    }
}
