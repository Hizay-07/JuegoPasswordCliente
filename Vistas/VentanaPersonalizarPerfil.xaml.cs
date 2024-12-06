using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.IO.Packaging;
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
    public partial class VentanaPersonalizarPerfil : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaPersonalizarPerfil()
        {
            InitializeComponent();
            LlenarCampos();
        }

        private void AceptarInicioDeSesion(object remitente, RoutedEventArgs argumento)
        {
            CompararCampos();
        }

        private void LlenarCampos()
        {
            Txb_Correo.Text = JugadorSingleton.Correo;
            Txb_Descripcion.Text = JugadorSingleton.Descripcion;
            Txb_NombreDeUsuario.Text = JugadorSingleton.NombreUsuario;
        }

        private void CompararCampos()
        {
            ReiniciarCampos();
            int idJugador = JugadorSingleton.IdJugador;
            int idAcceso = JugadorSingleton.IdAcceso;            
            if (Txb_Correo.Text != JugadorSingleton.Correo)
            {
                EditarCorreoPorIdAcceso(idAcceso, Txb_Correo.Text);
            }

            if (Txb_Descripcion.Text != JugadorSingleton.Descripcion)
            {
                EditarDescripcionPorIdJugador(idJugador, Txb_Descripcion.Text);
            }

            if (Txb_NombreDeUsuario.Text != JugadorSingleton.NombreUsuario)
            {
                EditarNombreUsuarioPorIdJugador(idJugador, Txb_NombreDeUsuario.Text);
            }
        }

        public void EditarCorreoPorIdAcceso(int idAcceso, string nuevoCorreo)
        {            
            if (ValidarNuevoCorreo(nuevoCorreo))
            {
                try
                {
                    ServicioPersonalizacionPerfilClient servicioPersonalizacionPerfil = new ServicioPersonalizacionPerfilClient();
                    ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                    int validacionCorreo = servicioGestionAcceso.ValidarPresenciaDeCorreo(nuevoCorreo);
                    if (validacionCorreo == 0)
                    {
                        int resultadoEdicionCorreo = servicioPersonalizacionPerfil.EditarCorreoPorIdAcceso(idAcceso, nuevoCorreo);
                        if (resultadoEdicionCorreo == 1)
                        {
                            MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                            JugadorSingleton.Correo = nuevoCorreo;
                        }
                        else
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        }
                    }
                    else if (validacionCorreo == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCorreoRegistrado);
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
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_Correo.BorderBrush = Brushes.Red;
                Txb_Correo.BorderThickness = new Thickness(2);
            }
        }

        private void ReiniciarCampos() 
        {
            Txb_Correo.BorderBrush = Brushes.Transparent;
            Txb_Correo.BorderThickness = new Thickness(1);
            Txb_Descripcion.BorderBrush = Brushes.Transparent;
            Txb_Descripcion.BorderThickness = new Thickness(1);
            Txb_NombreDeUsuario.BorderBrush = Brushes.Transparent;
            Txb_NombreDeUsuario.BorderThickness = new Thickness(1);
        }
        private bool ValidarNuevoCorreo(string correo) 
        {            
            return ValidacionAcceso.ValidarCorreo(correo);
        }

        private bool ValidarNuevaDescripcion(string descripcion) 
        {            
            return ValidacionJugador.ValidarDescripcion(descripcion);
        }

        private bool ValidarNuevoNombreUsuario(string nombreUsuario) 
        {            
            return ValidacionJugador.ValidarNombreUsuario(nombreUsuario);
        }

        public void EditarDescripcionPorIdJugador(int idJugador, string nuevaDescripcion)
        {            
            if (ValidarNuevaDescripcion(nuevaDescripcion))
            {
                try
                {
                    ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    int resultadoEdicionDescripcion = proxy.EditarDescripcionPorIdJugador(idJugador, nuevaDescripcion);
                    if (resultadoEdicionDescripcion == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                        JugadorSingleton.Descripcion = nuevaDescripcion;
                        VentanaMenuPrincipal paginaMenuPrincipal= new VentanaMenuPrincipal();
                        this.NavigationService.Navigate(paginaMenuPrincipal);
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
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_Descripcion.BorderBrush = Brushes.Red;
                Txb_Descripcion.BorderThickness = new Thickness(2);
            }
        }

        public void EditarNombreUsuarioPorIdJugador(int idJugador, string nuevoNombreUsuario)
        {            
            if (ValidarNuevoNombreUsuario(nuevoNombreUsuario))
            {
                try
                {
                    ServicioPersonalizacionPerfilClient servicioPersonalizacionPerfil = new ServicioPersonalizacionPerfilClient();
                    ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                    int validacionNombreUsuario = servicioGestionAcceso.ValidarNombreUsuario(nuevoNombreUsuario);
                    if (validacionNombreUsuario == 0)
                    {
                        int resultadoEdicionNombreUsuario = servicioPersonalizacionPerfil.EditarNombreUsuarioPorIdJugador(idJugador, nuevoNombreUsuario);
                        if (resultadoEdicionNombreUsuario == 1)
                        {
                            MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                            JugadorSingleton.NombreUsuario = nuevoNombreUsuario;
                        }
                        else
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        }
                    }
                    else if (validacionNombreUsuario == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
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
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_NombreDeUsuario.BorderBrush = Brushes.Red;
                Txb_NombreDeUsuario.BorderThickness = new Thickness(2);
            }
        }

        private void CancelarPersonalizacion(object remitente, RoutedEventArgs argumento)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

        private void CambiarContrasenia(object remitente, RoutedEventArgs argumento)
        {
            VentanaCambioContrasenia paginaCambioContrasenia = new VentanaCambioContrasenia();
            this.NavigationService.Navigate(paginaCambioContrasenia);
        }

        private void CambiarImagen(object remitente, RoutedEventArgs argumento)
        {
            VentanaImagenDeJugador paginaImagenDeJugador = new VentanaImagenDeJugador();
            this.NavigationService.Navigate(paginaImagenDeJugador);
        }
    }
}