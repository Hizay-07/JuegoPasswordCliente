using Cliente.Auxiliares;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Cliente.Vistas
{
    /// <summary>
    /// Lógica de interacción para VentanaContraseniaOlvidada.xaml
    /// </summary>
    public partial class VentanaContraseniaOlvidada : Page
    {
        public VentanaContraseniaOlvidada()
        {
            InitializeComponent();
        }

        private void Regresar(object remitente, RoutedEventArgs argumento)
        {
            VentanaInicio paginaInicio=new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void EnviarContrasenia(object remitente, RoutedEventArgs argumento)
        {            
            try
            {
                ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
                int validacionCorreo=proxy.ValidarPresenciaDeCorreo(Txb_Correo.Text);
                if (validacionCorreo == 1)
                {
                    ServidorPassword.ServicioPersonalizacionPerfilClient proxyPersonalizacion=new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    int idAcceso=proxyPersonalizacion.RecuperarIdAccesoPorCorreo(Txb_Correo.Text);
                    if (idAcceso > 0) 
                    {
                        string nuevaContrasenia = GenerarContrasenia();
                        int resultadoEdicion=proxyPersonalizacion.EditarContraseniaPorIdAcceso(idAcceso, nuevaContrasenia);
                        if (resultadoEdicion == 1)
                        {
                            EnviarCorreo(nuevaContrasenia);
                            MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
                            VentanaInicio paginaInicio=new VentanaInicio();
                            this.NavigationService.Navigate(paginaInicio);
                        }
                        else 
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        }
                    }                    
                }
                else if (validacionCorreo == 0)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            catch (EndpointNotFoundException) 
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
            }

        }
        private void EnviarCorreo(String nuevaContrasenia) 
        {            
            EnvioCorreo envioCorreo = new EnvioCorreo();
            envioCorreo.EnviarCorreo(Txb_Correo.Text, "Nueva contraseña", $"Contraseña: {nuevaContrasenia}");
        }

        private string GenerarContrasenia() 
        {
            GeneradorContrasenia generadorContrasenia = new GeneradorContrasenia();
            return generadorContrasenia.GenerarContraseña();
        }
    }
}
