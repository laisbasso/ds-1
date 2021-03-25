using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using RpgApi.Data;
using System.Linq;

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
        public IActionResult Add(Personagem personagem)
        {
            _context.Personagens.Add(personagem);
            _context.SaveChanges();
            List<Personagem> personagens = _context.Personagens.ToList();
            return Ok(personagens);
        }

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            List<Personagem> personagens = _context.Personagens.ToList();
            return Ok(personagens);
        }

        [HttpPut]
        public IActionResult Update(Personagem personagem)
        {
            _context.Personagens.Update(personagem);
            _context.SaveChanges();
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