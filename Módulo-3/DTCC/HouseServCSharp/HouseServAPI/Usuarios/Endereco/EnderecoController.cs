using HouseServAPI.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;
using System.Threading.Tasks;

namespace HouseServAPI.Usuarios.Endereco
{
    [ApiController]
    [Route("[controller]")]
    public class EnderecoController : ControllerBase
    {
        private readonly DataContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public EnderecoController(DataContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        private int ObterUsuarioId()
        {
            return int.Parse(_httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier));
        }

        [HttpPost("cadastrar")]
        public async Task<IActionResult> Cadastrar(Endereco endereco)
        {
            await _context.Enderecos.AddAsync(endereco);
            await _context.SaveChangesAsync();

            Usuario usuario = await _context.Usuarios.FirstOrDefaultAsync(u => u.Id == ObterUsuarioId());

            usuario.Documentos = endereco.Id;

            _context.Usuarios.Update(usuario);
            await _context.SaveChangesAsync();

            return Ok(endereco.Id);
        }
    }
}
