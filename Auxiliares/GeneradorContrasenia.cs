using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class GeneradorContrasenia
    {
        private static readonly Random _aleatorio = new Random();
        public string GenerarContraseña()
        {
            const int longitud = 8;
            const string letrasMayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            const string letrasMinusculas = "abcdefghijklmnopqrstuvwxyz";
            const string numeros = "0123456789";
            const string caracteresEspeciales = "!@#$%^&*()-_=+<>?";            
            string contraseña =
                $"{letrasMayusculas[_aleatorio.Next(letrasMayusculas.Length)]}" +
                $"{letrasMinusculas[_aleatorio.Next(letrasMinusculas.Length)]}" +
                $"{numeros[_aleatorio.Next(numeros.Length)]}" +
                $"{caracteresEspeciales[_aleatorio.Next(caracteresEspeciales.Length)]}";
            
            string todosLosCaracteres = letrasMayusculas + letrasMinusculas + numeros + caracteresEspeciales;
            int caracteresRestantes = longitud - contraseña.Length;
            for (int i = 0; i < caracteresRestantes; i++)
            {
                contraseña += todosLosCaracteres[_aleatorio.Next(todosLosCaracteres.Length)];
            }            
            contraseña = new string(contraseña.ToCharArray().OrderBy(s => _aleatorio.Next()).ToArray());
            return contraseña;
        }
    }
}
