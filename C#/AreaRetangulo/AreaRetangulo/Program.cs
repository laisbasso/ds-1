using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AreaRetangulo
{
    class Program
    {
        static void Main(string[] args)
        {
            int valorBase, valorAltura, area;

            Console.WriteLine("Entre com o valor da base: ");
            valorBase = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o valor da altura: ");
            valorAltura = int.Parse(Console.ReadLine());

            area = valorBase * valorAltura;

            Console.WriteLine("O valor da área do retângulo é: " + area);
            Console.ReadKey();
        }
    }
}
