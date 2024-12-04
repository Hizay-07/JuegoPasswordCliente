using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace Cliente
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            string savedLanguage = Cliente.Properties.Settings.Default.Lenguaje;

            if (string.IsNullOrEmpty(savedLanguage))
            {
                savedLanguage = CultureInfo.CurrentCulture.Name.StartsWith("es") ? "es-MX" : "en-US";
                Cliente.Properties.Settings.Default.Lenguaje = savedLanguage;
                Cliente.Properties.Settings.Default.Save();
            }

            CambioIdioma(savedLanguage);

        }

        public static void CambioIdioma(string cultureCode)
        {
            CultureInfo culture = new CultureInfo(cultureCode);
            Thread.CurrentThread.CurrentCulture = culture;
            Thread.CurrentThread.CurrentUICulture = culture;
            Cliente.Properties.Settings.Default.Reset();
            Cliente.Properties.Settings.Default.Lenguaje = cultureCode;
            Cliente.Properties.Settings.Default.Save();
        }
    }

    
}
