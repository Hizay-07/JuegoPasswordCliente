using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Web.SessionState;

namespace Cliente.Auxiliares
{
    public static class EncriptadorContrasenia
    {
        public static string EncriptarContrasenia(string contrasenia)
        {
            var sha256 = SHA256.Create();
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(contrasenia));
            var constructorCadena = new StringBuilder();
            for (int i = 0; i < bytes.Length; i++)
            {
                constructorCadena.Append(bytes[i].ToString("x2"));
            }
            return constructorCadena.ToString();
        }
    }
}
