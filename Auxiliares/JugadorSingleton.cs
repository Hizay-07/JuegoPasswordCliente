using Cliente.ServidorPassword;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class JugadorSingleton
    {
        private static readonly JugadorSingleton _jugadorSingleton = new JugadorSingleton();

        public static int IdAcceso { get; set; }
        public static string Correo { get; set; }
        public static string Contrasenia { get; set; }        
        public static string NombreUsuario { get; set; }
        public static string RutaImagen { get; set; }
        public static string Descripcion { get; set; }
        public static int IdJugador { get; set; } 
        
        public static int IdEstadistica { get; set; }

        private JugadorSingleton() { }

        public static JugadorSingleton jugadorSingleton => _jugadorSingleton;

        public void CrearJugadorSingleton(Cuenta cuenta)
        {
            Correo = cuenta.Correo;
            Contrasenia = cuenta.Contrasenia;
            IdAcceso = cuenta.IdAcceso;            
            NombreUsuario = cuenta.NombreUsuario;
            RutaImagen = cuenta.RutaImagen;
            Descripcion = cuenta.Descripcion;
            IdJugador = cuenta.IdJugador;   
            IdEstadistica=cuenta.IdEstadistica;
        }
    }
}
