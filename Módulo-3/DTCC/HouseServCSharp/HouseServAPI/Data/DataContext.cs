using HouseServAPI.Usuarios;
using Microsoft.EntityFrameworkCore;

namespace HouseServAPI.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {            
        }

        public DbSet<Usuarios.Usuario> Usuarios { get; set;}

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