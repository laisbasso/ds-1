using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using RpgApi.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;
using Microsoft.AspNetCore.Http;

namespace RpgApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PersonagemHabilidadesController : ControllerBase
    {
        private readonly DataContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public PersonagemHabilidadesController(DataContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        public int ObterUsuarioId()
        {
            return int.Parse(_httpContextAccessor.HttpContext.User.FindFirstValue(ClaimTypes.NameIdentifier));
        }

        [HttpGet("{personagemId}")]
        public async Task<IActionResult> GetHabilidadesPersonagem(int personagemId)
        {
            List<PersonagemHabilidade> phLista = new List<PersonagemHabilidade>();

            phLista = await _context.PersonagemHabilidades
                .Include(p => p.Personagem)
                .Include(p => p.Habilidade)
                .Where(p => p.Personagem.Usuario.Id == ObterUsuarioId() && p.Personagem.Id == personagemId).ToListAsync();

            return Ok(phLista);
        }

        [HttpGet("GetHabilidades")]
        public async Task<IActionResult> GetHabilidades()
        {
            List<Habilidade> habilidades = new List<Habilidade>();
            habilidades = await _context.Habilidades.ToListAsync();
            return Ok(habilidades);
        }

        [HttpPost]
        public async Task<IActionResult> AddPersonagemHabilidadeAsync(PersonagemHabilidade novoPersonagemHabilidade)
        {
            Personagem personagem = await _context.Personagens
                .Include(p => p.Arma)
                .Include(p => p.PersonagemHabilidades).ThenInclude(ps => ps.Habilidade)
                .FirstOrDefaultAsync(p => p.Id == novoPersonagemHabilidade.PersonagemId);

            if(personagem == null)
                return BadRequest("Personagem não encontrado para o ID informado.");

            Habilidade habilidade = await _context.Habilidades
                .FirstOrDefaultAsync(s => s.Id == novoPersonagemHabilidade.HabilidadeId);
            
            if(habilidade == null)
                return BadRequest("Habilidade não encontrada.");

            PersonagemHabilidade ph = new PersonagemHabilidade();
            ph.Personagem = personagem;
            ph.Habilidade = habilidade;

            await _context.PersonagemHabilidades.AddAsync(ph);
            await _context.SaveChangesAsync();

            return Ok(ph);
        }

        [HttpPost("DeletePersonagemHabilidade")] 
        public async Task<IActionResult> DeletePersonagemHabilidade(PersonagemHabilidade ph)
        {
            PersonagemHabilidade phRemover = await _context.PersonagemHabilidades
            .FirstOrDefaultAsync(phBusca => phBusca.PersonagemId == ph.PersonagemId && phBusca.HabilidadeId == ph.HabilidadeId);

            if (ph == null)
                return BadRequest("Combinação de personagem e habilidade não encontrada para os IDs informados.");

            _context.PersonagemHabilidades.Remove(phRemover);
            await _context.SaveChangesAsync();
            return Ok("Removido com sucesso.");
        }
    }
}