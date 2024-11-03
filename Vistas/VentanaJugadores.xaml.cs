using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;

namespace Cliente.Vistas
{
    public partial class VentanaJugadores : Page
    {
        public ObservableCollection<Amigo> Amigos { get; set; }

        public VentanaJugadores()
        {
            InitializeComponent();
            CargarAmigos();
            ListaAmigos.ItemsSource = Amigos;
        }

        private void CargarAmigos()
        {
            Amigos = new ObservableCollection<Amigo>
            {
                new Amigo { NombreAmigo = "amigo1" },
                new Amigo { NombreAmigo = "amigo2" },
                new Amigo { NombreAmigo = "amigo3" },
                new Amigo { NombreAmigo = "amigo4" }
            };
        }

        private void InvitarAmigo_Click(object sender, RoutedEventArgs e)
        {
            Button boton = sender as Button;
            if (boton != null && boton.DataContext is Amigo amigo)
            {
                MessageBox.Show($"Invitación enviada a {amigo.NombreAmigo}", "Invitación", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void Hecho_Click(object sender, RoutedEventArgs e)
        {
            // Iniciar partida
            //MessageBox.Show("Iniciando partida...", "Partida", MessageBoxButton.OK, MessageBoxImage.Information);
            VentanaSalaDeEspera SalaDeEsperaPage = new VentanaSalaDeEspera();
            this.NavigationService.Navigate(SalaDeEsperaPage);
        }

        private void Cancelar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }

    public class Amigo
    {
        public string NombreAmigo { get; set; }
    }
}
