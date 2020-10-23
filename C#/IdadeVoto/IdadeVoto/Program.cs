using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IdadeVoto
{
    class Program
    {
        static void Main(string[] args)
        {
			int anoAtual, anoNasc, idade;

			Console.WriteLine("Entre com o ano atual: ");
			anoAtual = int.Parse(Console.ReadLine());
			Console.WriteLine("Entre com o seu ano de nascimento: ");
			anoNasc = int.Parse(Console.ReadLine());
			idade = anoAtual - anoNasc;


			if (idade >= 16)
			{
				Console.WriteLine("Poderá votar");
			}
			else
			{
				Console.WriteLine("Não poderá votar");
  			}
			Console.ReadKey();
		}
    }
}
