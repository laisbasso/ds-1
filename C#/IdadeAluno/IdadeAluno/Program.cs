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
            int idade = DateTime.Now.Year - aluno.dataNascimento.Year;

            Console.WriteLine("Aluno: " + aluno.nome + " - RA: " + aluno.ra + " - Data de nascimento: " + aluno.dataNascimento.ToString("dd/MM/yyyy"));
            Console.WriteLine(aluno.nome + " tem " + idade + " anos de idade.");
            Console.ReadKey();
        }
    }
}
