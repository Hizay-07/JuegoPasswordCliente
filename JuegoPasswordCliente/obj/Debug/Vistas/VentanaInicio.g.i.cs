﻿#pragma checksum "..\..\..\Vistas\VentanaInicio.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "E9EBB7488A418F400A8C1800CDD7F062C6A4CCAD8186532A0A8B79DB70FF69D0"
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
    /// VentanaInicio
    /// </summary>
    public partial class VentanaInicio : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\Vistas\VentanaInicio.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_InicioDeSesion;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\Vistas\VentanaInicio.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image Img_Logotipo;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\..\Vistas\VentanaInicio.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_Registrarme;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\Vistas\VentanaInicio.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Btn_IniciarInvitado;
        
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
            System.Uri resourceLocater = new System.Uri("/Cliente;component/vistas/ventanainicio.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Vistas\VentanaInicio.xaml"
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
            this.Btn_InicioDeSesion = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\Vistas\VentanaInicio.xaml"
            this.Btn_InicioDeSesion.Click += new System.Windows.RoutedEventHandler(this.IniciarSesion);
            
            #line default
            #line hidden
            return;
            case 2:
            this.Img_Logotipo = ((System.Windows.Controls.Image)(target));
            return;
            case 3:
            this.Btn_Registrarme = ((System.Windows.Controls.Button)(target));
            
            #line 56 "..\..\..\Vistas\VentanaInicio.xaml"
            this.Btn_Registrarme.Click += new System.Windows.RoutedEventHandler(this.RegistrarUsuario);
            
            #line default
            #line hidden
            return;
            case 4:
            this.Btn_IniciarInvitado = ((System.Windows.Controls.Button)(target));
            
            #line 76 "..\..\..\Vistas\VentanaInicio.xaml"
            this.Btn_IniciarInvitado.Click += new System.Windows.RoutedEventHandler(this.UnirseComoInvitado);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

