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

        [HttpGet]
        public IActionResult GetAll()
        {
            List<Personagem> personagens = _context.Personagens.ToList();
            return Ok(personagens);
        }
    }
}