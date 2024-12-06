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
            AsignarBotonesIdioma();

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
            try 
            {
                ServicioGestionPartidaClient servicioGestionPartida=new ServicioGestionPartidaClient();
                int verificacionCatalogoPreguntas=servicioGestionPartida.VerificarCatalogoCompletoPreguntas();
                switch (verificacionCatalogoPreguntas) 
                {
                    case 0:
                        MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeCatalogosFaltantes);
                        break;
                    case 1:
                        int verificacionCatalogoRespuestas=servicioGestionPartida.VerificarCatalogoCompletoRespuestas();
                        switch (verificacionCatalogoRespuestas) 
                        {
                            case 0:
                                MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeCatalogosFaltantes);
                                break;
                            case 1:
                                VentanaDificultadPartida paginaDificultadPartida = new VentanaDificultadPartida();
                                this.NavigationService.Navigate(paginaDificultadPartida);
                                break;
                            default:
                                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                                break;
                        }
                        break;
                    default:
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    break;
                }

                
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }            
        }

        private void AbrirCodigoPartida(object remitente, RoutedEventArgs argumento)
        {
            VentanaUnionPartida paginaUnionPartida=new VentanaUnionPartida();
            this.NavigationService.Navigate(paginaUnionPartida);
        }


        private void AsignarBotonesIdioma()
        {

            string currentLanguage = Properties.Settings.Default.Lenguaje;

            if (currentLanguage == "es-MX")
            {
                Btn_Espanol.IsEnabled = false;
                Btn_Espanol.Visibility = Visibility.Collapsed;
                Btn_Ingles.IsEnabled = true;
                Btn_Ingles.Visibility=Visibility.Visible;
            }
            else
            {
                Btn_Espanol.IsEnabled = true;
                Btn_Ingles.IsEnabled = false;
                Btn_Ingles.Visibility = Visibility.Collapsed;
                Btn_Espanol.Visibility = Visibility.Visible;
            }
        }

        private void CambioIdiomaClick(object sender, RoutedEventArgs e)
        {
            if (sender is Button boton)
            {
                string nuevoLenguaje = boton.Name == "Btn_Espanol" ? "es-MX" : "en-US";

                MessageBoxResult result = MessageBox.Show(
                   Properties.Resources.VentanaEmergenteCambioIdioma,
                   Properties.Resources.Lbl_CambioIdioma,
                    MessageBoxButton.YesNo,
                    MessageBoxImage.Question
                );

                if (result == MessageBoxResult.Yes)
                {
                    App.CambioIdioma(nuevoLenguaje);


                    System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
                    Application.Current.Shutdown();
                }
            }
        }
    }
}
