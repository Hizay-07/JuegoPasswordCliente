using Cliente.Auxiliares;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaEnvioCorreoExcepcion
    {
        [TestMethod]
        [ExpectedException(typeof(SmtpException))]
        public void PruebaExcepcionCorreoServidorInalcanzable()
        {
            SmtpClient clienteSmtp = new SmtpClient("servidor.inexistente.com", 587)
            {
                Credentials = new NetworkCredential("usuario@gmail.com", "contrasenia"),
                EnableSsl = true
            };
            MailMessage mensaje = new MailMessage
            {
                From = new MailAddress("usuario@gmail.com"),
                Subject = "Prueba de servidor SMTP inexistente",
                Body = "Este correo debería fallar al intentar enviarse.",
                IsBodyHtml = true
            };
            mensaje.To.Add("correo.destinatario@gmail.com");
            clienteSmtp.Send(mensaje);
        }

        [TestMethod]
        [ExpectedException(typeof(FormatException))]
        public void PruebaExcepcionCorreoFormatoInvalido()
        {
            string destinatario = "correo_invalido";
            string asunto = "Prueba de excepción";
            string cuerpo = "Este correo no debería enviarse debido a un formato de destinatario inválido.";
            EnvioCorreo.EnviarCorreo(destinatario, asunto, cuerpo);
        }
    }
}
