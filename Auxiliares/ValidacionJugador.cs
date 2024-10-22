using Cliente.ServidorPassword;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class ValidacionJugador : AbstractValidator<Jugador>
    {
        public ValidacionJugador()
        {
            RuleFor(jugador => jugador.nombre).NotEmpty().MaximumLength(100);
            RuleFor(jugador => jugador.apellidos).NotEmpty().MaximumLength(100);
        }
    }
}
