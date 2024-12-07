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
    public partial class VentanaAmigos : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaAmigos()
        {
            InitializeComponent();
            RecuperarAmigos();            
        }

        private void Aceptar(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void RecuperarAmigos()
        {
            try
            {
                ServicioGestionAmistadClient servicioGestionAmistad = new ServicioGestionAmistadClient();
                List<JugadorContrato> amigos = servicioGestionAmistad.ConsultarAmistadesPorIdJugador(JugadorSingleton.IdJugador).ToList();
                if (amigos.Any()) 
                {
                    int idJugador = amigos[0].IdJugador;
                    if (idJugador > 0)
                    {
                        List<JugadorAmistad> amigosConectados = ObtenerConexionAmigos(amigos);
                        Ltb_ListaAmigos.ItemsSource = amigosConectados;
                    }
                    else if (idJugador == -1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    }
                }                
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
            }
        }
        
        private List<JugadorAmistad> ObtenerConexionAmigos(List<JugadorContrato> jugadores) 
        {
            List<JugadorAmistad> amigos=new List<JugadorAmistad>();
            foreach (var jugador in jugadores) 
            {
                JugadorAmistad jugadorAmistad = new JugadorAmistad 
                {
                    NombreUsuario=jugador.NombreUsuario,
                    IdJugador=jugador.IdJugador,
                    Estado=VerificarConexionAmigo(jugador.NombreUsuario),
                };
                amigos.Add(jugadorAmistad);
            }
            return amigos;
        }

        private bool VerificarConexionAmigo(string nombreUsuario) 
        {
            bool resultadoVerificaion = false;
            try 
            {
                ServicioJugadoresClient servicioJugadores=new ServicioJugadoresClient();
                resultadoVerificaion = servicioJugadores.VerificarConexionUsuario(nombreUsuario);
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
            }
            catch (TimeoutException excepcionTiempoEspera)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                _bitacora.Warn(excepcionTiempoEspera);
            }
            catch (CommunicationException excepcionComunicacion)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                _bitacora.Error(excepcionComunicacion);
            }
            return resultadoVerificaion;
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
                        paginaPerfilDeJugador.Txbl_Correo.Text = cuenta.Correo;
                        paginaPerfilDeJugador.Txbl_Descripcion.Text = cuenta.Descripcion;
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
                    _bitacora.Fatal(excepcionPuntoFinalNoEncontrado);
                }
                catch (TimeoutException excepcionTiempoEspera)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorTiempoTerminado);
                    _bitacora.Warn(excepcionTiempoEspera);
                }
                catch (CommunicationException excepcionComunicacion)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorComunicacion);
                    _bitacora.Error(excepcionComunicacion);
                }
            }
        }

    }
}
