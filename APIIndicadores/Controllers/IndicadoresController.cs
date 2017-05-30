using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace APIIndicadores.Controllers
{
    [Route("api/[controller]")]
    public class IndicadoresController : Controller
    {
        [HttpGet("{id}")]
        public Indicador Get(
            [FromServices]IndicadoresDAO indicadoresDAO,
            string id)
        {
            return indicadoresDAO.Obter(id);
        }
    }
}