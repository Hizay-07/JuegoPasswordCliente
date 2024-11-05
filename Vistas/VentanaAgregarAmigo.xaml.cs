using Cliente.Auxiliares;
using Cliente.ServidorPassword;
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
    /// Lógica de interacción para VentanaAgregarAmigo.xaml
    /// </summary>
    public partial class VentanaAgregarAmigo : Page
    {
        public VentanaAgregarAmigo()
        {
            InitializeComponent();
        }

        private void RegresarClick(object remitente, RoutedEventArgs argumento)
        {
            NavigationService.GoBack();
        }

        private void AgregarAmigo(object remitente, RoutedEventArgs argumento)
        {
            if (ValidarCorreo())
            {
                try
                {
                    ServidorPassword.ServicioGestionAmistadClient proxy = new ServidorPassword.ServicioGestionAmistadClient();
                    int idJugador = proxy.ConsultarIdJugadorPorCorreo(Txb_Correo.Text);
                    if (idJugador > 0)
                    {
                        int validacionExistenciaAmistad = proxy.ValidarExistenciaAmistadPorIdJugadores(JugadorSingleton.IdJugador, idJugador);
                        if (validacionExistenciaAmistad == 0)
                        {
                            Amistad amistad = ObtenerAmistad(idJugador);
                            int resultadoRegistroAmistad = proxy.RegistrarAmistad(amistad);
                            if (resultadoRegistroAmistad == 1)
                            {
                                MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
                            }
                            else
                            {
                                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                            }
                        }
                        else if (validacionExistenciaAmistad == 1) 
                        {
                            MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeAmistadAnterior);
                        }
                        else 
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        }                        
                    }
                    else if (idJugador == 0)
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                    }
                    else
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    }

                }
                catch (EndpointNotFoundException) 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                }
            }
            else 
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
            }
        }

        private Amistad ObtenerAmistad(int idAmigo) 
        {
            Amistad amistad = new Amistad 
            {
                idJugadorAmigo=idAmigo,
                FKidJugador=JugadorSingleton.IdJugador,
                fechaSolicitud=DateTime.Today,
            };
            return amistad;
        }

        private bool ValidarCorreo() 
        {
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            return validacionAcceso.ValidarCorreo(Txb_Correo.Text);
        }
    }
}
