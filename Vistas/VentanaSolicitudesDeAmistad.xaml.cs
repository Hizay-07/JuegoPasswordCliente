using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.IO.Packaging;
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
    /// Lógica de interacción para VentanaSolicitudesDeAmistad.xaml
    /// </summary>
    public partial class VentanaSolicitudesDeAmistad : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaSolicitudesDeAmistad()
        {
            InitializeComponent();
            RecuperarAmistadesPendientes();
        }

        private void RecuperarAmistadesPendientes()
        {
            try
            {
                ServidorPassword.ServicioGestionAmistadClient proxy = new ServidorPassword.ServicioGestionAmistadClient();
                List<int> amistades = proxy.ConsultarSolicitudesAmistadPorIdJugador(JugadorSingleton.IdJugador).ToList();
                if (amistades.Count > 0)
                {
                    int amistad = amistades.First();
                    if (amistad != -1)
                    {
                        RecuperarJugadores(amistades);
                    }
                    else
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    }
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeSinSolicitudes);                    
                }                
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private void RecuperarJugadores(List<int> amistades)
        {
            try
            {
                ServidorPassword.ServicioGestionAmistadClient proxy = new ServidorPassword.ServicioGestionAmistadClient();
                List<string> nombresUsuario = proxy.ObtenerNombresDeUsuarioPorIdJugadores(amistades.ToArray()).ToList();
                AsignarNombresUsuario(nombresUsuario,amistades);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private void AsignarNombresUsuario(List<string> nombresUsuario,List<int> idJugadores)
        {
            string primerNombreUsuario = nombresUsuario.First();
            if (primerNombreUsuario != "excepcion")
            {
                List<JugadorAmistad> amistades=CombinarListas(idJugadores, nombresUsuario);
                ListaSolicitudes.ItemsSource = amistades;                
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
            }
        }

        private void RegresarMenuPrincipal(object remitente, RoutedEventArgs argumento)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

        private int ObtenerIdAmidstadPorIdJugadores(int idJugadorDestinatario)
        {
            int idAmistad = 0;
            try
            {
                ServidorPassword.ServicioGestionAmistadClient proxy=new ServidorPassword.ServicioGestionAmistadClient();
                idAmistad=proxy.RecuperarIdAmistadPorIdJugadores(idJugadorDestinatario, JugadorSingleton.IdJugador);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado) 
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
            return idAmistad;
        }

        private void AceptarSolicitud(object remitente, RoutedEventArgs argumento)
        {            
            if (ListaSolicitudes.SelectedItem is JugadorAmistad jugadorSeleccionado)
            {                
                int idJugadorDestinatario = jugadorSeleccionado.IdJugador;
                int idAmistad=ObtenerIdAmidstadPorIdJugadores(idJugadorDestinatario);
                if (idAmistad > 0)
                {
                    Amistad amistad = ObtenerAmistadAceptada();
                    amistad.idAmistad=idAmistad;
                    try
                    {
                        ServidorPassword.ServicioGestionAmistadClient proxy = new ServidorPassword.ServicioGestionAmistadClient();
                        int resultadoRegistro = proxy.ResponderSolicitudAmistad(amistad);
                        if (resultadoRegistro == 1)
                        {
                            MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
                            ListaSolicitudes.ItemsSource = new List<JugadorAmistad>();
                            RecuperarAmistadesPendientes();                            
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
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }                            
        }

        private void CancelarSolicitud(object remitente, RoutedEventArgs argumento) 
        {
            if (ListaSolicitudes.SelectedItem is JugadorAmistad jugadorSeleccionado)
            {
                int idJugadorDestinatario = jugadorSeleccionado.IdJugador;
                int idAmistad = ObtenerIdAmidstadPorIdJugadores(idJugadorDestinatario);
                if (idAmistad > 0)
                {
                    Amistad amistad = ObtenerAmistadRechazada();
                    amistad.idAmistad = idAmistad;
                    try
                    {
                        ServidorPassword.ServicioGestionAmistadClient proxy = new ServidorPassword.ServicioGestionAmistadClient();
                        int resultadoRegistro = proxy.ResponderSolicitudAmistad(amistad);
                        if (resultadoRegistro == 1)
                        {
                            MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
                            ListaSolicitudes.ItemsSource=new List<JugadorAmistad>();
                            RecuperarAmistadesPendientes();
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
                else
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
        }

        private Amistad ObtenerAmistadAceptada()
        {             
            Amistad amistad = new Amistad
            {                
                respuesta = true,
                fechaRespuesta = DateTime.Now,
            };
            return amistad;
        }

        private Amistad ObtenerAmistadRechazada() 
        {
            Amistad amistad = new Amistad
            {
                respuesta = false,
                fechaRespuesta = DateTime.Now,
            };
            return amistad;
        }

        private List<JugadorAmistad> CombinarListas(List<int> idJugadores, List<string> nombresUsuario) 
        {
            List<JugadorAmistad> jugadores=idJugadores.Zip(nombresUsuario,(id,nombre)=>new JugadorAmistad { 
                IdJugador=id,
            NombreUsuario=nombre}).ToList();
            return jugadores;
        }

    }
}
