﻿using Cliente.Auxiliares;
using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
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
    /// Lógica de interacción para VentanaCambioContrasenia.xaml
    /// </summary>
    public partial class VentanaCambioContrasenia : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

        public VentanaCambioContrasenia()
        {
            InitializeComponent();
        }

        private void Regresar(object remitente, RoutedEventArgs argumento)
        {
            VentanaPersonalizarPerfil paginaPersonalizarPerfil=new VentanaPersonalizarPerfil();
            this.NavigationService.Navigate(paginaPersonalizarPerfil);
        }

        private void AceptarCambioContrasena(object remitente, RoutedEventArgs argumento)
        {
            ReiniciarCampos();
            if (ValidarCampos())
            {
                try
                {
                    ServidorPassword.ServicioGestionAccesoClient proxyServicioAcceso = new ServidorPassword.ServicioGestionAccesoClient();
                    Acceso acceso = ObtenerAcceso();
                    int validacionContrasenia = proxyServicioAcceso.ValidarInicioDeSesion(acceso);
                    if (validacionContrasenia == 1)
                    {
                        ServidorPassword.ServicioPersonalizacionPerfilClient proxyPersonalizacionPerfil = new ServidorPassword.ServicioPersonalizacionPerfilClient();
                        int resultadoActualizacion = proxyPersonalizacionPerfil.EditarContraseniaPorIdAcceso(JugadorSingleton.IdAcceso, Txb_NuevaContrasenia.Text);
                        if (resultadoActualizacion >=0)
                        {
                            MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.VentanaEmergenteExito);
                            JugadorSingleton.Contrasenia = EncriptadorContrasenia.EncriptarContrasenia(Txb_NuevaContrasenia.Text);
                            VentanaPersonalizarPerfil paginaPersonalizarPerfil = new VentanaPersonalizarPerfil();
                            this.NavigationService.Navigate(paginaPersonalizarPerfil);
                        }
                        else 
                        {
                            MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorBaseDeDatos);
                        }
                    }
                    else
                    {
                        MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
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
                MostrarErrores();
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeInformacionInvalida);
            }
        }

        private Acceso ObtenerAcceso() 
        {
            Acceso acceso = new Acceso
            {
                correo=JugadorSingleton.Correo,
                contrasenia=Txb_ContraseniaActual.Text,
            };
            return acceso;
        }

        private bool ValidarCampos() 
        {            
            bool validacionContraseniaActual=ValidacionAcceso.ValidarContrasenia(Txb_ContraseniaActual.Text);
            bool validacionContraseniaNueva=ValidacionAcceso.ValidarContrasenia(Txb_NuevaContrasenia.Text);
            return validacionContraseniaActual && validacionContraseniaNueva;
        }

        private void MostrarErrores() 
        {            
            if (!ValidacionAcceso.ValidarContrasenia(Txb_ContraseniaActual.Text)) 
            {
                Txb_ContraseniaActual.BorderBrush = Brushes.Red;
                Txb_ContraseniaActual.BorderThickness = new Thickness(2);
            }
            if (!ValidacionAcceso.ValidarContrasenia(Txb_NuevaContrasenia.Text)) 
            {
                Txb_NuevaContrasenia.BorderBrush = Brushes.Red;
                Txb_NuevaContrasenia.BorderThickness = new Thickness(2);
            }
        }

        private void ReiniciarCampos() 
        {
            Txb_ContraseniaActual.BorderBrush = Brushes.Transparent;
            Txb_ContraseniaActual.BorderThickness = new Thickness(1);
            Txb_NuevaContrasenia.BorderBrush = Brushes.Transparent;
            Txb_NuevaContrasenia.BorderThickness = new Thickness(1);
        }
        
    }
}
