using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculo
{
    class Program
    {
        static void Main(string[] args)
        {
            int n1, n2, res;

            Console.WriteLine("Entre com o 1º valor: ");
            n1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o 2º valor: ");
            n2 = int.Parse(Console.ReadLine());

            res = (n1 + n2) * n1;

            Console.WriteLine("O resultado do cálculo é: " + res);
            Console.ReadKey();
        }
    }
}
