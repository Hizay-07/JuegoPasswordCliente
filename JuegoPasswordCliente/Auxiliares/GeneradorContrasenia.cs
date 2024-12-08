using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public static class GeneradorContrasenia
    {
        private static readonly Random _aleatorio = new Random();

        public static string GenerarContraseña()
        {
            const int Longitud = 8;
            const string LetrasMayusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            const string LetrasMinusculas = "abcdefghijklmnopqrstuvwxyz";
            const string Numeros = "0123456789";
            const string CaracteresEspeciales = "!@#$%^&*()-_=+<>?";
            StringBuilder contrasenia = new StringBuilder();
            contrasenia.Append(LetrasMayusculas[_aleatorio.Next(LetrasMayusculas.Length)]);
            contrasenia.Append(LetrasMinusculas[_aleatorio.Next(LetrasMinusculas.Length)]);
            contrasenia.Append(Numeros[_aleatorio.Next(Numeros.Length)]);
            contrasenia.Append(CaracteresEspeciales[_aleatorio.Next(CaracteresEspeciales.Length)]);                        
            string todosLosCaracteres = LetrasMayusculas + LetrasMinusculas + Numeros + CaracteresEspeciales;
            int caracteresRestantes = Longitud - contrasenia.Length;
            for (int i = 0; i < caracteresRestantes; i++)
            {
                contrasenia.Append(todosLosCaracteres[_aleatorio.Next(todosLosCaracteres.Length)]);
            }
            char[] contraseniaCadena = contrasenia.ToString().ToCharArray();
            contraseniaCadena = contraseniaCadena.OrderBy(s => _aleatorio.Next()).ToArray();
            return new string(contraseniaCadena);
        }
    }
}
