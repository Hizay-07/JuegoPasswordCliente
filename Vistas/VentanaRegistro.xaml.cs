using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using System;
using System.Collections.Generic;
using System.Linq;
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
                ServidorPassword.ServicioGestionAccesoClient proxy=new ServicioGestionAccesoClient();
                if (proxy.RegistrarNuevoJugador(acceso, perfil, jugador) == 1) 
                {
                    VentanaInicio inicioPage = new VentanaInicio();
                    this.NavigationService.Navigate(inicioPage);
                }                
            }
            else 
            {
                Console.WriteLine("No entro");
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

        private bool ObtenerRegistro() {
            Jugador jugador = ObtenerJugador();
            Acceso acceso = ObtenerAcceso();
            Perfil perfil = ObtenerPerfil();            
            return ValidarRegistro(jugador,acceso,perfil);
        }

        private bool ValidarRegistro(Jugador jugador,Acceso acceso,Perfil perfil) 
        {
            bool validacion=false;
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
