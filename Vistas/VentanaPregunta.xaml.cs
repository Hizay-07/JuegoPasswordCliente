using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using System;
using System.Collections.Generic;
using System.Linq;
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
        private int _numeroPreguntaActual = 1;        
        private int _tiempoRestante;        
        private int _totalPreguntas;
        private DispatcherTimer _temporizadorDespachador;
        private List<PreguntaContrato> _preguntas;
        private List<PreguntaContrato> _preguntasSinModificar;
        private List<RespuestaContrato> _respuestas;
        
        public string TiempoRestante => _tiempoRestante.ToString();        

        public VentanaPregunta()
        {
            InitializeComponent();                                    
        }

        public void ConfigurarPartida(int tiempoRestante,int totalPreguntas) 
        {
            PartidaAuxiliar partidaAuxiliar = new PartidaAuxiliar();
            _tiempoRestante = tiempoRestante;
            _totalPreguntas = totalPreguntas;
            partidaAuxiliar.RecuperarPreguntas(totalPreguntas);
            _preguntas = partidaAuxiliar.Preguntas;
            _preguntasSinModificar = _preguntas;
            _respuestas =partidaAuxiliar.Respuestas;
            Txbl_NumeroPreguntaTotal.Text = _totalPreguntas.ToString();
            Txbl_NumeroPreguntaActual.Text = _numeroPreguntaActual.ToString();
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
                MessageBox.Show("¡Partida terminada!");
            }
        }
        
        protected void OnPropertyChanged(string nombre)
        {
            var handler = PropertyChanged;
            handler?.Invoke(this, new System.ComponentModel.PropertyChangedEventArgs(nombre));
        }

        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;

        private void RevisarRespuesta1(object sender, RoutedEventArgs e)
        {
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta1.Text == respuestaCorrecta)
            {
                MessageBox.Show("Correcto");
            }
            else 
            {
                MessageBox.Show("Incorrecto");
            }
            DesactivarBotones();
        }        

        private void RevisarRespuesta2(object sender, RoutedEventArgs e)
        {
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta2.Text == respuestaCorrecta)
            {
                MessageBox.Show("Correcto");
            }
            else
            {
                MessageBox.Show("Incorrecto");
            }
            DesactivarBotones();
        }

        private void RevisarRespuesta3(object sender, RoutedEventArgs e)
        {
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta3.Text == respuestaCorrecta)
            {
                MessageBox.Show("Correcto");
            }
            else
            {
                MessageBox.Show("Incorrecto");
            }
            DesactivarBotones();
        }

        private void RevisarRespuesta4(object sender, RoutedEventArgs e)
        {
            int numeroPregunta = _numeroPreguntaActual - 1;
            string respuestaCorrecta = _preguntasSinModificar[numeroPregunta].RespuestaCorrecta;
            if (Txbl_Respuesta4.Text == respuestaCorrecta)
            {
                MessageBox.Show("Correcto");
            }
            else
            {
                MessageBox.Show("Incorrecto");
            }
            DesactivarBotones();
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
