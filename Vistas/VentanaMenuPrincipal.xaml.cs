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

        private void PersonalizarPerfil(object remitente, RoutedEventArgs argumento)
        {
            VentanaPersonalizarPerfil paginaPersonalizarPerfil = new VentanaPersonalizarPerfil();
            this.NavigationService.Navigate(paginaPersonalizarPerfil);
        }

        private void AgregarAmigo(object remitente, RoutedEventArgs argumento) 
        {
            VentanaAgregarAmigo paginaAgregarAmigo = new VentanaAgregarAmigo();
            this.NavigationService.Navigate(paginaAgregarAmigo);
        }

        private void SalirDelJuego(object sender, RoutedEventArgs e)
        {
            VentanaInicio paginaInicio= new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void ConsultarAmigos(object remitente, RoutedEventArgs argumento)
        {
            VentanaAmigos paginaAmigos= new VentanaAmigos();
            this.NavigationService.Navigate(paginaAmigos);
        }

        private void VerSolicitudesDeAmistad(object remitente, RoutedEventArgs argumento)
        {
            VentanaSolicitudesDeAmistad paginaSolicitudesDeAmistad=new VentanaSolicitudesDeAmistad();
            this.NavigationService.Navigate(paginaSolicitudesDeAmistad);
        }

        private void AbrirSalaEspera(object remitente, RoutedEventArgs argumento)
        {
            VentanaLobby paginaSalaEspera=new VentanaLobby();
            this.NavigationService.Navigate(paginaSalaEspera);
        }
    }
}
