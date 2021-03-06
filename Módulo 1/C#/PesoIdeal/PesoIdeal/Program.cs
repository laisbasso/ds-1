using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PesoIdeal
{
    class Program
    {
        static void Main(string[] args)
        {
			double altura, peso;
			char sexo;

			Console.WriteLine("Entre com sua altura: ");
			altura = double.Parse(Console.ReadLine());
			Console.WriteLine("Entre com seu sexo [F/M]: ");
			sexo = Console.ReadKey().KeyChar;

			if (sexo == 'F')
			{
				peso = (62.1 * altura) - 44.7;
			}
			else
			{
				peso = (72.2 * altura) - 58;
  			}

			Console.WriteLine();
			Console.WriteLine("Seu peso ideal é de " + peso.ToString("0.00") + " kgs.");
			Console.ReadKey();
		}
	}
}