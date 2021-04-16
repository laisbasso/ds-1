using Microsoft.AspNetCore.Mvc;
using RpgApi.Data;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using RpgApi.Models;

namespace RpgApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UsuariosController : ControllerBase
    {
        private readonly DataContext _context;

        public UsuariosController(DataContext context)
        {
            _context = context;
        }

        private void CriarPasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }
        } 

        public async Task<bool> UsuarioExistente(string username)
        {
            if(await _context .Usuarios.AnyAsync(x => x.Username.ToLower() == username.ToLower()))
            {
                return true;
            }
            return false;
        }

        private bool VerificarPasswordHash(string password, byte[] passwordHash, byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512(passwordSalt))
            {
                var computedHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                for (int i = 0; i < computedHash.Length; i++)
                {
                    if (computedHash[i] != passwordHash[i])
                    {
                        return false;
                    }
                }
                return true;
            }
        }

        [HttpPost("Registrar")]
        public async Task<IActionResult> Registrar(Usuario user)
        {
            if (await UsuarioExistente(user.Username))
                return BadRequest("Nome de usuário já existente");

            CriarPasswordHash(user.PasswordString, out byte[] passwordHash, out byte[] passwordSalt);
            user.PasswordString = string.Empty;
            user.PasswordHash = passwordHash;
            user.PasswordSalt = passwordSalt;

            await _context.Usuarios.AddAsync(user);
            await _context.SaveChangesAsync();
            return Ok(user.Id);
        }

        [HttpPost("Autenticar")]
        public async Task<IActionResult> Autenticar(Usuario possivelUsuario)
        {
            Usuario usuario = await _context.Usuarios.FirstOrDefaultAsync(x => x.Username.ToLower().Equals(possivelUsuario.Username.ToLower()));

            if (usuario == null)
            {
                return BadRequest("Usuario não encontrado.");
            }
            else if (!VerificarPasswordHash(possivelUsuario.PasswordString, usuario.PasswordHash, usuario.PasswordSalt))
            {
                return BadRequest("Senha incorreta.");
            }
            else 
            {
                return Ok(usuario.Id);
            }
        }
    }
}