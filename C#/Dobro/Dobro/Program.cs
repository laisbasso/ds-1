using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dobro
{
    class Program
    {
        static void Main(string[] args)
        {
            int n1, dobro;

            Console.WriteLine("Entre com um número inteiro positivo: ");
            n1 = int.Parse(Console.ReadLine());

            dobro = n1 * 2;

            Console.WriteLine("Seu dobro é: " + dobro);
            Console.ReadKey();
        }
    }
}
