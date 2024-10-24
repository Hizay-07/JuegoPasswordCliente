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
    /// <summary>
    /// Lógica de interacción para VentanaPersonalizarPerfil.xaml
    /// </summary>
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
            int idPerfil=JugadorSingleton.IdPerfil;
            int idAcceso=JugadorSingleton.IdAcceso;
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
                ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                int resultadoEdicionCorreo = proxy.EditarCorreoPorIdAcceso(idAcceso, nuevoCorreo);
                if (resultadoEdicionCorreo == 1)
                {
                    Console.WriteLine("Correo editado");
                    JugadorSingleton.Correo = nuevoCorreo;
                }
            }
            else 
            {
                Console.WriteLine("Correo invalido");
            }            
        }

        public void EditarDescripcionPorIdPerfil(int idPerfil, string nuevaDescripcion) 
        {
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            if (validacionPerfil.ValidarDescripcion(nuevaDescripcion))
            {
                ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                int resultadoEdicionDescripcion = proxy.EditarDescripcionPorIdPerfil(idPerfil, nuevaDescripcion);
                if (resultadoEdicionDescripcion == 1)
                {
                    Console.WriteLine("Descripcion editada");
                    JugadorSingleton.Descripcion = nuevaDescripcion;
                }
            }
            else 
            {
                Console.WriteLine("Descripcion invalida");
            }            
        }

        public void EditarNombreUsuarioPorIdPerfil(int idPerfil, string nuevoNombreUsuario) 
        {
            ValidacionPerfil validacionPerfil = new ValidacionPerfil();
            if (validacionPerfil.ValidarNombreUsuario(nuevoNombreUsuario))
            {
                ServidorPassword.ServicioPersonalizacionPerfilClient proxy = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                int resultadoEdicionNombreUsuario = proxy.EditarNombreUsuarioPorIdPerfil(idPerfil, nuevoNombreUsuario);
                if (resultadoEdicionNombreUsuario == 1)
                {
                    Console.WriteLine("Nombre de usuario editado");
                }
            }
            else 
            {
                Console.WriteLine("Nombre de usuario invalido");
            }            
        }

        private void CancelarPersonalizacion(object sender, RoutedEventArgs e)
        {
            VentanaMenuPrincipal paginaMenuPrincipal = new VentanaMenuPrincipal();
            this.NavigationService.Navigate(paginaMenuPrincipal);
        }

    }
}
