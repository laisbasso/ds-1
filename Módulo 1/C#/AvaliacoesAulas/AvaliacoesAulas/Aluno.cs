using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AvaliacoesAulas
{
    class Aluno
    {
        public int idade { get; set; }
        public int ra { get; set; }
        public int avaliacao { get; set; }

        public String concatenarDados()
        {
            return "RA: " + ra + " - Idade: " + idade + " - Avaliação: " + avaliacao;
        }
    }

}
