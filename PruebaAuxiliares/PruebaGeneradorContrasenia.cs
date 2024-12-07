using Cliente.Auxiliares;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Text.RegularExpressions;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaGeneradorContrasenia
    {
        [TestMethod]
        public void PruebaGenerarContraseñaLongitud()
        {            
            string contraseña = GeneradorContrasenia.GenerarContraseña();
            Assert.AreEqual(8, contraseña.Length);
        }

        [TestMethod]
        public void PruebaGenerarContraseñaContieneMayuscula()
        {            
            string contraseña = GeneradorContrasenia.GenerarContraseña();
            Assert.IsTrue(Regex.IsMatch(contraseña, "[A-Z]"));
        }

        [TestMethod]
        public void PruebaGenerarContraseñaContieneMinuscula()
        {            
            string contraseña = GeneradorContrasenia.GenerarContraseña();
            Assert.IsTrue(Regex.IsMatch(contraseña, "[a-z]"));
        }

        [TestMethod]
        public void PruebaGenerarContraseñaContieneNumero()
        {            
            string contraseña = GeneradorContrasenia.GenerarContraseña();
            Assert.IsTrue(Regex.IsMatch(contraseña, "[0-9]"));
        }

        [TestMethod]
        public void PruebaGenerarContraseñaContieneCaracterEspecial()
        {            
            string caracteresEspeciales = "!@#$%^&*()-_=+<>?";
            string contraseña = GeneradorContrasenia.GenerarContraseña();
            Assert.IsTrue(Regex.IsMatch(contraseña, "[" + Regex.Escape(caracteresEspeciales) + "]"));
        }

        [TestMethod]
        public void PruebaGenerarContraseñaEsAleatoria()
        {            
            string contraseña1 = GeneradorContrasenia.GenerarContraseña();
            string contraseña2 = GeneradorContrasenia.GenerarContraseña();
            Assert.AreNotEqual(contraseña1, contraseña2);
        }
    }
}
