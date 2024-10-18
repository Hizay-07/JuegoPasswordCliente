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
        private ServidorPassword.ServicioChatClient servicioChat;
        public VentanaLobby()
        {
            InitializeComponent();
            InstanceContext contexto = new InstanceContext(this);
            servicioChat = new ServidorPassword.ServicioChatClient(contexto);
            servicioChat.Chatear("Un nuevo usuario se ha conectado");
        }

        public void Responder(string respuesta)
        {
            Txb_Conversacion.Text += respuesta;
        }

        private void EnviarMensaje(object sender, RoutedEventArgs e)
        {
            String mensaje = Txb_Mensaje.Text;
            Txb_Mensaje.Text = string.Empty;
            servicioChat.Chatear(mensaje);
        }

       
    }
}
