using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Collections.Generic;
using RpgMvc.Models;
using Newtonsoft.Json;

namespace RpgMvc.Controllers
{
    public class PersonagensController : Controller
    {
        public string uriBase = "http://laisbasso.somee.com/RpgApi/Personagem/";

        public async Task<ActionResult> IndexAsync()
        {
            string uriComplementar = "GetAll";

            HttpClient httpClient = new HttpClient();

            string token = HttpContext.Session.GetString("SessionTokenUsuario");
            httpClient.DefaultRequestHeaders.Authorization =
                new AuthenticationHeaderValue("Bearer", token);

            HttpResponseMessage response = await httpClient.GetAsync(uriBase + uriComplementar);

            string serialized = await response.Content.ReadAsStringAsync();

            List<PersonagemViewModel> listaPersonagens = await Task.Run(() =>
                JsonConvert.DeserializeObject<List<PersonagemViewModel>>(serialized));

            return View(listaPersonagens);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        
        [HttpPost]
        public async Task<ActionResult> CreateAsync(PersonagemViewModel p)
        {
            HttpClient httpClient = new HttpClient();
            string token = HttpContext.Session.GetString("SessionTokenUsuario");
            httpClient.DefaultRequestHeaders.Authorization
                = new AuthenticationHeaderValue("Bearer", token);
            var content = new StringContent(JsonConvert.SerializeObject(p));
            content.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            HttpResponseMessage response = await httpClient.PostAsync(uriBase, content);
            string serialized = await response.Content.ReadAsStringAsync();
            await Task.Run(() =>
                JsonConvert.DeserializeObject<List<PersonagemViewModel>>(serialized));
            TempData["Mensagem"] = string.Format("Personagem {0} Salvo com sucesso!", p.Nome);
            return RedirectToAction("Index");
        }
    }
}