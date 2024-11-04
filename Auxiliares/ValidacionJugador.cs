using Cliente.ServidorPassword;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Media.Animation;

namespace Cliente.Auxiliares
{
    public class ValidacionJugador : AbstractValidator<Jugador>
    {
        public ValidacionJugador()
        {
            RuleFor(jugador => jugador.nombre).NotEmpty().MaximumLength(100).Matches(@"^[a-zA-Z\s]+$");
            RuleFor(jugador => jugador.apellidos).NotEmpty().MaximumLength(100).Matches(@"^[a-zA-Z\s]+$");
        }

        public bool ValidarNombre(string nombre) 
        {
            string patronNombre= @"^[a-zA-Z\s]+$";
            return Regex.IsMatch(nombre, patronNombre);
        }

        public bool ValidarApellidos(string apellidos) 
        {
            string patronApellido = @"^[a-zA-Z\s]+$";
            return Regex.IsMatch(apellidos, patronApellido);
        }

    }
}
