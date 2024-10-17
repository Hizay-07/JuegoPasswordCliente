using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
    /// Lógica de interacción para InicioSesion.xaml
    /// </summary>
    public partial class InicioSesion : Page,ServidorPassword.IServicioChatCallback
    {
        public InicioSesion()
        {
            InitializeComponent();
        }

        

        private void CancelarInicioDeSesion(object sender, RoutedEventArgs e)
        {
            Inicio inicioPage = new Inicio();
            this.NavigationService.Navigate(inicioPage);
        }

        private void Btn_OlvideMiContrasena(object sender, RoutedEventArgs e)
        {

        }

       

        public void Responder(string respuesta)
        {
            throw new NotImplementedException();
        }

        private void AceptarInicioDeSesion(object sender, RoutedEventArgs e)
        {
            ServidorPassword.ServicioGestionAccesoClient proxy = new ServidorPassword.ServicioGestionAccesoClient();
            ServidorPassword.Acceso acceso = new ServidorPassword.Acceso();
            acceso.correo = Txb_Correo.Text;
            acceso.contrasenia = Txb_Contrasenia.Text;
            if (proxy.ValidarInicioDeSesion(acceso) == 1)
            {
                Lobby sala = new Lobby();
                this.NavigationService.Navigate(sala);
            }
        }
    }
}
