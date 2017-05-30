using System;

namespace APIIndicadores
{
    public class Indicador
    {
        public string Sigla { get; set; }
        public string NomeIndicador { get; set; }
        public DateTime UltimaAtualizacao { get; set; }
        public decimal Valor { get; set; }
    }
}