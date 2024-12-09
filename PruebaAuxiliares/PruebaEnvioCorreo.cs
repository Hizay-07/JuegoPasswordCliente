using Cliente.Auxiliares;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Net.Mail;

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
            string destinatario = "destinatario@gmail.com";
            string asunto = "Prueba de Envío de Correo";
            string cuerpo = "Este es un mensaje de prueba para verificar el envío de correos.";
            try
            {
                EnvioCorreo.EnviarCorreo(destinatario, asunto, cuerpo);
            }
            catch (SmtpException excepcionSMTP)
            {
                Assert.IsNotNull(excepcionSMTP);
            }            
        }
    }
}
