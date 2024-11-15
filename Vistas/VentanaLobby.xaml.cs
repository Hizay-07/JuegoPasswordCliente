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
    /// Lógica de interacción para Lobby.xaml
    /// </summary>
    public partial class VentanaLobby : Page,ServidorPassword.IServicioChatCallback
    {
        private ServidorPassword.ServicioChatClient _servicioChat;
        public VentanaLobby()
        {
            InitializeComponent();            
            InstanceContext contexto = new InstanceContext(this);
            _servicioChat = new ServidorPassword.ServicioChatClient(contexto);
            string nombreUsuario = JugadorSingleton.NombreUsuario;
            string mensajeInicial = $"{nombreUsuario} se ha conectado.";
            _servicioChat.Chatear(mensajeInicial);
            RecuperarAmigos();
            ConfigurarAnfitrion();
        }

        private void ConfigurarAnfitrion() 
        {
            Img_Anfitrion.Source = new BitmapImage(new Uri(JugadorSingleton.RutaImagen));
            Txbl_NombreAnfitrion.Text = JugadorSingleton.NombreUsuario;
        }

        public void Responder(string respuesta)
        {
            Txb_Conversacion.Text += respuesta;
        }

        private void EnviarMensaje(object remitente, RoutedEventArgs argumento)
        {
            string nombreUsuario = JugadorSingleton.NombreUsuario;
            string mensaje = $"{nombreUsuario}: " + Txb_Mensaje.Text;
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
            catch (EndpointNotFoundException)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
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
            catch (EndpointNotFoundException)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
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
                catch (EndpointNotFoundException)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
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
