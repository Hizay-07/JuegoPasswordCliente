using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
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

        private void AceptarRegistro(object sender, RoutedEventArgs e)
        {
            if (ObtenerRegistro())
            {
                Acceso acceso = ObtenerAcceso();
                Perfil perfil = ObtenerPerfil();
                Jugador jugador = ObtenerJugador();
                ServidorPassword.ServicioGestionAccesoClient proxy = new ServicioGestionAccesoClient();

                int resultadoRegistro = proxy.RegistrarNuevoJugador(acceso, perfil, jugador);

                if (resultadoRegistro == 1)
                {
                    MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeRegistroExitoso);
                    VentanaInicio inicioPage = new VentanaInicio();
                    this.NavigationService.Navigate(inicioPage);
                }
                else if (resultadoRegistro == -1)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCorreoRegistrado);
                }
                else
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposIncorrectos);
            }
        }

        private Jugador ObtenerJugador()
        {
            Jugador jugador = new Jugador();
            jugador.nombre = Txb_Nombre.Text;
            jugador.apellidos = Txb_Apellidos.Text;
            return jugador;
        }

        private Acceso ObtenerAcceso()
        {
            Acceso acceso = new Acceso();
            acceso.correo = Txb_Correo.Text;
            acceso.contrasenia = Txb_Contrasenia.Text;
            return acceso;
        }

        private Perfil ObtenerPerfil()
        {
            Perfil perfil = new Perfil();
            perfil.nombreUsuario = Txb_NombreUsuario.Text;
            return perfil;
        }

        private bool ObtenerRegistro()
        {
            Jugador jugador = ObtenerJugador();
            Acceso acceso = ObtenerAcceso();
            Perfil perfil = ObtenerPerfil();

            if (string.IsNullOrWhiteSpace(jugador.nombre) || string.IsNullOrWhiteSpace(jugador.apellidos) ||
                string.IsNullOrWhiteSpace(acceso.correo) || string.IsNullOrWhiteSpace(acceso.contrasenia) ||
                string.IsNullOrWhiteSpace(perfil.nombreUsuario))
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
                return false;
            }

            return ValidarRegistro(jugador, acceso, perfil);
        }

        private bool ValidarRegistro(Jugador jugador, Acceso acceso, Perfil perfil)
        {
            bool validacion = false;
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
                if (!resultadoPerfil.IsValid)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
                }
                else if (!resultadoAcceso.IsValid || !resultadoJugador.IsValid)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposIncorrectos);
                }
            }

            return validacion;
        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            VentanaInicio inicioPage = new VentanaInicio();
            this.NavigationService.Navigate(inicioPage);
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
        }
    }
}
