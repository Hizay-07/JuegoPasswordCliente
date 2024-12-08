using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using FluentValidation.Results;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaValidacionJugador
    {
        [TestMethod]
        public void PruebaValidarNombreUsuarioExitoso()
        {
            string nombreUsuario = "Jugador123";
            Assert.IsTrue(ValidacionJugador.ValidarNombreUsuario(nombreUsuario));
        }

        [TestMethod]
        public void PruebaValidarNombreUsuarioFallido()
        {
            string nombreUsuario = "Jugador!!123";
            Assert.IsFalse(ValidacionJugador.ValidarNombreUsuario(nombreUsuario));
        }

        [TestMethod]
        public void PruebaValidarDescripcionExitosa()
        {
            string descripcion = "Jugador con descripción válida.";
            Assert.IsTrue(ValidacionJugador.ValidarDescripcion(descripcion));
        }

        [TestMethod]
        public void PruebaValidarDescripcionFallida()
        {
            string descripcion = new string('a', 300);
            Assert.IsFalse(ValidacionJugador.ValidarDescripcion(descripcion));
        }
    }
}
