namespace HouseServAPI.Usuarios.Endereco
{
    public class Endereco
    {
        public int Id { get; set; }
        public int? Estado { get; set; }
        public string Cidade { get; set; }
        public string Cep { get; set; }
        public string Logradouro { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
    }
}