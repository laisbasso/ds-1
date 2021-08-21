using System.ComponentModel.DataAnnotations.Schema;

namespace HouseServAPI.Usuarios
{
    public class Usuario
    {
        public int Id { get; set; }
        //public Endereco Endereco { get; set; }   
        //public Documentos Documentos { get; set; }    
        public string Email { get; set; }
        [NotMapped]
        public string Senha { get; set; }
        public byte[] SenhaHash { get; set; }   
        public byte[] SenhaSalt { get; set; }   
        public Pf_Pj Pf_Pj { get; set; }   
        public string Nome { get; set; }   
        public string Cpf_Cnpj { get; set; }   
        public string Telefone { get; set; }   
    }

    public enum Pf_Pj
    {
        FISICA,
        JURIDICA
    }

}
