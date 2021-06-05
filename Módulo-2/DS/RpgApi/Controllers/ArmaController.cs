using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using RpgApi.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Http;

namespace RpgApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ArmaController : ControllerBase
    {
        private readonly DataContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public ArmaController(DataContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        [HttpPost]
        public async Task<IActionResult> AddAsync(Arma novaArma)
        {
            Personagem personagem = await _context.Personagens
                .FirstOrDefaultAsync(p => p.Id == novaArma.PersonagemId);

            if(personagem == null)
                return BadRequest("Não existe personagem com o ID informado.");

            Arma arma = await _context.Armas
                .FirstOrDefaultAsync(ar => ar.PersonagemId == novaArma.PersonagemId);

            if(arma != null)
                return BadRequest("O personagem informado já contém uma arma.");

            await _context.Armas.AddAsync(novaArma);
            await _context.SaveChangesAsync();

            List<Arma> armas = await _context.Armas
                .Where(p => p.PersonagemId == novaArma.PersonagemId)
                .ToListAsync();
            return Ok(armas);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(int id)
        {
            Arma arma = await _context.Armas.FirstOrDefaultAsync(a => a.Id == id);
            return Ok(arma);
        }

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            List<Arma> armas = await _context.Armas.ToListAsync();
            return Ok(armas);
        }

        [HttpPut]
        public async Task<IActionResult> Update(Arma arma)
        {
            _context.Armas.Update(arma);
            await _context.SaveChangesAsync();
            return Ok(arma);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            Arma arma = _context.Armas.FirstOrDefault(a => a.Id == id);
            _context.Armas.Remove(arma);
            _context.SaveChanges();
            List<Arma> lista = _context.Armas.ToList();
            return Ok(lista);
        }
    }
}
