﻿#pragma checksum "..\..\..\Vistas\VentanaAgregarAmigo.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "D2930357DEF1354DC80D947CF36305038C69E0A614822E01CD0C0CE408E6CC5F"
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
    /// VentanaAgregarAmigo
    /// </summary>
    public partial class VentanaAgregarAmigo : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Lbl_AgregarAmigo;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label Lbl_BuscarCorreo;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Txb_Correo;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_Agregaramigo;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_Regresar;
        
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
            System.Uri resourceLocater = new System.Uri("/Cliente;component/vistas/ventanaagregaramigo.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
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
            this.Lbl_AgregarAmigo = ((System.Windows.Controls.Label)(target));
            return;
            case 2:
            this.Lbl_BuscarCorreo = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.Txb_Correo = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.Btn_Agregaramigo = ((System.Windows.Controls.Button)(target));
            
            #line 32 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
            this.Btn_Agregaramigo.Click += new System.Windows.RoutedEventHandler(this.AgregarAmigo);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Btn_Regresar = ((System.Windows.Controls.Button)(target));
            
            #line 47 "..\..\..\Vistas\VentanaAgregarAmigo.xaml"
            this.Btn_Regresar.Click += new System.Windows.RoutedEventHandler(this.Regresar);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

