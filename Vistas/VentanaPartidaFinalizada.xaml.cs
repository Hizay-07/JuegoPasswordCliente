using Cliente.Auxiliares;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace Cliente.Vistas
{
    public partial class VentanaPartidaFinalizada : Page
    {
        public VentanaPartidaFinalizada()
        {
            InitializeComponent();
        }

        private void RegresarVentana(object sender, RoutedEventArgs e)
        {
            if (ValidarJugadorRegistrado())
            {
                VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
                this.NavigationService.Navigate(paginaMenuPrincipal);
            }
            else 
            {
                VentanaInicio paginaInicio=new VentanaInicio();
                this.NavigationService.Navigate(paginaInicio);
            }
        }

        private bool ValidarJugadorRegistrado()
        {
            return JugadorSingleton.IdJugador > 0;
        }
    }
}