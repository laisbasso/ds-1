using HouseServAPI.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;
using System.Threading.Tasks;

namespace HouseServAPI.Usuarios.Documentos
{
    [ApiController]
    [Route("[controller]")]
    public class DocumentosController : ControllerBase
    {
        private readonly DataContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public DocumentosController(DataContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        private int ObterUsuarioId()
        {
            return int.Parse(_httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier));
        }

        [HttpPost]
        public async Task<IActionResult> Enviar(Documentos documentos)
        {
            await _context.Documentos.AddAsync(documentos);
            await _context.SaveChangesAsync();

            Usuario usuario = await _context.Usuarios.FirstOrDefaultAsync(u => u.Id == ObterUsuarioId());

            usuario.Documentos = documentos.Id;

            _context.Usuarios.Update(usuario);
            await _context.SaveChangesAsync();

            return Ok(documentos.Id);
        }
    }
}
