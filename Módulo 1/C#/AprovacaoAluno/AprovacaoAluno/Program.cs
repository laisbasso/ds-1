using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AprovacaoAluno
{
    class Program
    {
        static void Main(string[] args)
        {
            float n1, n2, n3, media;

            Console.WriteLine("Entre com a 1ª nota: ");
            n1 = float.Parse(Console.ReadLine());
            Console.WriteLine("Entre com a 2ª nota: ");
            n2 = float.Parse(Console.ReadLine());
            Console.WriteLine("Entre com a 3ª nota: ");
            n3 = float.Parse(Console.ReadLine());

            media = (n1 + n2 + n3) / 3;
            Console.WriteLine("A média do aluno é: " + media.ToString("0.00"));

            if (media > 7)
            {
                Console.WriteLine("Situação: Aprovado");
            }
            else
            {
                Console.WriteLine("Situação: Reprovado");
            }
            Console.ReadKey();
        }
    }
}
