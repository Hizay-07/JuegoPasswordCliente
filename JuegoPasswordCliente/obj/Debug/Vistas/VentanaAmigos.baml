   M S B A M L   `   `   `  ����B  >Cliente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Cliente.PropertiesCliente.Properties  5      "    Cliente.Vistas.VentanaAmigos   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .p clr-namespace:Cliente.Properties     5        N� Title$  VentanaAmigos��5	      .��5      � .+�5   
   �� ��5      �� 5       �� ImageSource$  /Imagenes/Fondos/fondo.png��6    j� Stretch$ UniformToFill=�6F   ._�5      � .+�5      �� $!��/Imagenes/Iconos/amigos.jpg��6   $
��Left=�5      $	��Top=�5      $	��170��5      $��1070,20,0,0q�5      $	��170��6-   �� 5      -   5         ��Name$ 
Lbl_Amigos��5      "   Cliente.Properties.Resources   
Lbl_Amigos#��Z 6,   $��55(�5      $
��Bold"�5      
�������$��Center=�5      $	��Top=�5      $��0,20,0,0q�5      �� 5       -   5         ��Name$ Ltb_ListaAmigos��5       $��Center=�5!      $��Center=�5"      $	��811��5#      ���#3b92c4
������ $
��Auto=�5&      $	��408��6J   ��5'      �� 5(      .R�5)      ��  �� Orientation$ 
Horizontal=�6)   $��	10,5,10,5q�6B   .+�5*   "   �� $��Txbl_Estado��6,   $	��200��6?   $��50��6K   $��5q�6W   $��25(�6b   $��Center=�6p    �� TextAlignment$
 Left=�6�   ��5+   &   �� 5,   *    �� 
TargetType" ��60   	 �� Triggers	 5-   .   �� 5.   2   
 �� Binding
 6>   �� *Estado+ �� Value True6Y   .a�5/   6   ��  �� Property � ��   Estado_Conectado �� Value# Z 6M   50   3   �� 51   2   
 6>   �� *Estado+	 False6Y   .a�52   6   ��  � ��   Estado_Desconectado# Z 6M   53   3   55   +   57   #   �� 59   "   $��25(�5:   (   
�������$��Center=�5<   (   $��	20,0,20,0q�5=   (   ��59   ,   �� *NombreUsuario+5=   (   �� 5?   "    ��Name$ Btn_VerPerfil��6)   -   5           Btn_VerPerfil#��Z 5?   @   $	��120��5@   )   $��40��5A   )   ���#00BCD4
�������$
��Bold"�5D   )   $��20(�5E   )   $��Right=�5F   )   
 � Tag 5H   )   �� *	IdJugador+��5I   &   �� 5J   *    �� 
TargetType" ��6:   .R�5K   .   �� #��z��65    �� CornerRadius$ 10��5L   5   $��0q�5M   5   ._�5N   2   �� $��Center=�6C   $��Center=�6`   5O   /   5P   +   5R   #   5S      5T      5V      �� 5X      -   5        $ Btn_Aceptar��5X         Btn_AceptarGlobal#��Z 6.   $	��150��5Y      $��65��5Z      ���#36D25B
�������$
��Bold"�5]      $��25(�5^      $��Center=�5_      $	��Top=�5`      $��	0,608,0,0q�5a      ��5c      �� 5d      " ��6*   .R�5e      �� #��z��6%   $ 10��5f   %   $��0q�5g   %   ._�5h   "   �� $��Center=�63   $��Center=�6P   5i      5j      5l      5m      5n      5o      5p      