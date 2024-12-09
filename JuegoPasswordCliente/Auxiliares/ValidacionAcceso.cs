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
    public class ValidacionAcceso : AbstractValidator<Acceso>
    {
        public ValidacionAcceso()
        {
            RuleFor(acceso => acceso.contrasenia).Must(ValidarContrasenia);
            RuleFor(acceso => acceso.correo).EmailAddress();
        }

        public static bool ValidarCorreo(string correo) 
        {
            string patronCorreo = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(correo, patronCorreo);                         
        }

        public static bool ValidarContrasenia(string contrasenia)
        {
            bool validacionContrasenia=false;
            if (!contrasenia.Contains(" ")) 
            {
                string patronContrasenia = @"^(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9]).{8,}$";
                validacionContrasenia=Regex.IsMatch(contrasenia, patronContrasenia);
            }
            return validacionContrasenia;
        }
    }
}
