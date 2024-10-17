using System;
using System.Windows;
using System.Windows.Controls;

namespace Cliente.Vistas
{
    /// <summary>
    /// Lógica de interacción para Inicio.xaml
    /// </summary>
    public partial class Inicio : Page
    {
        public Inicio()
        {
            InitializeComponent();
        }

        private void RegistrarUsuario(object sender, RoutedEventArgs e)
        {
            Registro registroPage = new Registro();
            this.NavigationService.Navigate(registroPage);
        }

        private void IniciarSesion(object sender, RoutedEventArgs e)
        {
            InicioSesion inicioSesionPage = new InicioSesion();
            this.NavigationService.Navigate(inicioSesionPage);
        }

        private void Invitado(object sender, RoutedEventArgs e)
        {
        }
    }
}
