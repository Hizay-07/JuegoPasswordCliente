using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public static class GeneradorCodigo
    {
        private static Random _aleatorio = new Random();

        public static string GenerarCodigoPartida() 
        {
            StringBuilder codigoPartida = new StringBuilder();
            for (int i = 0; i < 8; i++)
            {
                codigoPartida.Append(_aleatorio.Next(0, 10).ToString());
            }
            return codigoPartida.ToString();
        }
    }
}
