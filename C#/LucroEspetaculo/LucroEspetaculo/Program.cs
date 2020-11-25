using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LucroEspetaculo
{
    class Program
    {
        static void Main(string[] args)
        {
            Espetaculo teatro = new Espetaculo();

            Console.WriteLine("Entre com o valor total do espetáculo: ");
            teatro.custoTotal = double.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o valor unitário do convite: ");
            teatro.precoConvite = double.Parse(Console.ReadLine());

            Console.WriteLine(teatro.qtdeConvites() + " convites são necessários para alcançar o custo do espetáculo.");
            Console.ReadKey();
        }
    }
}
