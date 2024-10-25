using Cliente.Auxiliares;
using System;
using System.Collections.Generic;
using System.IO.Packaging;
using System.Linq;
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
            int idPerfil = JugadorSingleton.IdPerfil;
            int idAcceso = JugadorSingleton.IdAcceso;

            if (string.IsNullOrWhiteSpace(Txb_Correo.Text) || string.IsNullOrWhiteSpace(Txb_Descripcion.Text) || string.IsNullOrWhiteSpace(Txb_NombreDeUsuario.Text))
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
                return;
            }

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
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            if (validacionAcceso.ValidarCorreo(nuevoCorreo))
            {
                try
                {
                    ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    int resultadoEdicionCorreo = proxy.EditarCorreoPorIdAcceso(idAcceso, nuevoCorreo);

                    if (resultadoEdicionCorreo == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                        JugadorSingleton.Correo = nuevoCorreo;
                    }
                    else
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCorreoRegistrado);
                    }
                }
                catch (Exception)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
            }
        }

        public void EditarDescripcionPorIdPerfil(int idPerfil, string nuevaDescripcion)
        {
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            if (validacionPerfil.ValidarDescripcion(nuevaDescripcion))
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
                }
                catch (Exception)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
            }
        }

        public void EditarNombreUsuarioPorIdPerfil(int idPerfil, string nuevoNombreUsuario)
        {
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            if (validacionPerfil.ValidarNombreUsuario(nuevoNombreUsuario))
            {
                try
                {
                    ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                    int resultadoEdicionNombreUsuario = proxy.EditarNombreUsuarioPorIdPerfil(idPerfil, nuevoNombreUsuario);

                    if (resultadoEdicionNombreUsuario == 1)
                    {
                        MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeCambiosGuardados);
                        JugadorSingleton.NombreUsuario = nuevoNombreUsuario;
                    }
                    else
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
                    }
                }
                catch (Exception)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                }
            }
            else
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
            }
        }

        private void CancelarPersonalizacion(object sender, RoutedEventArgs e)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }
    }
}