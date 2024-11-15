using Cliente.Auxiliares;
using Cliente.ServidorPassword;
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
    /// Lógica de interacción para VentanaMenuPrincipal.xaml
    /// </summary>
    public partial class VentanaMenuPrincipal : Page
    {
        public VentanaMenuPrincipal()
        {
            InitializeComponent();
            ConfigurarImagenPerfil();
        }

        private void ConfigurarImagenPerfil() 
        {         
            Img_Perfil.Source = new BitmapImage(new Uri(JugadorSingleton.RutaImagen));            
        }

        private void PersonalizarPerfil(object remitente, RoutedEventArgs argumento)
        {
            VentanaPersonalizarPerfil paginaPersonalizarPerfil = new VentanaPersonalizarPerfil();
            this.NavigationService.Navigate(paginaPersonalizarPerfil);
        }

        private void AgregarAmigo(object remitente, RoutedEventArgs argumento) 
        {
            VentanaAgregarAmigo paginaAgregarAmigo = new VentanaAgregarAmigo();
            this.NavigationService.Navigate(paginaAgregarAmigo);
        }

        private void SalirDelJuego(object sender, RoutedEventArgs e)
        {
            VentanaInicio paginaInicio= new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void ConsultarAmigos(object remitente, RoutedEventArgs argumento)
        {
            VentanaAmigos paginaAmigos= new VentanaAmigos();
            this.NavigationService.Navigate(paginaAmigos);
        }

        private void VerSolicitudesDeAmistad(object remitente, RoutedEventArgs argumento)
        {
            VentanaSolicitudesDeAmistad paginaSolicitudesDeAmistad=new VentanaSolicitudesDeAmistad();
            this.NavigationService.Navigate(paginaSolicitudesDeAmistad);
        }

        private void AbrirSalaEspera(object remitente, RoutedEventArgs argumento)
        {
            VentanaLobby paginaSalaEspera=new VentanaLobby();
            string codigoPartida=ObtenerCodigoPartida();
            paginaSalaEspera.Txbl_CodigoPartida.Text=codigoPartida;
            this.NavigationService.Navigate(paginaSalaEspera);
        }

        private string ObtenerCodigoPartida() { 
            GeneradorCodigo generadorCodigo=new GeneradorCodigo();
            string codigoPartida = generadorCodigo.GenerarCodigoPartida();
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida=new ServicioGestionPartidaClient();                
                int resultadoValidacion=servicioGestionPartida.ValidarCodigoPartida(codigoPartida);
                switch (resultadoValidacion) 
                {
                    case -1:
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        break;
                    case 1:
                        while (resultadoValidacion == 1)
                        {
                            codigoPartida = generadorCodigo.GenerarCodigoPartida();
                            resultadoValidacion = servicioGestionPartida.ValidarCodigoPartida(codigoPartida);
                        }
                    break;
                }                
            }
            catch (EndpointNotFoundException) 
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
            }
            return codigoPartida;
        }
    }
}
