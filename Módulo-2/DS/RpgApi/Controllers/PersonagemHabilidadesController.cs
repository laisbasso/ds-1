using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using RpgApi.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace RpgApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PersonagemHabilidadesController : ControllerBase
    {
        private readonly DataContext _context;

        public PersonagemHabilidadesController(DataContext context)
        {
            _context = context;
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

        [HttpPost("DeletePersonagemHabilidade/{idPersonagem}/{idHabilidade}")] 
        public async Task<IActionResult> DeletePersonagemHabilidade(int idPersonagem, int idHabilidade)
        {
            //Desafio 2 = funciona!
            PersonagemHabilidade ph = await _context.PersonagemHabilidades.FirstOrDefaultAsync(p => p.PersonagemId == idPersonagem && p.HabilidadeId == idHabilidade);

            if (ph == null)
                return BadRequest("Combinação de personagem e habilidade não encontrada para os IDs informados.");

            _context.PersonagemHabilidades.Remove(ph);
            await _context.SaveChangesAsync();
            return Ok();
        }
    }
}