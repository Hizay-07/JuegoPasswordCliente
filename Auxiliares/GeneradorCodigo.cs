using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class GeneradorCodigo
    {       
        public string GenerarCodigoPartida() 
        {
            Random _aleatorio = new Random();
            string codigoPartida=string.Empty;            
            for (int i = 0; i < 8; i++)
            {
                codigoPartida += _aleatorio.Next(0, 10).ToString();
            }
            return codigoPartida;
        }
    }
}
