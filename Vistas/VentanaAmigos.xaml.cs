using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
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
    /// Lógica de interacción para VentanaAmigos.xaml
    /// </summary>
    public partial class VentanaAmigos : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaAmigos()
        {
            InitializeComponent();
            RecuperarAmigos();            
        }

        private void Aceptar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void RecuperarAmigos()
        {
            try
            {
                ServicioGestionAmistadClient servicioGestionAmistad = new ServicioGestionAmistadClient();
                List<int> idAmistades = servicioGestionAmistad.ConsultarAmistadesPorIdJugador(JugadorSingleton.IdJugador).ToList();
                int idAmistad = idAmistades.FirstOrDefault();
                if (idAmistad > 0)
                {
                    RecuperarJugadores(idAmistades);
                }
                else if(idAmistad == -1)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);                    
                }
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private List<string> ObtenerJugadoresConectados() 
        {
            List<string> jugadoresActivos = new List<string>();
            try 
            {
                ServicioJugadoresClient servicioJugadores = new ServicioJugadoresClient();
                jugadoresActivos=servicioJugadores.ObtenerJugadores().ToList();
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
            return jugadoresActivos;
        }

        private void RecuperarJugadores(List<int> amistades)
        {
            try
            {
                ServidorPassword.ServicioGestionAmistadClient proxy = new ServidorPassword.ServicioGestionAmistadClient();
                List<string> nombresUsuario = proxy.ObtenerNombresDeUsuarioPorIdJugadores(amistades.ToArray()).ToList();
                AsignarNombresUsuario(nombresUsuario,amistades);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private void AsignarNombresUsuario(List<string> nombresUsuario,List<int> idAmistades)
        {
            string primerNombreUsuario = nombresUsuario.First();
            if (primerNombreUsuario != "excepcion")
            {
                List<JugadorAmistad> amistades = CombinarListas(idAmistades, nombresUsuario);
                ListaAmigos.ItemsSource = amistades;
                //MostrarAmigosConectados();
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
            }
        }

        private void MostrarAmigosConectados() 
        {
            List<string> jugadoresConectados=ObtenerJugadoresConectados();
            for (int i = 0; i < ListaAmigos.Items.Count; i++) 
            {
                for (int j = 0; i < jugadoresConectados.Count; j++)
                {
                    var jugador = ListaAmigos.Items[i] as JugadorAmistad;
                    if (jugador.NombreUsuario == jugadoresConectados[j]) 
                    {

                    }
                    
                }
            }
        }

        private List<JugadorAmistad> CombinarListas(List<int> idJugadores, List<string> nombresUsuario)
        {
            List<JugadorAmistad> jugadores = idJugadores.Zip(nombresUsuario, (id, nombre) => new JugadorAmistad
            {
                IdJugador = id,
                NombreUsuario = nombre
            }).ToList();
            return jugadores;
        }

        private void VerPerfil(object remitente, RoutedEventArgs argumento)
        {
            if (remitente is Button Btn_VerPerfilAmigo && Btn_VerPerfilAmigo.Tag is int idJugador)
            {
                try
                {
                    ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                    Cuenta cuenta=servicioGestionAcceso.RecuperarCuentaPorIdJugador(idJugador);
                    if (cuenta.IdAcceso != -1)
                    {
                        VentanaPerfilDeJugador paginaPerfilDeJugador=new VentanaPerfilDeJugador();
                        paginaPerfilDeJugador.Txb_Correo.Text = cuenta.Correo;
                        paginaPerfilDeJugador.Txb_Descripcion.Text = cuenta.Descripcion;
                        paginaPerfilDeJugador.Lbl_NombreJugador.Content = cuenta.NombreUsuario;
                        paginaPerfilDeJugador.Img_Perfil.Source = new BitmapImage(new Uri(cuenta.RutaImagen));
                        this.NavigationService.Navigate(paginaPerfilDeJugador);
                    }
                    else 
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    }
                }
                catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado) 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                    _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
                }                             
            }
        }

    }
}
