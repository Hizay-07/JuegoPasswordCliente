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
    /// Lógica de interacción para VentanaAgregarAmigo.xaml
    /// </summary>
    public partial class VentanaAgregarAmigo : Page
    {
        public VentanaAgregarAmigo()
        {
            InitializeComponent();
        }

        private void RegresarClick(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void AgregarAmigoClick(object sender, RoutedEventArgs e)
        {

        }
    }
}
