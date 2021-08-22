using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using HouseServAPI.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;

namespace HouseServAPI.Usuarios
{
    [ApiController]
    [Route("[controller]")]
    public class LoginController : ControllerBase
    {
        private readonly DataContext _context;
        private readonly IConfiguration _configuration;

        public LoginController(DataContext context, IConfiguration configuration)
        {
            _context = context;
            _configuration = configuration;
        }

        private bool VerificarPasswordHash(string password, byte[] passwordHash, byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512(passwordSalt))
            {
                var computedHash = hmac.ComputeHash(Encoding.UTF8.GetBytes(password));
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

        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> LoginUsuario(Usuario credenciaisUsuario)
        {
            //Usuario usuario = await _context.Usuarios.FirstOrDefaultAsync(x =>
            //    x.Cpf_Cnpj.Equals(credenciaisUsuario.Cpf_Cnpj));
            Usuario usuario = await _context.Usuarios.FirstOrDefaultAsync(x =>
                x.Email.ToLower().Equals(credenciaisUsuario.Email.ToLower()));

            if (usuario == null)
            {
                return BadRequest("Usuário não encontrado.");
            }
            else if (!VerificarPasswordHash(credenciaisUsuario.Senha,
                                usuario.SenhaHash, usuario.SenhaSalt))
            {
                return BadRequest("Senha incorreta.");
            }
            else
            {              
                return Ok(CriarToken(usuario));
            }
        }

        private string CriarToken(Usuario usuario)
        {
            List<Claim> claims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, usuario.Id.ToString()),
                new Claim(ClaimTypes.Name, usuario.Cpf_Cnpj),
                new Claim(ClaimTypes.Role, usuario.Perfil)
            };
            SymmetricSecurityKey key = new SymmetricSecurityKey(Encoding.UTF8
            .GetBytes(_configuration.GetSection("AppSettings:Token").Value));

            SigningCredentials creds =
                new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);
            SecurityTokenDescriptor tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(claims),
                Expires = DateTime.Now.AddDays(1),
                SigningCredentials = creds
            };
            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
            SecurityToken token = tokenHandler.CreateToken(tokenDescriptor);

            return tokenHandler.WriteToken(token);
        }
    }
}
