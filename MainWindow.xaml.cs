using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using Cliente.Vistas;
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

namespace Cliente
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public MainWindow()
        {
            InitializeComponent();
            this.Closed += MainWindow_Closed;
        }

        private void MainWindow_Closed(object remitente, EventArgs argumento)
        {
            if (JugadorSingleton.NombreUsuario != null) 
            {
                try
                {
                    ServicioJugadoresClient servicioJugadores = new ServicioJugadoresClient();
                    servicioJugadores.DesconectarJugadorJuego(JugadorSingleton.NombreUsuario);
                }
                catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                    _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
                }
            }
        }


    }
}
