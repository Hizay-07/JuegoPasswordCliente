﻿using System;
using System.Collections.Generic;
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
    /// Lógica de interacción para Registro.xaml
    /// </summary>
    public partial class Registro : Page
    {
        public Registro()
        {
            InitializeComponent();
        }

        private void AceptarRegistro(object sender, RoutedEventArgs e)
        {

        }

        private void CancelarRegistro(object sender, RoutedEventArgs e)
        {
            Inicio inicioPage = new Inicio();
            this.NavigationService.Navigate(inicioPage);
        }

        
    }
}
