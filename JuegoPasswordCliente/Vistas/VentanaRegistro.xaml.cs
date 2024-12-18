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
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;

namespace Cliente.Vistas
{    
    public partial class VentanaRegistro : Page
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        
        public VentanaRegistro()
        {
            InitializeComponent();
        }

        private void AceptarRegistro(object remitente, RoutedEventArgs argumento)
        {
            if (ValidarRegistro())
            {
                Acceso acceso = ObtenerAcceso();                
                Jugador jugador = ObtenerJugador();
                string contraseniaEncriptada = EncriptadorContrasenia.EncriptarContrasenia(acceso.contrasenia);
                acceso.contrasenia = contraseniaEncriptada;
                ValidarPresenciaCuenta(jugador,acceso);               
            }            
        }

        private void ValidarPresenciaCuenta(Jugador jugador,Acceso acceso) 
        {
            try
            {
                ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                int validacionCuenta = servicioGestionAcceso.ValidarPresenciaCuenta(jugador.nombreUsuario, acceso.correo);
                if (validacionCuenta == ValoresConstantes.ConsultaSinRegistro)
                {
                    RegistrarNuevoJugador(jugador,acceso);
                }
                else if (validacionCuenta > ValoresConstantes.ConsultaSinRegistro)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
                }
                else if(validacionCuenta==ValoresConstantes.ErrorConexionBaseDatos)
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

        private void RegistrarNuevoJugador(Jugador jugador,Acceso acceso) 
        {
            try
            {
                ServicioGestionAccesoClient servicioGestionAcceso = new ServicioGestionAccesoClient();
                int resultadoRegistro = servicioGestionAcceso.RegistrarNuevoJugador(acceso, jugador);
                if (resultadoRegistro == ValoresConstantes.OperacionExitosa)
                {
                    MensajeVentana.MostrarVentanaEmergenteExitosa(Properties.Resources.MensajeRegistroExitoso);
                    VentanaInicio inicioPage = new VentanaInicio();
                    this.NavigationService.Navigate(inicioPage);
                }
                else if (resultadoRegistro == ValoresConstantes.CuentaRegistrada)
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeUsuarioNoDisponible);
                }
                else if(resultadoRegistro==ValoresConstantes.ErrorConexionBaseDatos)
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

        private Jugador ObtenerJugador()
        {
            Jugador jugador = new Jugador
            {
                nombreUsuario = Txb_NombreUsuario.Text,
                rutaImagen = ValoresConstantes.RutaImagenJugadorPorDefecto,
                descripcion = ValoresConstantes.DescripcionPorDefecto,
            };
            return jugador;
        }

        private Acceso ObtenerAcceso()
        {
            Acceso acceso = new Acceso
            {
                correo = Txb_Correo.Text,
                contrasenia = Txb_Contrasenia.Text,
            };            
            return acceso;
        }
        
      
        private bool ValidarRegistro()
        {
            ReiniciarCampos();
            bool validacion = false;
            Jugador jugador = ObtenerJugador();
            Acceso acceso = ObtenerAcceso();              
            ValidacionAcceso validacionAcceso = new ValidacionAcceso();
            ValidacionJugador validacionJugador = new ValidacionJugador();            
            FluentValidation.Results.ValidationResult resultadoAcceso = validacionAcceso.Validate(acceso);
            FluentValidation.Results.ValidationResult resultadoJugador = validacionJugador.Validate(jugador);            
            if (resultadoAcceso.IsValid && resultadoJugador.IsValid)
            {
                validacion = true;
            }
            else
            {
                MarcarErrores();
                if (string.IsNullOrWhiteSpace(acceso.correo) || string.IsNullOrWhiteSpace(acceso.contrasenia) ||
               string.IsNullOrWhiteSpace(jugador.nombreUsuario))
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposRequeridos);
                }
                else 
                {
                    MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeCamposIncorrectos);
                }                
            }
            return validacion;
        }

        private void CancelarRegistro(object remitente, RoutedEventArgs argumento)
        {
            VentanaInicio paginaInicio = new VentanaInicio();
            this.NavigationService.Navigate(paginaInicio);
        }

        private void MarcarErrores() 
        {            
            if (!ValidacionAcceso.ValidarCorreo(Txb_Correo.Text)) 
            {
                Txb_Correo.BorderBrush = Brushes.Red;
                Txb_Correo.BorderThickness = new Thickness(2);
            }
            if (!ValidacionAcceso.ValidarContrasenia(Txb_Contrasenia.Text)) 
            {
                Txb_Contrasenia.BorderBrush = Brushes.Red;
                Txb_Contrasenia.BorderThickness = new Thickness(2);
            }            
            if (!ValidacionJugador.ValidarNombreUsuario(Txb_NombreUsuario.Text)) 
            {
                Txb_NombreUsuario.BorderBrush = Brushes.Red;
                Txb_NombreUsuario.BorderThickness = new Thickness(2);
            }
        }

        private void ReiniciarCampos() 
        {
            Txb_Correo.BorderBrush = Brushes.Transparent;
            Txb_Correo.BorderThickness = new Thickness(1);
            Txb_Contrasenia.BorderBrush = Brushes.Transparent;
            Txb_Contrasenia.BorderThickness = new Thickness(1);            
            Txb_NombreUsuario.BorderBrush = Brushes.Transparent;
            Txb_NombreUsuario.BorderThickness = new Thickness(1);
        }
    }
}
