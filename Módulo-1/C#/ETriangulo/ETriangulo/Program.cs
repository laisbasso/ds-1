using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETriangulo
{
    class Program
    {
        static void Main(string[] args)
        {
            Triangulo triang = new Triangulo();

            Console.WriteLine("Entre com o valor de x: ");
            triang.x = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o valor de y: ");
            triang.y = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o valor de z: ");
            triang.z = int.Parse(Console.ReadLine());

            Console.WriteLine(triang.valida());
            Console.ReadKey();
        }
    }
}
