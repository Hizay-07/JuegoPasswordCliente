using System;
using System.Windows;
using System.Windows.Controls;

namespace Cliente.Vistas
{    
    public partial class VentanaInicio : Page
    {
        public VentanaInicio()
        {
            InitializeComponent();
        }

        private void RegistrarUsuario(object remitente, RoutedEventArgs argumento)
        {
            VentanaRegistro paginaRegistro = new VentanaRegistro();
            this.NavigationService.Navigate(paginaRegistro);
        }

        private void IniciarSesion(object remitente, RoutedEventArgs argumento)
        {
            VentanaInicioSesion paginaInicioSesion = new VentanaInicioSesion();
            this.NavigationService.Navigate(paginaInicioSesion);
        }

        private void UnirseComoInvitado(object remitente, RoutedEventArgs argumento)
        {
            VentanaCodigoInvitado paginaCodigoInvitado=new VentanaCodigoInvitado();
            this.NavigationService.Navigate(paginaCodigoInvitado);
        }
    }
}
