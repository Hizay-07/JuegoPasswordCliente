﻿using Cliente.Auxiliares;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Cliente.Vistas
{    
    public partial class VentanaMenuPrincipal : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private Storyboard _rotateStoryboard;

        public VentanaMenuPrincipal()
        {
            InitializeComponent();
            IncializarRotacionaAmimacion();
            ConfigurarImagenPerfil();
            AsignarBotonesIdioma();

        }

        private void IncializarRotacionaAmimacion()
        {            
            var rotateAnimation = new DoubleAnimation
            {
                From = 0,
                To = 360, 
                Duration = new Duration(System.TimeSpan.FromSeconds(2)),
                RepeatBehavior = RepeatBehavior.Forever, 
                AutoReverse = false
            };            
            Storyboard.SetTarget(rotateAnimation, rotateTransform);
            Storyboard.SetTargetProperty(rotateAnimation, new PropertyPath(RotateTransform.AngleProperty));
            _rotateStoryboard = new Storyboard();
            _rotateStoryboard.Children.Add(rotateAnimation);
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            _rotateStoryboard.Begin();
        }

        private void ConfigurarImagenPerfil() 
        {         
            Img_Perfil.Source = new BitmapImage(new Uri(JugadorSingleton.RutaImagen));            
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

        private void VerEstadisticas(object remitente, RoutedEventArgs argumento) 
        {
            VentanaEstadisticas paginaEstadisticas=new VentanaEstadisticas();
            this.NavigationService.Navigate(paginaEstadisticas);
        }
        private void SalirDelJuego(object sender, RoutedEventArgs e)
        {
            DesconectarJugador();
            VentanaInicio paginaInicio= new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void DesconectarJugador() 
        {
            try
            {
                ServicioJugadoresClient servicioJugadores=new ServicioJugadoresClient();
                servicioJugadores.DesconectarJugadorJuego(JugadorSingleton.NombreUsuario);
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

        private void ElegirDificultadPartida(object remitente, RoutedEventArgs argumento)
        {
            try 
            {
                ServicioGestionPartidaClient servicioGestionPartida=new ServicioGestionPartidaClient();
                int verificacionCatalogoPreguntas=servicioGestionPartida.VerificarCatalogoCompletoPreguntas();
                switch (verificacionCatalogoPreguntas) 
                {
                    case ValoresConstantes.ConsultaSinRegistro:
                        MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeCatalogosFaltantes);
                        break;
                    case ValoresConstantes.OperacionExitosa:
                        int verificacionCatalogoRespuestas=servicioGestionPartida.VerificarCatalogoCompletoRespuestas();
                        switch (verificacionCatalogoRespuestas) 
                        {
                            case ValoresConstantes.ConsultaSinRegistro:
                                MensajeVentana.MostrarVentanaEmergenteAdvertencia(Properties.Resources.MensajeCatalogosFaltantes);
                                break;
                            case ValoresConstantes.OperacionExitosa:
                                VentanaDificultadPartida paginaDificultadPartida = new VentanaDificultadPartida();
                                this.NavigationService.Navigate(paginaDificultadPartida);
                                break;
                            default:
                                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                                break;
                        }
                        break;
                    default:
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    break;
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

        private void AbrirCodigoPartida(object remitente, RoutedEventArgs argumento)
        {
            VentanaUnionPartida paginaUnionPartida=new VentanaUnionPartida();
            this.NavigationService.Navigate(paginaUnionPartida);
        }


        private void AsignarBotonesIdioma()
        {
            string lenguajeActual = Properties.Settings.Default.Lenguaje;
            if (lenguajeActual == "es-MX")
            {
                Btn_Espanol.IsEnabled = false;
                Btn_Espanol.Visibility = Visibility.Collapsed;
                Btn_Ingles.IsEnabled = true;
                Btn_Ingles.Visibility=Visibility.Visible;
            }
            else
            {
                Btn_Espanol.IsEnabled = true;
                Btn_Ingles.IsEnabled = false;
                Btn_Ingles.Visibility = Visibility.Collapsed;
                Btn_Espanol.Visibility = Visibility.Visible;
            }
        }

        private void CambioIdioma(object remitente, RoutedEventArgs argumento)
        {
            if (remitente is Button Btn_Idioma)
            {
                string nuevoLenguaje = Btn_Idioma.Name == "Btn_Espanol" ? "es-MX" : "en-US";
                MessageBoxResult resultado = MessageBox.Show(
                   Properties.Resources.VentanaEmergenteCambioIdioma,
                   Properties.Resources.Lbl_CambioIdioma,
                    MessageBoxButton.YesNo,
                    MessageBoxImage.Question
                );

                if (resultado == MessageBoxResult.Yes)
                {
                    App.CambioIdioma(nuevoLenguaje);
                    System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
                    Application.Current.Shutdown();
                }
            }
        }
    }
}
