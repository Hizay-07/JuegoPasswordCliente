using Cliente.Auxiliares;
using Cliente.Enums;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    public partial class VentanaSalaEspera : Page, IServicioChatCallback, IServicioSalaDeEsperaCallback
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private ServicioChatClient _servicioChat;
        private ServicioSalaDeEsperaClient _servicioSalaDeEspera;
        private List<JugadorContrato> _jugadores;
        private PartidaContrato _partidaActual;

        public VentanaSalaEspera()
        {
            InitializeComponent();
            RecuperarAmigos();
        }

        public void ConfigurarChat()
        {
            try
            {
                InstanceContext contexto = new InstanceContext(this);
                _servicioChat = new ServicioChatClient(contexto);
                string nombreUsuario = JugadorSingleton.NombreUsuario;
                string codigoPartida = Txbl_CodigoPartida.Text;
                string mensajeInicial = $"{nombreUsuario}:{codigoPartida}: " + $"{Properties.Resources.Estado_Conexion}";
                _servicioChat.Chatear(mensajeInicial);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        public void ConfigurarJugadores()
        {
            JugadorContrato jugador = ObtenerJugador();
            try
            {
                InstanceContext contexto = new InstanceContext(this);
                _servicioSalaDeEspera = new ServicioSalaDeEsperaClient(contexto);
                _servicioSalaDeEspera.ConectarJugador(Txbl_CodigoPartida.Text, jugador);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private JugadorContrato ObtenerJugador()
        {
            JugadorContrato jugador = new JugadorContrato
            {
                NombreUsuario = JugadorSingleton.NombreUsuario,
                RutaImagen = JugadorSingleton.RutaImagen,
                IdJugador = JugadorSingleton.IdJugador,
            };
            return jugador;
        }
        public void ConfigurarAnfitrion()
        {
            Img_Anfitrion.Source = new BitmapImage(new Uri(_jugadores[0].RutaImagen));
            Txbl_NombreAnfitrion.Text = _jugadores[0].NombreUsuario;
            Img_Jugador2.Source = null;
            Txbl_NombreJugador2.Text = "";
            Img_Jugador3.Source = null;
            Txbl_NombreJugador3.Text = "";
            Img_Jugador4.Source = null;
            Txbl_NombreJugador4.Text = "";
            Img_Jugador5.Source = null;
            Txbl_NombreJugador5.Text = "";
            Img_Jugador6.Source = null;
            Txbl_NombreJugador6.Text = "";
            Img_Jugador7.Source = null;
            Txbl_NombreJugador7.Text = "";
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador2()
        {
            Img_Jugador2.Source = new BitmapImage(new Uri(_jugadores[1].RutaImagen));
            Txbl_NombreJugador2.Text = _jugadores[1].NombreUsuario;
            Img_Jugador3.Source = null;
            Txbl_NombreJugador3.Text = "";
            Img_Jugador4.Source = null;
            Txbl_NombreJugador4.Text = "";
            Img_Jugador5.Source = null;
            Txbl_NombreJugador5.Text = "";
            Img_Jugador6.Source = null;
            Txbl_NombreJugador6.Text = "";
            Img_Jugador7.Source = null;
            Txbl_NombreJugador7.Text = "";
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador3()
        {
            Img_Jugador3.Source = new BitmapImage(new Uri(_jugadores[2].RutaImagen));
            Txbl_NombreJugador3.Text = _jugadores[2].NombreUsuario;
            Img_Jugador4.Source = null;
            Txbl_NombreJugador4.Text = "";
            Img_Jugador5.Source = null;
            Txbl_NombreJugador5.Text = "";
            Img_Jugador6.Source = null;
            Txbl_NombreJugador6.Text = "";
            Img_Jugador7.Source = null;
            Txbl_NombreJugador7.Text = "";
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador4()
        {
            Img_Jugador4.Source = new BitmapImage(new Uri(_jugadores[3].RutaImagen));
            Txbl_NombreJugador4.Text = _jugadores[3].NombreUsuario;
            Img_Jugador5.Source = null;
            Txbl_NombreJugador5.Text = "";
            Img_Jugador6.Source = null;
            Txbl_NombreJugador6.Text = "";
            Img_Jugador7.Source = null;
            Txbl_NombreJugador7.Text = "";
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador5()
        {
            Img_Jugador5.Source = new BitmapImage(new Uri(_jugadores[4].RutaImagen));
            Txbl_NombreJugador5.Text = _jugadores[4].NombreUsuario;
            Img_Jugador6.Source = null;
            Txbl_NombreJugador6.Text = "";
            Img_Jugador7.Source = null;
            Txbl_NombreJugador7.Text = "";
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador6()
        {
            Img_Jugador6.Source = new BitmapImage(new Uri(_jugadores[5].RutaImagen));
            Txbl_NombreJugador6.Text = _jugadores[5].NombreUsuario;
            Img_Jugador7.Source = null;
            Txbl_NombreJugador7.Text = "";
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador7()
        {
            Img_Jugador7.Source = new BitmapImage(new Uri(_jugadores[6].RutaImagen));
            Txbl_NombreJugador7.Text = _jugadores[6].NombreUsuario;
            Img_Jugador8.Source = null;
            Txbl_NombreJugador8.Text = "";
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador8()
        {
            Img_Jugador8.Source = new BitmapImage(new Uri(_jugadores[7].RutaImagen));
            Txbl_NombreJugador8.Text = _jugadores[7].NombreUsuario;
            Img_Jugador9.Source = null;
            Txbl_NombreJugador9.Text = "";
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador9()
        {
            Img_Jugador9.Source = new BitmapImage(new Uri(_jugadores[8].RutaImagen));
            Txbl_NombreJugador9.Text = _jugadores[8].NombreUsuario;
            Img_Jugador10.Source = null;
            Txbl_NombreJugador10.Text = "";
        }

        public void ConfigurarJugador10()
        {
            Img_Jugador10.Source = new BitmapImage(new Uri(_jugadores[9].RutaImagen));
            Txbl_NombreJugador10.Text = _jugadores[9].NombreUsuario;
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
            string codigoPartida = Txbl_CodigoPartida.Text;
            string mensaje = $"{nombreUsuario}:{codigoPartida}: " + Txb_Mensaje.Text;
            Txb_Mensaje.Text = string.Empty;
            _servicioChat.Chatear(mensaje);
        }

        private void SalirMenuPrincipal(object remitente, RoutedEventArgs argumento)
        {
            DesconectarJugadorDePartida();
            if (JugadorSingleton.IdJugador == _partidaActual.IdAnfitrion)
            {
                CerrarPartida();
            }
            if (JugadorSingleton.IdJugador > 0)
            {
                VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
                this.NavigationService.Navigate(paginaMenuPrincipal);
            }
            else
            {
                VentanaInicio paginaInicio = new VentanaInicio();
                this.NavigationService.Navigate(paginaInicio);
            }
        }

        private void DesconectarJugadorDePartida()
        {
            JugadorContrato jugador = ObtenerJugador();
            _servicioSalaDeEspera.DesconectarJugador(Txbl_CodigoPartida.Text, jugador);
        }

        private void RecuperarAmigos()
        {
            try
            {
                ServicioGestionAmistadClient servicioGestionAmistad = new ServicioGestionAmistadClient();
                List<JugadorContrato> amigos = servicioGestionAmistad.ConsultarAmistadesPorIdJugador(JugadorSingleton.IdJugador).ToList();
                int idJugador = amigos[0].IdJugador;
                if (idJugador > 0)
                {                    
                    Ltv_Amigos.ItemsSource = amigos;
                }
                else if (idJugador == -1)
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

        private void InvitarAPartida(object remitente, RoutedEventArgs argumento)
        {
            Button Btn_EnviarCorreo = remitente as Button;
            JugadorContrato amigo = Btn_EnviarCorreo?.DataContext as JugadorContrato;
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
            EnvioCorreo.EnviarCorreo(correoAmigo, Properties.Resources.CorreoInvitacionPartida, Txbl_CodigoPartida.Text);
        }

        public void ActualizarListaJugadores(JugadorContrato[] jugadores)
        {
            _jugadores = jugadores.ToList();
            int numeroJugadores = _jugadores.Count;
            switch (numeroJugadores)
            {
                case 1:
                    ConfigurarAnfitrion();
                    DesactivarBotonJugar();
                    break;
                case 2:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ActivarBotonJugar();
                    break;
                case 3:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ActivarBotonJugar();
                    break;
                case 4:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ActivarBotonJugar();
                    break;
                case 5:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ConfigurarJugador5();
                    ActivarBotonJugar();
                    break;
                case 6:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ConfigurarJugador5();
                    ConfigurarJugador6();
                    ActivarBotonJugar();
                    break;
                case 7:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ConfigurarJugador5();
                    ConfigurarJugador6();
                    ConfigurarJugador7();
                    ActivarBotonJugar();
                    break;
                case 8:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ConfigurarJugador5();
                    ConfigurarJugador6();
                    ConfigurarJugador7();
                    ConfigurarJugador8();
                    ActivarBotonJugar();
                    break;
                case 9:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ConfigurarJugador5();
                    ConfigurarJugador6();
                    ConfigurarJugador7();
                    ConfigurarJugador8();
                    ConfigurarJugador9();
                    ActivarBotonJugar();
                    break;
                case 10:
                    ConfigurarAnfitrion();
                    ConfigurarJugador2();
                    ConfigurarJugador3();
                    ConfigurarJugador4();
                    ConfigurarJugador5();
                    ConfigurarJugador6();
                    ConfigurarJugador7();
                    ConfigurarJugador8();
                    ConfigurarJugador9();
                    ConfigurarJugador10();
                    ActivarBotonJugar();
                    break;
            }
        }
        private void DesactivarBotonJugar()
        {
            Btn_Jugar.Visibility = Visibility.Hidden;
        }

        private void ActivarBotonJugar()
        {
            if (JugadorSingleton.NombreUsuario == _jugadores[0].NombreUsuario)
            {
                Btn_Jugar.Visibility = Visibility.Visible;
            }
        }

        private void IniciarPartida(object remitente, RoutedEventArgs argumento)
        {
            var modoJuegoPartida = _partidaActual.ModoJuego.ToString();
            CambiarEstadoPartidaEnProceso();
            if (modoJuegoPartida == Enumeracion.EnumModoJuegoPartida.Facil.ToString())
            {
                ConfigurarPartida(ValoresConstantes.CantidadPreguntasFacil);
                _servicioSalaDeEspera.IniciarPartida(Txbl_CodigoPartida.Text, ValoresConstantes.CantidadPreguntasFacil);
            }
            else if (modoJuegoPartida == Enumeracion.EnumModoJuegoPartida.Medio.ToString())
            {
                ConfigurarPartida(ValoresConstantes.CantidadPreguntasMedio);
                _servicioSalaDeEspera.IniciarPartida(Txbl_CodigoPartida.Text, ValoresConstantes.CantidadPreguntasMedio);
            }
            else
            {
                ConfigurarPartida(ValoresConstantes.CantidadPreguntasDificil);
                _servicioSalaDeEspera.IniciarPartida(Txbl_CodigoPartida.Text, ValoresConstantes.CantidadPreguntasDificil);
            }
        }

        private void ConfigurarPartida(int numeroPreguntas)
        {
            List<string> nombresUsuario = ObtenerNombresUsuarioDeJugadores();
            try
            {
                ServicioPartidaClient servicioPartida = new ServicioPartidaClient();
                servicioPartida.InicializarPartida(Txbl_CodigoPartida.Text, numeroPreguntas);
                servicioPartida.ConfigurarJugadores(Txbl_CodigoPartida.Text, nombresUsuario.ToArray());
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private List<string> ObtenerNombresUsuarioDeJugadores()
        {
            List<string> nombresUsuario = new List<string>();
            for (int i = 0; i < _jugadores.Count; i++)
            {
                nombresUsuario.Add(_jugadores[i].NombreUsuario);
            }
            return nombresUsuario;
        }

        private void CambiarEstadoPartidaEnProceso()
        {
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                int resultadoActualizacion = servicioGestionPartida.ActualizarEstadoPorIdPartida(_partidaActual.IdPartida, Enumeracion.EnumEstadoPartida.Proceso.ToString());
                if (resultadoActualizacion == -1)
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


        public void RecuperarPartidaActual()
        {
            string codigoPartida = Txbl_CodigoPartida.Text;
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                PartidaContrato partidaContrato = servicioGestionPartida.RecuperarPartidaPorCodigo(codigoPartida);
                if (partidaContrato.IdPartida > 0)
                {
                    _partidaActual = partidaContrato;
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


        private void CerrarPartida()
        {
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                int resultadoActualizacion = servicioGestionPartida.ActualizarEstadoPorIdPartida(_partidaActual.IdPartida, Enumeracion.EnumEstadoPartida.Cancelada.ToString());
                if (resultadoActualizacion == -1)
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

        public void AbrirVentanaPartida(PreguntaContrato[] preguntasSeleccionadas, RespuestaContrato[] respuestasSeleccionadas)
        {
            VentanaPregunta paginaPregunta = new VentanaPregunta();
            var modoJuegoPartida = _partidaActual.ModoJuego.ToString();
            if (modoJuegoPartida == Enumeracion.EnumModoJuegoPartida.Facil.ToString())
            {
                paginaPregunta.ConfigurarPartida(ValoresConstantes.TiempoFacil, ValoresConstantes.CantidadPreguntasFacil, Txbl_CodigoPartida.Text);                
            }
            else if (modoJuegoPartida == Enumeracion.EnumModoJuegoPartida.Medio.ToString())
            {
                paginaPregunta.ConfigurarPartida(ValoresConstantes.TiempoMedio, ValoresConstantes.CantidadPreguntasMedio, Txbl_CodigoPartida.Text);                
            }
            else
            {
                paginaPregunta.ConfigurarPartida(ValoresConstantes.TiempoDificil, ValoresConstantes.CantidadPreguntasDificil, Txbl_CodigoPartida.Text);                
            }
            paginaPregunta.ConfigurarPreguntas(preguntasSeleccionadas.ToList(), respuestasSeleccionadas.ToList());
            paginaPregunta.IniciarPregunta();
            paginaPregunta.ConfigurarTemporizador();
            this.NavigationService.Navigate(paginaPregunta);
        }
    }
}
