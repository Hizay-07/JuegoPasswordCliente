using Cliente.Auxiliares;
using Cliente.Enums;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO.Packaging;
using System.Linq;
using System.Net.Mail;
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
                string mensajeInicial = $"{nombreUsuario}:{codigoPartida}: " + $"{Properties.Resources.Lbl_EstadoConexion}";
                _servicioChat.Chatear(mensajeInicial);
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
        
        public void Responder(string respuesta)
        {
            string codigoPartidaCliente = Txbl_CodigoPartida.Text;
            string[] partesMensaje = respuesta.Split(':');
            string codigoPartidaAEliminar = ":" + codigoPartidaCliente;
            if (partesMensaje.Length > 1 && partesMensaje[1] == codigoPartidaCliente)
            {
                string respuestaSinCodigoPartida = respuesta.Replace(codigoPartidaAEliminar, "");
                Txbl_Conversacion.Text += respuestaSinCodigoPartida;
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
            if (JugadorSingleton.IdJugador == _partidaActual.IdAnfitrion)
            {
                CerrarPartida();
                _servicioSalaDeEspera.ExpulsarTodosJugadores(Txbl_CodigoPartida.Text);
            }
            else 
            {
                SalirSalaDeEspera();
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
                if (amigos.Any()) 
                {
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
                        EnviarCorreo(cuenta.Correo);
                    }
                    else
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
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
        }

        private void EnviarCorreo(string correo) 
        {
            try
            {
                EnvioCorreo.EnviarCorreo(correo, Properties.Resources.CorreoInvitacionPartida, Txbl_CodigoPartida.Text);
                MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCorreoEnviado);
            }
            catch (SmtpException excepcionSMTP) 
            {
                _bitacora.Warn(excepcionSMTP);
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorEnvioCorreo);
            }
        }
       
        public void ActualizarListaJugadores(JugadorContrato[] jugadores)
        {
            _jugadores = jugadores.ToList();
            ConfigurarJugadoresActivos();
            if (_jugadores.Count > 1)
            {
                ActivarBotonJugar();
            }
            else 
            {
                DesactivarBotonJugar();
            }                
        }

        private void ConfigurarJugadoresActivos()
        {            
            var imagenes = new[]
            {
                Img_Anfitrion, Img_Jugador2, Img_Jugador3, Img_Jugador4, Img_Jugador5,
                Img_Jugador6, Img_Jugador7, Img_Jugador8, Img_Jugador9, Img_Jugador10
            };
            var nombres = new[]
            {
                Txbl_NombreAnfitrion, Txbl_NombreJugador2, Txbl_NombreJugador3, Txbl_NombreJugador4,
                Txbl_NombreJugador5, Txbl_NombreJugador6, Txbl_NombreJugador7, Txbl_NombreJugador8,
                Txbl_NombreJugador9, Txbl_NombreJugador10
            };            
            for (int i = 0; i < imagenes.Length; i++)
            {
                if (i < _jugadores.Count)
                {
                    imagenes[i].Source = new BitmapImage(new Uri(_jugadores[i].RutaImagen));
                    nombres[i].Text = _jugadores[i].NombreUsuario;
                }
                else
                {
                    imagenes[i].Source = null;
                    nombres[i].Text = string.Empty;
                }
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
            if (JugadorSingleton.IdJugador == _partidaActual.IdAnfitrion)
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
            else
            {
                MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeNoEresAnfitrion);
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


        private void ExpulsarJugador2(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador2.Text,Img_Jugador2.Source?.ToString());
        }

        private void ExpulsarJugador3(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador3.Text, Img_Jugador3.Source?.ToString());
        }

        private void ExpulsarJugador4(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador4.Text, Img_Jugador4.Source?.ToString());
        }

        private void ExpulsarJugador5(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador5.Text, Img_Jugador5.Source?.ToString());
        }

        private void ExpulsarJugador6(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador6.Text, Img_Jugador6.Source?.ToString());
        }

        private void ExpulsarJugador7(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador7.Text, Img_Jugador7.Source?.ToString());
        }

        private void ExpulsarJugador8(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador8.Text, Img_Jugador8.Source?.ToString());
        }

        private void ExpulsarJugador9(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador9.Text, Img_Jugador9.Source?.ToString());
        }

        private void ExpulsarJugador10(object remitente, RoutedEventArgs argumento)
        {
            ExpulsarJugador(Txbl_NombreJugador10.Text, Img_Jugador10.Source?.ToString());
        }

        private void ExpulsarJugador(string nombreUsuario,string rutaImagen) 
        {
            if (JugadorSingleton.IdJugador == _partidaActual.IdAnfitrion)                
            {
                if (MensajeVentana.MostrarVentanaEmergenteConfirmacion(Properties.Resources.MensajeExpulsionJugador)) 
                {
                    JugadorContrato jugador = new JugadorContrato()
                    {
                        NombreUsuario = nombreUsuario,
                        RutaImagen = rutaImagen,
                    };
                    _servicioSalaDeEspera.ExpulsarJugador(Txbl_CodigoPartida.Text, jugador);
                }                
            }
        }

        public void NotificarExpulsion()
        {
            SalirSalaDeEspera();
        }

        private void SalirSalaDeEspera() 
        {
            DesconectarJugadorDePartida();            
            if (JugadorSingleton.IdJugador > ValoresConstantes.IdJugadorInvitado)
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
    }
}
