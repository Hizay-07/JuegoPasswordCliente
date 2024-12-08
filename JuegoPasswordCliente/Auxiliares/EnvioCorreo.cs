using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Cliente.Auxiliares
{
    public static class EnvioCorreo
    {
        public static void EnviarCorreo(string destinatario, string asunto, string cuerpo) 
        {
            try
            {                
                MailMessage mensaje = new MailMessage();
                mensaje.From = new MailAddress(ConfigurationManager.AppSettings["CorreoUsuario"]);
                mensaje.To.Add(destinatario);
                mensaje.Subject = asunto;
                mensaje.Body = cuerpo;
                mensaje.IsBodyHtml = true;                
                SmtpClient clienteSmtp = new SmtpClient("smtp.gmail.com", 587);
                clienteSmtp.Credentials = new NetworkCredential(
                    ConfigurationManager.AppSettings["CorreoUsuario"],
                    ConfigurationManager.AppSettings["CorreoContrasenia"]
                );
                clienteSmtp.EnableSsl = true;                 
                clienteSmtp.Send(mensaje);                
            }
            catch (SmtpException)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorEnvioCorreo);
            }
        }        
    }
}
