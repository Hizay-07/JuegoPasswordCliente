   M S B A M L   `   `   `  ����B  >Cliente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Cliente.PropertiesCliente.Properties  5      +    %Cliente.Vistas.VentanaImagenDeJugador   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .p clr-namespace:Cliente.Properties     5      .��5
      ]� .+�5   
   ��   �� CornerRadius$  10��6   $��2q�6#   
���OO/���5      �� 5       �� ImageSource$  /Imagenes/Fondos/fondo.png��6    j� Stretch$ UniformToFill=�6F   ._�5      � $��Center=�6   $��Center=�60   $	��600��6K   $	��400��6W   .+�5      �� -   5         ��Name$ Lbl_SelecionarImagen��5      "   Cliente.Properties.Resources   Lbl_SeleccionarImagen#��Z 66   ���#6c6c6c
�������$
��Bold"�5      $��30(�6*   $��Center=�68   $	��Top=�6U   $��10q�6m   $	��472��6z   A� 5       A� Rows$ 2��6    A� Columns$ 4��6'   $��Center=�63   $��Center=�6P   $	��580��6k   $	��280��6w    � 	Resources 5       �� 
TargetType	 �� Property
 �� Value3  -System.Windows.Media.Effects.DropShadowEffect   Color   ShadowDepth   
BlurRadius   Opacity �� Triggers P� Property P� Value��%4  '��       �� 5      " ��6    .�5      �� 	 � ��$	
 120��66   �� 5      	 � ��$	
 120��67   �� 5      	 � ��$
 10q�67   �� 5      	 �@�Cursor$

 Hand��67   �� 5      	 � ��$
 UniformToFill=�68   �� 5      	 �@J�Effect
 5   "     5   &   $ Black��67   $ 0Q�6E   $ 5Q�6U   $ 0Q�6d   5!       5"      P� 5#   "    �@�Tag$ Selected��69   . �5$   &   �� 	 �@J�Effect
 5%   *     5&   .   $ #00d2ff��6?   $ 0Q�6O   $ 10Q�6_   $ 1Q�6o   5(   '   5)   #   5+      5,      .+�5-      �� -   5        $"��/Imagenes/Fondos/perfil1.png��5-      6B   �� 5.      -   5        $"��/Imagenes/Fondos/perfil2.png��5.      6B   �� 5/      -   5        $"��/Imagenes/Fondos/perfil3.png��5/      6B   �� 50      -   5        $"��/Imagenes/Fondos/perfil4.png��50      6B   �� 51      -   5        $"��/Imagenes/Fondos/perfil5.png��51      6B   �� 52      -   5        $"��/Imagenes/Fondos/perfil6.png��52      6B   �� 53      -   5        $"��/Imagenes/Fondos/perfil7.png��53      6B   �� 54      -	   5        $"��/Imagenes/Fondos/perfil8.png��54      6B   55      �� 57       �� Orientation$ 
Horizontal=�6   $��Center=�66   $��Bottom=�6S   $��0,0,0,20q�6n   .+�58      �� -
   5        $��Btn_Aceptar��58         Btn_AceptarGlobal#��Z 60   $	��120��6c   $��50��6o   ���#36D25B
�������$
��Bold"�59      $��20(�6/   $
��10,0q�6=   ��5:      �� 5;       �� 
TargetType" ��6.   .R�5<   "   �� #��z��6)   $  5��6S   $��0q�6d   ._�5=   &   �� $��Center=�67   $��Center=�6T   5>   #   5?       J� Effect 5A        5B      $ Black��6/   $ 3Q�6=   $	 0.5Q�6M   $ 10Q�6[   5D      �� 5F      -   5        $��Btn_Cancelar��5F         Btn_CancelarGlobal#��Z 61   $	��120��6e   $��50��6q   
���  ��
�������$
��Bold"�5G      $��20(�6/   $
��10,0q�6=   ��5H      �� 5I      " ��6.   .R�5J   "   �� #��z��6)   $  5��6S   $��0q�6d   ._�5K   &   �� $��Center=�67   $��Center=�6T   5L   #   5M       5O        5P      $ Black��6/   $ 3Q�6=   $	 0.5Q�6M   $ 10Q�6[   5R      5S      5T      5U      5V      5W      