using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Enums
{
    public class Enumeracion
    {
        public enum EnumEstadoPartida 
        {
            Iniciada,
            Proceso,
            Terminada,
            Cancelada,
        }

        public enum EnumModoJuegoPartida 
        {
            Facil,
            Medio,
            Dificil,
        }
    }
}
