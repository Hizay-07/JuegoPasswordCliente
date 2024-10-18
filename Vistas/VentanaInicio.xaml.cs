using System;
using System.Windows;
using System.Windows.Controls;

namespace Cliente.Vistas
{
    /// <summary>
    /// Lógica de interacción para VentanaInicio.xaml
    /// </summary>
    public partial class VentanaInicio : Page
    {
        public VentanaInicio()
        {
            InitializeComponent();
        }

        private void RegistrarUsuario(object sender, RoutedEventArgs e)
        {
            VentanaRegistro registroPage = new VentanaRegistro();
            this.NavigationService.Navigate(registroPage);
        }

        private void IniciarSesion(object sender, RoutedEventArgs e)
        {
            VentanaInicioSesion inicioSesionPage = new VentanaInicioSesion();
            this.NavigationService.Navigate(inicioSesionPage);
        }

        private void Invitado(object sender, RoutedEventArgs e)
        {

        }
    }
}
