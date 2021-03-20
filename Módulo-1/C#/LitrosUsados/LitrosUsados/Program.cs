using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LitrosUsados
{
    class Program
    {
        static void Main(string[] args)
        {
            Viagem praia = new Viagem();

            Console.WriteLine("Entre com o tempo total gasto durante a viagem: ");
            praia.tempoGasto = double.Parse(Console.ReadLine());
            Console.WriteLine("Entre com a velocidade média do veículo: ");
            praia.velocMedia = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o valor de km/L do veículo: ");
            double kmpl = double.Parse(Console.ReadLine());

            Console.WriteLine("Você percorreu " + praia.distancia() + " km e gastou " + praia.litrosUsados(kmpl) + " litros de combustível.");
            Console.ReadKey();
        }
    }
}
