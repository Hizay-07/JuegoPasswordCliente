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
        private DispatcherTimer _timer;
        private int _tiempoRestante = 30;
        private int _numeroPreguntaActual = 1;
        private int _totalPreguntas = 15;

        public string NumeroPregunta => $"{_numeroPreguntaActual}/{_totalPreguntas}";
        public string TiempoRestante => _tiempoRestante.ToString();
        public string PreguntaActual { get; set; }
        public string Respuesta1 { get; set; }
        public string Respuesta2 { get; set; }
        public string Respuesta3 { get; set; }
        public string Respuesta4 { get; set; }

        public VentanaPregunta()
        {
            InitializeComponent();
            DataContext = this;
            IniciarPregunta();
            ConfigurarTimer();
        }

        private void ConfigurarTimer()
        {
            _timer = new DispatcherTimer();
            _timer.Interval = TimeSpan.FromSeconds(1);
            _timer.Tick += Timer_Tick;
            _timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            if (_tiempoRestante > 0)
            {
                _tiempoRestante--;
                OnPropertyChanged(nameof(TiempoRestante));
            }
            else
            {
                _timer.Stop();
                CambiarPregunta();
            }
        }

        private void IniciarPregunta()
        {            
            PreguntaActual = "¿Qué es la IEEE?";
            Respuesta1 = "Instituto de Ingenieros Eléctricos y Electrónicos";
            Respuesta2 = "Instituto Nacional Estadounidense de Estándares";
            Respuesta3 = "Sociedad Estadounidense para Pruebas y Materiales";
            Respuesta4 = "Asociación de Maquinaria Computacional";
            _tiempoRestante = 30;

            OnPropertyChanged(nameof(PreguntaActual));
            OnPropertyChanged(nameof(Respuesta1));
            OnPropertyChanged(nameof(Respuesta2));
            OnPropertyChanged(nameof(Respuesta3));
            OnPropertyChanged(nameof(Respuesta4));
            OnPropertyChanged(nameof(TiempoRestante));
        }

        private void CambiarPregunta()
        {
            if (_numeroPreguntaActual < _totalPreguntas)
            {
                _numeroPreguntaActual++;
                OnPropertyChanged(nameof(NumeroPregunta));
                IniciarPregunta();
                _timer.Start();
            }
            else
            {

            }
        }

        protected void OnPropertyChanged(string name)
        {
            var handler = PropertyChanged;
            handler?.Invoke(this, new System.ComponentModel.PropertyChangedEventArgs(name));
        }

        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
    }
}
