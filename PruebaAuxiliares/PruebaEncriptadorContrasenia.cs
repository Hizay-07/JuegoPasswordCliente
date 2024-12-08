using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Cliente.Auxiliares;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaEncriptadorContrasenia
    {
        [TestMethod]
        public void PruebaEncriptarContraseniaExitosa()
        {
            string contrasenia = "Oscar123$";
            string resultado = EncriptadorContrasenia.EncriptarContrasenia(contrasenia);
            Assert.AreEqual(64, resultado.Length);
        }

        [TestMethod]
        public void PruebaEncriptarContraseniaConsistente()
        {
            string contrasenia = "Consistente123$";
            string resultado1 = EncriptadorContrasenia.EncriptarContrasenia(contrasenia);
            string resultado2 = EncriptadorContrasenia.EncriptarContrasenia(contrasenia);
            Assert.AreEqual(resultado1, resultado2);
        }
    }
}
