using Cliente.Auxiliares;
using Cliente.ServidorPassword;
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
        public VentanaPersonalizarPerfil()
        {
            InitializeComponent();
            LlenarCampos();
        }

        private void AceptarInicioDeSesion(object sender, RoutedEventArgs e)
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
            int idPerfil = JugadorSingleton.IdPerfil;
            int idAcceso = JugadorSingleton.IdAcceso;            
            if (Txb_Correo.Text != JugadorSingleton.Correo)
            {
                EditarCorreoPorIdAcceso(idAcceso, Txb_Correo.Text);
            }

            if (Txb_Descripcion.Text != JugadorSingleton.Descripcion)
            {
                EditarDescripcionPorIdPerfil(idPerfil, Txb_Descripcion.Text);
            }

            if (Txb_NombreDeUsuario.Text != JugadorSingleton.NombreUsuario)
            {
                EditarNombreUsuarioPorIdPerfil(idPerfil, Txb_NombreDeUsuario.Text);
            }
        }

        public void EditarCorreoPorIdAcceso(int idAcceso, string nuevoCorreo)
        {            
            if (ValidarNuevoCorreo(nuevoCorreo))
            {
                try
                {
                    ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    ServidorPassword.ServicioGestionAccesoClient proxyAcceso = new ServicioGestionAccesoClient();
                    int validacionCorreo = proxyAcceso.ValidarPresenciaDeCorreo(nuevoCorreo);
                    if (validacionCorreo == 0)
                    {
                        int resultadoEdicionCorreo = proxy.EditarCorreoPorIdAcceso(idAcceso, nuevoCorreo);
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
                catch (EndpointNotFoundException)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
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
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            return validacionAcceso.ValidarCorreo(correo);
        }

        private bool ValidarNuevaDescripcion(string descripcion) 
        {
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            return validacionPerfil.ValidarDescripcion(descripcion);
        }

        private bool ValidarNuevoNombreUsuario(string nombreUsuario) 
        {
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            return validacionPerfil.ValidarNombreUsuario(nombreUsuario);
        }

        public void EditarDescripcionPorIdPerfil(int idPerfil, string nuevaDescripcion)
        {            
            if (ValidarNuevaDescripcion(nuevaDescripcion))
            {
                try
                {
                    ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    int resultadoEdicionDescripcion = proxy.EditarDescripcionPorIdPerfil(idPerfil, nuevaDescripcion);
                    if (resultadoEdicionDescripcion == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                        JugadorSingleton.Descripcion = nuevaDescripcion;
                    }
                    else 
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                    }
                }
                catch (EndpointNotFoundException)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                }
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_Descripcion.BorderBrush = Brushes.Red;
                Txb_Descripcion.BorderThickness = new Thickness(2);
            }
        }

        public void EditarNombreUsuarioPorIdPerfil(int idPerfil, string nuevoNombreUsuario)
        {            
            if (ValidarNuevoNombreUsuario(nuevoNombreUsuario))
            {
                try
                {
                    ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    ServidorPassword.ServicioGestionAccesoClient proxyAcceso = new ServicioGestionAccesoClient();
                    int validacionNombreUsuario = proxyAcceso.ValidarNombreUsuario(nuevoNombreUsuario);
                    if (validacionNombreUsuario == 0)
                    {
                        int resultadoEdicionNombreUsuario = proxy.EditarNombreUsuarioPorIdPerfil(idPerfil, nuevoNombreUsuario);
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
                catch (EndpointNotFoundException)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                }
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
                Txb_NombreDeUsuario.BorderBrush = Brushes.Red;
                Txb_NombreDeUsuario.BorderThickness = new Thickness(2);
            }
        }

        private void CancelarPersonalizacion(object sender, RoutedEventArgs e)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

        private void CambiarContrasenia(object sender, RoutedEventArgs e)
        {
            VentanaCambioContrasenia paginaCambioContrasenia = new VentanaCambioContrasenia();
            this.NavigationService.Navigate(paginaCambioContrasenia);
        }
    }
}