using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class EnvioCorreo
    {
        public void EnviarCorreo(string destinatario, string asunto, string cuerpo) 
        {
            try
            {                
                MailMessage mensaje = new MailMessage();
                mensaje.From = new MailAddress("juegopswdlis@gmail.com");  
                mensaje.To.Add(destinatario);
                mensaje.Subject = asunto;
                mensaje.Body = cuerpo;
                mensaje.IsBodyHtml = true;                
                SmtpClient clienteSmtp = new SmtpClient("smtp.gmail.com", 587);
                clienteSmtp.Credentials = new NetworkCredential("juegopswdlis@gmail.com", "kdpp iien niys fmvo");
                clienteSmtp.EnableSsl = true;                 
                clienteSmtp.Send(mensaje);
                Console.WriteLine("Correo enviado con éxito.");
            }
            catch (SmtpException excepcionSMTP)
            {
                Console.WriteLine("Error al enviar el correo: " + excepcionSMTP.Message);
            }

        }        
    }
}
