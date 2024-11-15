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
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;

namespace Cliente.Vistas
{
    /// <summary>
    /// Lógica de interacción para Registro.xaml
    /// </summary>
    public partial class VentanaRegistro : Page
    {
        public VentanaRegistro()
        {
            InitializeComponent();
        }

        private void AceptarRegistro(object remitente, RoutedEventArgs argumento)
        {
            if (ValidarRegistro())
            {
                Acceso acceso = ObtenerAcceso();
                Perfil perfil = ObtenerPerfil();
                Jugador jugador = ObtenerJugador();
                try
                {
                    ServidorPassword.ServicioGestionAccesoClient proxy = new ServicioGestionAccesoClient();
                    int validacionCorreo = proxy.ValidarPresenciaDeCorreo(acceso.correo);
                    if (validacionCorreo == 0)
                    {
                        int validacionNombreUsuario = proxy.ValidarNombreUsuario(perfil.nombreUsuario);
                        if (validacionNombreUsuario == 0)
                        {
                            int resultadoRegistro = proxy.RegistrarNuevoJugador(acceso, perfil, jugador);
                            if (resultadoRegistro == 1)
                            {
                                MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeRegistroExitoso);
                                VentanaInicio inicioPage = new VentanaInicio();
                                this.NavigationService.Navigate(inicioPage);
                            }
                            else
                            {
                                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                            }
                        }
                        else if (validacionNombreUsuario == 1)
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
                        }
                        else
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        }
                    }
                    else if (validacionCorreo == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCorreoRegistrado);
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
        }

        private Jugador ObtenerJugador()
        {
            Jugador jugador = new Jugador
            {
                nombre = Txb_Nombre.Text,
                apellidos = Txb_Apellidos.Text,
            };
            return jugador;
        }

        private Acceso ObtenerAcceso()
        {
            Acceso acceso = new Acceso
            {
                correo = Txb_Correo.Text,
                contrasenia = Txb_Contrasenia.Text,
            };            
            return acceso;
        }

        private Perfil ObtenerPerfil()
        {
            Perfil perfil = new Perfil
            {
                nombreUsuario = Txb_NombreUsuario.Text,
                rutaImagen= "pack://application:,,,/Imagenes/Fondos/perfil1.png",
            };            
            return perfil;
        }
      
        private bool ValidarRegistro()
        {
            ReiniciarCampos();
            bool validacion = false;
            Jugador jugador = ObtenerJugador();
            Acceso acceso = ObtenerAcceso();
            Perfil perfil = ObtenerPerfil();            
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            ValidacionJugador validacionJugador = new ValidacionJugador();
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            FluentValidation.Results.ValidationResult resultadoAcceso = validacionAcceso.Validate(acceso);
            FluentValidation.Results.ValidationResult resultadoJugador = validacionJugador.Validate(jugador);
            FluentValidation.Results.ValidationResult resultadoPerfil = validacionPerfil.Validate(perfil);
            if (resultadoAcceso.IsValid && resultadoJugador.IsValid && resultadoPerfil.IsValid)
            {
                validacion = true;
            }
            else
            {
                MarcarErrores();
                if (string.IsNullOrWhiteSpace(jugador.nombre) || string.IsNullOrWhiteSpace(jugador.apellidos) ||
               string.IsNullOrWhiteSpace(acceso.correo) || string.IsNullOrWhiteSpace(acceso.contrasenia) ||
               string.IsNullOrWhiteSpace(perfil.nombreUsuario))
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposIncorrectos);
                }                
            }
            return validacion;
        }

        private void CancelarRegistro(object remitente, RoutedEventArgs argumento)
        {
            VentanaInicio paginaInicio = new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void MarcarErrores() 
        {
            ValidacionAcceso validacionAcceso= new ValidacionAcceso();
            if (!validacionAcceso.ValidarCorreo(Txb_Correo.Text)) 
            {
                Txb_Correo.BorderBrush = Brushes.Red;
                Txb_Correo.BorderThickness = new Thickness(2);
            }
            if (!validacionAcceso.ValidarContrasenia(Txb_Contrasenia.Text)) 
            {
                Txb_Contrasenia.BorderBrush = Brushes.Red;
                Txb_Contrasenia.BorderThickness = new Thickness(2);
            }
            ValidacionJugador validacionJugador= new ValidacionJugador();
            if (!validacionJugador.ValidarNombre(Txb_Nombre.Text)) 
            {
                Txb_Nombre.BorderBrush = Brushes.Red;
                Txb_Nombre.BorderThickness = new Thickness(2);
            }
            if (!validacionJugador.ValidarApellidos(Txb_Apellidos.Text)) 
            {
                Txb_Apellidos.BorderBrush = Brushes.Red;
                Txb_Apellidos.BorderThickness = new Thickness(2);
            }
            ValidacionPerfil validacionPerfil= new ValidacionPerfil();
            if (!validacionPerfil.ValidarNombreUsuario(Txb_NombreUsuario.Text)) 
            {
                Txb_NombreUsuario.BorderBrush = Brushes.Red;
                Txb_NombreUsuario.BorderThickness = new Thickness(2);
            }
        }

        private void ReiniciarCampos() 
        {
            Txb_Correo.BorderBrush = Brushes.Transparent;
            Txb_Correo.BorderThickness = new Thickness(1);
            Txb_Contrasenia.BorderBrush = Brushes.Transparent;
            Txb_Contrasenia.BorderThickness = new Thickness(1);
            Txb_Nombre.BorderBrush = Brushes.Transparent;
            Txb_Nombre.BorderThickness = new Thickness(1);
            Txb_Apellidos.BorderBrush = Brushes.Transparent;
            Txb_Apellidos.BorderThickness = new Thickness(1);
            Txb_NombreUsuario.BorderBrush = Brushes.Transparent;
            Txb_NombreUsuario.BorderThickness = new Thickness(1);
        }
    }
}
