using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AvaliacoesAulas
{
    class Program
    {
        static void Main(string[] args)
        {
            Aluno aluno = new Aluno();

            Console.WriteLine("Entre com o valor total de alunos: ");
            int totalAlunos = int.Parse(Console.ReadLine());

            for (int cont = 1; cont <= totalAlunos; cont++)
            {
                Console.WriteLine("Entre com o RA do aluno: ");
                aluno.ra = int.Parse(Console.ReadLine());
                Console.WriteLine("Entre com a idade do aluno: ");
                aluno.idade = int.Parse(Console.ReadLine());
                Console.WriteLine("Entre com uma avaliação de 0 a 10 em relação às aulas: ");
                aluno.avaliacao = int.Parse(Console.ReadLine());

                Console.WriteLine(aluno.concatenarDados());
            }
            Console.ReadKey();
        }
    }
}
