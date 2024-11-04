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
    /// Lógica de interacción para VentanaSolicitudesDeAmistad.xaml
    /// </summary>
    public partial class VentanaSolicitudesDeAmistad : Page
    {
        public VentanaSolicitudesDeAmistad()
        {
            InitializeComponent();
        }

        private void RecuperarAmistadesPendientes() 
        {
            try
            {
                ServicioGestionAmistadClient proxy = new ServicioGestionAmistadClient();
                List<Amistad> amistades = new List<Amistad>();
                amistades = proxy.ConsultarAmistadesPorIdJugador(JugadorSingleton.IdJugador).ToList();
                Amistad amistad = amistades.First();
                if (amistad.idAmistad != -1)
                {
                    RecuperarJugadores(amistades);
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            catch (EndpointNotFoundException) 
            {

            }            
        }

        private void RecuperarJugadores(List<Amistad> amistades) 
        {

        }
    }
}
