using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConvitesEspetaculo
{
    class Program
    {
        static void Main(string[] args)
        {
            float valorTotal, valorConvite;
            int qtdConvites;

            Console.WriteLine("Entre com o valor total do espetáculo: ");
            valorTotal = float.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o valor unitário do convite: ");
            valorConvite = float.Parse(Console.ReadLine());

            qtdConvites = (int)Math.Ceiling(valorTotal / valorConvite);

            Console.WriteLine(qtdConvites + " convites são necessários para alcançar o custo do espetáculo.");
            Console.ReadKey();
        }
    }
}
