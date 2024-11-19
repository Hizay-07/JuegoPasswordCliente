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
    /// Lógica de interacción para InicioSesion.xaml
    /// </summary>
    public partial class VentanaInicioSesion : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public VentanaInicioSesion()
        {
            InitializeComponent();
        }

        private void CancelarInicioDeSesion(object remitente, RoutedEventArgs argumento)
        {
            VentanaInicio inicioPage = new VentanaInicio();
            this.NavigationService.Navigate(inicioPage);
        }

        private void ObtenerNuevaContrasenia(object remitente, RoutedEventArgs argumento)
        {
            VentanaContraseniaOlvidada paginaContraseniaOlvidada=new VentanaContraseniaOlvidada();
            this.NavigationService.Navigate(paginaContraseniaOlvidada);            
        }

        private Acceso ObtenerAcceso() 
        {
            Acceso acceso = new Acceso
            {
                correo=Txb_Correo.Text,
                contrasenia=Pwd_Contrasenia.Password,
            };
            return acceso;
        }

        private bool ValidarCampos() 
        {
            bool validacion=false;
            Acceso acceso = ObtenerAcceso();
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            FluentValidation.Results.ValidationResult resultadoAcceso = validacionAcceso.Validate(acceso);
            if (resultadoAcceso.IsValid)
            {
                validacion = true;
            }
            else
            {
                MarcarErrores();
                if (string.IsNullOrWhiteSpace(Txb_Correo.Text) || string.IsNullOrWhiteSpace(Pwd_Contrasenia.Password))
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                }
            }
            return validacion;
        }

        private void MarcarErrores() 
        {
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            if (!validacionAcceso.ValidarCorreo(Txb_Correo.Text))
            {
                Txb_Correo.BorderBrush = Brushes.Red;
                Txb_Correo.BorderThickness = new Thickness(2);
            }
            if (!validacionAcceso.ValidarContrasenia(Pwd_Contrasenia.Password))
            {
                Pwd_Contrasenia.BorderBrush = Brushes.Red;
                Pwd_Contrasenia.BorderThickness = new Thickness(2);
            }
        }

        private void ReiniciarCampos() 
        {
            Txb_Correo.BorderBrush = Brushes.Transparent;
            Txb_Correo.BorderThickness = new Thickness(1);
            Pwd_Contrasenia.BorderBrush = Brushes.Transparent;
            Pwd_Contrasenia.BorderThickness = new Thickness(1);
        }

        private void AceptarInicioDeSesion(object remitente, RoutedEventArgs argumento)
        {
            ReiniciarCampos();
            if (ValidarCampos()) 
            {
                Acceso acceso = ObtenerAcceso();
                try
                {
                    ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
                    int resultado = proxy.ValidarInicioDeSesion(acceso);
                    if (resultado == 1)
                    {
                        ObtenerJugadorSingleton(acceso.correo);
                        VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
                        this.NavigationService.Navigate(paginaMenuPrincipal);
                    }
                    else if (resultado == 0)
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
                    _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
                }                
            }                                  
        }

        private void ObtenerJugadorSingleton(string correo)
        {
            ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
            ServidorPassword.Cuenta cuenta = proxy.RecuperarCuentaPorCorreo(correo);
            JugadorSingleton.jugadorSingleton.CrearJugadorSingleton(cuenta);
        }
    }
}