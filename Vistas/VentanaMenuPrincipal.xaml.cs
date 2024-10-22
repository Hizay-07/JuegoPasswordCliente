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
    /// Lógica de interacción para VentanaMenuPrincipal.xaml
    /// </summary>
    public partial class VentanaMenuPrincipal : Page
    {
        public VentanaMenuPrincipal()
        {
            InitializeComponent();
        }

        private void PersonalizarPerfil(object sender, RoutedEventArgs e)
        {
            VentanaPersonalizarPerfil paginaPersonalizarPerfil = new VentanaPersonalizarPerfil();
            this.NavigationService.Navigate(paginaPersonalizarPerfil);
        }
    }
}
