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
    /// Lógica de interacción para VentanaUnionPartida.xaml
    /// </summary>
    public partial class VentanaUnionPartida : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaUnionPartida()
        {
            InitializeComponent();
        }

        private void RegresarAMenuPrincipal(object remitente, RoutedEventArgs argumento)
        {
            NavigationService.GoBack();
        }

        private void UnirseAPartida(object remitente, RoutedEventArgs argumento)
        {
            if (ValidarCodigoPartida()) 
            {
                if (ValidarEstadoPartida())
                {
                    CargarDatosPartida();
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajePartidaNoDisponible);
                }
            }
        }

        private bool ValidarEstadoPartida()
        {
            bool validacionEstadoPartida = false;
            try 
            {
                ServicioGestionPartidaClient servicioGestionPartida=new ServicioGestionPartidaClient();                
                var partida = servicioGestionPartida.RecuperarPartidaPorCodigo(Txb_CodigoPartida.Text);
                if (partida.IdPartida > 0) 
                {
                    if (partida.EstadoPartida == Enumeracion.EnumEstadoPartida.Iniciada.ToString()) 
                    {
                        validacionEstadoPartida = true;
                    }
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
            return validacionEstadoPartida;
        }

        private bool ValidarCodigoPartida() 
        {
            bool validacion = false;
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida=new ServicioGestionPartidaClient();
                int validacionCodigo=servicioGestionPartida.ValidarCodigoPartida(Txb_CodigoPartida.Text);
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
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
            return validacion;
        }


        private void CargarDatosPartida() 
        {
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                var partida = servicioGestionPartida.RecuperarPartidaPorCodigo(Txb_CodigoPartida.Text);
                if (partida.IdPartida > 0)
                {
                    Cuenta cuenta=ObtenerInformacionAnfitrion(partida.IdAnfitrion);
                    if (cuenta.IdAcceso > 0) 
                    {
                        AbrirSalaDeEspera(cuenta);
                    }
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private Cuenta ObtenerInformacionAnfitrion(int idAnfitrion) 
        {
            Cuenta cuentaAnfitrion = new Cuenta();
            try
            {
                ServicioGestionAccesoClient servicioGestionAcceso=new ServicioGestionAccesoClient();
                cuentaAnfitrion = servicioGestionAcceso.RecuperarCuentaPorIdJugador(idAnfitrion);                
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado) 
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
            return cuentaAnfitrion;
        }

        private void AbrirSalaDeEspera(Cuenta cuenta) 
        {
            VentanaLobby paginaSalaEspera=new VentanaLobby();
            paginaSalaEspera.Img_Anfitrion.Source = new BitmapImage(new Uri(cuenta.RutaImagen));
            paginaSalaEspera.Txbl_NombreAnfitrion.Text = cuenta.NombreUsuario;
            paginaSalaEspera.Img_Jugador2.Source = new BitmapImage(new Uri(JugadorSingleton.RutaImagen));
            paginaSalaEspera.Txbl_NombreJugador2.Text = JugadorSingleton.NombreUsuario;
            paginaSalaEspera.Txbl_CodigoPartida.Text = Txb_CodigoPartida.Text;
            paginaSalaEspera.Stpl_Amigos.Visibility = Visibility.Hidden;
            paginaSalaEspera.ConfigurarChat();
            this.NavigationService.Navigate(paginaSalaEspera);
        }        
    }
}
