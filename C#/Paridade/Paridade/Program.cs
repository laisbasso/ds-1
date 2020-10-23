using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paridade
{
    class Program
    {
        static void Main(string[] args)
        {
			int n;

			Console.WriteLine("Entre com um valor inteiro: ");
			n = int.Parse(Console.ReadLine());


			if (n % 2 == 0) {
				Console.WriteLine("Número par");
			}
			else
			{
				Console.WriteLine("Número ímpar");
			}
			Console.ReadKey();
		}
    }
}
