using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Lógica de interacción para Lobby.xaml
    /// </summary>    
    public partial class VentanaLobby : Page,ServidorPassword.IServicioChatCallback
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private ServidorPassword.ServicioChatClient _servicioChat;                

        public VentanaLobby()
        {
            InitializeComponent();
            ConfigurarChat();
            RecuperarAmigos();
            ConfigurarAnfitrion();            
        }

        public void ConfigurarChat() 
        {
            try
            {
                InstanceContext contexto = new InstanceContext(this);
                _servicioChat = new ServidorPassword.ServicioChatClient(contexto);
                string nombreUsuario = JugadorSingleton.NombreUsuario;
                string codigoPartida = Txbl_CodigoPartida.Text;
                string mensajeInicial = $"{nombreUsuario}:{codigoPartida}: " + "se ha conectado.";                
                _servicioChat.Chatear(mensajeInicial);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado) 
            {
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }            
        }
        private void ConfigurarAnfitrion() 
        {
            Img_Anfitrion.Source = new BitmapImage(new Uri(JugadorSingleton.RutaImagen));
            Txbl_NombreAnfitrion.Text = JugadorSingleton.NombreUsuario;
        }

        public void Responder(string respuesta)
        {
            string codigoPartidaCliente = Txbl_CodigoPartida.Text;
            string[] partesMensaje = respuesta.Split(':');
            string codigoPartidaAEliminar = ":" + codigoPartidaCliente;
            if (partesMensaje.Length > 1 && partesMensaje[1] == codigoPartidaCliente)
            {
                string respuestaSinCodigoPartida = respuesta.Replace(codigoPartidaAEliminar, "");
                Txb_Conversacion.Text += respuestaSinCodigoPartida;
            }
        }

        private void EnviarMensaje(object remitente, RoutedEventArgs argumento)
        {
            string nombreUsuario = JugadorSingleton.NombreUsuario;
            string codigoPartida=Txbl_CodigoPartida.Text;
            string mensaje = $"{nombreUsuario}:{codigoPartida}: " + Txb_Mensaje.Text;
            Txb_Mensaje.Text = string.Empty;
            _servicioChat.Chatear(mensaje);
        }

        private void SalirMenuPrincipal(object remitente, RoutedEventArgs argumento)
        {
            VentanaMenuPrincipal paginaMenuPrincipal=new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

        private void RecuperarAmigos()
        {
            try
            {
                ServicioGestionAmistadClient servicioGestionAmistad = new ServicioGestionAmistadClient();
                List<int> idAmistades = servicioGestionAmistad.ConsultarAmistadesPorIdJugador(JugadorSingleton.IdJugador).ToList();
                int idAmistad = idAmistades.FirstOrDefault();
                if (idAmistad == -1)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
                else
                {
                    RecuperarJugadores(idAmistades);
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
                AsignarNombresUsuario(nombresUsuario, amistades);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private void AsignarNombresUsuario(List<string> nombresUsuario, List<int> idAmistades)
        {
            string primerNombreUsuario = nombresUsuario.First();
            if (primerNombreUsuario != "excepcion")
            {
                List<JugadorAmistad> amistades = CombinarListas(idAmistades, nombresUsuario);
                Ltv_Amigos.ItemsSource = amistades;
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
            }
        }

        private List<JugadorAmistad> CombinarListas(List<int> idJugadores, List<string> nombresUsuario)
        {
            List<JugadorAmistad> jugadores = idJugadores.Zip(nombresUsuario, (id, nombre) => new JugadorAmistad
            {
                IdJugador = id,
                NombreUsuario = nombre
            }).ToList();
            return jugadores;
        }

        private void InvitarAPartida(object remitente, RoutedEventArgs argumento) 
        {            
            Button Btn_EnviarCorreo = remitente as Button;            
            JugadorAmistad amigo = Btn_EnviarCorreo?.DataContext as JugadorAmistad;
            if (amigo != null)
            {
                try
                {
                    ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                    Cuenta cuenta = servicioGestionAcceso.RecuperarCuentaPorIdJugador(amigo.IdJugador);
                    if (cuenta.IdAcceso != -1)
                    {
                        EnviarCorreoPartida(cuenta.Correo);
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCorreoEnviado);
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
        }

        private void EnviarCorreoPartida(string correoAmigo) 
        {
            EnvioCorreo envioCorreo = new EnvioCorreo();
            envioCorreo.EnviarCorreo(correoAmigo,Properties.Resources.CorreoInvitacionPartida, Txbl_CodigoPartida.Text);
        }        
    }
}
