using ExemploA2.Models.Enuns;

namespace ExemploA2.Models
{
    public class Carro
    {
        public string Placa { get; set; }
        public int Chassi { get; set; }
        public string Cor { get; set; }
        public MesEnum MesLicenciamento { get; set; }
    }
}