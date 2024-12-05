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

namespace Cliente.Vistas
{
    /// <summary>
    /// Lógica de interacción para VentanaEstadisticas.xaml
    /// </summary>
    public partial class VentanaEstadisticas : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaEstadisticas()
        {
            InitializeComponent();
            ObtenerEstadisticas();
        }

        private void RegresarClick(object sender, RoutedEventArgs e)
        {
            VentanaMenuPrincipal paginaMenuPrincipal= new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

        private void ObtenerEstadisticas() 
        {
            try 
            {
                ServicioGestionEstadisticasClient servicioGestionEstadisticas = new ServicioGestionEstadisticasClient();
                EstadisticaContrato estadistica = servicioGestionEstadisticas.ObtenerEstadisticaPorIdEstadistica(JugadorSingleton.IdEstadistica);
                if (estadistica.IdEstadistica > 0)
                {
                    ConfigurarEstadisticas(estadistica);
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

        private void ConfigurarEstadisticas(EstadisticaContrato estadistica) 
        {
            Txbl_PartidasGanadas.Text = estadistica.PartidasGanadas.ToString();
            Txbl_PartidasPerdidas.Text=estadistica.PartidasPerdidas.ToString();
            int totalPartidas = estadistica.PartidasPerdidas + estadistica.PartidasGanadas;
            Txbl_PartidasJugadas.Text=totalPartidas.ToString();
            Txbl_Puntaje.Text = estadistica.Puntaje.ToString();
        }

        private void LogrosClick(object sender, RoutedEventArgs e)
        {
            VentanaLogros paginaLogros = new VentanaLogros();
            this.NavigationService.Navigate(paginaLogros);

        }
    }
}
