using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using RpgApi.Data;
using System.Linq;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;

namespace RpgApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PersonagemController : ControllerBase
    {
        private readonly DataContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public PersonagemController(DataContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        public int ObterUsuarioId()
        {
            return int.Parse(_httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier));
        }

        public string ObterPerfilUsario()
        {
            return _httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.Role);
        }

        [HttpPost]
        public async Task<IActionResult> Add(Personagem personagem)
        {
            personagem.Usuario = await _context.Usuarios.FirstOrDefaultAsync(uBusca => uBusca.Id == ObterUsuarioId());

            await _context.Personagens.AddAsync(personagem);
            await _context.SaveChangesAsync();
            List<Personagem> personagens = await _context.Personagens.ToListAsync();
            return Ok(personagens);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetSingle(int id)
        {
            Personagem personagem = await _context.Personagens.FirstOrDefaultAsync(p => p.Id == id);
            return Ok(personagem);
        }

        [HttpGet("GetByUser")]
        public async Task<IActionResult> GetByUserAsync()
        {
            int id = int.Parse(User.Claims.FirstOrDefault(c => c.Type == ClaimTypes.NameIdentifier).Value);

            List<Personagem> personagens = await _context.Personagens.Where(c => c.Usuario.Id == id).ToListAsync();
            return Ok(personagens);
        }

        [Authorize(Roles = "Jogador,Admin")]
        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            List<Personagem> personagens = new List<Personagem>();

            if(ObterPerfilUsario() == "Admin")
                personagens = await _context.Personagens.ToListAsync();
            else
                personagens = await _context.Personagens
                    .Where(p => p.Usuario.Id == ObterUsuarioId()).ToListAsync();

            return Ok(personagens);
        }

        [HttpPut]
        public async Task<IActionResult> Update(Personagem personagem)
        {
            _context.Personagens.Update(personagem);
            await _context.SaveChangesAsync();
            return Ok(personagem);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        // idPersonagem não funciona, tem que ser o mesmo nome do atributo
        {
            Personagem personagem = _context.Personagens.FirstOrDefault(p => p.Id == id);
            _context.Personagens.Remove(personagem);
            _context.SaveChanges();
            List<Personagem> lista = _context.Personagens.ToList();
            return Ok(lista);
        }
    }
}