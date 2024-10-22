using Cliente.Auxiliares;
using Cliente.ServidorPassword;
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
    /// Lógica de interacción para Lobby.xaml
    /// </summary>
    public partial class VentanaLobby : Page,ServidorPassword.IServicioChatCallback
    {
        private ServidorPassword.ServicioChatClient _servicioChat;
        public VentanaLobby()
        {
            InitializeComponent();
            InstanceContext contexto = new InstanceContext(this);
            _servicioChat = new ServidorPassword.ServicioChatClient(contexto);
            string nombreUsuario = JugadorSingleton.NombreUsuario;
            string mensajeInicial = $"{nombreUsuario} se ha conectado.";
            _servicioChat.Chatear(mensajeInicial);
        }

        public void Responder(string respuesta)
        {
            Txb_Conversacion.Text += respuesta;
        }

        private void EnviarMensaje(object sender, RoutedEventArgs e)
        {
            string nombreUsuario = JugadorSingleton.NombreUsuario;
            string mensaje = $"{nombreUsuario}: " + Txb_Mensaje.Text;
            Txb_Mensaje.Text = string.Empty;
            _servicioChat.Chatear(mensaje);
        }       
    }
}
