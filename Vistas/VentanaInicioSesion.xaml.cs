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

        }               

        private void AceptarInicioDeSesion(object sender, RoutedEventArgs e)
        {
            ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
            ServidorPassword.Acceso acceso = new ServidorPassword.Acceso();
            acceso.correo = Txb_Correo.Text;
            acceso.contrasenia = Pwd_Contrasenia.Password;
            if (proxy.ValidarInicioDeSesion(acceso) == 1)
            {
                ObtenerJugadorSingleton(acceso.correo);
                VentanaLobby sala = new VentanaLobby();
                this.NavigationService.Navigate(sala);
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
