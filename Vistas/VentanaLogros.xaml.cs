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
    public partial class VentanaLogros : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaLogros()
        {
            InitializeComponent();
            RecuperarLogros();
        }

        private void RegresarClick(object sender, RoutedEventArgs e)
        {
            VentanaEstadisticas paginaEstadisticas = new VentanaEstadisticas();
            this.NavigationService.Navigate(paginaEstadisticas);

        }

        private void RecuperarLogros()
        {
            try
            {
                ServicioGestionLogrosClient servicioGestionLogros = new ServicioGestionLogrosClient();
                List<int> idLogros = servicioGestionLogros.ObtenerIdLogrosPorIdJugador(JugadorSingleton.IdJugador).ToList();
                if (idLogros.Any())
                {
                    int primerLogro = idLogros[0];
                    if (primerLogro != -1)
                    {
                        MostrarLogros(idLogros);
                    }
                    else
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

        private void MostrarLogros(List<int> idLogros)
        {
            if (idLogros.Contains(ValoresConstantes.IdPrimerLogro)) 
            {
                Img_LogroUno.Source = new BitmapImage(new Uri(ValoresConstantes.RutaImagenLogro));                
            }
            if (idLogros.Contains(ValoresConstantes.IdSegundoLogro))
            {
                Img_LogroDos.Source = new BitmapImage(new Uri(ValoresConstantes.RutaImagenLogro));
            }
            if (idLogros.Contains(ValoresConstantes.IdTercerLogro))
            {
                Img_LogroTres.Source = new BitmapImage(new Uri(ValoresConstantes.RutaImagenLogro));
            }
            if (idLogros.Contains(ValoresConstantes.IdCuartoLogro))
            {
                Img_LogroCuatro.Source = new BitmapImage(new Uri(ValoresConstantes.RutaImagenLogro));
            }
            if (idLogros.Contains(ValoresConstantes.IdQuintoLogro))
            {
                Img_LogroCinco.Source = new BitmapImage(new Uri(ValoresConstantes.RutaImagenLogro));
            }
        }
    }
}
