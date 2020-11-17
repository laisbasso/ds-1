using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IdadeAluno
{
    class Aluno
    {
        public String nome { get; set; }
        public int ra { get; set; }
        public DateTime dataNascimento { get; set; }

        public int calcularIdade()
        {
            return DateTime.Now.Year - dataNascimento.Year;
        }

        public String concatenaDados()
        {
            String mensagem = "Aluno: " + nome + " - RA: " + ra + " - Data de nascimento: " + dataNascimento.ToString("dd/MM/yyyy")
                + "\n" + nome + " tem " + calcularIdade() + " anos de idade.";
            return mensagem;
        }
    }
}
