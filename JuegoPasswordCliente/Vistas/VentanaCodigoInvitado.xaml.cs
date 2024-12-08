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
    public partial class VentanaCodigoInvitado : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaCodigoInvitado()
        {
            InitializeComponent();
        }

        private void UnirseAPartida(object remitente, RoutedEventArgs argumento)
        {
            if (ValidarCodigoPartida())
            {
                if (ValidarEstadoPartida())
                {
                    if (ValidarNumeroJugadores())
                    {
                        CargarDatosPartida();
                    }
                    else 
                    {
                        MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajePartidaConLimiteJugadores);
                    }
                }
                else
                {
                    MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajePartidaNoDisponible);
                }
            }

        }

        private void RegresarInicio(object remitente, RoutedEventArgs argumento)
        {
            NavigationService.GoBack();
        }

        private bool ValidarNumeroJugadores() 
        {
            bool validacionJugadores = false;
            try 
            {
                ServicioJugadoresClient servicioJugadores = new ServicioJugadoresClient();
                validacionJugadores = servicioJugadores.ValidarNumeroJugadoresEnPartida(Txb_CodigoPartida.Text);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
            }
            return validacionJugadores;
        }

        private bool ValidarCodigoPartida()
        {
            bool validacion = false;
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                int validacionCodigo = servicioGestionPartida.ValidarCodigoPartida(Txb_CodigoPartida.Text);
                switch (validacionCodigo)
                {
                    case -1:
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        break;
                    case 0:
                        MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeCodigoPartidaInexistente);
                        break;
                    case 1:
                        validacion = true;
                        break;
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
            }
            return validacion;
        }

        private bool ValidarEstadoPartida()
        {
            bool validacionEstadoPartida = false;
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                var partida = servicioGestionPartida.RecuperarPartidaPorCodigo(Txb_CodigoPartida.Text);
                if (partida.IdPartida > 0 && partida.EstadoPartida == Enumeracion.EnumEstadoPartida.Iniciada.ToString())
                {
                    validacionEstadoPartida = true;                    
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
            }
            return validacionEstadoPartida;
        }

        private void CargarDatosPartida()
        {
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                var partida = servicioGestionPartida.RecuperarPartidaPorCodigo(Txb_CodigoPartida.Text);
                if (partida.IdPartida > 0)
                {
                    AbrirSalaDeEspera();
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
            }
        }

        private void AbrirSalaDeEspera()
        {
            InicializarJugador();
            VentanaSalaEspera paginaSalaEspera = new VentanaSalaEspera();
            paginaSalaEspera.Txbl_CodigoPartida.Text = Txb_CodigoPartida.Text;
            paginaSalaEspera.Stpl_Amigos.Visibility = Visibility.Hidden;
            paginaSalaEspera.ConfigurarJugadores();
            paginaSalaEspera.ConfigurarChat();
            paginaSalaEspera.RecuperarPartidaActual();
            this.NavigationService.Navigate(paginaSalaEspera);
        }

        private void InicializarJugador() 
        {
            JugadorSingleton.IdJugador = ValoresConstantes.IdJugadorInvitado;
            JugadorSingleton.NombreUsuario=GenerarNombreUsuarioAleatorio();
            JugadorSingleton.RutaImagen = ValoresConstantes.RutaImagenJugadorPorDefecto;
        }

        private string GenerarNombreUsuarioAleatorio() 
        {
            Random aleatorio= new Random();
            int numeroUsuarioAleatorio = aleatorio.Next(1, 1000000);
            string nombreUsuario = "Invitado" + numeroUsuarioAleatorio;
            return nombreUsuario;
        }
    }
}
