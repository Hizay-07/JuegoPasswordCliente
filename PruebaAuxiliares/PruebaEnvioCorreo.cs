using Cliente.Auxiliares;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaEnvioCorreo
    {
        [TestMethod]
        public void PruebaEnviarCorreoExitoso()
        {
            string destinatario = "correo.destinatario@gmail.com";
            string asunto = "Prueba de Envío de Correo";
            string cuerpo = "Este es un mensaje de prueba para verificar el envío de correos.";            
            try
            {
                EnvioCorreo.EnviarCorreo(destinatario, asunto, cuerpo);
                Console.WriteLine("El correo se envió correctamente.");
                Assert.IsTrue(true);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al enviar el correo: " + ex.Message);
                Assert.Fail("Se produjo un error al enviar el correo.");
            }
        }

        [TestMethod]
        public void PruebaEnviarCorreoFallido()
        {
            string destinatario = "correo.invalido";
            string asunto = "Prueba de Envío de Correo";
            string cuerpo = "Este es un mensaje de prueba para verificar el envío de correos.";            
            try
            {
                EnvioCorreo.EnviarCorreo(destinatario, asunto, cuerpo);
                Assert.Fail("Se esperaba que fallara el envío de correo, pero se envió correctamente.");
            }
            catch (FormatException)
            {
                Console.WriteLine("Error esperado al enviar el correo a una dirección inválida.");
                Assert.IsTrue(true); 
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error inesperado al enviar el correo: " + ex.Message);
                Assert.Fail("Se produjo un error inesperado al enviar el correo.");
            }
        }
    }
}
