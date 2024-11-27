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
    /// Lógica de interacción para VentanaImagenDeJugador.xaml
    /// </summary>
    public partial class VentanaImagenDeJugador : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Image _imagenSeleccionada;
        public VentanaImagenDeJugador()
        {
            InitializeComponent();
        }

        private void GuardarImagenPerfil(object sender, RoutedEventArgs e)
        {
            if (ValidarImagenSeleccionada()) 
            {
                try
                {
                    ServicioPersonalizacionPerfilClient proxy = new ServicioPersonalizacionPerfilClient();
                    int resultadoActualizacionImagen = proxy.EditarRutaImagenPorIdJugador(JugadorSingleton.IdJugador, _imagenSeleccionada.Source.ToString());
                    if (resultadoActualizacionImagen == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
                        JugadorSingleton.RutaImagen = _imagenSeleccionada.Source.ToString();
                        NavigationService.GoBack();
                    }
                    else if (resultadoActualizacionImagen == 0)
                    {
                        NavigationService.GoBack();
                    }
                    else 
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        NavigationService.GoBack();
                    }
                }
                catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado) 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                    _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
                }
            }

        }

        private bool ValidarImagenSeleccionada() 
        {
            bool validacionImagen = false;
            if (_imagenSeleccionada != null) 
            {
                validacionImagen = true;
            }
            return validacionImagen;
        }

        private void SeleccionarImagen(object sender, MouseButtonEventArgs e)
        {
            if (_imagenSeleccionada != null)
            {                
                _imagenSeleccionada.Tag = null;
            }            
            _imagenSeleccionada = sender as Image;
            _imagenSeleccionada.Tag = "Selected";
        }


        private void CancelarClick(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
