using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Soma
{
    class Program
    {
        static void Main(string[] args)
        {
            int n1, n2, soma;

            Console.WriteLine("Entre com o 1º valor: ");
            n1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o 2º valor: ");
            n2 = int.Parse(Console.ReadLine());

            soma = n1 + n2;

            Console.WriteLine("A soma dos valores é: " + soma);
            Console.ReadKey();
        }
    }
}
