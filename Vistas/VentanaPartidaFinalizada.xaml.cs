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
            NavigationService.GoBack();
        }
    }
}