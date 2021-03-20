using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TotalParesControle
{
    class Program
    {
        static void Main(string[] args)
        {
            int num, pares = 0, soma = 0;
            decimal media;

            Console.WriteLine("Digite 10 números inteiros");

            for (int cont = 0; cont < 10; cont++)
            {
                Console.WriteLine("Entre com o " + (cont + 1) + "º número: ");
                num = int.Parse(Console.ReadLine());
                if (num % 2 == 0)
                {
                    pares++;
                    soma += num;
                }
            }
            media = soma / pares;
            Console.WriteLine("Total de números pares digitados: " + pares);
            Console.WriteLine("Soma dos números pares digitados: " + soma);
            Console.WriteLine("Média dos números pares digitados: " + media);
            Console.ReadKey();
        }
    }
}
