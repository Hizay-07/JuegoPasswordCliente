using Cliente.ServidorPassword;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class ValidacionJugador : AbstractValidator<Jugador>
    {
        public ValidacionJugador()
        {
            RuleFor(jugador => jugador.nombreUsuario).NotEmpty().MaximumLength(50).Matches(@"^[a-zA-Z0-9]+$");
            RuleFor(jugador => jugador.descripcion).MaximumLength(280);
        }

        public static bool ValidarDescripcion(string descripcion) 
        {
            return descripcion.Length <= 280;            
        }

        public static bool ValidarNombreUsuario(string nombreUsuario) 
        {
            string patronNombreUsuario = @"^[a-zA-Z0-9]+$";            
            return !string.IsNullOrEmpty(nombreUsuario) && nombreUsuario.Length <= 50&& Regex.IsMatch(nombreUsuario, patronNombreUsuario);
        }
    }
}
