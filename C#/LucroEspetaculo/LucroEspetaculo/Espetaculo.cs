using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LucroEspetaculo
{
    class Espetaculo
    {
        public double custoTotal { get; set; }
        public double precoConvite { get; set; }

        public int qtdeConvites()
        {
            return (int) Math.Ceiling(custoTotal / precoConvite);
        }
    }
}
