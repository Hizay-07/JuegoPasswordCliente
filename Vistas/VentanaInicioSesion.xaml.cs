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
    /// Lógica de interacción para InicioSesion.xaml
    /// </summary>
    public partial class VentanaInicioSesion : Page
    {
        public VentanaInicioSesion()
        {
            InitializeComponent();
        }

        private void CancelarInicioDeSesion(object sender, RoutedEventArgs e)
        {
            VentanaInicio inicioPage = new VentanaInicio();
            this.NavigationService.Navigate(inicioPage);
        }

        private void Btn_OlvideMiContrasena(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Txb_Correo.Text))
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeEnvioContrasena);
            }
        }

        private void AceptarInicioDeSesion(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Txb_Correo.Text) || string.IsNullOrWhiteSpace(Pwd_Contrasenia.Password))
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
                return;
            }

            ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
            ServidorPassword.Acceso acceso = new ServidorPassword.Acceso
            {
                correo = Txb_Correo.Text,
                contrasenia = Pwd_Contrasenia.Password
            };

            try
            {
                int resultado = proxy.ValidarInicioDeSesion(acceso);
                if (resultado == 1)
                {
                    ObtenerJugadorSingleton(acceso.correo);
                    VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
                    this.NavigationService.Navigate(paginaMenuPrincipal);
                }
                else
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                }
            }
            catch (EndpointNotFoundException)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
            }
            catch (CommunicationException)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
            }
        }

        private void ObtenerJugadorSingleton(string correo)
        {
            ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
            ServidorPassword.Cuenta cuenta = proxy.RecuperarCuentaPorCorreo(correo);
            JugadorSingleton.jugadorSingleton.CrearJugadorSingleton(cuenta);
        }
    }
}