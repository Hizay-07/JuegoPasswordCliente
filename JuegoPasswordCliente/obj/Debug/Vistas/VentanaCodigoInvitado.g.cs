﻿#pragma checksum "..\..\..\Vistas\VentanaCodigoInvitado.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "0431631CDEFFEAA5C3B9CD514FB36ADE1D1EFC7474245A3EBEF79442EA44E33E"
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
    /// VentanaCodigoInvitado
    /// </summary>
    public partial class VentanaCodigoInvitado : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_UnirseALaPartida;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Lbl_CodigoDeSala;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Txb_CodigoPartida;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image img_logotipo;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_Cancelar;
        
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
            System.Uri resourceLocater = new System.Uri("/Cliente;component/vistas/ventanacodigoinvitado.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
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
            this.Btn_UnirseALaPartida = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
            this.Btn_UnirseALaPartida.Click += new System.Windows.RoutedEventHandler(this.UnirseAPartida);
            
            #line default
            #line hidden
            return;
            case 2:
            this.Lbl_CodigoDeSala = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.Txb_CodigoPartida = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.img_logotipo = ((System.Windows.Controls.Image)(target));
            return;
            case 5:
            this.Btn_Cancelar = ((System.Windows.Controls.Button)(target));
            
            #line 72 "..\..\..\Vistas\VentanaCodigoInvitado.xaml"
            this.Btn_Cancelar.Click += new System.Windows.RoutedEventHandler(this.RegresarInicio);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

