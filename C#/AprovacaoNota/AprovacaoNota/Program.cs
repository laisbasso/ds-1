using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AprovacaoNota
{
    class Program
    {
        static void Main(string[] args)
        {
            float nota;

            Console.WriteLine("Entre com a nota: ");
            nota = float.Parse(Console.ReadLine());

            if (nota < 5)
            {
                Console.WriteLine("Situação: Reprovado");
            }
            else if (nota >= 7)
            {
                Console.WriteLine("Situação: Aprovado");
            }
            else
            {
                Console.WriteLine("Situação: Recuperação");
            }
            Console.ReadKey();
        }
    }
}
