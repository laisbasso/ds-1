using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Maioridade
{
    class Program
    {
        static void Main(string[] args)
		{
			int anoAtual, anoNasc, idade;

			anoAtual = DateTime.Now.Year;
			Console.WriteLine("Entre com o seu ano de nascimento: ");
			anoNasc = int.Parse(Console.ReadLine());
			idade = anoAtual - anoNasc;

			if (idade >= 18)
			{
				Console.WriteLine("Maior de idade");
			}
			else
			{
				Console.WriteLine("Menor de idade");
			}
			Console.ReadKey();
		}
    }
}
