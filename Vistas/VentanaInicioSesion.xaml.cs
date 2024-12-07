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
    public partial class VentanaInicioSesion : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private bool _sincronizando = false;
        private bool _mostrarContrasena = false;

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
            if (!ValidacionAcceso.ValidarCorreo(Txb_Correo.Text))
            {
                Txb_Correo.BorderBrush = Brushes.Red;
                Txb_Correo.BorderThickness = new Thickness(2);
            }
            if (!ValidacionAcceso.ValidarContrasenia(Pwd_Contrasenia.Password))
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
                    ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                    string contraseniaEncriptada = EncriptadorContrasenia.EncriptarContrasenia(acceso.contrasenia);
                    acceso.contrasenia= contraseniaEncriptada;
                    int resultado = servicioGestionAcceso.ValidarInicioDeSesion(acceso);
                    if (resultado == 1)
                    {
                        ObtenerJugadorSingleton(acceso.correo);
                        ConectarJugador();                        
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
        }

        private void ObtenerJugadorSingleton(string correo)
        {
            ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
            Cuenta cuenta = servicioGestionAcceso.RecuperarCuentaPorCorreo(correo);
            JugadorSingleton.jugadorSingleton.CrearJugadorSingleton(cuenta);
        }

        private void ConectarJugador() 
        {                        
            try 
            {   
                ServicioJugadoresClient servicioJugadores=new ServicioJugadoresClient();
                int resultadoConexion=servicioJugadores.ConectarJugadorJuego(JugadorSingleton.NombreUsuario);
                if (resultadoConexion == 1)
                {
                    VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
                    this.NavigationService.Navigate(paginaMenuPrincipal);
                }
                else 
                {
                    MessageBox.Show(Properties.Resources.MensajeCuentaEnUso);
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

        private void MostrarOcultarContrasena(object sender, RoutedEventArgs e)
        {
            _mostrarContrasena = !_mostrarContrasena;

            if (_mostrarContrasena)
            {
                Txt_ContraseniaVisible.Text = Pwd_Contrasenia.Password; 
                Txt_ContraseniaVisible.Visibility = Visibility.Visible;
                Pwd_Contrasenia.Visibility = Visibility.Collapsed;
            }
            else
            {
                Pwd_Contrasenia.Password = Txt_ContraseniaVisible.Text; 
                Pwd_Contrasenia.Visibility = Visibility.Visible;
                Txt_ContraseniaVisible.Visibility = Visibility.Collapsed;
            }
        }

        private void Pwd_Contrasenia_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (_sincronizando) return;
            _sincronizando = true;
            Txt_ContraseniaVisible.Text = Pwd_Contrasenia.Password;
            _sincronizando = false;
        }

        private void Txt_ContraseniaVisible_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (_sincronizando) return;
            _sincronizando = true;
            Pwd_Contrasenia.Password = Txt_ContraseniaVisible.Text;
            _sincronizando = false;
        }
    }
}