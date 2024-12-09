using Cliente.Auxiliares;
using Cliente.Enums;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace Cliente.Vistas
{    
    public partial class VentanaPregunta : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private int _numeroPreguntaActual = 1;        
        private int _tiempoRestante;
        private int _tiempoSinModificar;
        private int _totalPreguntas;
        private DispatcherTimer _temporizadorDespachador;
        private List<PreguntaContrato> _preguntas;
        private List<PreguntaContrato> _preguntasSinModificar;
        private List<RespuestaContrato> _respuestas;
        private string _codigoPartida;

        public string TiempoRestante => _tiempoRestante.ToString();        

        public VentanaPregunta()
        {
            InitializeComponent();
        }

        private void RegresarInicio()
        {
            VentanaInicio paginaInicio = new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        public void ConfigurarPreguntas(List<PreguntaContrato> preguntas, List<RespuestaContrato> respuestas) 
        {
            _preguntas = preguntas;
            _respuestas = respuestas;
            _preguntasSinModificar = _preguntas;
        }
        public void ConfigurarPartida(int tiempoRestante,int totalPreguntas,string codigoPartida) 
        {           
            _tiempoRestante = tiempoRestante;
            _tiempoSinModificar = _tiempoRestante;
            _totalPreguntas = totalPreguntas;                                                
            Txbl_NumeroPreguntaTotal.Text = _totalPreguntas.ToString();
            Txbl_NumeroPreguntaActual.Text = _numeroPreguntaActual.ToString();
            _codigoPartida= codigoPartida;
        }
        public void ConfigurarTemporizador()
        {
            _temporizadorDespachador = new DispatcherTimer();
            _temporizadorDespachador.Interval = TimeSpan.FromSeconds(1);
            _temporizadorDespachador.Tick += DisminuirTiempo;
            _temporizadorDespachador.Start();
            Txbl_Cronometro.Text=_tiempoRestante.ToString();
        }

        private void DisminuirTiempo(object sender, EventArgs e)
        {
            _tiempoRestante--;
            Txbl_Cronometro.Text = _tiempoRestante.ToString();
            if (_tiempoRestante == ValoresConstantes.TiempoFinal)
            {
                _temporizadorDespachador.Stop();
                CambiarPregunta();
                ActivarBotones();
            }
        }

        public void IniciarPregunta()
        {
            int numeroPregunta = _numeroPreguntaActual - 1;
            PreguntaContrato pregunta = _preguntas[numeroPregunta];            
            Txbl_Pregunta.Text = pregunta.Pregunta;
            List<string> respuestasActuales = ObtenerRespuestasDePreguntaActual(pregunta.IdPregunta);
            respuestasActuales.Add(pregunta.RespuestaCorrecta);
            List<string> respuestasAlAzar = ObtenerRespuestasAlAzar(respuestasActuales);
            Txbl_Respuesta1.Text = respuestasAlAzar[0];
            Txbl_Respuesta2.Text = respuestasAlAzar[1];
            Txbl_Respuesta3.Text = respuestasAlAzar[2];
            Txbl_Respuesta4.Text = respuestasAlAzar[3];
            _tiempoRestante = _tiempoSinModificar;
            Txbl_Cronometro.Text = _tiempoRestante.ToString();
        }

        private List<string> ObtenerRespuestasDePreguntaActual(int idPregunta) 
        {
            List<string> respuestas=new List<string>();
            foreach (var respuesta in _respuestas) 
            {
                if (respuesta.FKIdPregunta == idPregunta) 
                {
                    respuestas.Add(respuesta.Respuesta);
                }
            }
            return respuestas;
        }

        private static List<string> ObtenerRespuestasAlAzar(List<string> respuestasActuales) 
        {
            Random aleatorio=new Random();
            return respuestasActuales.OrderBy(x=>aleatorio.Next()).ToList();
        }

        private void CambiarPregunta()
        {
            if (_numeroPreguntaActual < _totalPreguntas)
            {
                _numeroPreguntaActual++;                
                IniciarPregunta();
                _temporizadorDespachador.Start();
                ActivarBotones();
                Txbl_NumeroPreguntaActual.Text = _numeroPreguntaActual.ToString();
            }
            else
            {
                string ganador=DeterminarGanador();
                AsignarEstadisticas();
                AsignarLogros();                
                VentanaPartidaFinalizada paginaPartidaFinalizada=new VentanaPartidaFinalizada();
                paginaPartidaFinalizada.Lbl_NombreUsuario.Content = ganador;
                this.NavigationService.Navigate(paginaPartidaFinalizada);                
            }
        }

        private string DeterminarGanador() 
        {
            string ganador =ValoresConstantes.GanadorDefecto;
            try 
            {
                ServicioPartidaClient servicioPartida=new ServicioPartidaClient();
                ganador=servicioPartida.ObtenerGanador(_codigoPartida);
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
            return ganador;
        }
        
        protected void OnPropertyChanged(string nombre)
        {
            var handler = PropertyChanged;
            handler?.Invoke(this, new System.ComponentModel.PropertyChangedEventArgs(nombre));
        }

        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;

        private void RevisarRespuesta1(object sender, RoutedEventArgs e)
        {
            RevisarRespuesta(Txbl_Respuesta1.Text);
        }        

        private void RevisarRespuesta2(object sender, RoutedEventArgs e)
        {
            RevisarRespuesta(Txbl_Respuesta2.Text);
        }

        private void RevisarRespuesta3(object sender, RoutedEventArgs e)
        {
            RevisarRespuesta(Txbl_Respuesta3.Text);
        }

        private void RevisarRespuesta4(object sender, RoutedEventArgs e)
        {
            RevisarRespuesta(Txbl_Respuesta4.Text);            
        }

        private void RevisarRespuesta(string respuestaSeleccionada) 
        {
            DesactivarBotones();
            int puntaje = ObtenerCantidadPuntaje();
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (respuestaSeleccionada == respuestaCorrecta)
            {
                DeterminarPuntaje();
                puntaje = ObtenerCantidadPuntaje();                
                Txbl_Puntaje.Text=($"Correcto. Puntaje: {puntaje}");
            }
            else
            {
                if (puntaje >= ValoresConstantes.PuntajePorPregunta)
                {
                    RestarPuntaje();
                    puntaje -= ValoresConstantes.PuntajePorPregunta;
                }
                Txbl_Puntaje.Text = ($"Incorrecto. Puntaje: {puntaje}");
            }                       
        }

        private void DeterminarPuntaje() 
        {
            try 
            {
                ServicioPartidaClient servicioPartida=new ServicioPartidaClient();
                servicioPartida.EvaluarPregunta(_codigoPartida,JugadorSingleton.NombreUsuario, _numeroPreguntaActual);
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

        private void RestarPuntaje() 
        {
            try
            {
                ServicioPartidaClient servicioPartida = new ServicioPartidaClient();
                servicioPartida.RestarPuntaje(_codigoPartida,JugadorSingleton.NombreUsuario);
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

        private int ObtenerCantidadPuntaje() 
        {
            int puntaje = ValoresConstantes.PuntajeDefecto;
            try
            {
                ServicioPartidaClient servicioPartida = new ServicioPartidaClient();
                puntaje=servicioPartida.ObtenerPuntaje(_codigoPartida,JugadorSingleton.NombreUsuario);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
                RegresarInicio();
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
                RegresarInicio();
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
                RegresarInicio();
            }
            return puntaje;
        }
        private void DesactivarBotones()
        {
            Btn_Respuesta1.IsHitTestVisible = false;
            Btn_Respuesta2.IsHitTestVisible = false;
            Btn_Respuesta3.IsHitTestVisible = false;
            Btn_Respuesta4.IsHitTestVisible = false;
        }

        private void ActivarBotones()
        {
            Btn_Respuesta1.IsHitTestVisible = true;
            Btn_Respuesta2.IsHitTestVisible = true;
            Btn_Respuesta3.IsHitTestVisible = true;
            Btn_Respuesta4.IsHitTestVisible = true;
        }

        private bool ValidarJugadorRegistrado() 
        {
            return JugadorSingleton.IdJugador > ValoresConstantes.IdJugadorInvitado;
        }

        private void AsignarEstadisticas() 
        {
            if (ValidarJugadorRegistrado()) 
            {
                SumarPuntaje();
                AumentarNumeroPartidas();
            }
        }

        private void SumarPuntaje() 
        {
            int puntaje = ObtenerCantidadPuntaje();
            if (puntaje > ValoresConstantes.PuntajeDefecto) 
            {
                try
                {
                    ServicioGestionEstadisticasClient servicioGestionEstadisticas = new ServicioGestionEstadisticasClient();
                    servicioGestionEstadisticas.SumarPuntajePorIdEstadistica(JugadorSingleton.IdEstadistica, puntaje);
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

        private void AumentarNumeroPartidas() 
        {
            if (DeterminarGanador() == JugadorSingleton.NombreUsuario)
            {
                try
                {
                    ServicioGestionEstadisticasClient servicioGestionEstadisticas = new ServicioGestionEstadisticasClient();
                    servicioGestionEstadisticas.AumentarPartidasGanadasPorIdEstadistica(JugadorSingleton.IdEstadistica);
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
            else 
            {
                try
                {
                    ServicioGestionEstadisticasClient servicioGestionEstadisticas = new ServicioGestionEstadisticasClient();
                    servicioGestionEstadisticas.AumentarPartidasPerdidasPorIdEstadistica(JugadorSingleton.IdEstadistica);
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

        private void AsignarLogros() 
        {
            if (ValidarJugadorRegistrado())
            {
                AsignarPrimerLogro();
                AsignarSegundoLogro();
                AsignarTercerLogro();
                AsignarCuartoLogro();
                AsignarQuintoLogro();
            }            
        }

        private void AsignarPrimerLogro() 
        {
            try 
            {
                ServicioGestionLogrosClient servicioGestionLogros = new ServicioGestionLogrosClient();
                int verificacionPrimerLogro=servicioGestionLogros.VerificarPrimerLogroPorIdEstadistica(JugadorSingleton.IdEstadistica);
                if (verificacionPrimerLogro == ValoresConstantes.OperacionExitosa)
                {
                    int verificacionRegistro = servicioGestionLogros.VerificarRegistroEspecificoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdPrimerLogro);
                    if (verificacionRegistro == ValoresConstantes.ConsultaSinRegistro) 
                    {
                        servicioGestionLogros.RegistrarNuevoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdPrimerLogro);
                    }                    
                }
                else if (verificacionPrimerLogro == ValoresConstantes.ErrorConexionBaseDatos) 
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

        private void AsignarSegundoLogro() 
        {
            try
            {
                ServicioGestionLogrosClient servicioGestionLogros = new ServicioGestionLogrosClient();
                int verificacionSegundoLogro = servicioGestionLogros.VerificarSegundoLogroPorIdEstadistica(JugadorSingleton.IdEstadistica);
                if (verificacionSegundoLogro == ValoresConstantes.OperacionExitosa)
                {
                    int verificacionRegistro = servicioGestionLogros.VerificarRegistroEspecificoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdSegundoLogro);
                    if (verificacionRegistro == ValoresConstantes.ConsultaSinRegistro)
                    {
                        servicioGestionLogros.RegistrarNuevoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdSegundoLogro);
                    }
                }
                else if (verificacionSegundoLogro == ValoresConstantes.ErrorConexionBaseDatos)
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

        private void AsignarTercerLogro() 
        {            
            if (ObtenerCantidadPuntaje() >= ValoresConstantes.PuntajeTecerLogro) 
            {
                try
                {
                    ServicioGestionLogrosClient servicioGestionLogros = new ServicioGestionLogrosClient();
                    int verificacionRegistro = servicioGestionLogros.VerificarRegistroEspecificoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdTercerLogro);
                    if (verificacionRegistro == ValoresConstantes.ConsultaSinRegistro)
                    {
                        servicioGestionLogros.RegistrarNuevoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdTercerLogro);
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

        private void AsignarCuartoLogro() 
        {            
            if (DeterminarGanador() == JugadorSingleton.NombreUsuario)
            {
                PartidaContrato partida = ObtenerPartida();
                if (partida.ModoJuego == Enumeracion.EnumModoJuegoPartida.Dificil.ToString())
                {
                    try
                    {
                        ServicioGestionLogrosClient servicioGestionLogros = new ServicioGestionLogrosClient();
                        int verificacionRegistro = servicioGestionLogros.VerificarRegistroEspecificoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdCuartoLogro);
                        if (verificacionRegistro == ValoresConstantes.ConsultaSinRegistro)
                        {
                            servicioGestionLogros.RegistrarNuevoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdCuartoLogro);
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
            
        }

        private PartidaContrato ObtenerPartida() 
        {
            PartidaContrato partidaRecuperada=new PartidaContrato();
            try 
            {
                ServicioGestionPartidaClient servicioGestionPartida=new ServicioGestionPartidaClient();
                partidaRecuperada=servicioGestionPartida.RecuperarPartidaPorCodigo(_codigoPartida);
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
            return partidaRecuperada;
        }

        private void AsignarQuintoLogro() 
        {
            if (ObtenerCantidadPuntaje() >= ValoresConstantes.PuntajeQuintoLogro)
            {
                try
                {
                    ServicioGestionLogrosClient servicioGestionLogros = new ServicioGestionLogrosClient();
                    int verificacionRegistro = servicioGestionLogros.VerificarRegistroEspecificoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdQuintoLogro);
                    if (verificacionRegistro == ValoresConstantes.ConsultaSinRegistro)
                    {
                        servicioGestionLogros.RegistrarNuevoLogroPorIdJugador(JugadorSingleton.IdJugador, ValoresConstantes.IdQuintoLogro);
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

        
    }
}
