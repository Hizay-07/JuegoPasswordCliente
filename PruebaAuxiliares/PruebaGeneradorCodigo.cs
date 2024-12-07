using Cliente.Auxiliares;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaAuxiliares
{
    [TestClass]
    public class PruebaGeneradorCodigo
    {
        [TestMethod]
        public void PruebaGenerarCodigoPartidaExitosa() 
        {            
            int resultadoEsperado = 8;
            string codigoObtenido= GeneradorCodigo.GenerarCodigoPartida();
            int resultadoObtenido = codigoObtenido.Length;
            Assert.AreEqual(resultadoEsperado,resultadoObtenido);
        }

        [TestMethod]
        public void PruebaGenerarCodigoPartidaFallida() 
        {            
            int resultadoEsperado = 9;
            string codigoObtenido = GeneradorCodigo.GenerarCodigoPartida();
            int resultadoObtenido = codigoObtenido.Length;
            Assert.AreNotEqual(resultadoEsperado, resultadoObtenido);
        }

    }
}
