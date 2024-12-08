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
    public partial class VentanaAgregarAmigo : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaAgregarAmigo()
        {
            InitializeComponent();
        }

        private void Regresar(object remitente, RoutedEventArgs argumento)
        {
            NavigationService.GoBack();
        }

        private void AgregarAmigo(object remitente, RoutedEventArgs argumento)
        {
            if (ValidarCorreo())
            {
                try
                {
                    ServicioGestionAmistadClient servicioGestionAmistad = new ServicioGestionAmistadClient();
                    int idJugador = servicioGestionAmistad.ConsultarIdJugadorPorCorreo(Txb_Correo.Text);
                    if (idJugador > 0)
                    {
                        int validacionExistenciaAmistad = servicioGestionAmistad.ValidarExistenciaAmistadPorIdJugadores(JugadorSingleton.IdJugador, idJugador);
                        if (validacionExistenciaAmistad == 0)
                        {
                            RegistrarAmistad(idJugador);   
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
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
            }
        }

        private void RegistrarAmistad(int idJugador) 
        {
            Amistad amistad = ObtenerAmistad(idJugador);
            try 
            {
                ServicioGestionAmistadClient servicioGestionAmistad = new ServicioGestionAmistadClient();
                int resultadoRegistroAmistad = servicioGestionAmistad.RegistrarAmistad(amistad);
                if (resultadoRegistroAmistad == 1)
                {
                    MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
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
            return ValidacionAcceso.ValidarCorreo(Txb_Correo.Text);
        }
    }
}
