using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using RpgApi.Models;
using RpgApi.Models.Enuns;
using System.Linq;

namespace RpgApi.Controllers
{
    
    [ApiController]
    [Route("[controller]")]
    public class ExercicioController : ControllerBase
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

        [HttpGet("GetByClasse/{idClasse}")]
        public IActionResult GetByClasse(int idClasse)
        {
            ClasseEnum classe = (ClasseEnum) idClasse;
            List<Personagem> lista = personagens.FindAll(p => p.Classe == classe);
            return Ok(lista);
        }     

        [HttpGet("GetByNome/{nome}")]
        public IActionResult GetByNome(string nome)
        {
            List<Personagem> lista = personagens.FindAll(p => p.Nome == nome);

            if (lista.Count == 0) return BadRequest("Nenhum personagem encontrado");

            return Ok(lista);
        }    
           
        [HttpGet("GetEstatisticas")]
        public IActionResult GetEstatisticas()
        {
            int qtdPersonagens = personagens.Count;
            int somaInteligencia = personagens.Sum(p => p.Inteligencia);
            
            string msg = "Quantidade total de personagens: " + qtdPersonagens
                        + "\nSomatório de inteligência dos personagens: " + somaInteligencia;

            return Ok(msg);
        } 

    }
}