using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SinalSoma
{
    class Program
    {
        static void Main(string[] args)
		{
			int n1, n2, soma;

			Console.WriteLine("Entre com o primeiro número: ");
			n1 = int.Parse(Console.ReadLine());
			Console.WriteLine("Entre com o segundo número: ");
			n2 = int.Parse(Console.ReadLine());
			soma = n1 + n2;

			if (soma == 0)
			{
				Console.WriteLine("Zero");
			}
			else if (soma > 0)
			{
				Console.WriteLine("Número positivo");
			}
			else
            {
				Console.WriteLine("Número negativo");
			}
			Console.ReadKey();
		}
    }
}
