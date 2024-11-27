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
using System.Windows.Threading;


namespace Cliente.Vistas
{

    /// <summary>
    /// Lógica de interacción para VentanaPregunta.xaml
    /// </summary>
    public partial class VentanaPregunta : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private int _numeroPreguntaActual = 1;        
        private int _tiempoRestante;        
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

        public void ConfigurarPreguntas(List<PreguntaContrato> preguntas, List<RespuestaContrato> respuestas) 
        {
            _preguntas = preguntas;
            _respuestas = respuestas;
            _preguntasSinModificar = _preguntas;
        }
        public void ConfigurarPartida(int tiempoRestante,int totalPreguntas,string codigoPartida) 
        {           
            _tiempoRestante = tiempoRestante;
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
            if (_tiempoRestante == 0)
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
            _tiempoRestante = 10;            
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

        private List<string> ObtenerRespuestasAlAzar(List<string> respuestasActuales) 
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
                if (DeterminarGanador())
                {
                    MessageBox.Show("Partida terminada ¡Has ganado :)!");
                }
                else 
                {
                    MessageBox.Show("Partida terminada ¡Has perdido! :(");
                }
                
            }
        }

        private bool DeterminarGanador() 
        {
            bool ganador=false;
            try 
            {
                ServicioPartidaClient servicioPartida=new ServicioPartidaClient();
                ganador=servicioPartida.ObtenerGanador(_codigoPartida,JugadorSingleton.NombreUsuario);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
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
            DesactivarBotones();
            int puntaje = ObtenerCantidadPuntaje();
            int numeroPregunta = _numeroPreguntaActual - 1;            
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta1.Text == respuestaCorrecta)
            {
                DeterminarPuntaje();                
                MessageBox.Show($"Correcto. Puntaje obtenido: {puntaje}");
            }
            else 
            {
                if (puntaje >= 10) 
                {
                    RestarPuntaje();
                    puntaje -= 10;
                }
                MessageBox.Show($"Incorrecto. Puntaje obtenido: {puntaje}");
            }            
        }        

        private void RevisarRespuesta2(object sender, RoutedEventArgs e)
        {
            DesactivarBotones();
            int puntaje = ObtenerCantidadPuntaje();
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta2.Text == respuestaCorrecta)
            {
                DeterminarPuntaje();
                puntaje = ObtenerCantidadPuntaje();
                MessageBox.Show($"Correcto. Puntaje obtenido: {puntaje}");
            }
            else
            {
                if (puntaje >= 10)
                {
                    RestarPuntaje();
                    puntaje -= 10;
                }
                MessageBox.Show($"Incorrecto. Puntaje obtenido: {puntaje}");
            }            
        }

        private void RevisarRespuesta3(object sender, RoutedEventArgs e)
        {
            DesactivarBotones();
            int puntaje = ObtenerCantidadPuntaje();
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta3.Text == respuestaCorrecta)
            {
                DeterminarPuntaje();
                puntaje = ObtenerCantidadPuntaje();
                MessageBox.Show($"Correcto. Puntaje obtenido: {puntaje}");
            }
            else
            {
                if (puntaje >= 10)
                {
                    RestarPuntaje();
                    puntaje -= 10;
                }
                MessageBox.Show($"Incorrecto. Puntaje obtenido: {puntaje}");
            }            
        }

        private void RevisarRespuesta4(object sender, RoutedEventArgs e)
        {
            DesactivarBotones();
            int puntaje = ObtenerCantidadPuntaje();
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta4.Text == respuestaCorrecta)
            {
                DeterminarPuntaje();
                puntaje = ObtenerCantidadPuntaje();
                MessageBox.Show($"Correcto. Puntaje obtenido: {puntaje}");
            }
            else
            {
                if (puntaje >= 10)
                {
                    RestarPuntaje();
                    puntaje -= 10;
                }
                MessageBox.Show($"Incorrecto. Puntaje obtenido: {puntaje}");
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
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
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
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private int ObtenerCantidadPuntaje() 
        {
            int puntaje = 0;
            try
            {
                ServicioPartidaClient servicioPartida = new ServicioPartidaClient();
                puntaje=servicioPartida.ObtenerPuntaje(_codigoPartida,JugadorSingleton.NombreUsuario);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
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
    }
}
