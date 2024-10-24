﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Cliente.Auxiliares
{
    public static class MensajeVentana
    {
        public static void MostrarVentanaEmergenteError(string errorMessage)
        {
            MessageBox.Show(errorMessage, Properties.Resources.VentanaEmergenteError, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        public static void MostrarVentanaEmergenteAdvertencia(string warningMessage)
        {
            MessageBox.Show(warningMessage, Properties.Resources.VentanaEmergenteAdvertencia, MessageBoxButton.OK, MessageBoxImage.Warning);
        }

        public static void MostrarVentanaEmergenteExitosa(string successMessage)
        {
            MessageBox.Show(successMessage, Properties.Resources.VentanaEmergenteExito, MessageBoxButton.OK, MessageBoxImage.Information);
        }

        public static bool MostrarVentanaEmergenteConfirmacion(string confirmMessage)
        {
            MessageBoxResult result = MessageBox.Show(confirmMessage, Properties.Resources.VentanaEmergenteConfirmacion, MessageBoxButton.OKCancel, MessageBoxImage.Question);
            return result == MessageBoxResult.OK;
        }
    }
}
