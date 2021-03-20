using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LitrosUsados
{
    class Viagem
    {
        public double tempoGasto { get; set; }
        public int velocMedia { get; set; }

        public double distancia()
        {
            return tempoGasto * velocMedia;
        }

        public double litrosUsados(double kmpl)
        {
            return distancia() / kmpl;
        }
    }
}
