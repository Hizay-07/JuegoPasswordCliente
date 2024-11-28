using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
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
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

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

        private void VerEstadisticas(object remitente, RoutedEventArgs argumento) 
        {
            VentanaEstadisticas paginaEstadisticas=new VentanaEstadisticas();
            this.NavigationService.Navigate(paginaEstadisticas);
        }
        private void SalirDelJuego(object sender, RoutedEventArgs e)
        {
            DesconectarJugador();
            VentanaInicio paginaInicio= new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void DesconectarJugador() 
        {
            try
            {
                ServicioJugadoresClient servicioJugadores=new ServicioJugadoresClient();
                servicioJugadores.DesconectarJugadorJuego(JugadorSingleton.NombreUsuario);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
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

        private void ElegirDificultadPartida(object remitente, RoutedEventArgs argumento)
        {
            VentanaDificultadPartida paginaDificultadPartida = new VentanaDificultadPartida();
            this.NavigationService.Navigate(paginaDificultadPartida);
        }

        private void AbrirCodigoPartida(object remitente, RoutedEventArgs argumento)
        {
            VentanaUnionPartida paginaUnionPartida=new VentanaUnionPartida();
            this.NavigationService.Navigate(paginaUnionPartida);
        }
    }
}
