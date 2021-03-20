using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETriangulo
{
    class Triangulo
    {
        public double x { get; set; }
        public double y { get; set; }
        public double z { get; set; }

        public String valida()
        {
            String msg;

            if (x < y + z & y < x + z & z < x + y)
            {
                if (x == y & y == z)
                {
                    msg = "Triângulo equilátero";
                }
                else
                {
                    if (x != y & y != z & z != x)
                    {
                        msg = "Triângulo escaleno";
                    }
                    else
                    {
                        msg = "Triângulo isósceles";
                    }
                }
            }
            else
            {
                msg = "Os valores não formam um triângulo";
            }
            return msg;
        }
    }
}
