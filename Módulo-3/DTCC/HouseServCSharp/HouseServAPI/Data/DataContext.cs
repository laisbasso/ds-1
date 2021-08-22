using HouseServAPI.Usuarios;
using HouseServAPI.Usuarios.Documentos;
using HouseServAPI.Usuarios.Endereco;
using Microsoft.EntityFrameworkCore;

namespace HouseServAPI.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {            
        }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Documentos> Documentos { get; set; }
        public DbSet<Endereco> Enderecos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //modelBuilder.Entity<
            //>()
            //    .HasKey(ph => new { ph.PersonagemId, ph.HabilidadeId });

            //modelBuilder.Entity<Usuario>()
            //    .Property(u => u.Perfil).HasDefaultValue("Jogador");
        }

    }
}