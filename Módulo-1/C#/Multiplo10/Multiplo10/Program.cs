using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Multiplo10
{
    class Program
    {
        static void Main(string[] args)
        {
            int cont = 1;

            while (cont <= 100)
            {
                if (cont % 10 == 0)
                {
                    Console.WriteLine("Múltiplo de 10");
                }
                else
                {
                    Console.WriteLine(cont);
                }
                cont++;
            }
            Console.ReadKey();
        }
    }
}
