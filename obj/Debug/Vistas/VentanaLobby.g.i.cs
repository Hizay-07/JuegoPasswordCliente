﻿#pragma checksum "..\..\..\Vistas\VentanaLobby.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "7F6CD2D65D2FA6F242B32F318CA528914EDAC8849DEB1B19C8A7FBA88B9C9B61"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using Cliente.Properties;
using Cliente.Vistas;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Cliente.Vistas {
    
    
    /// <summary>
    /// VentanaLobby
    /// </summary>
    public partial class VentanaLobby : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 20 "..\..\..\Vistas\VentanaLobby.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image logo;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\Vistas\VentanaLobby.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock Txb_Conversacion;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\Vistas\VentanaLobby.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Txb_Mensaje;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\Vistas\VentanaLobby.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Enviar;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Cliente;component/vistas/ventanalobby.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Vistas\VentanaLobby.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.logo = ((System.Windows.Controls.Image)(target));
            return;
            case 2:
            this.Txb_Conversacion = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.Txb_Mensaje = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.Enviar = ((System.Windows.Controls.Button)(target));
            
            #line 63 "..\..\..\Vistas\VentanaLobby.xaml"
            this.Enviar.Click += new System.Windows.RoutedEventHandler(this.EnviarMensaje);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

