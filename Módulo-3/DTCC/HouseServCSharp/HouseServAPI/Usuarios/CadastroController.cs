using System;
using System.Text;
using System.Threading.Tasks;
using HouseServAPI.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace HouseServAPI.Usuarios
{
    [ApiController]
    [Route("[controller]")]
    public class CadastroController : ControllerBase
    {
        private readonly DataContext _context;
        //private readonly IConfiguration _configuration;

        public CadastroController(DataContext context, IConfiguration configuration)
        {
            _context = context;
            //_configuration = configuration;
        }

        private void CriarPasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(password));
            }
        }

        public async Task<bool> UsuarioExistente(string cpf_cnpj, string email)
        {
            if (await _context.Usuarios.AnyAsync(x => x.Cpf_Cnpj == cpf_cnpj || x.Email == email))
            {
                return true;
            }
            return false;
        }

        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> RegistrarUsuario(Usuario usuario)
        {
            try
            {
                if (await UsuarioExistente(usuario.Cpf_Cnpj, usuario.Email))
                    return BadRequest("Usuário já cadastrado");

                CriarPasswordHash(usuario.Senha, out byte[] passwordHash, out byte[] passwordSalt);

                usuario.Senha = string.Empty;
                usuario.SenhaHash = passwordHash;
                usuario.SenhaSalt = passwordSalt;

                await _context.Usuarios.AddAsync(usuario);
                await _context.SaveChangesAsync();

                return Ok(usuario.Id);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
