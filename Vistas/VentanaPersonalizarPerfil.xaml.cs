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
    /// Lógica de interacción para VentanaPersonalizarPerfil.xaml
    /// </summary>
    public partial class VentanaPersonalizarPerfil : Page
    {
        public VentanaPersonalizarPerfil()
        {
            InitializeComponent();
        }


        private void AceptarInicioDeSesion(object sender, RoutedEventArgs e)
        {

        }

        private void CancelarPersonalizacion(object sender, RoutedEventArgs e)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

    }
}
