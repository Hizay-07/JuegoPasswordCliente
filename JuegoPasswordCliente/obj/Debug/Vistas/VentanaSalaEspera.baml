   M S B A M L   `   `   `  ����B  >Cliente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Cliente.VistasCliente.Vistas  5      7 clr-namespace:Cliente.PropertiesCliente.Properties  5      &     Cliente.Vistas.VentanaSalaEspera   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Cliente.Vistas     5      .p clr-namespace:Cliente.Properties     5      .��5      ]� .+�5   
   � .+�5      �� ��5      �� 5        �� ImageSource$   /Imagenes/Fondos/fondo.png��6!    j� Stretch$ UniformToFill=�6J   ._�5      �� -   5         ��Name$ 	Btn_Salir��5      "   Cliente.Properties.Resources   Btn_SalirGlobal#��Z 6,   $��111,0,1014,111q�6]   $��65��6u   $��Bottom=�6�   $��25(�6�   
���  ��
�������$
��Bold"�6�    J� RenderTransformOrigin$ 0.362,0.457&�6�   5      � 5      .+�5      �� $
��Auto=�6   ���	#66FFFFFF$��640,91,160,185q�5      .��5      �� -   5        $��Txbl_Conversacion��5       $
��Wrap=�69   $��20(�6M   
�������6[   5      �� 5      $��Bottom=�6   
���   �$��84��6K   $��640,0,142,96q�6W    �� Orientation$ 
Horizontal=�6m   .+�5      �� -   5         ��Name$ Txb_Mensaje��5      $��40��63   ���#2F2F2F
�������
�������$
��Bold"�5!      $��1q�5"      $��5q�5#      $��20(�5$       �� 	MaxLength$	 100��5%      $	��328��5&      .��6'    J� Effect 5'      3  -System.Windows.Media.Effects.DropShadowEffect  5(      	   Color$	 Black��6/   
   ShadowDepth$
 3Q�6=      Opacity$	 0.5Q�6M      
BlurRadius$ 10Q�6[   .��5)   *   5*      �� 5,      -   5        $ 
Btn_Enviar��5,         
Btn_Enviar#��Z 61   $	��116��5-      $��40��6%   ���#33c1ff
�������$
��Bold"�50      $��25(�51      $��10,0,0,0q�52      $��Center=�53      $ 0.766,0.547&�54   /   ��55      �� 56       �� 
TargetType" ��6.   .R�57   "   �� #��z��6)    �� CornerRadius$ 10��58   %   $��0q�59   %   ._�5:   &   �� $��Center=�67   $��Center=�6T   5;   #   5<       5>        5?      $	 Black��6/   $
 3Q�6=   $	 0.5Q�6M   $ 10Q�6[   5A      5B      �� 5C      $ 
Horizontal=�6   $��640,46,160,629q�66   .+�5E      �� -   5         ��Name$ Txbl_CodigoDeSala��5F      $
��Bold"�5G      $
��Wrap=�5H         Lbl_CodigoDeSala#��Z 5I      $	��238��5J      $��25(�5K      
���   �
�������$��46��5N      $
��Left=�5O      �� 5P      $
��auto��6    �� 5Q      -   5        $��Txbl_CodigoPartida��5R      $
��Bold"�5S      $
��Wrap=�5T      $	��242��5U      $��25(�5V      ���#33c1ff
�������$��46��5Y      5Z      �� 5\      -   5        $��Stpl_Amigos��5\      $ Vertical=�60   $��100,200,815,200q�6G   .+�5]      �� $	��361��6#   .��5^      �� -   5        $��
Ltv_Amigos��5^   "   $	��317��5_   "   $	��348��5`   "   ���#33c1ff$��20(�5b   "   ��5c      �� 5d   "   .R�5e   &   �� $ 
Horizontal=�61   $��Stretch=�5f   1   .+�5h   *   �� $��Txbl_NombreUsuario��64   
���   �$	��200��5k   4   $��Center=�5l   4   $��20(�5m   4   ��5i   4   �� *NombreUsuario+5m   4   �� 5o   *   $ 
Btn_Enviar��61   -	   5        #��Z 5p   1   $	��120��5r   1   $��40��5s   1   
 � Tag 5t   1   �� *	IdJugador+��5v   .   �� 5w   2   " ��6B   .R�5x   6   �� #��z��6=   $ 10��5y   9   $��0q�5z   9   ._�5{   :   �� $��Center=�6K   $��Center=�5|   K   5}   7   5~   3   ��5�   .   �� 5�   2    �� Color$ White��6B    5�   .     5�   2   $	 Black��6C   $
 3Q�5�   C   $	 0.5Q�5�   C   $ 10Q�5�   C   5�   +   5�   '   5�   #   5�      5�      5�      �� 5�      $��100,46,678,548q�6   .+�5�      �� $
��Auto=�6#   $��Disabled=�6H   $	��125��6o   .��5�      �� $ 
Horizontal=�6%   .+�5�      �� $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -
   5        $��Img_Anfitrion��5�   (   $��82��6=   $��58��6H   �� 5�   "   -   5        $��Txbl_NombreAnfitrion��5�   ,   $��Center=�6H   $
��Bold"�6e   $��14(�6w   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador2��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador2��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador3��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador3��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador4��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador4��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador5��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador5��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador6��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador6��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador7��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador7��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador8��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador8��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador9��5�   (   $��82��6<   $��58��6G   6S   �� 5�   "   -   5        $��Txbl_NombreJugador9��5�   ,   $��Center=�6G   $
��Bold"�6d   $��14(�6v   
�������$��0,5,0,0q�6�   5�      �� 5�      $ Vertical=�6)   $��10q�6@   $	��134��6L   .+�5�   "   �� -   5        $��Img_Jugador10��5�   (   $��82��6=   $��58��6H   6T   �� 5�   "   -   5        $��Txbl_NombreJugador10��5�   ,   $��Center=�6H   $
��Bold"�6e   $��14(�6w   
�������$��0,5,0,0q�6�   5�      5�      5�      5�      �� 5�      $��436,540,678,96q�6   .+�5�      �� -   5        $��	Btn_Jugar��5�      $��Jugar��6.   $��87��6>   $��25(�6J   ���#33c1ff
�������$
��Bold"�6�   $y�Hidden=�6�   6�   5�      5�      5�      5�      5�      