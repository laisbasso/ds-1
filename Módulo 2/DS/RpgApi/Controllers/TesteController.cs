using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using System.Linq;

namespace RpgApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TesteController : ControllerBase
    {
        private static List<Personagem> personagens = new List<Personagem>()
        {
            new Personagem() { Id = 1 },
            new Personagem() { Id = 2, Nome = "Sam", PontosVida = 100, Forca = 15, Defesa = 25, Inteligencia = 30, Classe = ClasseEnum.Cavaleiro },
            new Personagem() { Id = 3, Nome = "Galadriel", PontosVida = 100, Forca = 18, Defesa = 21, Inteligencia = 35, Classe = ClasseEnum.Clerigo },
            new Personagem() { Id = 4, Nome = "Gandalf", PontosVida = 100, Forca = 19, Defesa = 18, Inteligencia = 37, Classe = ClasseEnum.Mago },
            new Personagem() { Id = 5, Nome = "Hobbit", PontosVida = 100, Forca = 20, Defesa = 17, Inteligencia = 31, Classe = ClasseEnum.Cavaleiro },
            new Personagem() { Id = 6, Nome = "Celeborn", PontosVida = 100, Forca = 21, Defesa = 13, Inteligencia = 34, Classe = ClasseEnum.Clerigo },
            new Personagem() { Id = 7, Nome = "Radagast", PontosVida = 100, Forca = 25, Defesa = 11, Inteligencia = 35, Classe = ClasseEnum.Mago }
        };
        
        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            return Ok(personagens);
        }

        public IActionResult GetSingle()
        {
            return Ok(personagens[0]);
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(personagens.FirstOrDefault(p => p.Id == id));
        }

        [HttpGet("GetCombinacao")]
        public IActionResult GetCombinacao()
        {
            List<Personagem> lista = personagens.FindAll(p => p.Forca < 20 && p.Inteligencia > 30);
            return Ok(lista);
        }

        [HttpGet("GetOrdenado")]
        public IActionResult GetOrdenado()
        {
            List<Personagem> lista = personagens.OrderBy(p => p.Nome).ToList();
            return Ok(lista);
        }

        [HttpGet("GetQuantidade")]
        public IActionResult GetQuantidade()
        {
            return Ok(personagens.Count);
        }

        [HttpGet("GetSomaForca")]
        public IActionResult GetSomaForca()
        {
            return Ok(personagens.Sum(p => p.Forca));
        }

        [HttpGet("GetSemCavaleiro")]
        public IActionResult GetSemCavaleiro()
        {
            List<Personagem> lista = personagens.FindAll(p => p.Classe != ClasseEnum.Cavaleiro);
            return Ok(lista);
        }

        [HttpGet("GetByNomeAproximado/{nome}")]
        public IActionResult GetByNomeAproximado(string nome)
        {
            List<Personagem> lista = personagens.FindAll(p => p.Nome.Contains(nome));
            return Ok(lista);
        }

        [HttpGet("GetRemovendoMagos")]
        public IActionResult GetRemovendoMagos()
        {
            personagens.RemoveAll(p => p.Classe == ClasseEnum.Mago);            
            return Ok(personagens);
        }

        [HttpGet("GetByInteligencia/{inteligencia}")]
        public IActionResult GetByInteligencia(int inteligencia)
        {
            List<Personagem> lista = personagens.FindAll(p => p.Inteligencia == inteligencia);   

            if (lista.Count == 0) return BadRequest("Nenhum personagem encontrado");
            
            return Ok(lista);
        }
    }
}