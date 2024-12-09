using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.IO.Packaging;
using System.Linq;
using System.Net.Http.Headers;
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
            if (Txb_Correo.Text != JugadorSingleton.Correo)
            {
                EditarCorreoPorIdAcceso(Txb_Correo.Text);
            }
            if (Txb_Descripcion.Text != JugadorSingleton.Descripcion)
            {
                EditarDescripcionPorIdJugador(idJugador, Txb_Descripcion.Text);
            }
            if (Txb_NombreDeUsuario.Text != JugadorSingleton.NombreUsuario)
            {
                EditarNombreUsuarioPorIdJugador(Txb_NombreDeUsuario.Text);
            }
        }

        public void EditarCorreoPorIdAcceso(string nuevoCorreo)
        {            
            if (ValidarNuevoCorreo(nuevoCorreo))
            {
                ValidarPresenciaNuevoCorreo(nuevoCorreo);
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_Correo.BorderBrush = Brushes.Red;
                Txb_Correo.BorderThickness = new Thickness(2);
            }
        }

        private void ValidarPresenciaNuevoCorreo(string nuevoCorreo) 
        {
            try
            {                
                ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                int validacionCorreo = servicioGestionAcceso.ValidarPresenciaDeCorreo(nuevoCorreo);
                if (validacionCorreo == ValoresConstantes.ConsultaSinRegistro)
                {
                    GuardarNuevoCorreo(nuevoCorreo);   
                }
                else if (validacionCorreo == ValoresConstantes.OperacionExitosa)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCorreoRegistrado);
                }
                else if(validacionCorreo==ValoresConstantes.ErrorConexionBaseDatos)
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

        private void GuardarNuevoCorreo(string nuevoCorreo) 
        {
            try
            {
                ServicioPersonalizacionPerfilClient servicioPersonalizacionPerfil = new ServicioPersonalizacionPerfilClient();
                int resultadoEdicionCorreo = servicioPersonalizacionPerfil.EditarCorreoPorIdAcceso(JugadorSingleton.IdJugador, nuevoCorreo);
                if (resultadoEdicionCorreo == ValoresConstantes.OperacionExitosa)
                {
                    MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                    JugadorSingleton.Correo = nuevoCorreo;
                }
                else if(resultadoEdicionCorreo==ValoresConstantes.ErrorConexionBaseDatos)
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
                    if (resultadoEdicionDescripcion == ValoresConstantes.OperacionExitosa)
                    {
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                        JugadorSingleton.Descripcion = nuevaDescripcion;                        
                    }
                    else  if(resultadoEdicionDescripcion==ValoresConstantes.ErrorConexionBaseDatos)
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
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_Descripcion.BorderBrush = Brushes.Red;
                Txb_Descripcion.BorderThickness = new Thickness(2);
            }
        }

        public void EditarNombreUsuarioPorIdJugador(string nuevoNombreUsuario)
        {            
            if (ValidarNuevoNombreUsuario(nuevoNombreUsuario))
            {
                ValidarPresenciaNombreUsuario(nuevoNombreUsuario);
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_NombreDeUsuario.BorderBrush = Brushes.Red;
                Txb_NombreDeUsuario.BorderThickness = new Thickness(2);
            }
        }

        private void ValidarPresenciaNombreUsuario(string nuevoNombreUsuario) 
        {
            try
            {                
                ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                int validacionNombreUsuario = servicioGestionAcceso.ValidarNombreUsuario(nuevoNombreUsuario);
                if (validacionNombreUsuario == ValoresConstantes.ConsultaSinRegistro)
                {
                    GuardarNombreUsuario(nuevoNombreUsuario);   
                }
                else if (validacionNombreUsuario == ValoresConstantes.OperacionExitosa)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
                }
                else if (validacionNombreUsuario==ValoresConstantes.ErrorConexionBaseDatos)
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

        private void GuardarNombreUsuario(string nuevoNombreUsuario) 
        {
            try
            {
                ServicioPersonalizacionPerfilClient servicioPersonalizacionPerfil = new ServicioPersonalizacionPerfilClient();
                int resultadoEdicionNombreUsuario = servicioPersonalizacionPerfil.EditarNombreUsuarioPorIdJugador(JugadorSingleton.IdJugador, nuevoNombreUsuario);
                if (resultadoEdicionNombreUsuario == ValoresConstantes.OperacionExitosa)
                {
                    MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                    JugadorSingleton.NombreUsuario = nuevoNombreUsuario;                    
                }
                else if (resultadoEdicionNombreUsuario==ValoresConstantes.ErrorConexionBaseDatos)
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