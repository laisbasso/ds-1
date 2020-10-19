using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReajusteSalario
{
    class Program
    {
        static void Main(string[] args)
        {
            float sal, novosal;

            Console.WriteLine("Entre com o valor do salário: ");
            sal = float.Parse(Console.ReadLine());
            novosal = sal + (sal * 22) / 100;
            Console.WriteLine("O valor do salário reajustado é: " + novosal);
            Console.ReadKey();
        }
    }
}
