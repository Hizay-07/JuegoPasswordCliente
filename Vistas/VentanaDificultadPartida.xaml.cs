using Cliente.Auxiliares;
using Cliente.Enums;
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
    /// Lógica de interacción para VentanaDificultadPartida.xaml
    /// </summary>
    public partial class VentanaDificultadPartida : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaDificultadPartida()
        {
            InitializeComponent();
        }

        private void RegistrarPartidaFacil(object remitente, RoutedEventArgs argumento)
        {
            AbrirSalaEspera(Enumeracion.EnumModoJuegoPartida.Facil.ToString());
        }

        private void RegistrarPartidaMedia(object remitente, RoutedEventArgs argumento)
        {
            AbrirSalaEspera(Enumeracion.EnumModoJuegoPartida.Medio.ToString());
        }

        private void RegistrarPartidaDificil(object remitente, RoutedEventArgs argumento)
        {
            AbrirSalaEspera(Enumeracion.EnumModoJuegoPartida.Dificil.ToString());
        }

        private void AbrirSalaEspera(string tipoPartida) 
        {
            VentanaLobby paginaSalaEspera = new VentanaLobby();
            string codigoPartida = ObtenerCodigoPartida();
            Partida partida = ObtenerPartida(codigoPartida,tipoPartida);
            try
            {
                ServicioGestionPartidaClient servicioGestionPatida = new ServicioGestionPartidaClient();
                int resultadoRegistro = servicioGestionPatida.RegistrarPartidaPorIdJugador(JugadorSingleton.IdJugador, partida);
                if (resultadoRegistro != -1)
                {
                    paginaSalaEspera.Txbl_CodigoPartida.Text = codigoPartida;
                    paginaSalaEspera.ConfigurarChat();
                    this.NavigationService.Navigate(paginaSalaEspera);
                }
                else
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }

        }
        
        private Partida ObtenerPartida(string codigoPartida,string tipoPartida)
        {            
            Partida partida = new Partida
            {
                codigoPartida = codigoPartida,
                modoJuego = tipoPartida,
                estadoPartida = Enumeracion.EnumEstadoPartida.Iniciada.ToString(),
                idAnfitrion = JugadorSingleton.IdJugador,
            };
            return partida;
        }

        private string ObtenerCodigoPartida()       
        {
            GeneradorCodigo generadorCodigo = new GeneradorCodigo();
            string codigoPartida = generadorCodigo.GenerarCodigoPartida();
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                int resultadoValidacion = servicioGestionPartida.ValidarCodigoPartida(codigoPartida);
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
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
            return codigoPartida;
        }

        private void RegresarMenuPrincipal(object sender, RoutedEventArgs e)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }
    }
}
