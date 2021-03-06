using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IdadeAluno
{
    class Program
    {
        static void Main(string[] args)
        {
            Aluno aluno = new Aluno();

            Console.WriteLine("Entre com o nome do aluno: ");
            aluno.nome = Console.ReadLine();
            Console.WriteLine("Entre com o RA de " + aluno.nome + ": ");
            aluno.ra = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com a data de nascimento de " + aluno.nome + ": ");
            aluno.dataNascimento = DateTime.Parse(Console.ReadLine());
            Console.WriteLine(aluno.concatenaDados());
            Console.ReadKey();
        }
    }
}
