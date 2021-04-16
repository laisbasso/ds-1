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
    public class PersonagemController : ControllerBase
    {
        private readonly DataContext _context;

        public PersonagemController(DataContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> Add(Personagem personagem)
        {
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

        [HttpGet("GetAll")]
        public async Task<IActionResult> GetAll()
        {
            List<Personagem> personagens = await _context.Personagens.ToListAsync();
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