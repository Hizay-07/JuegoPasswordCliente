using Cliente.ServidorPassword;
using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Cliente.Auxiliares
{
    public class PartidaAuxiliar
    {
        private static readonly ILog _bitacora = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public List<PreguntaContrato> Preguntas { get; set; }
        public List<RespuestaContrato> Respuestas { get; set; }

        public void RecuperarPreguntas(int cantidadPreguntas) 
        {
            try 
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();
                List<PreguntaContrato> preguntasObtenidas = servicioGestionPartida.ObtenerPreguntas().ToList();
                if (preguntasObtenidas.Count() > 0) 
                {
                    SeleccionarPreguntasAlAzar(preguntasObtenidas,cantidadPreguntas);
                }                
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado)
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }

        private void SeleccionarPreguntasAlAzar(List<PreguntaContrato> preguntasObtenidas,int cantidadPreguntas) 
        {
            List<PreguntaContrato> preguntasSeleccionadas = new List<PreguntaContrato>();
            Random aleatorio = new Random();            
            HashSet<int> indicesSeleccionados = new HashSet<int>();

            while (preguntasSeleccionadas.Count < cantidadPreguntas)
            {
                int indiceAleatorio = aleatorio.Next(preguntasObtenidas.Count); 
                if (!indicesSeleccionados.Contains(indiceAleatorio))
                {
                    indicesSeleccionados.Add(indiceAleatorio);
                    preguntasSeleccionadas.Add(preguntasObtenidas[indiceAleatorio]);
                }
            }            
            Preguntas = preguntasSeleccionadas;
            List<int> idPreguntas=ObtenerIdPreguntas();
            SeleccionarRespuestas(idPreguntas);
        }

        private List<int> ObtenerIdPreguntas() 
        {
            List<int> idPreguntas = new List<int>();
            foreach (var pregunta in Preguntas) 
            {
                idPreguntas.Add(pregunta.IdPregunta);
            }
            return idPreguntas;
        }

        private void SeleccionarRespuestas(List<int> idPreguntas) 
        {
            try
            {
                ServicioGestionPartidaClient servicioGestionPartida = new ServicioGestionPartidaClient();                
                Respuestas=servicioGestionPartida.RecuperarRespuestasPorIdPreguntas(idPreguntas.ToArray()).ToList();                       
            }
            catch (EndpointNotFoundException excepcionPuntoFinalNoEncontrado) 
            {
                MensajeVentana.MostrarVentanaEmergenteError(Properties.Resources.MensajeErrorConexion);
                _bitacora.Warn(excepcionPuntoFinalNoEncontrado);
            }
        }
    }
}
