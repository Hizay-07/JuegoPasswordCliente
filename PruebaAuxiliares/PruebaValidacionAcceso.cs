using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using FluentValidation.Results;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaValidacionAcceso
    {
        [TestMethod]
        public void PruebaValidarCorreoExitosa()
        {
            string correo = "oscar@gmail.com";            
            Assert.IsTrue(ValidacionAcceso.ValidarCorreo(correo));
        }

        [TestMethod]
        public void PruebaConstructorExitosa()
        {
            Acceso acceso = new Acceso();
            acceso.correo = "hizayapodaca@gmail.com";
            acceso.contrasenia = "Oscar123$";
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            ValidationResult resultadoAcceso = validacionAcceso.Validate(acceso);
            Assert.IsTrue(resultadoAcceso.IsValid);
        }

        [TestMethod]
        public void PurebaValidarCorreoFallida()
        {
            string correo = "mario.com";            
            Assert.IsFalse(ValidacionAcceso.ValidarCorreo(correo));
        }

        [TestMethod]
        public void PruebaConstructorFallida()
        {
            Acceso acceso = new Acceso();
            acceso.correo = "hizayapodacagmail.com.mx";
            acceso.contrasenia = "oscar123";
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            ValidationResult resultadoAcceso = validacionAcceso.Validate(acceso);
            Assert.IsFalse(resultadoAcceso.IsValid);
        }
    }
}
