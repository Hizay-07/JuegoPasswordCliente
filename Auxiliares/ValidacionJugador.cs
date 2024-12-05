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
            RuleFor(jugador => jugador.nombreUsuario).NotEmpty().MaximumLength(50).Matches(@"^[^\s]+$");
            RuleFor(jugador => jugador.descripcion).MaximumLength(280);
        }

        public bool ValidarDescripcion(string descripcion) 
        {
            return descripcion.Length <= 280;            
        }

        public bool ValidarNombreUsuario(string nombreUsuario) 
        {
            string patronNombreUsuario = @"^[^\s]+$";           
            return !string.IsNullOrEmpty(nombreUsuario) && nombreUsuario.Length <= 50&& Regex.IsMatch(nombreUsuario, patronNombreUsuario);
        }
    }
}
