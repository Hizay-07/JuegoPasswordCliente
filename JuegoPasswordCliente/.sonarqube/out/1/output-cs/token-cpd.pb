�
NC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 "
)

" #
]

# $
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[## 
assembly## 	
:##	 

	ThemeInfo## 
(## &
ResourceDictionaryLocation$$ 
.$$ 
None$$ #
,$$# $&
ResourceDictionaryLocation'' 
.'' 
SourceAssembly'' -
)** 
]** 
[44 
assembly44 	
:44	 

AssemblyVersion44 
(44 
$str44 $
)44$ %
]44% &
[55 
assembly55 	
:55	 

AssemblyFileVersion55 
(55 
$str55 (
)55( )
]55) *�
FC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\MainWindow.xaml.cs
	namespace 	
Cliente
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 

MainWindow 
( 
) 
{ 	
InitializeComponent   
(    
)    !
;  ! "
this!! 
.!! 
Closed!! 
+=!! 
MainWindow_Closed!! ,
;!!, -
}"" 	
private$$ 
void$$ 
MainWindow_Closed$$ &
($$& '
object$$' -
	remitente$$. 7
,$$7 8
	EventArgs$$9 B
	argumento$$C L
)$$L M
{%% 	
if&& 
(&& 
JugadorSingleton&&  
.&&  !
NombreUsuario&&! .
!=&&/ 1
null&&2 6
)&&6 7
{'' 
try(( 
{)) #
ServicioJugadoresClient** +
servicioJugadores**, =
=**> ?
new**@ C#
ServicioJugadoresClient**D [
(**[ \
)**\ ]
;**] ^
servicioJugadores++ %
.++% &#
DesconectarJugadorJuego++& =
(++= >
JugadorSingleton++> N
.++N O
NombreUsuario++O \
)++\ ]
;++] ^
},, 
catch-- 
(-- %
EndpointNotFoundException-- 0+
excepcionPuntoFinalNoEncontrado--1 P
)--P Q
{.. 
MensajeVentana// "
.//" #(
MostrarVentanaEmergenteError//# ?
(//? @

Properties//@ J
.//J K
	Resources//K T
.//T U 
MensajeErrorConexion//U i
)//i j
;//j k
	_bitacora00 
.00 
Warn00 "
(00" #+
excepcionPuntoFinalNoEncontrado00# B
)00B C
;00C D
}11 
}22 
}33 	
}66 
}77 �
?C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\App.xaml.cs
	namespace 	
Cliente
 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{ 	
base 
. 
	OnStartup 
( 
e 
) 
; 
string 
savedLanguage  
=! "
Cliente# *
.* +

Properties+ 5
.5 6
Settings6 >
.> ?
Default? F
.F G
LenguajeG O
;O P
if 
( 
string 
. 
IsNullOrEmpty $
($ %
savedLanguage% 2
)2 3
)3 4
{ 
savedLanguage 
= 
CultureInfo  +
.+ ,
CurrentCulture, :
.: ;
Name; ?
.? @

StartsWith@ J
(J K
$strK O
)O P
?Q R
$strS Z
:[ \
$str] d
;d e
Cliente 
. 

Properties "
." #
Settings# +
.+ ,
Default, 3
.3 4
Lenguaje4 <
== >
savedLanguage? L
;L M
Cliente 
. 

Properties "
." #
Settings# +
.+ ,
Default, 3
.3 4
Save4 8
(8 9
)9 :
;: ;
} 
CambioIdioma 
( 
savedLanguage &
)& '
;' (
}!! 	
public## 
static## 
void## 
CambioIdioma## '
(##' (
string##( .
cultureCode##/ :
)##: ;
{$$ 	
CultureInfo%% 
culture%% 
=%%  !
new%%" %
CultureInfo%%& 1
(%%1 2
cultureCode%%2 =
)%%= >
;%%> ?
Thread&& 
.&& 
CurrentThread&&  
.&&  !
CurrentCulture&&! /
=&&0 1
culture&&2 9
;&&9 :
Thread'' 
.'' 
CurrentThread''  
.''  !
CurrentUICulture''! 1
=''2 3
culture''4 ;
;''; <
Cliente(( 
.(( 

Properties(( 
.(( 
Settings(( '
.((' (
Default((( /
.((/ 0
Reset((0 5
(((5 6
)((6 7
;((7 8
Cliente)) 
.)) 

Properties)) 
.)) 
Settings)) '
.))' (
Default))( /
.))/ 0
Lenguaje))0 8
=))9 :
cultureCode)); F
;))F G
Cliente** 
.** 

Properties** 
.** 
Settings** '
.**' (
Default**( /
.**/ 0
Save**0 4
(**4 5
)**5 6
;**6 7
}++ 	
},, 
}// �G
VC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaUnionPartida.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaUnionPartida ,
:- .
Page/ 3
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 
VentanaUnionPartida "
(" #
)# $
{ 	
InitializeComponent   
(    
)    !
;  ! "
}!! 	
private## 
void## "
RegresarAMenuPrincipal## +
(##+ ,
object##, 2
	remitente##3 <
,##< =
RoutedEventArgs##> M
	argumento##N W
)##W X
{$$ 	
NavigationService%% 
.%% 
GoBack%% $
(%%$ %
)%%% &
;%%& '
}&& 	
private(( 
void(( 
UnirseAPartida(( #
(((# $
object(($ *
	remitente((+ 4
,((4 5
RoutedEventArgs((6 E
	argumento((F O
)((O P
{)) 	
if** 
(**  
ValidarCodigoPartida** $
(**$ %
)**% &
)**& '
{++ 
if,, 
(,,  
ValidarEstadoPartida,, (
(,,( )
),,) *
),,* +
{-- 
CargarDatosPartida.. &
(..& '
)..' (
;..( )
}// 
else00 
{11 
MensajeVentana22 "
.22" #.
"MostrarVentanaEmergenteAdvertencia22# E
(22E F

Properties22F P
.22P Q
	Resources22Q Z
.22Z [&
MensajePartidaNoDisponible22[ u
)22u v
;22v w
}33 
}44 
}55 	
private77 
bool77  
ValidarEstadoPartida77 )
(77) *
)77* +
{88 	
bool99 #
validacionEstadoPartida99 (
=99) *
false99+ 0
;990 1
try:: 
{;; (
ServicioGestionPartidaClient<< ,"
servicioGestionPartida<<- C
=<<C D
new<<D G(
ServicioGestionPartidaClient<<H d
(<<d e
)<<e f
;<<f g
var== 
partida== 
=== "
servicioGestionPartida== 4
.==4 5%
RecuperarPartidaPorCodigo==5 N
(==N O
Txb_CodigoPartida==O `
.==` a
Text==a e
)==e f
;==f g
if>> 
(>> 
partida>> 
.>> 
	IdPartida>> %
>>>& '
$num>>( )
&&>>* ,
partida>>- 4
.>>4 5
EstadoPartida>>5 B
==>>C E
Enumeracion>>F Q
.>>Q R
EnumEstadoPartida>>R c
.>>c d
Iniciada>>d l
.>>l m
ToString>>m u
(>>u v
)>>v w
)>>w x
{?? #
validacionEstadoPartida@@ +
=@@, -
true@@. 2
;@@2 3
}AA 
}BB 
catchCC 
(CC %
EndpointNotFoundExceptionCC ,+
excepcionPuntoFinalNoEncontradoCC- L
)CCL M
{DD 
MensajeVentanaEE 
.EE (
MostrarVentanaEmergenteErrorEE ;
(EE; <

PropertiesEE< F
.EEF G
	ResourcesEEG P
.EEP Q 
MensajeErrorConexionEEQ e
)EEe f
;EEf g
	_bitacoraFF 
.FF 
WarnFF 
(FF +
excepcionPuntoFinalNoEncontradoFF >
)FF> ?
;FF? @
}GG 
returnHH #
validacionEstadoPartidaHH *
;HH* +
}II 	
privateKK 
boolKK  
ValidarCodigoPartidaKK )
(KK) *
)KK* +
{LL 	
boolMM 

validacionMM 
=MM 
falseMM #
;MM# $
tryNN 
{OO (
ServicioGestionPartidaClientPP ,"
servicioGestionPartidaPP- C
=PPC D
newPPD G(
ServicioGestionPartidaClientPPH d
(PPd e
)PPe f
;PPf g
intQQ 
validacionCodigoQQ $
=QQ$ %"
servicioGestionPartidaQQ% ;
.QQ; < 
ValidarCodigoPartidaQQ< P
(QQP Q
Txb_CodigoPartidaQQQ b
.QQb c
TextQQc g
)QQg h
;QQh i
switchRR 
(RR 
validacionCodigoRR (
)RR( )
{SS 
caseTT 
-TT 
$numTT 
:TT 
MensajeVentanaUU &
.UU& '(
MostrarVentanaEmergenteErrorUU' C
(UUC D

PropertiesUUD N
.UUN O
	ResourcesUUO X
.UUX Y#
MensajeErrorBaseDeDatosUUY p
)UUp q
;UUq r
breakVV 
;VV 
caseWW 
$numWW 
:WW 
MensajeVentanaXX &
.XX& '.
"MostrarVentanaEmergenteAdvertenciaXX' I
(XXI J

PropertiesXXJ T
.XXT U
	ResourcesXXU ^
.XX^ _+
MensajeCodigoPartidaInexistenteXX_ ~
)XX~ 
;	XX �
breakYY 
;YY 
caseZZ 
$numZZ 
:ZZ 

validacion[[ "
=[[# $
true[[% )
;[[) *
break\\ 
;\\ 
}]] 
}^^ 
catch__ 
(__ %
EndpointNotFoundException__ ,+
excepcionPuntoFinalNoEncontrado__- L
)__L M
{`` 
MensajeVentanaaa 
.aa (
MostrarVentanaEmergenteErroraa ;
(aa; <

Propertiesaa< F
.aaF G
	ResourcesaaG P
.aaP Q 
MensajeErrorConexionaaQ e
)aae f
;aaf g
	_bitacorabb 
.bb 
Warnbb 
(bb +
excepcionPuntoFinalNoEncontradobb >
)bb> ?
;bb? @
}cc 
returndd 

validaciondd 
;dd 
}ee 	
privatehh 
voidhh 
CargarDatosPartidahh '
(hh' (
)hh( )
{ii 	
tryjj 
{kk (
ServicioGestionPartidaClientll ,"
servicioGestionPartidall- C
=llD E
newllF I(
ServicioGestionPartidaClientllJ f
(llf g
)llg h
;llh i
varmm 
partidamm 
=mm "
servicioGestionPartidamm 4
.mm4 5%
RecuperarPartidaPorCodigomm5 N
(mmN O
Txb_CodigoPartidammO `
.mm` a
Textmma e
)mme f
;mmf g
ifnn 
(nn 
partidann 
.nn 
	IdPartidann %
>nn& '
$numnn( )
)nn) *
{oo 
AbrirSalaDeEsperapp %
(pp% &
)pp& '
;pp' (
}qq 
}rr 
catchss 
(ss %
EndpointNotFoundExceptionss ,+
excepcionPuntoFinalNoEncontradoss- L
)ssL M
{tt 
MensajeVentanauu 
.uu (
MostrarVentanaEmergenteErroruu ;
(uu; <

Propertiesuu< F
.uuF G
	ResourcesuuG P
.uuP Q 
MensajeErrorConexionuuQ e
)uue f
;uuf g
	_bitacoravv 
.vv 
Warnvv 
(vv +
excepcionPuntoFinalNoEncontradovv >
)vv> ?
;vv? @
}ww 
}xx 	
privatezz 
voidzz 
AbrirSalaDeEsperazz &
(zz& '
)zz' (
{{{ 	
VentanaSalaEspera|| 
paginaSalaEspera|| .
=||. /
new||/ 2
VentanaSalaEspera||3 D
(||D E
)||E F
;||F G
paginaSalaEspera}} 
.}} 
Txbl_CodigoPartida}} /
.}}/ 0
Text}}0 4
=}}5 6
Txb_CodigoPartida}}7 H
.}}H I
Text}}I M
;}}M N
paginaSalaEspera~~ 
.~~ 
Stpl_Amigos~~ (
.~~( )

Visibility~~) 3
=~~4 5

Visibility~~6 @
.~~@ A
Hidden~~A G
;~~G H
paginaSalaEspera 
. 
ConfigurarJugadores 0
(0 1
)1 2
;2 3
paginaSalaEspera
�� 
.
�� 
ConfigurarChat
�� +
(
��+ ,
)
��, -
;
��- .
paginaSalaEspera
�� 
.
�� $
RecuperarPartidaActual
�� 3
(
��3 4
)
��4 5
;
��5 6
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
paginaSalaEspera
��, <
)
��< =
;
��= >
}
�� 	
}
�� 
}�� ��
^C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaSolicitudesDeAmistad.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class '
VentanaSolicitudesDeAmistad 4
:5 6
Page7 ;
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public '
VentanaSolicitudesDeAmistad *
(* +
)+ ,
{ 	
InitializeComponent   
(    
)    !
;  ! "(
RecuperarAmistadesPendientes!! (
(!!( )
)!!) *
;!!* +
}"" 	
private$$ 
void$$ (
RecuperarAmistadesPendientes$$ 1
($$1 2
)$$2 3
{%% 	
try&& 
{'' (
ServicioGestionAmistadClient(( ,
proxy((- 2
=((3 4
new((5 8
ServidorPassword((9 I
.((I J(
ServicioGestionAmistadClient((J f
(((f g
)((g h
;((h i
List)) 
<)) 
int)) 
>)) 
	amistades)) #
=))$ %
proxy))& +
.))+ ,3
'ConsultarSolicitudesAmistadPorIdJugador)), S
())S T
JugadorSingleton))T d
.))d e
	IdJugador))e n
)))n o
.))o p
ToList))p v
())v w
)))w x
;))x y
if** 
(** 
	amistades** 
.** 
Count** #
>**$ %
$num**& '
)**' (
{++ 
int,, 
amistad,, 
=,,  !
	amistades,," +
[,,+ ,
$num,,, -
],,- .
;,,. /
if-- 
(-- 
amistad-- 
!=--  "
---# $
$num--$ %
)--% &
{.. 
RecuperarJugadores// *
(//* +
	amistades//+ 4
)//4 5
;//5 6
}00 
else11 
{22 
MensajeVentana33 &
.33& '(
MostrarVentanaEmergenteError33' C
(33C D

Properties33D N
.33N O
	Resources33O X
.33X Y#
MensajeErrorBaseDeDatos33Y p
)33p q
;33q r
}44 
}55 
else66 
{77 
MensajeVentana88 "
.88" #.
"MostrarVentanaEmergenteAdvertencia88# E
(88E F

Properties88F P
.88P Q
	Resources88Q Z
.88Z [!
MensajeSinSolicitudes88[ p
)88p q
;88q r
}99 
}:: 
catch;; 
(;; %
EndpointNotFoundException;; ,+
excepcionPuntoFinalNoEncontrado;;- L
);;L M
{<< 
MensajeVentana== 
.== (
MostrarVentanaEmergenteError== ;
(==; <

Properties==< F
.==F G
	Resources==G P
.==P Q 
MensajeErrorConexion==Q e
)==e f
;==f g
	_bitacora>> 
.>> 
Warn>> 
(>> +
excepcionPuntoFinalNoEncontrado>> >
)>>> ?
;>>? @
}?? 
}@@ 	
privateBB 
voidBB 
RecuperarJugadoresBB '
(BB' (
ListBB( ,
<BB, -
intBB- 0
>BB0 1
	amistadesBB2 ;
)BB; <
{CC 	
tryDD 
{EE (
ServicioGestionAmistadClientFF ,"
servicioGestionAmistadFF- C
=FFD E
newFFF I(
ServicioGestionAmistadClientFFJ f
(FFf g
)FFg h
;FFh i
ListGG 
<GG 
stringGG 
>GG 
nombresUsuarioGG +
=GG, -"
servicioGestionAmistadGG. D
.GGD E1
%ObtenerNombresDeUsuarioPorIdJugadoresGGE j
(GGj k
	amistadesGGk t
.GGt u
ToArrayGGu |
(GG| }
)GG} ~
)GG~ 
.	GG �
ToList
GG� �
(
GG� �
)
GG� �
;
GG� �!
AsignarNombresUsuarioHH %
(HH% &
nombresUsuarioHH& 4
,HH4 5
	amistadesHH5 >
)HH> ?
;HH? @
}II 
catchJJ 
(JJ %
EndpointNotFoundExceptionJJ ,+
excepcionPuntoFinalNoEncontradoJJ- L
)JJL M
{KK 
MensajeVentanaLL 
.LL (
MostrarVentanaEmergenteErrorLL ;
(LL; <

PropertiesLL< F
.LLF G
	ResourcesLLG P
.LLP Q 
MensajeErrorConexionLLQ e
)LLe f
;LLf g
	_bitacoraMM 
.MM 
WarnMM 
(MM +
excepcionPuntoFinalNoEncontradoMM >
)MM> ?
;MM? @
}NN 
}OO 	
privateQQ 
voidQQ !
AsignarNombresUsuarioQQ *
(QQ* +
ListQQ+ /
<QQ/ 0
stringQQ0 6
>QQ6 7
nombresUsuarioQQ8 F
,QQF G
ListQQG K
<QQK L
intQQL O
>QQO P
idJugadoresQQQ \
)QQ\ ]
{RR 	
stringSS 
primerNombreUsuarioSS &
=SS' (
nombresUsuarioSS) 7
[SS7 8
$numSS8 9
]SS9 :
;SS: ;
ifTT 
(TT 
primerNombreUsuarioTT #
!=TT$ &
$strTT' 2
)TT2 3
{UU 
ListVV 
<VV 
JugadorAmistadVV #
>VV# $
	amistadesVV% .
=VV. /
CombinarListasVV/ =
(VV= >
idJugadoresVV> I
,VVI J
nombresUsuarioVVK Y
)VVY Z
;VVZ [
ListaSolicitudesWW  
.WW  !
ItemsSourceWW! ,
=WW- .
	amistadesWW/ 8
;WW8 9
}XX 
elseYY 
{ZZ 
MensajeVentana[[ 
.[[ (
MostrarVentanaEmergenteError[[ ;
([[; <

Properties[[< F
.[[F G
	Resources[[G P
.[[P Q#
MensajeErrorBaseDeDatos[[Q h
)[[h i
;[[i j
}\\ 
}]] 	
private__ 
void__ !
RegresarMenuPrincipal__ *
(__* +
object__+ 1
	remitente__2 ;
,__; <
RoutedEventArgs__= L
	argumento__M V
)__V W
{`` 	 
VentanaMenuPrincipalaa  
paginaMenuPrincipalaa! 4
=aa5 6
newaa7 : 
VentanaMenuPrincipalaa; O
(aaO P
)aaP Q
;aaQ R
thisbb 
.bb 
NavigationServicebb "
.bb" #
Navigatebb# +
(bb+ ,
paginaMenuPrincipalbb, ?
)bb? @
;bb@ A
}cc 	
privateee 
staticee 
intee +
ObtenerIdAmidstadPorIdJugadoresee :
(ee: ;
intee; >!
idJugadorDestinatarioee? T
)eeT U
{ff 	
intgg 
	idAmistadgg 
=gg 
$numgg 
;gg 
tryhh 
{ii (
ServicioGestionAmistadClientjj ,"
servicioGestionAmistadjj- C
=jjC D
newjjD G(
ServicioGestionAmistadClientjjH d
(jjd e
)jje f
;jjf g
	idAmistadkk 
=kk "
servicioGestionAmistadkk 1
.kk1 2,
 RecuperarIdAmistadPorIdJugadoreskk2 R
(kkR S!
idJugadorDestinatariokkS h
,kkh i
JugadorSingletonkkj z
.kkz {
	IdJugador	kk{ �
)
kk� �
;
kk� �
}ll 
catchmm 
(mm %
EndpointNotFoundExceptionmm ,+
excepcionPuntoFinalNoEncontradomm- L
)mmL M
{nn 
MensajeVentanaoo 
.oo (
MostrarVentanaEmergenteErroroo ;
(oo; <

Propertiesoo< F
.ooF G
	ResourcesooG P
.ooP Q 
MensajeErrorConexionooQ e
)ooe f
;oof g
	_bitacorapp 
.pp 
Warnpp 
(pp +
excepcionPuntoFinalNoEncontradopp >
)pp> ?
;pp? @
}qq 
returnrr 
	idAmistadrr 
;rr 
}ss 	
privateuu 
voiduu 
AceptarSolicituduu %
(uu% &
objectuu& ,
	remitenteuu- 6
,uu6 7
RoutedEventArgsuu8 G
	argumentouuH Q
)uuQ R
{vv 	
ifww 
(ww 
ListaSolicitudesww  
.ww  !
SelectedItemww! -
isww. 0
JugadorAmistadww1 ?
jugadorSeleccionadoww@ S
)wwS T
{xx 
intyy !
idJugadorDestinatarioyy )
=yy* +
jugadorSeleccionadoyy, ?
.yy? @
	IdJugadoryy@ I
;yyI J
intzz 
	idAmistadzz 
=zz +
ObtenerIdAmidstadPorIdJugadoreszz =
(zz= >!
idJugadorDestinatariozz> S
)zzS T
;zzT U
if{{ 
({{ 
	idAmistad{{ 
>{{ 
$num{{  !
){{! "
{|| 
Amistad}} 
amistad}} #
=}}$ %"
ObtenerAmistadAceptada}}& <
(}}< =
)}}= >
;}}> ?
amistad~~ 
.~~ 
	idAmistad~~ %
=~~% &
	idAmistad~~& /
;~~/ 0
try 
{
�� *
ServicioGestionAmistadClient
�� 4$
servicioGestionAmistad
��5 K
=
��L M
new
��N Q*
ServicioGestionAmistadClient
��R n
(
��n o
)
��o p
;
��p q
int
�� 
resultadoRegistro
�� -
=
��. /$
servicioGestionAmistad
��0 F
.
��F G'
ResponderSolicitudAmistad
��G `
(
��` a
amistad
��a h
)
��h i
;
��i j
if
�� 
(
�� 
resultadoRegistro
�� -
==
��. 0
$num
��1 2
)
��2 3
{
�� 
MensajeVentana
�� *
.
��* +,
MostrarVentanaEmergenteExitosa
��+ I
(
��I J

Properties
��J T
.
��T U
	Resources
��U ^
.
��^ _#
VentanaEmergenteExito
��_ t
)
��t u
;
��u v
ListaSolicitudes
�� ,
.
��, -
ItemsSource
��- 8
=
��9 :
new
��; >
List
��? C
<
��C D
JugadorAmistad
��D R
>
��R S
(
��S T
)
��T U
;
��U V*
RecuperarAmistadesPendientes
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
MensajeVentana
�� *
.
��* +*
MostrarVentanaEmergenteError
��+ G
(
��G H

Properties
��H R
.
��R S
	Resources
��S \
.
��\ ]%
MensajeErrorBaseDeDatos
��] t
)
��t u
;
��u v
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 4-
excepcionPuntoFinalNoEncontrado
��5 T
)
��T U
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y"
MensajeErrorConexion
��Y m
)
��m n
;
��n o
	_bitacora
�� !
.
��! "
Warn
��" &
(
��& '-
excepcionPuntoFinalNoEncontrado
��' F
)
��F G
;
��G H
}
�� 
}
�� 
else
�� 
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CancelarSolicitud
�� &
(
��& '
object
��' -
	remitente
��. 7
,
��7 8
RoutedEventArgs
��9 H
	argumento
��I R
)
��R S
{
�� 	
if
�� 
(
�� 
ListaSolicitudes
��  
.
��  !
SelectedItem
��! -
is
��. 0
JugadorAmistad
��1 ?!
jugadorSeleccionado
��@ S
)
��S T
{
�� 
int
�� #
idJugadorDestinatario
�� )
=
��* +!
jugadorSeleccionado
��, ?
.
��? @
	IdJugador
��@ I
;
��I J
int
�� 
	idAmistad
�� 
=
�� -
ObtenerIdAmidstadPorIdJugadores
��  ?
(
��? @#
idJugadorDestinatario
��@ U
)
��U V
;
��V W
if
�� 
(
�� 
	idAmistad
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
Amistad
�� 
amistad
�� #
=
��$ %%
ObtenerAmistadRechazada
��& =
(
��= >
)
��> ?
;
��? @
amistad
�� 
.
�� 
	idAmistad
�� %
=
��& '
	idAmistad
��( 1
;
��1 2
try
�� 
{
�� *
ServicioGestionAmistadClient
�� 4$
servicioGestionAmistad
��5 K
=
��L M
new
��N Q*
ServicioGestionAmistadClient
��R n
(
��n o
)
��o p
;
��p q
int
�� 
resultadoRegistro
�� -
=
��. /$
servicioGestionAmistad
��0 F
.
��F G'
ResponderSolicitudAmistad
��G `
(
��` a
amistad
��a h
)
��h i
;
��i j
if
�� 
(
�� 
resultadoRegistro
�� -
==
��. 0
$num
��1 2
)
��2 3
{
�� 
MensajeVentana
�� *
.
��* +,
MostrarVentanaEmergenteExitosa
��+ I
(
��I J

Properties
��J T
.
��T U
	Resources
��U ^
.
��^ _#
VentanaEmergenteExito
��_ t
)
��t u
;
��u v
ListaSolicitudes
�� ,
.
��, -
ItemsSource
��- 8
=
��8 9
new
��9 <
List
��= A
<
��A B
JugadorAmistad
��B P
>
��P Q
(
��Q R
)
��R S
;
��S T*
RecuperarAmistadesPendientes
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
MensajeVentana
�� *
.
��* +*
MostrarVentanaEmergenteError
��+ G
(
��G H

Properties
��H R
.
��R S
	Resources
��S \
.
��\ ]%
MensajeErrorBaseDeDatos
��] t
)
��t u
;
��u v
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 4-
excepcionPuntoFinalNoEncontrado
��5 T
)
��T U
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y"
MensajeErrorConexion
��Y m
)
��m n
;
��n o
	_bitacora
�� !
.
��! "
Warn
��" &
(
��& '-
excepcionPuntoFinalNoEncontrado
��' F
)
��F G
;
��G H
}
�� 
}
�� 
else
�� 
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
}
�� 	
private
�� 
Amistad
�� $
ObtenerAmistadAceptada
�� .
(
��. /
)
��/ 0
{
�� 	
Amistad
�� 
amistad
�� 
=
�� 
new
�� !
Amistad
��" )
{
�� 
	respuesta
�� 
=
�� 
true
��  
,
��  !
fechaRespuesta
�� 
=
��  
DateTime
��! )
.
��) *
Now
��* -
,
��- .
}
�� 
;
�� 
return
�� 
amistad
�� 
;
�� 
}
�� 	
private
�� 
Amistad
�� %
ObtenerAmistadRechazada
�� /
(
��/ 0
)
��0 1
{
�� 	
Amistad
�� 
amistad
�� 
=
�� 
new
�� !
Amistad
��" )
{
�� 
	respuesta
�� 
=
�� 
false
�� !
,
��! "
fechaRespuesta
�� 
=
��  
DateTime
��! )
.
��) *
Now
��* -
,
��- .
}
�� 
;
�� 
return
�� 
amistad
�� 
;
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
JugadorAmistad
�� #
>
��# $
CombinarListas
��% 3
(
��3 4
List
��4 8
<
��8 9
int
��9 <
>
��< =
idJugadores
��> I
,
��I J
List
��K O
<
��O P
string
��P V
>
��V W
nombresUsuario
��X f
)
��f g
{
�� 	
List
�� 
<
�� 
JugadorAmistad
�� 
>
��  
	jugadores
��! *
=
��* +
idJugadores
��+ 6
.
��6 7
Zip
��7 :
(
��: ;
nombresUsuario
��; I
,
��I J
(
��J K
id
��K M
,
��M N
nombre
��N T
)
��T U
=>
��U W
new
��W Z
JugadorAmistad
��[ i
{
��j k
	IdJugador
�� 
=
�� 
id
�� 
,
�� 
NombreUsuario
�� 
=
�� 
nombre
��  
}
��  !
)
��! "
.
��" #
ToList
��# )
(
��) *
)
��* +
;
��+ ,
return
�� 
	jugadores
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
TC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaSalaEspera.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaSalaEspera *
:+ ,
Page- 1
,1 2!
IServicioChatCallback3 H
,H I)
IServicioSalaDeEsperaCallbackJ g
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
private 
ServicioChatClient "
_servicioChat# 0
;0 1
private &
ServicioSalaDeEsperaClient *!
_servicioSalaDeEspera+ @
;@ A
private 
List 
< 
JugadorContrato $
>$ %

_jugadores& 0
;0 1
private 
PartidaContrato 
_partidaActual  .
;. /
public!! 
VentanaSalaEspera!!  
(!!  !
)!!! "
{"" 	
InitializeComponent## 
(##  
)##  !
;##! "
RecuperarAmigos$$ 
($$ 
)$$ 
;$$ 
}%% 	
public'' 
void'' 
ConfigurarChat'' "
(''" #
)''# $
{(( 	
try)) 
{** 
InstanceContext++ 
contexto++  (
=++) *
new+++ .
InstanceContext++/ >
(++> ?
this++? C
)++C D
;++D E
_servicioChat,, 
=,, 
new,,  #
ServicioChatClient,,$ 6
(,,6 7
contexto,,7 ?
),,? @
;,,@ A
string-- 
nombreUsuario-- $
=--% &
JugadorSingleton--' 7
.--7 8
NombreUsuario--8 E
;--E F
string.. 
codigoPartida.. $
=..% &
Txbl_CodigoPartida..' 9
...9 :
Text..: >
;..> ?
string// 
mensajeInicial// %
=//& '
$"//( *
{//* +
nombreUsuario//+ 8
}//8 9
$str//9 :
{//: ;
codigoPartida//; H
}//H I
$str//I K
"//K L
+//M N
$"//O Q
{//Q R

Properties//R \
.//\ ]
	Resources//] f
.//f g
Estado_Conexion//g v
}//v w
"//w x
;//x y
_servicioChat00 
.00 
Chatear00 %
(00% &
mensajeInicial00& 4
)004 5
;005 6
}11 
catch22 
(22 %
EndpointNotFoundException22 ,+
excepcionPuntoFinalNoEncontrado22- L
)22L M
{33 
	_bitacora44 
.44 
Warn44 
(44 +
excepcionPuntoFinalNoEncontrado44 >
)44> ?
;44? @
}55 
}66 	
public88 
void88 
ConfigurarJugadores88 '
(88' (
)88( )
{99 	
JugadorContrato:: 
jugador:: #
=::$ %
ObtenerJugador::& 4
(::4 5
)::5 6
;::6 7
try;; 
{<< 
InstanceContext== 
contexto==  (
===) *
new==+ .
InstanceContext==/ >
(==> ?
this==? C
)==C D
;==D E!
_servicioSalaDeEspera>> %
=>>& '
new>>( +&
ServicioSalaDeEsperaClient>>, F
(>>F G
contexto>>G O
)>>O P
;>>P Q!
_servicioSalaDeEspera?? %
.??% &
ConectarJugador??& 5
(??5 6
Txbl_CodigoPartida??6 H
.??H I
Text??I M
,??M N
jugador??O V
)??V W
;??W X
}@@ 
catchAA 
(AA %
EndpointNotFoundExceptionAA ,+
excepcionPuntoFinalNoEncontradoAA- L
)AAL M
{BB 
	_bitacoraCC 
.CC 
WarnCC 
(CC +
excepcionPuntoFinalNoEncontradoCC >
)CC> ?
;CC? @
}DD 
}EE 	
privateGG 
JugadorContratoGG 
ObtenerJugadorGG  .
(GG. /
)GG/ 0
{HH 	
JugadorContratoII 
jugadorII #
=II$ %
newII& )
JugadorContratoII* 9
{JJ 
NombreUsuarioKK 
=KK 
JugadorSingletonKK  0
.KK0 1
NombreUsuarioKK1 >
,KK> ?

RutaImagenLL 
=LL 
JugadorSingletonLL -
.LL- .

RutaImagenLL. 8
,LL8 9
	IdJugadorMM 
=MM 
JugadorSingletonMM ,
.MM, -
	IdJugadorMM- 6
,MM6 7
}NN 
;NN 
returnOO 
jugadorOO 
;OO 
}PP 	
publicQQ 
voidQQ 
ConfigurarAnfitrionQQ '
(QQ' (
)QQ( )
{RR 	
Img_AnfitrionSS 
.SS 
SourceSS  
=SS! "
newSS# &
BitmapImageSS' 2
(SS2 3
newSS3 6
UriSS7 :
(SS: ;

_jugadoresSS; E
[SSE F
$numSSF G
]SSG H
.SSH I

RutaImagenSSI S
)SSS T
)SST U
;SSU V 
Txbl_NombreAnfitrionTT  
.TT  !
TextTT! %
=TT& '

_jugadoresTT( 2
[TT2 3
$numTT3 4
]TT4 5
.TT5 6
NombreUsuarioTT6 C
;TTC D
Img_Jugador2UU 
.UU 
SourceUU 
=UU  !
nullUU" &
;UU& '
Txbl_NombreJugador2VV 
.VV  
TextVV  $
=VV% &
$strVV' )
;VV) *
Img_Jugador3WW 
.WW 
SourceWW 
=WW  !
nullWW" &
;WW& '
Txbl_NombreJugador3XX 
.XX  
TextXX  $
=XX% &
$strXX' )
;XX) *
Img_Jugador4YY 
.YY 
SourceYY 
=YY  !
nullYY" &
;YY& '
Txbl_NombreJugador4ZZ 
.ZZ  
TextZZ  $
=ZZ% &
$strZZ' )
;ZZ) *
Img_Jugador5[[ 
.[[ 
Source[[ 
=[[  !
null[[" &
;[[& '
Txbl_NombreJugador5\\ 
.\\  
Text\\  $
=\\% &
$str\\' )
;\\) *
Img_Jugador6]] 
.]] 
Source]] 
=]]  !
null]]" &
;]]& '
Txbl_NombreJugador6^^ 
.^^  
Text^^  $
=^^% &
$str^^' )
;^^) *
Img_Jugador7__ 
.__ 
Source__ 
=__  !
null__" &
;__& '
Txbl_NombreJugador7`` 
.``  
Text``  $
=``% &
$str``' )
;``) *
Img_Jugador8aa 
.aa 
Sourceaa 
=aa  !
nullaa" &
;aa& '
Txbl_NombreJugador8bb 
.bb  
Textbb  $
=bb% &
$strbb' )
;bb) *
Img_Jugador9cc 
.cc 
Sourcecc 
=cc  !
nullcc" &
;cc& '
Txbl_NombreJugador9dd 
.dd  
Textdd  $
=dd% &
$strdd' )
;dd) *
Img_Jugador10ee 
.ee 
Sourceee  
=ee! "
nullee# '
;ee' ( 
Txbl_NombreJugador10ff  
.ff  !
Textff! %
=ff& '
$strff( *
;ff* +
}gg 	
publicii 
voidii 
ConfigurarJugador2ii &
(ii& '
)ii' (
{jj 	
Img_Jugador2kk 
.kk 
Sourcekk 
=kk  !
newkk" %
BitmapImagekk& 1
(kk1 2
newkk2 5
Urikk6 9
(kk9 :

_jugadoreskk: D
[kkD E
$numkkE F
]kkF G
.kkG H

RutaImagenkkH R
)kkR S
)kkS T
;kkT U
Txbl_NombreJugador2ll 
.ll  
Textll  $
=ll% &

_jugadoresll' 1
[ll1 2
$numll2 3
]ll3 4
.ll4 5
NombreUsuarioll5 B
;llB C
Img_Jugador3mm 
.mm 
Sourcemm 
=mm  !
nullmm" &
;mm& '
Txbl_NombreJugador3nn 
.nn  
Textnn  $
=nn% &
$strnn' )
;nn) *
Img_Jugador4oo 
.oo 
Sourceoo 
=oo  !
nulloo" &
;oo& '
Txbl_NombreJugador4pp 
.pp  
Textpp  $
=pp% &
$strpp' )
;pp) *
Img_Jugador5qq 
.qq 
Sourceqq 
=qq  !
nullqq" &
;qq& '
Txbl_NombreJugador5rr 
.rr  
Textrr  $
=rr% &
$strrr' )
;rr) *
Img_Jugador6ss 
.ss 
Sourcess 
=ss  !
nullss" &
;ss& '
Txbl_NombreJugador6tt 
.tt  
Texttt  $
=tt% &
$strtt' )
;tt) *
Img_Jugador7uu 
.uu 
Sourceuu 
=uu  !
nulluu" &
;uu& '
Txbl_NombreJugador7vv 
.vv  
Textvv  $
=vv% &
$strvv' )
;vv) *
Img_Jugador8ww 
.ww 
Sourceww 
=ww  !
nullww" &
;ww& '
Txbl_NombreJugador8xx 
.xx  
Textxx  $
=xx% &
$strxx' )
;xx) *
Img_Jugador9yy 
.yy 
Sourceyy 
=yy  !
nullyy" &
;yy& '
Txbl_NombreJugador9zz 
.zz  
Textzz  $
=zz% &
$strzz' )
;zz) *
Img_Jugador10{{ 
.{{ 
Source{{  
={{! "
null{{# '
;{{' ( 
Txbl_NombreJugador10||  
.||  !
Text||! %
=||& '
$str||( *
;||* +
}}} 	
public 
void 
ConfigurarJugador3 &
(& '
)' (
{
�� 	
Img_Jugador3
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador3
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador4
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador4
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador5
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador5
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador6
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador6
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador7
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador7
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador8
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador8
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
��  
ConfigurarJugador4
�� &
(
��& '
)
��' (
{
�� 	
Img_Jugador4
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador4
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador5
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador5
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador6
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador6
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador7
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador7
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador8
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador8
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
��  
ConfigurarJugador5
�� &
(
��& '
)
��' (
{
�� 	
Img_Jugador5
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador5
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador6
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador6
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador7
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador7
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador8
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador8
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
��  
ConfigurarJugador6
�� &
(
��& '
)
��' (
{
�� 	
Img_Jugador6
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador6
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador7
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador7
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador8
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador8
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
��  
ConfigurarJugador7
�� &
(
��& '
)
��' (
{
�� 	
Img_Jugador7
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador7
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador8
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador8
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
��  
ConfigurarJugador8
�� &
(
��& '
)
��' (
{
�� 	
Img_Jugador8
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador8
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
null
��" &
;
��& '!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &
$str
��' )
;
��) *
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
��  
ConfigurarJugador9
�� &
(
��& '
)
��' (
{
�� 	
Img_Jugador9
�� 
.
�� 
Source
�� 
=
��  !
new
��" %
BitmapImage
��& 1
(
��1 2
new
��2 5
Uri
��6 9
(
��9 :

_jugadores
��: D
[
��D E
$num
��E F
]
��F G
.
��G H

RutaImagen
��H R
)
��R S
)
��S T
;
��T U!
Txbl_NombreJugador9
�� 
.
��  
Text
��  $
=
��% &

_jugadores
��' 1
[
��1 2
$num
��2 3
]
��3 4
.
��4 5
NombreUsuario
��5 B
;
��B C
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
null
��# '
;
��' ("
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '
$str
��( *
;
��* +
}
�� 	
public
�� 
void
�� !
ConfigurarJugador10
�� '
(
��' (
)
��( )
{
�� 	
Img_Jugador10
�� 
.
�� 
Source
��  
=
��! "
new
��# &
BitmapImage
��' 2
(
��2 3
new
��3 6
Uri
��7 :
(
��: ;

_jugadores
��; E
[
��E F
$num
��F G
]
��G H
.
��H I

RutaImagen
��I S
)
��S T
)
��T U
;
��U V"
Txbl_NombreJugador10
��  
.
��  !
Text
��! %
=
��& '

_jugadores
��( 2
[
��2 3
$num
��3 4
]
��4 5
.
��5 6
NombreUsuario
��6 C
;
��C D
}
�� 	
public
�� 
void
�� 
	Responder
�� 
(
�� 
string
�� $
	respuesta
��% .
)
��. /
{
�� 	
string
�� "
codigoPartidaCliente
�� '
=
��( ) 
Txbl_CodigoPartida
��* <
.
��< =
Text
��= A
;
��A B
string
�� 
[
�� 
]
�� 
partesMensaje
�� "
=
��# $
	respuesta
��% .
.
��. /
Split
��/ 4
(
��4 5
$char
��5 8
)
��8 9
;
��9 :
string
�� $
codigoPartidaAEliminar
�� )
=
��* +
$str
��, /
+
��0 1"
codigoPartidaCliente
��2 F
;
��F G
if
�� 
(
�� 
partesMensaje
�� 
.
�� 
Length
�� $
>
��% &
$num
��' (
&&
��) +
partesMensaje
��, 9
[
��9 :
$num
��: ;
]
��; <
==
��= ?"
codigoPartidaCliente
��@ T
)
��T U
{
�� 
string
�� '
respuestaSinCodigoPartida
�� 0
=
��1 2
	respuesta
��3 <
.
��< =
Replace
��= D
(
��D E$
codigoPartidaAEliminar
��E [
,
��[ \
$str
��] _
)
��_ `
;
��` a
Txb_Conversacion
��  
.
��  !
Text
��! %
+=
��& ('
respuestaSinCodigoPartida
��) B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� 
EnviarMensaje
�� "
(
��" #
object
��# )
	remitente
��* 3
,
��3 4
RoutedEventArgs
��5 D
	argumento
��E N
)
��N O
{
�� 	
string
�� 
nombreUsuario
��  
=
��! "
JugadorSingleton
��# 3
.
��3 4
NombreUsuario
��4 A
;
��A B
string
�� 
codigoPartida
��  
=
��! " 
Txbl_CodigoPartida
��# 5
.
��5 6
Text
��6 :
;
��: ;
string
�� 
mensaje
�� 
=
�� 
$"
�� 
{
��  
nombreUsuario
��  -
}
��- .
$str
��. /
{
��/ 0
codigoPartida
��0 =
}
��= >
$str
��> @
"
��@ A
+
��B C
Txb_Mensaje
��D O
.
��O P
Text
��P T
;
��T U
Txb_Mensaje
�� 
.
�� 
Text
�� 
=
�� 
string
�� %
.
��% &
Empty
��& +
;
��+ ,
_servicioChat
�� 
.
�� 
Chatear
�� !
(
��! "
mensaje
��" )
)
��) *
;
��* +
}
�� 	
private
�� 
void
��  
SalirMenuPrincipal
�� '
(
��' (
object
��( .
	remitente
��/ 8
,
��8 9
RoutedEventArgs
��: I
	argumento
��J S
)
��S T
{
�� 	)
DesconectarJugadorDePartida
�� '
(
��' (
)
��( )
;
��) *
if
�� 
(
�� 
JugadorSingleton
��  
.
��  !
	IdJugador
��! *
==
��+ -
_partidaActual
��. <
.
��< =
IdAnfitrion
��= H
)
��H I
{
�� 
CerrarPartida
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
JugadorSingleton
��  
.
��  !
	IdJugador
��! *
>
��+ ,
$num
��- .
)
��. /
{
�� "
VentanaMenuPrincipal
�� $!
paginaMenuPrincipal
��% 8
=
��9 :
new
��; >"
VentanaMenuPrincipal
��? S
(
��S T
)
��T U
;
��U V
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0!
paginaMenuPrincipal
��0 C
)
��C D
;
��D E
}
�� 
else
�� 
{
�� 
VentanaInicio
�� 
paginaInicio
�� *
=
��+ ,
new
��- 0
VentanaInicio
��1 >
(
��> ?
)
��? @
;
��@ A
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
paginaInicio
��0 <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� )
DesconectarJugadorDePartida
�� 0
(
��0 1
)
��1 2
{
�� 	
JugadorContrato
�� 
jugador
�� #
=
��$ %
ObtenerJugador
��& 4
(
��4 5
)
��5 6
;
��6 7#
_servicioSalaDeEspera
�� !
.
��! " 
DesconectarJugador
��" 4
(
��4 5 
Txbl_CodigoPartida
��5 G
.
��G H
Text
��H L
,
��L M
jugador
��N U
)
��U V
;
��V W
}
�� 	
private
�� 
void
�� 
RecuperarAmigos
�� $
(
��$ %
)
��% &
{
�� 	
try
�� 
{
�� *
ServicioGestionAmistadClient
�� ,$
servicioGestionAmistad
��- C
=
��D E
new
��F I*
ServicioGestionAmistadClient
��J f
(
��f g
)
��g h
;
��h i
List
�� 
<
�� 
int
�� 
>
�� 
idAmistades
�� %
=
��& '$
servicioGestionAmistad
��( >
.
��> ?,
ConsultarAmistadesPorIdJugador
��? ]
(
��] ^
JugadorSingleton
��^ n
.
��n o
	IdJugador
��o x
)
��x y
.
��y z
ToList��z �
(��� �
)��� �
;��� �
int
�� 
	idAmistad
�� 
=
�� 
idAmistades
��  +
.
��+ ,
FirstOrDefault
��, :
(
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
	idAmistad
�� 
>
�� 
$num
��  !
)
��! "
{
��  
RecuperarJugadores
�� &
(
��& '
idAmistades
��' 2
)
��2 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� 
	idAmistad
�� "
==
��# %
-
��& '
$num
��' (
)
��( )
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
��  
RecuperarJugadores
�� '
(
��' (
List
��( ,
<
��, -
int
��- 0
>
��0 1
	amistades
��2 ;
)
��; <
{
�� 	
try
�� 
{
�� 
ServidorPassword
��  
.
��  !*
ServicioGestionAmistadClient
��! =
proxy
��> C
=
��D E
new
��F I
ServidorPassword
��J Z
.
��Z [*
ServicioGestionAmistadClient
��[ w
(
��w x
)
��x y
;
��y z
List
�� 
<
�� 
string
�� 
>
�� 
nombresUsuario
�� +
=
��, -
proxy
��. 3
.
��3 43
%ObtenerNombresDeUsuarioPorIdJugadores
��4 Y
(
��Y Z
	amistades
��Z c
.
��c d
ToArray
��d k
(
��k l
)
��l m
)
��m n
.
��n o
ToList
��o u
(
��u v
)
��v w
;
��w x#
AsignarNombresUsuario
�� %
(
��% &
nombresUsuario
��& 4
,
��4 5
	amistades
��6 ?
)
��? @
;
��@ A
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� #
AsignarNombresUsuario
�� *
(
��* +
List
��+ /
<
��/ 0
string
��0 6
>
��6 7
nombresUsuario
��8 F
,
��F G
List
��H L
<
��L M
int
��M P
>
��P Q
idAmistades
��R ]
)
��] ^
{
�� 	
string
�� !
primerNombreUsuario
�� &
=
��' (
nombresUsuario
��) 7
[
��7 8
$num
��8 9
]
��9 :
;
��: ;
if
�� 
(
�� !
primerNombreUsuario
�� #
!=
��$ &
$str
��' 2
)
��2 3
{
�� 
List
�� 
<
�� 
JugadorAmistad
�� #
>
��# $
	amistades
��% .
=
��/ 0
CombinarListas
��1 ?
(
��? @
idAmistades
��@ K
,
��K L
nombresUsuario
��M [
)
��[ \
;
��\ ]

Ltv_Amigos
�� 
.
�� 
ItemsSource
�� &
=
��' (
	amistades
��) 2
;
��2 3
}
�� 
else
�� 
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q%
MensajeErrorBaseDeDatos
��Q h
)
��h i
;
��i j
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
JugadorAmistad
�� #
>
��# $
CombinarListas
��% 3
(
��3 4
List
��4 8
<
��8 9
int
��9 <
>
��< =
idJugadores
��> I
,
��I J
List
��K O
<
��O P
string
��P V
>
��V W
nombresUsuario
��X f
)
��f g
{
�� 	
List
�� 
<
�� 
JugadorAmistad
�� 
>
��  
	jugadores
��! *
=
��+ ,
idJugadores
��- 8
.
��8 9
Zip
��9 <
(
��< =
nombresUsuario
��= K
,
��K L
(
��M N
id
��N P
,
��P Q
nombre
��R X
)
��X Y
=>
��Z \
new
��] `
JugadorAmistad
��a o
{
�� 
	IdJugador
�� 
=
�� 
id
�� 
,
�� 
NombreUsuario
�� 
=
�� 
nombre
��  &
}
�� 
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
return
�� 
	jugadores
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
InvitarAPartida
�� $
(
��$ %
object
��% +
	remitente
��, 5
,
��5 6
RoutedEventArgs
��7 F
	argumento
��G P
)
��P Q
{
�� 	
Button
�� 
Btn_EnviarCorreo
�� #
=
��$ %
	remitente
��& /
as
��0 2
Button
��3 9
;
��9 :
JugadorAmistad
�� 
amigo
��  
=
��! "
Btn_EnviarCorreo
��# 3
?
��3 4
.
��4 5
DataContext
��5 @
as
��A C
JugadorAmistad
��D R
;
��R S
if
�� 
(
�� 
amigo
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
try
�� 
{
�� )
ServicioGestionAccesoClient
�� /#
servicioGestionAcceso
��0 E
=
��F G
new
��H K)
ServicioGestionAccesoClient
��L g
(
��g h
)
��h i
;
��i j
Cuenta
�� 
cuenta
�� !
=
��" ##
servicioGestionAcceso
��$ 9
.
��9 :)
RecuperarCuentaPorIdJugador
��: U
(
��U V
amigo
��V [
.
��[ \
	IdJugador
��\ e
)
��e f
;
��f g
if
�� 
(
�� 
cuenta
�� 
.
�� 
IdAcceso
�� '
!=
��( *
-
��+ ,
$num
��, -
)
��- .
{
�� !
EnviarCorreoPartida
�� +
(
��+ ,
cuenta
��, 2
.
��2 3
Correo
��3 9
)
��9 :
;
��: ;
MensajeVentana
�� &
.
��& ',
MostrarVentanaEmergenteExitosa
��' E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z ["
MensajeCorreoEnviado
��[ o
)
��o p
;
��p q
}
�� 
else
�� 
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y%
MensajeErrorBaseDeDatos
��Y p
)
��p q
;
��q r
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� !
EnviarCorreoPartida
�� (
(
��( )
string
��) /
correoAmigo
��0 ;
)
��; <
{
�� 	
EnvioCorreo
�� 
.
�� 
EnviarCorreo
�� $
(
��$ %
correoAmigo
��% 0
,
��0 1

Properties
��2 <
.
��< =
	Resources
��= F
.
��F G%
CorreoInvitacionPartida
��G ^
,
��^ _ 
Txbl_CodigoPartida
��` r
.
��r s
Text
��s w
)
��w x
;
��x y
}
�� 	
public
�� 
void
�� &
ActualizarListaJugadores
�� ,
(
��, -
JugadorContrato
��- <
[
��< =
]
��= >
	jugadores
��? H
)
��H I
{
�� 	

_jugadores
�� 
=
�� 
	jugadores
�� "
.
��" #
ToList
��# )
(
��) *
)
��* +
;
��+ ,
int
�� 
numeroJugadores
�� 
=
��  !

_jugadores
��" ,
.
��, -
Count
��- 2
;
��2 3
switch
�� 
(
�� 
numeroJugadores
�� #
)
��# $
{
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) *"
DesactivarBotonJugar
�� (
(
��( )
)
��) *
;
��* +
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador5
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador5
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador6
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador5
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador6
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador7
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador5
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador6
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador7
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador8
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador5
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador6
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador7
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador8
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador9
�� &
(
��& '
)
��' (
;
��( )
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
ConfigurarAnfitrion
�� '
(
��' (
)
��( )
;
��) * 
ConfigurarJugador2
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador3
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador4
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador5
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador6
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador7
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador8
�� &
(
��& '
)
��' (
;
��( ) 
ConfigurarJugador9
�� &
(
��& '
)
��' (
;
��( )!
ConfigurarJugador10
�� '
(
��' (
)
��( )
;
��) *
ActivarBotonJugar
�� %
(
��% &
)
��& '
;
��' (
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� "
DesactivarBotonJugar
�� )
(
��) *
)
��* +
{
�� 	
	Btn_Jugar
�� 
.
�� 

Visibility
��  
=
��! "

Visibility
��# -
.
��- .
Hidden
��. 4
;
��4 5
}
�� 	
private
�� 
void
�� 
ActivarBotonJugar
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
JugadorSingleton
��  
.
��  !
NombreUsuario
��! .
==
��/ 1

_jugadores
��2 <
[
��< =
$num
��= >
]
��> ?
.
��? @
NombreUsuario
��@ M
)
��M N
{
�� 
	Btn_Jugar
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
�� 
IniciarPartida
�� #
(
��# $
object
��$ *
	remitente
��+ 4
,
��4 5
RoutedEventArgs
��6 E
	argumento
��F O
)
��O P
{
�� 	
var
�� 
modoJuegoPartida
��  
=
��! "
_partidaActual
��# 1
.
��1 2
	ModoJuego
��2 ;
.
��; <
ToString
��< D
(
��D E
)
��E F
;
��F G+
CambiarEstadoPartidaEnProceso
�� )
(
��) *
)
��* +
;
��+ ,
if
�� 
(
�� 
modoJuegoPartida
��  
==
��! #
Enumeracion
��$ /
.
��/ 0"
EnumModoJuegoPartida
��0 D
.
��D E
Facil
��E J
.
��J K
ToString
��K S
(
��S T
)
��T U
)
��U V
{
�� 
ConfigurarPartida
�� !
(
��! "
ValoresConstantes
��" 3
.
��3 4$
CantidadPreguntasFacil
��4 J
)
��J K
;
��K L#
_servicioSalaDeEspera
�� %
.
��% &
IniciarPartida
��& 4
(
��4 5 
Txbl_CodigoPartida
��5 G
.
��G H
Text
��H L
,
��L M
ValoresConstantes
��N _
.
��_ `$
CantidadPreguntasFacil
��` v
)
��v w
;
��w x
}
�� 
else
�� 
if
�� 
(
�� 
modoJuegoPartida
�� %
==
��& (
Enumeracion
��) 4
.
��4 5"
EnumModoJuegoPartida
��5 I
.
��I J
Medio
��J O
.
��O P
ToString
��P X
(
��X Y
)
��Y Z
)
��Z [
{
�� 
ConfigurarPartida
�� !
(
��! "
ValoresConstantes
��" 3
.
��3 4$
CantidadPreguntasMedio
��4 J
)
��J K
;
��K L#
_servicioSalaDeEspera
�� %
.
��% &
IniciarPartida
��& 4
(
��4 5 
Txbl_CodigoPartida
��5 G
.
��G H
Text
��H L
,
��L M
ValoresConstantes
��N _
.
��_ `$
CantidadPreguntasMedio
��` v
)
��v w
;
��w x
}
�� 
else
�� 
{
�� 
ConfigurarPartida
�� !
(
��! "
ValoresConstantes
��" 3
.
��3 4&
CantidadPreguntasDificil
��4 L
)
��L M
;
��M N#
_servicioSalaDeEspera
�� %
.
��% &
IniciarPartida
��& 4
(
��4 5 
Txbl_CodigoPartida
��5 G
.
��G H
Text
��H L
,
��L M
ValoresConstantes
��N _
.
��_ `&
CantidadPreguntasDificil
��` x
)
��x y
;
��y z
}
�� 
}
�� 	
private
�� 
void
�� 
ConfigurarPartida
�� &
(
��& '
int
��' *
numeroPreguntas
��+ :
)
��: ;
{
�� 	
List
�� 
<
�� 
string
�� 
>
�� 
nombresUsuario
�� '
=
��( ).
 ObtenerNombresUsuarioDeJugadores
��* J
(
��J K
)
��K L
;
��L M
try
�� 
{
�� #
ServicioPartidaClient
�� %
servicioPartida
��& 5
=
��6 7
new
��8 ;#
ServicioPartidaClient
��< Q
(
��Q R
)
��R S
;
��S T
servicioPartida
�� 
.
��   
InicializarPartida
��  2
(
��2 3 
Txbl_CodigoPartida
��3 E
.
��E F
Text
��F J
,
��J K
numeroPreguntas
��L [
)
��[ \
;
��\ ]
servicioPartida
�� 
.
��  !
ConfigurarJugadores
��  3
(
��3 4 
Txbl_CodigoPartida
��4 F
.
��F G
Text
��G K
,
��K L
nombresUsuario
��M [
.
��[ \
ToArray
��\ c
(
��c d
)
��d e
)
��e f
;
��f g
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
string
�� 
>
�� .
 ObtenerNombresUsuarioDeJugadores
�� =
(
��= >
)
��> ?
{
�� 	
List
�� 
<
�� 
string
�� 
>
�� 
nombresUsuario
�� '
=
��( )
new
��* -
List
��. 2
<
��2 3
string
��3 9
>
��9 :
(
��: ;
)
��; <
;
��< =
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

_jugadores
��  *
.
��* +
Count
��+ 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
nombresUsuario
�� 
.
�� 
Add
�� "
(
��" #

_jugadores
��# -
[
��- .
i
��. /
]
��/ 0
.
��0 1
NombreUsuario
��1 >
)
��> ?
;
��? @
}
�� 
return
�� 
nombresUsuario
�� !
;
��! "
}
�� 	
private
�� 
void
�� +
CambiarEstadoPartidaEnProceso
�� 2
(
��2 3
)
��3 4
{
�� 	
try
�� 
{
�� *
ServicioGestionPartidaClient
�� ,$
servicioGestionPartida
��- C
=
��D E
new
��F I*
ServicioGestionPartidaClient
��J f
(
��f g
)
��g h
;
��h i
int
�� $
resultadoActualizacion
�� *
=
��+ ,$
servicioGestionPartida
��- C
.
��C D*
ActualizarEstadoPorIdPartida
��D `
(
��` a
_partidaActual
��a o
.
��o p
	IdPartida
��p y
,
��y z
Enumeracion��{ �
.��� �!
EnumEstadoPartida��� �
.��� �
Proceso��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
;��� �
if
�� 
(
�� $
resultadoActualizacion
�� *
==
��+ -
-
��. /
$num
��/ 0
)
��0 1
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
void
�� $
RecuperarPartidaActual
�� *
(
��* +
)
��+ ,
{
�� 	
string
�� 
codigoPartida
��  
=
��! " 
Txbl_CodigoPartida
��# 5
.
��5 6
Text
��6 :
;
��: ;
try
�� 
{
�� *
ServicioGestionPartidaClient
�� ,$
servicioGestionPartida
��- C
=
��D E
new
��F I*
ServicioGestionPartidaClient
��J f
(
��f g
)
��g h
;
��h i
PartidaContrato
�� 
partidaContrato
��  /
=
��0 1$
servicioGestionPartida
��2 H
.
��H I'
RecuperarPartidaPorCodigo
��I b
(
��b c
codigoPartida
��c p
)
��p q
;
��q r
if
�� 
(
�� 
partidaContrato
�� #
.
��# $
	IdPartida
��$ -
>
��. /
$num
��0 1
)
��1 2
{
�� 
_partidaActual
�� "
=
��# $
partidaContrato
��% 4
;
��4 5
}
�� 
else
�� 
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� 
CerrarPartida
�� "
(
��" #
)
��# $
{
�� 	
try
�� 
{
�� *
ServicioGestionPartidaClient
�� ,$
servicioGestionPartida
��- C
=
��D E
new
��F I*
ServicioGestionPartidaClient
��J f
(
��f g
)
��g h
;
��h i
int
�� $
resultadoActualizacion
�� *
=
��+ ,$
servicioGestionPartida
��- C
.
��C D*
ActualizarEstadoPorIdPartida
��D `
(
��` a
_partidaActual
��a o
.
��o p
	IdPartida
��p y
,
��y z
Enumeracion��{ �
.��� �!
EnumEstadoPartida��� �
.��� �
	Cancelada��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
;��� �
if
�� 
(
�� $
resultadoActualizacion
�� *
==
��+ -
-
��. /
$num
��/ 0
)
��0 1
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
void
�� !
AbrirVentanaPartida
�� '
(
��' (
PreguntaContrato
��( 8
[
��8 9
]
��9 :$
preguntasSeleccionadas
��; Q
,
��Q R
RespuestaContrato
��S d
[
��d e
]
��e f%
respuestasSeleccionadas
��g ~
)
��~ 
{
�� 	
VentanaPregunta
�� 
paginaPregunta
�� *
=
��+ ,
new
��- 0
VentanaPregunta
��1 @
(
��@ A
)
��A B
;
��B C
var
�� 
modoJuegoPartida
��  
=
��! "
_partidaActual
��# 1
.
��1 2
	ModoJuego
��2 ;
.
��; <
ToString
��< D
(
��D E
)
��E F
;
��F G
if
�� 
(
�� 
modoJuegoPartida
��  
==
��! #
Enumeracion
��$ /
.
��/ 0"
EnumModoJuegoPartida
��0 D
.
��D E
Facil
��E J
.
��J K
ToString
��K S
(
��S T
)
��T U
)
��U V
{
�� 
paginaPregunta
�� 
.
�� 
ConfigurarPartida
�� 0
(
��0 1
ValoresConstantes
��1 B
.
��B C
TiempoFacil
��C N
,
��N O
ValoresConstantes
��P a
.
��a b$
CantidadPreguntasFacil
��b x
,
��x y!
Txbl_CodigoPartida��z �
.��� �
Text��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
modoJuegoPartida
�� %
==
��& (
Enumeracion
��) 4
.
��4 5"
EnumModoJuegoPartida
��5 I
.
��I J
Medio
��J O
.
��O P
ToString
��P X
(
��X Y
)
��Y Z
)
��Z [
{
�� 
paginaPregunta
�� 
.
�� 
ConfigurarPartida
�� 0
(
��0 1
ValoresConstantes
��1 B
.
��B C
TiempoMedio
��C N
,
��N O
ValoresConstantes
��P a
.
��a b$
CantidadPreguntasMedio
��b x
,
��x y!
Txbl_CodigoPartida��z �
.��� �
Text��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
paginaPregunta
�� 
.
�� 
ConfigurarPartida
�� 0
(
��0 1
ValoresConstantes
��1 B
.
��B C
TiempoDificil
��C P
,
��P Q
ValoresConstantes
��R c
.
��c d&
CantidadPreguntasDificil
��d |
,
��| }!
Txbl_CodigoPartida��~ �
.��� �
Text��� �
)��� �
;��� �
}
�� 
paginaPregunta
�� 
.
�� !
ConfigurarPreguntas
�� .
(
��. /$
preguntasSeleccionadas
��/ E
.
��E F
ToList
��F L
(
��L M
)
��M N
,
��N O%
respuestasSeleccionadas
��P g
.
��g h
ToList
��h n
(
��n o
)
��o p
)
��p q
;
��q r
paginaPregunta
�� 
.
�� 
IniciarPregunta
�� *
(
��* +
)
��+ ,
;
��, -
paginaPregunta
�� 
.
�� $
ConfigurarTemporizador
�� 1
(
��1 2
)
��2 3
;
��3 4
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
paginaPregunta
��, :
)
��: ;
;
��; <
}
�� 	
}
�� 
}�� �y
RC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaRegistro.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaRegistro (
:) *
Page+ /
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 
VentanaRegistro 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
AceptarRegistro $
($ %
object% +
	remitente, 5
,5 6
RoutedEventArgs7 F
	argumentoG P
)P Q
{ 	
if 
( 
ValidarRegistro 
(  
)  !
)! "
{   
Acceso!! 
acceso!! 
=!! 
ObtenerAcceso!!  -
(!!- .
)!!. /
;!!/ 0
Jugador"" 
jugador"" 
=""  !
ObtenerJugador""" 0
(""0 1
)""1 2
;""2 3
try## 
{$$ '
ServicioGestionAccesoClient%% /!
servicioGestionAcceso%%0 E
=%%F G
new%%H K'
ServicioGestionAccesoClient%%L g
(%%g h
)%%h i
;%%i j
int&& 
validacionCorreo&& (
=&&) *!
servicioGestionAcceso&&+ @
.&&@ A$
ValidarPresenciaDeCorreo&&A Y
(&&Y Z
acceso&&Z `
.&&` a
correo&&a g
)&&g h
;&&h i
if'' 
('' 
validacionCorreo'' (
=='') +
$num'', -
)''- .
{(( 
int)) #
validacionNombreUsuario)) 3
=))4 5!
servicioGestionAcceso))6 K
.))K L 
ValidarNombreUsuario))L `
())` a
jugador))a h
.))h i
nombreUsuario))i v
)))v w
;))w x
if** 
(** #
validacionNombreUsuario** 3
==**4 6
$num**7 8
)**8 9
{++ !
RegistrarNuevoJugador,, 1
(,,1 2
acceso,,2 8
,,,8 9
jugador,,: A
),,A B
;,,B C
}-- 
else.. 
if.. 
(..  !#
validacionNombreUsuario..! 8
==..9 ;
$num..< =
)..= >
{// 
MensajeVentana00 *
.00* +(
MostrarVentanaEmergenteError00+ G
(00G H

Properties00H R
.00R S
	Resources00S \
.00\ ]&
MensajeUsuarioNoDisponible00] w
)00w x
;00x y
}11 
else22 
{33 
MensajeVentana44 *
.44* +(
MostrarVentanaEmergenteError44+ G
(44G H

Properties44H R
.44R S
	Resources44S \
.44\ ]#
MensajeErrorBaseDeDatos44] t
)44t u
;44u v
}55 
}66 
else77 
if77 
(77 
validacionCorreo77 -
==77. 0
$num771 2
)772 3
{88 
MensajeVentana99 &
.99& '(
MostrarVentanaEmergenteError99' C
(99C D

Properties99D N
.99N O
	Resources99O X
.99X Y#
MensajeCorreoRegistrado99Y p
)99p q
;99q r
}:: 
else;; 
{<< 
MensajeVentana== &
.==& '(
MostrarVentanaEmergenteError==' C
(==C D

Properties==D N
.==N O
	Resources==O X
.==X Y#
MensajeErrorBaseDeDatos==Y p
)==p q
;==q r
}>> 
}?? 
catch@@ 
(@@ %
EndpointNotFoundException@@ 0+
excepcionPuntoFinalNoEncontrado@@1 P
)@@P Q
{AA 
MensajeVentanaBB "
.BB" #(
MostrarVentanaEmergenteErrorBB# ?
(BB? @

PropertiesBB@ J
.BBJ K
	ResourcesBBK T
.BBT U 
MensajeErrorConexionBBU i
)BBi j
;BBj k
	_bitacoraCC 
.CC 
WarnCC "
(CC" #+
excepcionPuntoFinalNoEncontradoCC# B
)CCB C
;CCC D
}DD 
}EE 
}FF 	
privateHH 
voidHH !
RegistrarNuevoJugadorHH *
(HH* +
AccesoHH+ 1
accesoHH2 8
,HH8 9
JugadorHH: A
jugadorHHB I
)HHI J
{II 	
tryJJ 
{KK '
ServicioGestionAccesoClientLL +!
servicioGestionAccesoLL, A
=LLB C
newLLD G'
ServicioGestionAccesoClientLLH c
(LLc d
)LLd e
;LLe f
intMM 
resultadoRegistroMM %
=MM& '!
servicioGestionAccesoMM( =
.MM= >!
RegistrarNuevoJugadorMM> S
(MMS T
accesoMMT Z
,MMZ [
jugadorMM\ c
)MMc d
;MMd e
ifNN 
(NN 
resultadoRegistroNN %
==NN& (
$numNN) *
)NN* +
{OO 
MensajeVentanaPP "
.PP" #*
MostrarVentanaEmergenteExitosaPP# A
(PPA B

PropertiesPPB L
.PPL M
	ResourcesPPM V
.PPV W"
MensajeRegistroExitosoPPW m
)PPm n
;PPn o
VentanaInicioQQ !

inicioPageQQ" ,
=QQ- .
newQQ/ 2
VentanaInicioQQ3 @
(QQ@ A
)QQA B
;QQB C
thisRR 
.RR 
NavigationServiceRR *
.RR* +
NavigateRR+ 3
(RR3 4

inicioPageRR4 >
)RR> ?
;RR? @
}SS 
elseTT 
{UU 
MensajeVentanaVV "
.VV" #(
MostrarVentanaEmergenteErrorVV# ?
(VV? @

PropertiesVV@ J
.VVJ K
	ResourcesVVK T
.VVT U#
MensajeErrorBaseDeDatosVVU l
)VVl m
;VVm n
}WW 
}XX 
catchYY 
(YY %
EndpointNotFoundExceptionYY ,+
excepcionPuntoFinalNoEncontradoYY- L
)YYL M
{ZZ 
MensajeVentana[[ 
.[[ (
MostrarVentanaEmergenteError[[ ;
([[; <

Properties[[< F
.[[F G
	Resources[[G P
.[[P Q 
MensajeErrorConexion[[Q e
)[[e f
;[[f g
	_bitacora\\ 
.\\ 
Warn\\ 
(\\ +
excepcionPuntoFinalNoEncontrado\\ >
)\\> ?
;\\? @
}]] 
}^^ 	
private`` 
Jugador`` 
ObtenerJugador`` &
(``& '
)``' (
{aa 	
Jugadorbb 
jugadorbb 
=bb 
newbb !
Jugadorbb" )
{cc 
nombreUsuariodd 
=dd 
Txb_NombreUsuariodd  1
.dd1 2
Textdd2 6
,dd6 7

rutaImagenee 
=ee 
ValoresConstantesee .
.ee. /'
RutaImagenJugadorPorDefectoee/ J
,eeJ K
descripcionff 
=ff 
ValoresConstantesff /
.ff/ 0!
DescripcionPorDefectoff0 E
,ffE F
}gg 
;gg 
returnhh 
jugadorhh 
;hh 
}ii 	
privatekk 
Accesokk 
ObtenerAccesokk $
(kk$ %
)kk% &
{ll 	
Accesomm 
accesomm 
=mm 
newmm 
Accesomm  &
{nn 
correooo 
=oo 

Txb_Correooo #
.oo# $
Textoo$ (
,oo( )
contraseniapp 
=pp 
Txb_Contraseniapp -
.pp- .
Textpp. 2
,pp2 3
}qq 
;qq 
returnrr 
accesorr 
;rr 
}ss 	
privatevv 
boolvv 
ValidarRegistrovv $
(vv$ %
)vv% &
{ww 	
ReiniciarCamposxx 
(xx 
)xx 
;xx 
boolyy 

validacionyy 
=yy 
falseyy #
;yy# $
Jugadorzz 
jugadorzz 
=zz 
ObtenerJugadorzz ,
(zz, -
)zz- .
;zz. /
Acceso{{ 
acceso{{ 
={{ 
ObtenerAcceso{{ )
({{) *
){{* +
;{{+ ,
ValidacionAcceso|| 
validacionAcceso|| -
=||. /
new||0 3
ValidacionAcceso||4 D
(||D E
)||E F
;||F G
ValidacionJugador}} 
validacionJugador}} /
=}}0 1
new}}2 5
ValidacionJugador}}6 G
(}}G H
)}}H I
;}}I J
FluentValidation~~ 
.~~ 
Results~~ $
.~~$ %
ValidationResult~~% 5
resultadoAcceso~~6 E
=~~F G
validacionAcceso~~H X
.~~X Y
Validate~~Y a
(~~a b
acceso~~b h
)~~h i
;~~i j
FluentValidation 
. 
Results $
.$ %
ValidationResult% 5
resultadoJugador6 F
=G H
validacionJugadorI Z
.Z [
Validate[ c
(c d
jugadord k
)k l
;l m
if
�� 
(
�� 
resultadoAcceso
�� 
.
��  
IsValid
��  '
&&
��( *
resultadoJugador
��+ ;
.
��; <
IsValid
��< C
)
��C D
{
�� 

validacion
�� 
=
�� 
true
�� !
;
��! "
}
�� 
else
�� 
{
�� 
MarcarErrores
�� 
(
�� 
)
�� 
;
��  
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� -
(
��- .
acceso
��. 4
.
��4 5
correo
��5 ;
)
��; <
||
��= ?
string
��@ F
.
��F G 
IsNullOrWhiteSpace
��G Y
(
��Y Z
acceso
��Z `
.
��` a
contrasenia
��a l
)
��l m
||
��n p
string
�� 
.
��  
IsNullOrWhiteSpace
�� (
(
��( )
jugador
��) 0
.
��0 1
nombreUsuario
��1 >
)
��> ?
)
��? @
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeCamposRequeridos
��U l
)
��l m
;
��m n
}
�� 
else
�� 
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U&
MensajeCamposIncorrectos
��U m
)
��m n
;
��n o
}
�� 
}
�� 
return
�� 

validacion
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
CancelarRegistro
�� %
(
��% &
object
��& ,
	remitente
��- 6
,
��6 7
RoutedEventArgs
��8 G
	argumento
��H Q
)
��Q R
{
�� 	
VentanaInicio
�� 
paginaInicio
�� &
=
��' (
new
��) ,
VentanaInicio
��- :
(
��: ;
)
��; <
;
��< =
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
paginaInicio
��, 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� 
MarcarErrores
�� "
(
��" #
)
��# $
{
�� 	
if
�� 
(
�� 
!
�� 
ValidacionAcceso
�� !
.
��! "
ValidarCorreo
��" /
(
��/ 0

Txb_Correo
��0 :
.
��: ;
Text
��; ?
)
��? @
)
��@ A
{
�� 

Txb_Correo
�� 
.
�� 
BorderBrush
�� &
=
��' (
Brushes
��) 0
.
��0 1
Red
��1 4
;
��4 5

Txb_Correo
�� 
.
�� 
BorderThickness
�� *
=
��+ ,
new
��- 0
	Thickness
��1 :
(
��: ;
$num
��; <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
!
�� 
ValidacionAcceso
�� !
.
��! " 
ValidarContrasenia
��" 4
(
��4 5
Txb_Contrasenia
��5 D
.
��D E
Text
��E I
)
��I J
)
��J K
{
�� 
Txb_Contrasenia
�� 
.
��  
BorderBrush
��  +
=
��, -
Brushes
��. 5
.
��5 6
Red
��6 9
;
��9 :
Txb_Contrasenia
�� 
.
��  
BorderThickness
��  /
=
��0 1
new
��2 5
	Thickness
��6 ?
(
��? @
$num
��@ A
)
��A B
;
��B C
}
�� 
if
�� 
(
�� 
!
�� 
ValidacionJugador
�� "
.
��" #"
ValidarNombreUsuario
��# 7
(
��7 8
Txb_NombreUsuario
��8 I
.
��I J
Text
��J N
)
��N O
)
��O P
{
�� 
Txb_NombreUsuario
�� !
.
��! "
BorderBrush
��" -
=
��. /
Brushes
��0 7
.
��7 8
Red
��8 ;
;
��; <
Txb_NombreUsuario
�� !
.
��! "
BorderThickness
��" 1
=
��2 3
new
��4 7
	Thickness
��8 A
(
��A B
$num
��B C
)
��C D
;
��D E
}
�� 
}
�� 	
private
�� 
void
�� 
ReiniciarCampos
�� $
(
��$ %
)
��% &
{
�� 	

Txb_Correo
�� 
.
�� 
BorderBrush
�� "
=
��# $
Brushes
��% ,
.
��, -
Transparent
��- 8
;
��8 9

Txb_Correo
�� 
.
�� 
BorderThickness
�� &
=
��' (
new
��) ,
	Thickness
��- 6
(
��6 7
$num
��7 8
)
��8 9
;
��9 :
Txb_Contrasenia
�� 
.
�� 
BorderBrush
�� '
=
��( )
Brushes
��* 1
.
��1 2
Transparent
��2 =
;
��= >
Txb_Contrasenia
�� 
.
�� 
BorderThickness
�� +
=
��, -
new
��. 1
	Thickness
��2 ;
(
��; <
$num
��< =
)
��= >
;
��> ?
Txb_NombreUsuario
�� 
.
�� 
BorderBrush
�� )
=
��* +
Brushes
��, 3
.
��3 4
Transparent
��4 ?
;
��? @
Txb_NombreUsuario
�� 
.
�� 
BorderThickness
�� -
=
��. /
new
��0 3
	Thickness
��4 =
(
��= >
$num
��> ?
)
��? @
;
��@ A
}
�� 	
}
�� 
}�� ��
RC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaPregunta.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaPregunta (
:) *
Page+ /
{ 
private   
static   
readonly   
ILog    $
	_bitacora  % .
=  / 0

LogManager  1 ;
.  ; <
	GetLogger  < E
(  E F
System  F L
.  L M

Reflection  M W
.  W X

MethodBase  X b
.  b c
GetCurrentMethod  c s
(  s t
)  t u
.  u v
DeclaringType	  v �
)
  � �
;
  � �
private!! 
int!! !
_numeroPreguntaActual!! )
=!!* +
$num!!, -
;!!- .
private"" 
int"" 
_tiempoRestante"" #
;""# $
private## 
int## 
_totalPreguntas## #
;### $
private$$ 
DispatcherTimer$$ $
_temporizadorDespachador$$  8
;$$8 9
private%% 
List%% 
<%% 
PreguntaContrato%% %
>%%% &

_preguntas%%' 1
;%%1 2
private&& 
List&& 
<&& 
PreguntaContrato&& %
>&&% &"
_preguntasSinModificar&&' =
;&&= >
private'' 
List'' 
<'' 
RespuestaContrato'' &
>''& '
_respuestas''( 3
;''3 4
private(( 
string(( 
_codigoPartida(( %
;((% &
public** 
string** 
TiempoRestante** $
=>**% '
_tiempoRestante**( 7
.**7 8
ToString**8 @
(**@ A
)**A B
;**B C
public,, 
VentanaPregunta,, 
(,, 
),,  
{-- 	
InitializeComponent.. 
(..  
)..  !
;..! "
}// 	
public11 
void11 
ConfigurarPreguntas11 '
(11' (
List11( ,
<11, -
PreguntaContrato11- =
>11= >
	preguntas11? H
,11H I
List11J N
<11N O
RespuestaContrato11O `
>11` a

respuestas11b l
)11l m
{22 	

_preguntas33 
=33 
	preguntas33 "
;33" #
_respuestas44 
=44 

respuestas44 $
;44$ %"
_preguntasSinModificar55 "
=55# $

_preguntas55% /
;55/ 0
}66 	
public77 
void77 
ConfigurarPartida77 %
(77% &
int77& )
tiempoRestante77* 8
,778 9
int779 <
totalPreguntas77= K
,77K L
string77L R
codigoPartida77S `
)77` a
{88 	
_tiempoRestante99 
=99 
tiempoRestante99 ,
;99, -
_totalPreguntas:: 
=:: 
totalPreguntas:: ,
;::, -$
Txbl_NumeroPreguntaTotal;; $
.;;$ %
Text;;% )
=;;* +
_totalPreguntas;;, ;
.;;; <
ToString;;< D
(;;D E
);;E F
;;;F G%
Txbl_NumeroPreguntaActual<< %
.<<% &
Text<<& *
=<<+ ,!
_numeroPreguntaActual<<- B
.<<B C
ToString<<C K
(<<K L
)<<L M
;<<M N
_codigoPartida== 
=== 
codigoPartida== )
;==) *
}>> 	
public?? 
void?? "
ConfigurarTemporizador?? *
(??* +
)??+ ,
{@@ 	$
_temporizadorDespachadorAA $
=AA% &
newAA' *
DispatcherTimerAA+ :
(AA: ;
)AA; <
;AA< =$
_temporizadorDespachadorBB $
.BB$ %
IntervalBB% -
=BB. /
TimeSpanBB0 8
.BB8 9
FromSecondsBB9 D
(BBD E
$numBBE F
)BBF G
;BBG H$
_temporizadorDespachadorCC $
.CC$ %
TickCC% )
+=CC* ,
DisminuirTiempoCC- <
;CC< =$
_temporizadorDespachadorDD $
.DD$ %
StartDD% *
(DD* +
)DD+ ,
;DD, -
Txbl_CronometroEE 
.EE 
TextEE  
=EE  !
_tiempoRestanteEE! 0
.EE0 1
ToStringEE1 9
(EE9 :
)EE: ;
;EE; <
}FF 	
privateHH 
voidHH 
DisminuirTiempoHH $
(HH$ %
objectHH% +
senderHH, 2
,HH2 3
	EventArgsHH4 =
eHH> ?
)HH? @
{II 	
_tiempoRestanteJJ 
--JJ 
;JJ 
Txbl_CronometroKK 
.KK 
TextKK  
=KK! "
_tiempoRestanteKK# 2
.KK2 3
ToStringKK3 ;
(KK; <
)KK< =
;KK= >
ifLL 
(LL 
_tiempoRestanteLL 
==LL  "
$numLL# $
)LL$ %
{MM $
_temporizadorDespachadorNN (
.NN( )
StopNN) -
(NN- .
)NN. /
;NN/ 0
CambiarPreguntaOO 
(OO  
)OO  !
;OO! "
ActivarBotonesPP 
(PP 
)PP  
;PP  !
}QQ 
}RR 	
publicTT 
voidTT 
IniciarPreguntaTT #
(TT# $
)TT$ %
{UU 	
intVV 
numeroPreguntaVV 
=VV  !
_numeroPreguntaActualVV! 6
-VV7 8
$numVV9 :
;VV: ;
PreguntaContratoWW 
preguntaWW %
=WW& '

_preguntasWW( 2
[WW2 3
numeroPreguntaWW3 A
]WWA B
;WWB C
Txbl_PreguntaXX 
.XX 
TextXX 
=XX  
preguntaXX! )
.XX) *
PreguntaXX* 2
;XX2 3
ListYY 
<YY 
stringYY 
>YY 
respuestasActualesYY +
=YY, --
!ObtenerRespuestasDePreguntaActualYY. O
(YYO P
preguntaYYP X
.YYX Y

IdPreguntaYYY c
)YYc d
;YYd e
respuestasActualesZZ 
.ZZ 
AddZZ "
(ZZ" #
preguntaZZ# +
.ZZ+ ,
RespuestaCorrectaZZ, =
)ZZ= >
;ZZ> ?
List[[ 
<[[ 
string[[ 
>[[ 
respuestasAlAzar[[ )
=[[* +#
ObtenerRespuestasAlAzar[[, C
([[C D
respuestasActuales[[D V
)[[V W
;[[W X
Txbl_Respuesta1\\ 
.\\ 
Text\\  
=\\! "
respuestasAlAzar\\# 3
[\\3 4
$num\\4 5
]\\5 6
;\\6 7
Txbl_Respuesta2]] 
.]] 
Text]]  
=]]! "
respuestasAlAzar]]# 3
[]]3 4
$num]]4 5
]]]5 6
;]]6 7
Txbl_Respuesta3^^ 
.^^ 
Text^^  
=^^! "
respuestasAlAzar^^# 3
[^^3 4
$num^^4 5
]^^5 6
;^^6 7
Txbl_Respuesta4__ 
.__ 
Text__  
=__! "
respuestasAlAzar__# 3
[__3 4
$num__4 5
]__5 6
;__6 7
_tiempoRestante`` 
=`` 
$num``  
;``  !
Txbl_Cronometroaa 
.aa 
Textaa  
=aa! "
_tiempoRestanteaa# 2
.aa2 3
ToStringaa3 ;
(aa; <
)aa< =
;aa= >
}bb 	
privatedd 
Listdd 
<dd 
stringdd 
>dd -
!ObtenerRespuestasDePreguntaActualdd >
(dd> ?
intdd? B

idPreguntaddC M
)ddM N
{ee 	
Listff 
<ff 
stringff 
>ff 

respuestasff #
=ff# $
newff$ '
Listff( ,
<ff, -
stringff- 3
>ff3 4
(ff4 5
)ff5 6
;ff6 7
foreachgg 
(gg 
vargg 
	respuestagg "
ingg# %
_respuestasgg& 1
)gg1 2
{hh 
ifii 
(ii 
	respuestaii 
.ii 
FKIdPreguntaii *
==ii+ -

idPreguntaii. 8
)ii8 9
{jj 

respuestaskk 
.kk 
Addkk "
(kk" #
	respuestakk# ,
.kk, -
	Respuestakk- 6
)kk6 7
;kk7 8
}ll 
}mm 
returnnn 

respuestasnn 
;nn 
}oo 	
privateqq 
staticqq 
Listqq 
<qq 
stringqq "
>qq" ##
ObtenerRespuestasAlAzarqq$ ;
(qq; <
Listqq< @
<qq@ A
stringqqA G
>qqG H
respuestasActualesqqI [
)qq[ \
{rr 	
Randomss 
	aleatorioss 
=ss 
newss  
Randomss! '
(ss' (
)ss( )
;ss) *
returntt 
respuestasActualestt %
.tt% &
OrderBytt& -
(tt- .
xtt. /
=>tt/ 1
	aleatoriott1 :
.tt: ;
Nexttt; ?
(tt? @
)tt@ A
)ttA B
.ttB C
ToListttC I
(ttI J
)ttJ K
;ttK L
}uu 	
privateww 
voidww 
CambiarPreguntaww $
(ww$ %
)ww% &
{xx 	
ifyy 
(yy !
_numeroPreguntaActualyy %
<yy& '
_totalPreguntasyy( 7
)yy7 8
{zz !
_numeroPreguntaActual{{ %
++{{% '
;{{' (
IniciarPregunta|| 
(||  
)||  !
;||! "$
_temporizadorDespachador}} (
.}}( )
Start}}) .
(}}. /
)}}/ 0
;}}0 1
ActivarBotones~~ 
(~~ 
)~~  
;~~  !%
Txbl_NumeroPreguntaActual )
.) *
Text* .
=/ 0!
_numeroPreguntaActual1 F
.F G
ToStringG O
(O P
)P Q
;Q R
}
�� 
else
�� 
{
�� 
string
�� 
ganador
�� 
=
�� 
DeterminarGanador
�� 0
(
��0 1
)
��1 2
;
��2 3!
AsignarEstadisticas
�� #
(
��# $
)
��$ %
;
��% &
AsignarLogros
�� 
(
�� 
)
�� 
;
��  &
VentanaPartidaFinalizada
�� (%
paginaPartidaFinalizada
��) @
=
��@ A
new
��A D&
VentanaPartidaFinalizada
��E ]
(
��] ^
)
��^ _
;
��_ `%
paginaPartidaFinalizada
�� '
.
��' (
Lbl_NombreUsuario
��( 9
.
��9 :
Content
��: A
=
��B C
ganador
��D K
;
��K L
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0%
paginaPartidaFinalizada
��0 G
)
��G H
;
��H I
}
�� 
}
�� 	
private
�� 
string
�� 
DeterminarGanador
�� (
(
��( )
)
��) *
{
�� 	
string
�� 
ganador
�� 
=
�� 
$str
�� 
;
�� 
try
�� 
{
�� #
ServicioPartidaClient
�� %
servicioPartida
��& 5
=
��5 6
new
��6 9#
ServicioPartidaClient
��: O
(
��O P
)
��P Q
;
��Q R
ganador
�� 
=
�� 
servicioPartida
�� '
.
��' (
ObtenerGanador
��( 6
(
��6 7
_codigoPartida
��7 E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
return
�� 
ganador
�� 
;
�� 
}
�� 	
	protected
�� 
void
�� 
OnPropertyChanged
�� (
(
��( )
string
��) /
nombre
��0 6
)
��6 7
{
�� 	
var
�� 
handler
�� 
=
�� 
PropertyChanged
�� )
;
��) *
handler
�� 
?
�� 
.
�� 
Invoke
�� 
(
�� 
this
��  
,
��  !
new
��" %
System
��& ,
.
��, -
ComponentModel
��- ;
.
��; <&
PropertyChangedEventArgs
��< T
(
��T U
nombre
��U [
)
��[ \
)
��\ ]
;
��] ^
}
�� 	
public
�� 
event
�� 
System
�� 
.
�� 
ComponentModel
�� *
.
��* +)
PropertyChangedEventHandler
��+ F
PropertyChanged
��G V
;
��V W
private
�� 
void
�� 
RevisarRespuesta1
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
RevisarRespuesta
�� 
(
�� 
Txbl_Respuesta1
�� ,
.
��, -
Text
��- 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� 
RevisarRespuesta2
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
RevisarRespuesta
�� 
(
�� 
Txbl_Respuesta2
�� ,
.
��, -
Text
��- 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� 
RevisarRespuesta3
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
RevisarRespuesta
�� 
(
�� 
Txbl_Respuesta3
�� ,
.
��, -
Text
��- 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� 
RevisarRespuesta4
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
RevisarRespuesta
�� 
(
�� 
Txbl_Respuesta4
�� ,
.
��, -
Text
��- 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� 
RevisarRespuesta
�� %
(
��% &
string
��& ,#
respuestaSeleccionada
��- B
)
��B C
{
�� 	
DesactivarBotones
�� 
(
�� 
)
�� 
;
��  
int
�� 
puntaje
�� 
=
�� $
ObtenerCantidadPuntaje
�� 0
(
��0 1
)
��1 2
;
��2 3
int
�� 
numeroPregunta
�� 
=
��  #
_numeroPreguntaActual
��! 6
-
��7 8
$num
��9 :
;
��: ;
string
�� 
respuestaCorrecta
�� $
=
��% &$
_preguntasSinModificar
��' =
[
��= >
numeroPregunta
��> L
]
��L M
.
��M N
RespuestaCorrecta
��N _
;
��_ `
if
�� 
(
�� #
respuestaSeleccionada
�� %
==
��& (
respuestaCorrecta
��) :
)
��: ;
{
�� 
DeterminarPuntaje
�� !
(
��! "
)
��" #
;
��# $
puntaje
�� 
=
�� $
ObtenerCantidadPuntaje
�� 0
(
��0 1
)
��1 2
;
��2 3

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" >
{
��> ?
puntaje
��? F
}
��F G
"
��G H
)
��H I
;
��I J
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
puntaje
�� 
>=
�� 
$num
�� !
)
��! "
{
�� 
RestarPuntaje
�� !
(
��! "
)
��" #
;
��# $
puntaje
�� 
-=
�� 
$num
�� !
;
��! "
}
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" @
{
��@ A
puntaje
��A H
}
��H I
"
��I J
)
��J K
;
��K L
}
�� 
}
�� 	
private
�� 
void
�� 
DeterminarPuntaje
�� &
(
��& '
)
��' (
{
�� 	
try
�� 
{
�� #
ServicioPartidaClient
�� %
servicioPartida
��& 5
=
��5 6
new
��6 9#
ServicioPartidaClient
��: O
(
��O P
)
��P Q
;
��Q R
servicioPartida
�� 
.
��  
EvaluarPregunta
��  /
(
��/ 0
_codigoPartida
��0 >
,
��> ?
JugadorSingleton
��? O
.
��O P
NombreUsuario
��P ]
,
��] ^#
_numeroPreguntaActual
��_ t
)
��t u
;
��u v
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� 
RestarPuntaje
�� "
(
��" #
)
��# $
{
�� 	
try
�� 
{
�� #
ServicioPartidaClient
�� %
servicioPartida
��& 5
=
��6 7
new
��8 ;#
ServicioPartidaClient
��< Q
(
��Q R
)
��R S
;
��S T
servicioPartida
�� 
.
��  
RestarPuntaje
��  -
(
��- .
_codigoPartida
��. <
,
��< =
JugadorSingleton
��= M
.
��M N
NombreUsuario
��N [
)
��[ \
;
��\ ]
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
int
�� $
ObtenerCantidadPuntaje
�� *
(
��* +
)
��+ ,
{
�� 	
int
�� 
puntaje
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� #
ServicioPartidaClient
�� %
servicioPartida
��& 5
=
��6 7
new
��8 ;#
ServicioPartidaClient
��< Q
(
��Q R
)
��R S
;
��S T
puntaje
�� 
=
�� 
servicioPartida
�� '
.
��' (
ObtenerPuntaje
��( 6
(
��6 7
_codigoPartida
��7 E
,
��E F
JugadorSingleton
��F V
.
��V W
NombreUsuario
��W d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
return
�� 
puntaje
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
DesactivarBotones
�� &
(
��& '
)
��' (
{
�� 	
Btn_Respuesta1
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
false
��. 3
;
��3 4
Btn_Respuesta2
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
false
��. 3
;
��3 4
Btn_Respuesta3
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
false
��. 3
;
��3 4
Btn_Respuesta4
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
false
��. 3
;
��3 4
}
�� 	
private
�� 
void
�� 
ActivarBotones
�� #
(
��# $
)
��$ %
{
�� 	
Btn_Respuesta1
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
true
��. 2
;
��2 3
Btn_Respuesta2
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
true
��. 2
;
��2 3
Btn_Respuesta3
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
true
��. 2
;
��2 3
Btn_Respuesta4
�� 
.
�� 
IsHitTestVisible
�� +
=
��, -
true
��. 2
;
��2 3
}
�� 	
private
�� 
bool
�� &
ValidarJugadorRegistrado
�� -
(
��- .
)
��. /
{
�� 	
return
�� 
JugadorSingleton
�� #
.
��# $
	IdJugador
��$ -
>
��. /
$num
��0 1
;
��1 2
}
�� 	
private
�� 
void
�� !
AsignarEstadisticas
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� &
ValidarJugadorRegistrado
�� (
(
��( )
)
��) *
)
��* +
{
�� 
SumarPuntaje
�� 
(
�� 
)
�� 
;
�� $
AumentarNumeroPartidas
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
private
�� 
void
�� 
SumarPuntaje
�� !
(
��! "
)
��" #
{
�� 	
int
�� 
puntaje
�� 
=
�� $
ObtenerCantidadPuntaje
�� 0
(
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
puntaje
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
try
�� 
{
�� /
!ServicioGestionEstadisticasClient
�� 5)
servicioGestionEstadisticas
��6 Q
=
��R S
new
��T W/
!ServicioGestionEstadisticasClient
��X y
(
��y z
)
��z {
;
��{ |)
servicioGestionEstadisticas
�� /
.
��/ 0*
SumarPuntajePorIdEstadistica
��0 L
(
��L M
JugadorSingleton
��M ]
.
��] ^
IdEstadistica
��^ k
,
��k l
puntaje
��m t
)
��t u
;
��u v
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� $
AumentarNumeroPartidas
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
DeterminarGanador
�� !
(
��! "
)
��" #
==
��$ &
JugadorSingleton
��' 7
.
��7 8
NombreUsuario
��8 E
)
��E F
{
�� 
try
�� 
{
�� /
!ServicioGestionEstadisticasClient
�� 5)
servicioGestionEstadisticas
��6 Q
=
��R S
new
��T W/
!ServicioGestionEstadisticasClient
��X y
(
��y z
)
��z {
;
��{ |)
servicioGestionEstadisticas
�� /
.
��/ 05
'AumentarPartidasGanadasPorIdEstadistica
��0 W
(
��W X
JugadorSingleton
��X h
.
��h i
IdEstadistica
��i v
)
��v w
;
��w x
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
else
�� 
{
�� 
try
�� 
{
�� /
!ServicioGestionEstadisticasClient
�� 5)
servicioGestionEstadisticas
��6 Q
=
��R S
new
��T W/
!ServicioGestionEstadisticasClient
��X y
(
��y z
)
��z {
;
��{ |)
servicioGestionEstadisticas
�� /
.
��/ 06
(AumentarPartidasPerdidasPorIdEstadistica
��0 X
(
��X Y
JugadorSingleton
��Y i
.
��i j
IdEstadistica
��j w
)
��w x
;
��x y
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
AsignarLogros
�� "
(
��" #
)
��# $
{
�� 	
if
�� 
(
�� &
ValidarJugadorRegistrado
�� (
(
��( )
)
��) *
)
��* +
{
��  
AsignarPrimerLogro
�� "
(
��" #
)
��# $
;
��$ %!
AsignarSegundoLogro
�� #
(
��# $
)
��$ %
;
��% & 
AsignarTercerLogro
�� "
(
��" #
)
��# $
;
��$ % 
AsignarCuartoLogro
�� "
(
��" #
)
��# $
;
��$ % 
AsignarQuintoLogro
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
private
�� 
void
��  
AsignarPrimerLogro
�� '
(
��' (
)
��( )
{
�� 	
try
�� 
{
�� )
ServicioGestionLogrosClient
�� +#
servicioGestionLogros
��, A
=
��B C
new
��D G)
ServicioGestionLogrosClient
��H c
(
��c d
)
��d e
;
��e f
int
�� %
verificacionPrimerLogro
�� +
=
��+ ,#
servicioGestionLogros
��, A
.
��A B2
$VerificarPrimerLogroPorIdEstadistica
��B f
(
��f g
JugadorSingleton
��g w
.
��w x
IdEstadistica��x �
)��� �
;��� �
if
�� 
(
�� %
verificacionPrimerLogro
�� +
==
��, .
$num
��/ 0
)
��0 1
{
�� 
int
�� "
verificacionRegistro
�� ,
=
��- .#
servicioGestionLogros
��/ D
.
��D E:
,VerificarRegistroEspecificoLogroPorIdJugador
��E q
(
��q r
JugadorSingleton��r �
.��� �
	IdJugador��� �
,��� �!
ValoresConstantes��� �
.��� �
IdPrimerLogro��� �
)��� �
;��� �
if
�� 
(
�� "
verificacionRegistro
�� ,
==
��- /
$num
��0 1
)
��1 2
{
�� #
servicioGestionLogros
�� -
.
��- .-
RegistrarNuevoLogroPorIdJugador
��. M
(
��M N
JugadorSingleton
��N ^
.
��^ _
	IdJugador
��_ h
,
��h i
ValoresConstantes
��j {
.
��{ |
IdPrimerLogro��| �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
if
�� 
(
�� %
verificacionPrimerLogro
�� 0
==
��1 3
-
��4 5
$num
��5 6
)
��6 7
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� !
AsignarSegundoLogro
�� (
(
��( )
)
��) *
{
�� 	
try
�� 
{
�� )
ServicioGestionLogrosClient
�� +#
servicioGestionLogros
��, A
=
��B C
new
��D G)
ServicioGestionLogrosClient
��H c
(
��c d
)
��d e
;
��e f
int
�� &
verificacionSegundoLogro
�� ,
=
��- .#
servicioGestionLogros
��/ D
.
��D E3
%VerificarSegundoLogroPorIdEstadistica
��E j
(
��j k
JugadorSingleton
��k {
.
��{ |
IdEstadistica��| �
)��� �
;��� �
if
�� 
(
�� &
verificacionSegundoLogro
�� ,
==
��- /
$num
��0 1
)
��1 2
{
�� 
int
�� "
verificacionRegistro
�� ,
=
��- .#
servicioGestionLogros
��/ D
.
��D E:
,VerificarRegistroEspecificoLogroPorIdJugador
��E q
(
��q r
JugadorSingleton��r �
.��� �
	IdJugador��� �
,��� �!
ValoresConstantes��� �
.��� �
IdSegundoLogro��� �
)��� �
;��� �
if
�� 
(
�� "
verificacionRegistro
�� ,
==
��- /
$num
��0 1
)
��1 2
{
�� #
servicioGestionLogros
�� -
.
��- .-
RegistrarNuevoLogroPorIdJugador
��. M
(
��M N
JugadorSingleton
��N ^
.
��^ _
	IdJugador
��_ h
,
��h i
ValoresConstantes
��j {
.
��{ |
IdSegundoLogro��| �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
if
�� 
(
�� &
verificacionSegundoLogro
�� 1
==
��2 4
-
��5 6
$num
��6 7
)
��7 8
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U%
MensajeErrorBaseDeDatos
��U l
)
��l m
;
��m n
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
��  
AsignarTercerLogro
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� $
ObtenerCantidadPuntaje
�� &
(
��& '
)
��' (
>=
��) +
ValoresConstantes
��, =
.
��= >
PuntajeTecerLogro
��> O
)
��O P
{
�� 
try
�� 
{
�� )
ServicioGestionLogrosClient
�� /#
servicioGestionLogros
��0 E
=
��F G
new
��H K)
ServicioGestionLogrosClient
��L g
(
��g h
)
��h i
;
��i j
int
�� "
verificacionRegistro
�� ,
=
��- .#
servicioGestionLogros
��/ D
.
��D E:
,VerificarRegistroEspecificoLogroPorIdJugador
��E q
(
��q r
JugadorSingleton��r �
.��� �
	IdJugador��� �
,��� �!
ValoresConstantes��� �
.��� �
IdTercerLogro��� �
)��� �
;��� �
if
�� 
(
�� "
verificacionRegistro
�� ,
==
��- /
$num
��0 1
)
��1 2
{
�� #
servicioGestionLogros
�� -
.
��- .-
RegistrarNuevoLogroPorIdJugador
��. M
(
��M N
JugadorSingleton
��N ^
.
��^ _
	IdJugador
��_ h
,
��h i
ValoresConstantes
��j {
.
��{ |
IdTercerLogro��| �
)��� �
;��� �
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
private
�� 
void
��  
AsignarCuartoLogro
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
DeterminarGanador
�� !
(
��! "
)
��" #
==
��$ &
JugadorSingleton
��' 7
.
��7 8
NombreUsuario
��8 E
)
��E F
{
�� 
PartidaContrato
�� 
partida
��  '
=
��( )
ObtenerPartida
��* 8
(
��8 9
)
��9 :
;
��: ;
if
�� 
(
�� 
partida
�� 
.
�� 
	ModoJuego
�� %
==
��& (
Enumeracion
��) 4
.
��4 5"
EnumModoJuegoPartida
��5 I
.
��I J
Dificil
��J Q
.
��Q R
ToString
��R Z
(
��Z [
)
��[ \
)
��\ ]
{
�� 
try
�� 
{
�� )
ServicioGestionLogrosClient
�� 3#
servicioGestionLogros
��4 I
=
��J K
new
��L O)
ServicioGestionLogrosClient
��P k
(
��k l
)
��l m
;
��m n
int
�� "
verificacionRegistro
�� 0
=
��1 2#
servicioGestionLogros
��3 H
.
��H I:
,VerificarRegistroEspecificoLogroPorIdJugador
��I u
(
��u v
JugadorSingleton��v �
.��� �
	IdJugador��� �
,��� �!
ValoresConstantes��� �
.��� �
IdCuartoLogro��� �
)��� �
;��� �
if
�� 
(
�� "
verificacionRegistro
�� 0
==
��1 3
$num
��4 5
)
��5 6
{
�� #
servicioGestionLogros
�� 1
.
��1 2-
RegistrarNuevoLogroPorIdJugador
��2 Q
(
��Q R
JugadorSingleton
��R b
.
��b c
	IdJugador
��c l
,
��l m
ValoresConstantes
��n 
.�� �
IdCuartoLogro��� �
)��� �
;��� �
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 4-
excepcionPuntoFinalNoEncontrado
��5 T
)
��T U
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y"
MensajeErrorConexion
��Y m
)
��m n
;
��n o
	_bitacora
�� !
.
��! "
Warn
��" &
(
��& '-
excepcionPuntoFinalNoEncontrado
��' F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
PartidaContrato
�� 
ObtenerPartida
��  .
(
��. /
)
��/ 0
{
�� 	
PartidaContrato
�� 
partidaRecuperada
�� -
=
��- .
new
��. 1
PartidaContrato
��2 A
(
��A B
)
��B C
;
��C D
try
�� 
{
�� *
ServicioGestionPartidaClient
�� ,$
servicioGestionPartida
��- C
=
��C D
new
��D G*
ServicioGestionPartidaClient
��H d
(
��d e
)
��e f
;
��f g
partidaRecuperada
�� !
=
��! "$
servicioGestionPartida
��" 8
.
��8 9'
RecuperarPartidaPorCodigo
��9 R
(
��R S
_codigoPartida
��S a
)
��a b
;
��b c
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
return
�� 
partidaRecuperada
�� $
;
��$ %
}
�� 	
private
�� 
void
��  
AsignarQuintoLogro
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� $
ObtenerCantidadPuntaje
�� &
(
��& '
)
��' (
>=
��) +
ValoresConstantes
��, =
.
��= > 
PuntajeQuintoLogro
��> P
)
��P Q
{
�� 
try
�� 
{
�� )
ServicioGestionLogrosClient
�� /#
servicioGestionLogros
��0 E
=
��F G
new
��H K)
ServicioGestionLogrosClient
��L g
(
��g h
)
��h i
;
��i j
int
�� "
verificacionRegistro
�� ,
=
��- .#
servicioGestionLogros
��/ D
.
��D E:
,VerificarRegistroEspecificoLogroPorIdJugador
��E q
(
��q r
JugadorSingleton��r �
.��� �
	IdJugador��� �
,��� �!
ValoresConstantes��� �
.��� �
IdQuintoLogro��� �
)��� �
;��� �
if
�� 
(
�� "
verificacionRegistro
�� ,
==
��- /
$num
��0 1
)
��1 2
{
�� #
servicioGestionLogros
�� -
.
��- .-
RegistrarNuevoLogroPorIdJugador
��. M
(
��M N
JugadorSingleton
��N ^
.
��^ _
	IdJugador
��_ h
,
��h i
ValoresConstantes
��j {
.
��{ |
IdQuintoLogro��| �
)��� �
;��� �
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
\C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaPersonalizarPerfil.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class %
VentanaPersonalizarPerfil 2
:3 4
Page5 9
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public %
VentanaPersonalizarPerfil (
(( )
)) *
{ 	
InitializeComponent 
(  
)  !
;! "
LlenarCampos 
( 
) 
; 
} 	
private!! 
void!! !
AceptarInicioDeSesion!! *
(!!* +
object!!+ 1
sender!!2 8
,!!8 9
RoutedEventArgs!!: I
e!!J K
)!!K L
{"" 	
CompararCampos## 
(## 
)## 
;## 
}$$ 	
private&& 
void&& 
LlenarCampos&& !
(&&! "
)&&" #
{'' 	

Txb_Correo(( 
.(( 
Text(( 
=(( 
JugadorSingleton(( .
.((. /
Correo((/ 5
;((5 6
Txb_Descripcion)) 
.)) 
Text))  
=))! "
JugadorSingleton))# 3
.))3 4
Descripcion))4 ?
;))? @
Txb_NombreDeUsuario** 
.**  
Text**  $
=**% &
JugadorSingleton**' 7
.**7 8
NombreUsuario**8 E
;**E F
}++ 	
private-- 
void-- 
CompararCampos-- #
(--# $
)--$ %
{.. 	
ReiniciarCampos// 
(// 
)// 
;// 
int00 
	idJugador00 
=00 
JugadorSingleton00 ,
.00, -
	IdJugador00- 6
;006 7
int11 
idAcceso11 
=11 
JugadorSingleton11 +
.11+ ,
IdAcceso11, 4
;114 5
if22 
(22 

Txb_Correo22 
.22 
Text22 
!=22  "
JugadorSingleton22# 3
.223 4
Correo224 :
)22: ;
{33 #
EditarCorreoPorIdAcceso44 '
(44' (
idAcceso44( 0
,440 1

Txb_Correo442 <
.44< =
Text44= A
)44A B
;44B C
}55 
if77 
(77 
Txb_Descripcion77 
.77  
Text77  $
!=77% '
JugadorSingleton77( 8
.778 9
Descripcion779 D
)77D E
{88 )
EditarDescripcionPorIdJugador99 -
(99- .
	idJugador99. 7
,997 8
Txb_Descripcion999 H
.99H I
Text99I M
)99M N
;99N O
}:: 
if<< 
(<< 
Txb_NombreDeUsuario<< #
.<<# $
Text<<$ (
!=<<) +
JugadorSingleton<<, <
.<<< =
NombreUsuario<<= J
)<<J K
{== +
EditarNombreUsuarioPorIdJugador>> /
(>>/ 0
	idJugador>>0 9
,>>9 :
Txb_NombreDeUsuario>>; N
.>>N O
Text>>O S
)>>S T
;>>T U
}?? 
}@@ 	
publicBB 
voidBB #
EditarCorreoPorIdAccesoBB +
(BB+ ,
intBB, /
idAccesoBB0 8
,BB8 9
stringBB: @
nuevoCorreoBBA L
)BBL M
{CC 	
ifDD 
(DD 
ValidarNuevoCorreoDD "
(DD" #
nuevoCorreoDD# .
)DD. /
)DD/ 0
{EE 
tryFF 
{GG /
#ServicioPersonalizacionPerfilClientHH 7)
servicioPersonalizacionPerfilHH8 U
=HHV W
newHHX [/
#ServicioPersonalizacionPerfilClientHH\ 
(	HH �
)
HH� �
;
HH� �'
ServicioGestionAccesoClientII /!
servicioGestionAccesoII0 E
=IIF G
newIIH K'
ServicioGestionAccesoClientIIL g
(IIg h
)IIh i
;IIi j
intJJ 
validacionCorreoJJ (
=JJ) *!
servicioGestionAccesoJJ+ @
.JJ@ A$
ValidarPresenciaDeCorreoJJA Y
(JJY Z
nuevoCorreoJJZ e
)JJe f
;JJf g
ifKK 
(KK 
validacionCorreoKK (
==KK) +
$numKK, -
)KK- .
{LL 
intMM "
resultadoEdicionCorreoMM 2
=MM3 4)
servicioPersonalizacionPerfilMM5 R
.MMR S#
EditarCorreoPorIdAccesoMMS j
(MMj k
idAccesoMMk s
,MMs t
nuevoCorreo	MMu �
)
MM� �
;
MM� �
ifNN 
(NN "
resultadoEdicionCorreoNN 2
==NN3 5
$numNN6 7
)NN7 8
{OO 
MensajeVentanaPP *
.PP* +*
MostrarVentanaEmergenteExitosaPP+ I
(PPI J

PropertiesPPJ T
.PPT U
	ResourcesPPU ^
.PP^ _#
MensajeCambiosGuardadosPP_ v
)PPv w
;PPw x
JugadorSingletonQQ ,
.QQ, -
CorreoQQ- 3
=QQ4 5
nuevoCorreoQQ6 A
;QQA B
}RR 
elseSS 
{TT 
MensajeVentanaUU *
.UU* +(
MostrarVentanaEmergenteErrorUU+ G
(UUG H

PropertiesUUH R
.UUR S
	ResourcesUUS \
.UU\ ]#
MensajeErrorBaseDeDatosUU] t
)UUt u
;UUu v
}VV 
}WW 
elseXX 
ifXX 
(XX 
validacionCorreoXX -
==XX. 0
$numXX1 2
)XX2 3
{YY 
MensajeVentanaZZ &
.ZZ& '(
MostrarVentanaEmergenteErrorZZ' C
(ZZC D

PropertiesZZD N
.ZZN O
	ResourcesZZO X
.ZZX Y#
MensajeCorreoRegistradoZZY p
)ZZp q
;ZZq r
}[[ 
else\\ 
{]] 
MensajeVentana^^ &
.^^& '(
MostrarVentanaEmergenteError^^' C
(^^C D

Properties^^D N
.^^N O
	Resources^^O X
.^^X Y#
MensajeErrorBaseDeDatos^^Y p
)^^p q
;^^q r
}__ 
}`` 
catchaa 
(aa %
EndpointNotFoundExceptionaa 0+
excepcionPuntoFinalNoEncontradoaa1 P
)aaP Q
{bb 
MensajeVentanacc "
.cc" #(
MostrarVentanaEmergenteErrorcc# ?
(cc? @

Propertiescc@ J
.ccJ K
	ResourcesccK T
.ccT U 
MensajeErrorConexionccU i
)cci j
;ccj k
	_bitacoradd 
.dd 
Warndd "
(dd" #+
excepcionPuntoFinalNoEncontradodd# B
)ddB C
;ddC D
}ee 
}ff 
elsegg 
{hh 
MensajeVentanaii 
.ii (
MostrarVentanaEmergenteErrorii ;
(ii; <

Propertiesii< F
.iiF G
	ResourcesiiG P
.iiP Q&
MensajeInformacionInvalidaiiQ k
)iik l
;iil m

Txb_Correojj 
.jj 
BorderBrushjj &
=jj' (
Brushesjj) 0
.jj0 1
Redjj1 4
;jj4 5

Txb_Correokk 
.kk 
BorderThicknesskk *
=kk+ ,
newkk- 0
	Thicknesskk1 :
(kk: ;
$numkk; <
)kk< =
;kk= >
}ll 
}mm 	
privateoo 
voidoo 
ReiniciarCamposoo $
(oo$ %
)oo% &
{pp 	

Txb_Correoqq 
.qq 
BorderBrushqq "
=qq# $
Brushesqq% ,
.qq, -
Transparentqq- 8
;qq8 9

Txb_Correorr 
.rr 
BorderThicknessrr &
=rr' (
newrr) ,
	Thicknessrr- 6
(rr6 7
$numrr7 8
)rr8 9
;rr9 :
Txb_Descripcionss 
.ss 
BorderBrushss '
=ss( )
Brushesss* 1
.ss1 2
Transparentss2 =
;ss= >
Txb_Descripciontt 
.tt 
BorderThicknesstt +
=tt, -
newtt. 1
	Thicknesstt2 ;
(tt; <
$numtt< =
)tt= >
;tt> ?
Txb_NombreDeUsuariouu 
.uu  
BorderBrushuu  +
=uu, -
Brushesuu. 5
.uu5 6
Transparentuu6 A
;uuA B
Txb_NombreDeUsuariovv 
.vv  
BorderThicknessvv  /
=vv0 1
newvv2 5
	Thicknessvv6 ?
(vv? @
$numvv@ A
)vvA B
;vvB C
}ww 	
privatexx 
boolxx 
ValidarNuevoCorreoxx '
(xx' (
stringxx( .
correoxx/ 5
)xx5 6
{yy 	
returnzz 
ValidacionAccesozz #
.zz# $
ValidarCorreozz$ 1
(zz1 2
correozz2 8
)zz8 9
;zz9 :
}{{ 	
private}} 
bool}} #
ValidarNuevaDescripcion}} ,
(}}, -
string}}- 3
descripcion}}4 ?
)}}? @
{~~ 	
return 
ValidacionJugador $
.$ %
ValidarDescripcion% 7
(7 8
descripcion8 C
)C D
;D E
}
�� 	
private
�� 
bool
�� '
ValidarNuevoNombreUsuario
�� .
(
��. /
string
��/ 5
nombreUsuario
��6 C
)
��C D
{
�� 	
return
�� 
ValidacionJugador
�� $
.
��$ %"
ValidarNombreUsuario
��% 9
(
��9 :
nombreUsuario
��: G
)
��G H
;
��H I
}
�� 	
public
�� 
void
�� +
EditarDescripcionPorIdJugador
�� 1
(
��1 2
int
��2 5
	idJugador
��6 ?
,
��? @
string
��A G
nuevaDescripcion
��H X
)
��X Y
{
�� 	
if
�� 
(
�� %
ValidarNuevaDescripcion
�� '
(
��' (
nuevaDescripcion
��( 8
)
��8 9
)
��9 :
{
�� 
try
�� 
{
�� 1
#ServicioPersonalizacionPerfilClient
�� 7
proxy
��8 =
=
��> ?
new
��@ C
ServidorPassword
��D T
.
��T U1
#ServicioPersonalizacionPerfilClient
��U x
(
��x y
)
��y z
;
��z {
int
�� )
resultadoEdicionDescripcion
�� 3
=
��4 5
proxy
��6 ;
.
��; <+
EditarDescripcionPorIdJugador
��< Y
(
��Y Z
	idJugador
��Z c
,
��c d
nuevaDescripcion
��e u
)
��u v
;
��v w
if
�� 
(
�� )
resultadoEdicionDescripcion
�� 3
==
��4 6
$num
��7 8
)
��8 9
{
�� 
MensajeVentana
�� &
.
��& ',
MostrarVentanaEmergenteExitosa
��' E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [%
MensajeCambiosGuardados
��[ r
)
��r s
;
��s t
JugadorSingleton
�� (
.
��( )
Descripcion
��) 4
=
��5 6
nuevaDescripcion
��7 G
;
��G H"
VentanaMenuPrincipal
�� ,!
paginaMenuPrincipal
��- @
=
��@ A
new
��B E"
VentanaMenuPrincipal
��F Z
(
��Z [
)
��[ \
;
��\ ]
this
�� 
.
�� 
NavigationService
�� .
.
��. /
Navigate
��/ 7
(
��7 8!
paginaMenuPrincipal
��8 K
)
��K L
;
��L M
}
�� 
else
�� 
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y%
MensajeErrorBaseDeDatos
��Y p
)
��p q
;
��q r
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
else
�� 
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q(
MensajeInformacionInvalida
��Q k
)
��k l
;
��l m
Txb_Descripcion
�� 
.
��  
BorderBrush
��  +
=
��, -
Brushes
��. 5
.
��5 6
Red
��6 9
;
��9 :
Txb_Descripcion
�� 
.
��  
BorderThickness
��  /
=
��0 1
new
��2 5
	Thickness
��6 ?
(
��? @
$num
��@ A
)
��A B
;
��B C
}
�� 
}
�� 	
public
�� 
void
�� -
EditarNombreUsuarioPorIdJugador
�� 3
(
��3 4
int
��4 7
	idJugador
��8 A
,
��A B
string
��C I 
nuevoNombreUsuario
��J \
)
��\ ]
{
�� 	
if
�� 
(
�� '
ValidarNuevoNombreUsuario
�� )
(
��) * 
nuevoNombreUsuario
��* <
)
��< =
)
��= >
{
�� 
try
�� 
{
�� 1
#ServicioPersonalizacionPerfilClient
�� 7+
servicioPersonalizacionPerfil
��8 U
=
��V W
new
��X [1
#ServicioPersonalizacionPerfilClient
��\ 
(�� �
)��� �
;��� �)
ServicioGestionAccesoClient
�� /#
servicioGestionAcceso
��0 E
=
��F G
new
��H K)
ServicioGestionAccesoClient
��L g
(
��g h
)
��h i
;
��i j
int
�� %
validacionNombreUsuario
�� /
=
��0 1#
servicioGestionAcceso
��2 G
.
��G H"
ValidarNombreUsuario
��H \
(
��\ ] 
nuevoNombreUsuario
��] o
)
��o p
;
��p q
if
�� 
(
�� %
validacionNombreUsuario
�� /
==
��0 2
$num
��3 4
)
��4 5
{
�� 
int
�� +
resultadoEdicionNombreUsuario
�� 9
=
��: ;+
servicioPersonalizacionPerfil
��< Y
.
��Y Z-
EditarNombreUsuarioPorIdJugador
��Z y
(
��y z
	idJugador��z �
,��� �"
nuevoNombreUsuario��� �
)��� �
;��� �
if
�� 
(
�� +
resultadoEdicionNombreUsuario
�� 9
==
��: <
$num
��= >
)
��> ?
{
�� 
MensajeVentana
�� *
.
��* +,
MostrarVentanaEmergenteExitosa
��+ I
(
��I J

Properties
��J T
.
��T U
	Resources
��U ^
.
��^ _%
MensajeCambiosGuardados
��_ v
)
��v w
;
��w x
JugadorSingleton
�� ,
.
��, -
NombreUsuario
��- :
=
��; < 
nuevoNombreUsuario
��= O
;
��O P
}
�� 
else
�� 
{
�� 
MensajeVentana
�� *
.
��* +*
MostrarVentanaEmergenteError
��+ G
(
��G H

Properties
��H R
.
��R S
	Resources
��S \
.
��\ ]%
MensajeErrorBaseDeDatos
��] t
)
��t u
;
��u v
}
�� 
}
�� 
else
�� 
if
�� 
(
�� %
validacionNombreUsuario
�� 4
==
��5 7
$num
��8 9
)
��9 :
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y(
MensajeUsuarioNoDisponible
��Y s
)
��s t
;
��t u
}
�� 
else
�� 
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y%
MensajeErrorBaseDeDatos
��Y p
)
��p q
;
��q r
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
else
�� 
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q(
MensajeInformacionInvalida
��Q k
)
��k l
;
��l m!
Txb_NombreDeUsuario
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >!
Txb_NombreDeUsuario
�� #
.
��# $
BorderThickness
��$ 3
=
��4 5
new
��6 9
	Thickness
��: C
(
��C D
$num
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
private
�� 
void
�� %
CancelarPersonalizacion
�� ,
(
��, -
object
��- 3
	remitente
��4 =
,
��= >
RoutedEventArgs
��? N
	argumento
��O X
)
��X Y
{
�� 	"
VentanaMenuPrincipal
��  !
paginaMenuPrincipal
��! 4
=
��5 6
new
��7 :"
VentanaMenuPrincipal
��; O
(
��O P
)
��P Q
;
��Q R
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,!
paginaMenuPrincipal
��, ?
)
��? @
;
��@ A
}
�� 	
private
�� 
void
��  
CambiarContrasenia
�� '
(
��' (
object
��( .
	remitente
��/ 8
,
��8 9
RoutedEventArgs
��: I
	argumento
��J S
)
��S T
{
�� 	&
VentanaCambioContrasenia
�� $%
paginaCambioContrasenia
��% <
=
��= >
new
��? B&
VentanaCambioContrasenia
��C [
(
��[ \
)
��\ ]
;
��] ^
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,%
paginaCambioContrasenia
��, C
)
��C D
;
��D E
}
�� 	
private
�� 
void
�� 
CambiarImagen
�� "
(
��" #
object
��# )
	remitente
��* 3
,
��3 4
RoutedEventArgs
��5 D
	argumento
��E N
)
��N O
{
�� 	$
VentanaImagenDeJugador
�� "#
paginaImagenDeJugador
��# 8
=
��9 :
new
��; >$
VentanaImagenDeJugador
��? U
(
��U V
)
��V W
;
��W X
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,#
paginaImagenDeJugador
��, A
)
��A B
;
��B C
}
�� 	
}
�� 
}�� �
YC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaPerfilDeJugador.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class "
VentanaPerfilDeJugador /
:0 1
Page2 6
{ 
public "
VentanaPerfilDeJugador %
(% &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
AceptarClick !
(! "
object" (
sender) /
,/ 0
RoutedEventArgs1 @
eA B
)B C
{ 	
NavigationService 
. 
GoBack $
($ %
)% &
;& '
}   	
}"" 
}## �W
WC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaMenuPrincipal.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class  
VentanaMenuPrincipal -
:. /
Page0 4
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public  
VentanaMenuPrincipal #
(# $
)$ %
{ 	
InitializeComponent 
(  
)  !
;! ""
ConfigurarImagenPerfil   "
(  " #
)  # $
;  $ % 
AsignarBotonesIdioma!!  
(!!  !
)!!! "
;!!" #
}## 	
private%% 
void%% "
ConfigurarImagenPerfil%% +
(%%+ ,
)%%, -
{&& 	

Img_Perfil'' 
.'' 
Source'' 
='' 
new''  #
BitmapImage''$ /
(''/ 0
new''0 3
Uri''4 7
(''7 8
JugadorSingleton''8 H
.''H I

RutaImagen''I S
)''S T
)''T U
;''U V
}(( 	
private** 
void** 
PersonalizarPerfil** '
(**' (
object**( .
	remitente**/ 8
,**8 9
RoutedEventArgs**: I
	argumento**J S
)**S T
{++ 	%
VentanaPersonalizarPerfil,, %$
paginaPersonalizarPerfil,,& >
=,,? @
new,,A D%
VentanaPersonalizarPerfil,,E ^
(,,^ _
),,_ `
;,,` a
this-- 
.-- 
NavigationService-- "
.--" #
Navigate--# +
(--+ ,$
paginaPersonalizarPerfil--, D
)--D E
;--E F
}.. 	
private00 
void00 
AgregarAmigo00 !
(00! "
object00" (
	remitente00) 2
,002 3
RoutedEventArgs004 C
	argumento00D M
)00M N
{11 	
VentanaAgregarAmigo22 
paginaAgregarAmigo22  2
=223 4
new225 8
VentanaAgregarAmigo229 L
(22L M
)22M N
;22N O
this33 
.33 
NavigationService33 "
.33" #
Navigate33# +
(33+ ,
paginaAgregarAmigo33, >
)33> ?
;33? @
}44 	
private66 
void66 
VerEstadisticas66 $
(66$ %
object66% +
	remitente66, 5
,665 6
RoutedEventArgs667 F
	argumento66G P
)66P Q
{77 	
VentanaEstadisticas88 
paginaEstadisticas88  2
=882 3
new883 6
VentanaEstadisticas887 J
(88J K
)88K L
;88L M
this99 
.99 
NavigationService99 "
.99" #
Navigate99# +
(99+ ,
paginaEstadisticas99, >
)99> ?
;99? @
}:: 	
private;; 
void;; 
SalirDelJuego;; "
(;;" #
object;;# )
sender;;* 0
,;;0 1
RoutedEventArgs;;2 A
e;;B C
);;C D
{<< 	
DesconectarJugador== 
(== 
)==  
;==  !
VentanaInicio>> 
paginaInicio>> &
=>>& '
new>>( +
VentanaInicio>>, 9
(>>9 :
)>>: ;
;>>; <
this?? 
.?? 
NavigationService?? "
.??" #
Navigate??# +
(??+ ,
paginaInicio??, 8
)??8 9
;??9 :
}@@ 	
privateBB 
voidBB 
DesconectarJugadorBB '
(BB' (
)BB( )
{CC 	
tryDD 
{EE #
ServicioJugadoresClientFF '
servicioJugadoresFF( 9
=FF9 :
newFF: =#
ServicioJugadoresClientFF> U
(FFU V
)FFV W
;FFW X
servicioJugadoresGG !
.GG! "#
DesconectarJugadorJuegoGG" 9
(GG9 :
JugadorSingletonGG: J
.GGJ K
NombreUsuarioGGK X
)GGX Y
;GGY Z
}HH 
catchII 
(II %
EndpointNotFoundExceptionII ,+
excepcionPuntoFinalNoEncontradoII- L
)IIL M
{JJ 
MensajeVentanaKK 
.KK (
MostrarVentanaEmergenteErrorKK ;
(KK; <

PropertiesKK< F
.KKF G
	ResourcesKKG P
.KKP Q 
MensajeErrorConexionKKQ e
)KKe f
;KKf g
	_bitacoraLL 
.LL 
WarnLL 
(LL +
excepcionPuntoFinalNoEncontradoLL >
)LL> ?
;LL? @
}MM 
}NN 	
privatePP 
voidPP 
ConsultarAmigosPP $
(PP$ %
objectPP% +
	remitentePP, 5
,PP5 6
RoutedEventArgsPP7 F
	argumentoPPG P
)PPP Q
{QQ 	
VentanaAmigosRR 
paginaAmigosRR &
=RR& '
newRR( +
VentanaAmigosRR, 9
(RR9 :
)RR: ;
;RR; <
thisSS 
.SS 
NavigationServiceSS "
.SS" #
NavigateSS# +
(SS+ ,
paginaAmigosSS, 8
)SS8 9
;SS9 :
}TT 	
privateVV 
voidVV #
VerSolicitudesDeAmistadVV ,
(VV, -
objectVV- 3
	remitenteVV4 =
,VV= >
RoutedEventArgsVV? N
	argumentoVVO X
)VVX Y
{WW 	'
VentanaSolicitudesDeAmistadXX '&
paginaSolicitudesDeAmistadXX( B
=XXB C
newXXC F'
VentanaSolicitudesDeAmistadXXG b
(XXb c
)XXc d
;XXd e
thisYY 
.YY 
NavigationServiceYY "
.YY" #
NavigateYY# +
(YY+ ,&
paginaSolicitudesDeAmistadYY, F
)YYF G
;YYG H
}ZZ 	
private\\ 
void\\ #
ElegirDificultadPartida\\ ,
(\\, -
object\\- 3
	remitente\\4 =
,\\= >
RoutedEventArgs\\? N
	argumento\\O X
)\\X Y
{]] 	$
VentanaDificultadPartida^^ $#
paginaDificultadPartida^^% <
=^^= >
new^^? B$
VentanaDificultadPartida^^C [
(^^[ \
)^^\ ]
;^^] ^
this__ 
.__ 
NavigationService__ "
.__" #
Navigate__# +
(__+ ,#
paginaDificultadPartida__, C
)__C D
;__D E
}`` 	
privatebb 
voidbb 
AbrirCodigoPartidabb '
(bb' (
objectbb( .
	remitentebb/ 8
,bb8 9
RoutedEventArgsbb: I
	argumentobbJ S
)bbS T
{cc 	
VentanaUnionPartidadd 
paginaUnionPartidadd  2
=dd2 3
newdd3 6
VentanaUnionPartidadd7 J
(ddJ K
)ddK L
;ddL M
thisee 
.ee 
NavigationServiceee "
.ee" #
Navigateee# +
(ee+ ,
paginaUnionPartidaee, >
)ee> ?
;ee? @
}ff 	
privateii 
voidii  
AsignarBotonesIdiomaii )
(ii) *
)ii* +
{jj 	
stringll 
currentLanguagell "
=ll# $

Propertiesll% /
.ll/ 0
Settingsll0 8
.ll8 9
Defaultll9 @
.ll@ A
LenguajellA I
;llI J
ifnn 
(nn 
currentLanguagenn 
==nn  "
$strnn# *
)nn* +
{oo 
Btn_Espanolpp 
.pp 
	IsEnabledpp %
=pp& '
falsepp( -
;pp- .
Btn_Espanolqq 
.qq 

Visibilityqq &
=qq' (

Visibilityqq) 3
.qq3 4
	Collapsedqq4 =
;qq= >

Btn_Inglesrr 
.rr 
	IsEnabledrr $
=rr% &
truerr' +
;rr+ ,

Btn_Inglesss 
.ss 

Visibilityss %
=ss% &

Visibilityss& 0
.ss0 1
Visibless1 8
;ss8 9
}tt 
elseuu 
{vv 
Btn_Espanolww 
.ww 
	IsEnabledww %
=ww& '
trueww( ,
;ww, -

Btn_Inglesxx 
.xx 
	IsEnabledxx $
=xx% &
falsexx' ,
;xx, -

Btn_Inglesyy 
.yy 

Visibilityyy %
=yy& '

Visibilityyy( 2
.yy2 3
	Collapsedyy3 <
;yy< =
Btn_Espanolzz 
.zz 

Visibilityzz &
=zz' (

Visibilityzz) 3
.zz3 4
Visiblezz4 ;
;zz; <
}{{ 
}|| 	
private~~ 
void~~ 
CambioIdiomaClick~~ &
(~~& '
object~~' -
sender~~. 4
,~~4 5
RoutedEventArgs~~6 E
e~~F G
)~~G H
{ 	
if
�� 
(
�� 
sender
�� 
is
�� 
Button
��  
boton
��! &
)
��& '
{
�� 
string
�� 
nuevoLenguaje
�� $
=
��% &
boton
��' ,
.
��, -
Name
��- 1
==
��2 4
$str
��5 B
?
��C D
$str
��E L
:
��M N
$str
��O V
;
��V W
MessageBoxResult
��  
result
��! '
=
��( )

MessageBox
��* 4
.
��4 5
Show
��5 9
(
��9 :

Properties
�� 
.
�� 
	Resources
�� '
.
��' (*
VentanaEmergenteCambioIdioma
��( D
,
��D E

Properties
�� 
.
�� 
	Resources
�� '
.
��' (
Lbl_CambioIdioma
��( 8
,
��8 9
MessageBoxButton
�� $
.
��$ %
YesNo
��% *
,
��* +
MessageBoxImage
�� #
.
��# $
Question
��$ ,
)
�� 
;
�� 
if
�� 
(
�� 
result
�� 
==
�� 
MessageBoxResult
�� .
.
��. /
Yes
��/ 2
)
��2 3
{
�� 
App
�� 
.
�� 
CambioIdioma
�� $
(
��$ %
nuevoLenguaje
��% 2
)
��2 3
;
��3 4
System
�� 
.
�� 
Diagnostics
�� &
.
��& '
Process
��' .
.
��. /
Start
��/ 4
(
��4 5
Application
��5 @
.
��@ A
ResourceAssembly
��A Q
.
��Q R
Location
��R Z
)
��Z [
;
��[ \
Application
�� 
.
��  
Current
��  '
.
��' (
Shutdown
��( 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �}
VC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaInicioSesion.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaInicioSesion ,
:- .
Page/ 3
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
private 
bool 
_sincronizando #
=$ %
false& +
;+ ,
private 
bool 
_mostrarContrasena '
=( )
false* /
;/ 0
public 
VentanaInicioSesion "
(" #
)# $
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
}"" 	
private$$ 
void$$ "
CancelarInicioDeSesion$$ +
($$+ ,
object$$, 2
	remitente$$3 <
,$$< =
RoutedEventArgs$$> M
	argumento$$N W
)$$W X
{%% 	
VentanaInicio&& 

inicioPage&& $
=&&% &
new&&' *
VentanaInicio&&+ 8
(&&8 9
)&&9 :
;&&: ;
this'' 
.'' 
NavigationService'' "
.''" #
Navigate''# +
(''+ ,

inicioPage'', 6
)''6 7
;''7 8
}(( 	
private** 
void** #
ObtenerNuevaContrasenia** ,
(**, -
object**- 3
	remitente**4 =
,**= >
RoutedEventArgs**? N
	argumento**O X
)**X Y
{++ 	&
VentanaContraseniaOlvidada,, &%
paginaContraseniaOlvidada,,' @
=,,@ A
new,,A D&
VentanaContraseniaOlvidada,,E _
(,,_ `
),,` a
;,,a b
this-- 
.-- 
NavigationService-- "
.--" #
Navigate--# +
(--+ ,%
paginaContraseniaOlvidada--, E
)--E F
;--F G
}.. 	
private00 
Acceso00 
ObtenerAcceso00 $
(00$ %
)00% &
{11 	
Acceso22 
acceso22 
=22 
new22 
Acceso22  &
{33 
correo44 
=44 

Txb_Correo44 !
.44! "
Text44" &
,44& '
contrasenia55 
=55 
Pwd_Contrasenia55 +
.55+ ,
Password55, 4
,554 5
}66 
;66 
return77 
acceso77 
;77 
}88 	
private:: 
bool:: 
ValidarCampos:: "
(::" #
)::# $
{;; 	
bool<< 

validacion<< 
=<< 
false<< !
;<<! "
Acceso== 
acceso== 
=== 
ObtenerAcceso== )
(==) *
)==* +
;==+ ,
ValidacionAcceso>> 
validacionAcceso>> -
=>>. /
new>>0 3
ValidacionAcceso>>4 D
(>>D E
)>>E F
;>>F G
FluentValidation?? 
.?? 
Results?? $
.??$ %
ValidationResult??% 5
resultadoAcceso??6 E
=??F G
validacionAcceso??H X
.??X Y
Validate??Y a
(??a b
acceso??b h
)??h i
;??i j
if@@ 
(@@ 
resultadoAcceso@@ 
.@@  
IsValid@@  '
)@@' (
{AA 

validacionBB 
=BB 
trueBB !
;BB! "
}CC 
elseDD 
{EE 
MarcarErroresFF 
(FF 
)FF 
;FF  
ifGG 
(GG 
stringGG 
.GG 
IsNullOrWhiteSpaceGG -
(GG- .

Txb_CorreoGG. 8
.GG8 9
TextGG9 =
)GG= >
||GG? A
stringGGB H
.GGH I
IsNullOrWhiteSpaceGGI [
(GG[ \
Pwd_ContraseniaGG\ k
.GGk l
PasswordGGl t
)GGt u
)GGu v
{HH 
MensajeVentanaII "
.II" #(
MostrarVentanaEmergenteErrorII# ?
(II? @

PropertiesII@ J
.IIJ K
	ResourcesIIK T
.IIT U#
MensajeCamposRequeridosIIU l
)IIl m
;IIm n
}JJ 
elseKK 
{LL 
MensajeVentanaMM "
.MM" #(
MostrarVentanaEmergenteErrorMM# ?
(MM? @

PropertiesMM@ J
.MMJ K
	ResourcesMMK T
.MMT U&
MensajeInformacionInvalidaMMU o
)MMo p
;MMp q
}NN 
}OO 
returnPP 

validacionPP 
;PP 
}QQ 	
privateSS 
voidSS 
MarcarErroresSS "
(SS" #
)SS# $
{TT 	
ifUU 
(UU 
!UU 
ValidacionAccesoUU !
.UU! "
ValidarCorreoUU" /
(UU/ 0

Txb_CorreoUU0 :
.UU: ;
TextUU; ?
)UU? @
)UU@ A
{VV 

Txb_CorreoWW 
.WW 
BorderBrushWW &
=WW' (
BrushesWW) 0
.WW0 1
RedWW1 4
;WW4 5

Txb_CorreoXX 
.XX 
BorderThicknessXX *
=XX+ ,
newXX- 0
	ThicknessXX1 :
(XX: ;
$numXX; <
)XX< =
;XX= >
}YY 
ifZZ 
(ZZ 
!ZZ 
ValidacionAccesoZZ !
.ZZ! "
ValidarContraseniaZZ" 4
(ZZ4 5
Pwd_ContraseniaZZ5 D
.ZZD E
PasswordZZE M
)ZZM N
)ZZN O
{[[ 
Pwd_Contrasenia\\ 
.\\  
BorderBrush\\  +
=\\, -
Brushes\\. 5
.\\5 6
Red\\6 9
;\\9 :
Pwd_Contrasenia]] 
.]]  
BorderThickness]]  /
=]]0 1
new]]2 5
	Thickness]]6 ?
(]]? @
$num]]@ A
)]]A B
;]]B C
}^^ 
}__ 	
privateaa 
voidaa 
ReiniciarCamposaa $
(aa$ %
)aa% &
{bb 	

Txb_Correocc 
.cc 
BorderBrushcc "
=cc# $
Brushescc% ,
.cc, -
Transparentcc- 8
;cc8 9

Txb_Correodd 
.dd 
BorderThicknessdd &
=dd' (
newdd) ,
	Thicknessdd- 6
(dd6 7
$numdd7 8
)dd8 9
;dd9 :
Pwd_Contraseniaee 
.ee 
BorderBrushee '
=ee( )
Brushesee* 1
.ee1 2
Transparentee2 =
;ee= >
Pwd_Contraseniaff 
.ff 
BorderThicknessff +
=ff, -
newff. 1
	Thicknessff2 ;
(ff; <
$numff< =
)ff= >
;ff> ?
}gg 	
privateii 
voidii !
AceptarInicioDeSesionii *
(ii* +
objectii+ 1
	remitenteii2 ;
,ii; <
RoutedEventArgsii= L
	argumentoiiM V
)iiV W
{jj 	
ReiniciarCamposkk 
(kk 
)kk 
;kk 
ifll 
(ll 
ValidarCamposll 
(ll 
)ll 
)ll  
{mm 
Accesonn 
accesonn 
=nn 
ObtenerAccesonn  -
(nn- .
)nn. /
;nn/ 0
tryoo 
{pp 
ServidorPasswordqq $
.qq$ %'
ServicioGestionAccesoClientqq% @
proxyqqA F
=qqG H
newqqI L
ServidorPasswordqqM ]
.qq] ^'
ServicioGestionAccesoClientqq^ y
(qqy z
)qqz {
;qq{ |
intrr 
	resultadorr !
=rr" #
proxyrr$ )
.rr) *!
ValidarInicioDeSesionrr* ?
(rr? @
accesorr@ F
)rrF G
;rrG H
ifss 
(ss 
	resultadoss !
==ss" $
$numss% &
)ss& '
{tt #
ObtenerJugadorSingletonuu /
(uu/ 0
accesouu0 6
.uu6 7
correouu7 =
)uu= >
;uu> ?
ConectarJugadorvv '
(vv' (
)vv( )
;vv) *
}ww 
elsexx 
ifxx 
(xx 
	resultadoxx &
==xx' )
$numxx* +
)xx+ ,
{yy 
MensajeVentanazz &
.zz& '(
MostrarVentanaEmergenteErrorzz' C
(zzC D

PropertieszzD N
.zzN O
	ResourceszzO X
.zzX Y&
MensajeInformacionInvalidazzY s
)zzs t
;zzt u
}{{ 
else|| 
{}} 
MensajeVentana~~ &
.~~& '(
MostrarVentanaEmergenteError~~' C
(~~C D

Properties~~D N
.~~N O
	Resources~~O X
.~~X Y#
MensajeErrorBaseDeDatos~~Y p
)~~p q
;~~q r
} 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� %
ObtenerJugadorSingleton
�� ,
(
��, -
string
��- 3
correo
��4 :
)
��: ;
{
�� 	
ServidorPassword
�� 
.
�� )
ServicioGestionAccesoClient
�� 8
proxy
��9 >
=
��? @
new
��A D
ServidorPassword
��E U
.
��U V)
ServicioGestionAccesoClient
��V q
(
��q r
)
��r s
;
��s t
ServidorPassword
�� 
.
�� 
Cuenta
�� #
cuenta
��$ *
=
��+ ,
proxy
��- 2
.
��2 3&
RecuperarCuentaPorCorreo
��3 K
(
��K L
correo
��L R
)
��R S
;
��S T
JugadorSingleton
�� 
.
�� 
jugadorSingleton
�� -
.
��- .#
CrearJugadorSingleton
��. C
(
��C D
cuenta
��D J
)
��J K
;
��K L
}
�� 	
private
�� 
void
�� 
ConectarJugador
�� $
(
��$ %
)
��% &
{
�� 	
try
�� 
{
�� %
ServicioJugadoresClient
�� '
servicioJugadores
��( 9
=
��9 :
new
��: =%
ServicioJugadoresClient
��> U
(
��U V
)
��V W
;
��W X
int
�� 
resultadoConexion
�� %
=
��% &
servicioJugadores
��& 7
.
��7 8"
ConectarJugadorJuego
��8 L
(
��L M
JugadorSingleton
��M ]
.
��] ^
NombreUsuario
��^ k
)
��k l
;
��l m
if
�� 
(
�� 
resultadoConexion
�� %
==
��& (
$num
��) *
)
��* +
{
�� "
VentanaMenuPrincipal
�� (!
paginaMenuPrincipal
��) <
=
��= >
new
��? B"
VentanaMenuPrincipal
��C W
(
��W X
)
��X Y
;
��Y Z
this
�� 
.
�� 
NavigationService
�� *
.
��* +
Navigate
��+ 3
(
��3 4!
paginaMenuPrincipal
��4 G
)
��G H
;
��H I
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� #
(
��# $
$str
��$ 6
)
��6 7
;
��7 8
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,-
excepcionPuntoFinalNoEncontrado
��- L
)
��L M
{
�� 
MensajeVentana
�� 
.
�� *
MostrarVentanaEmergenteError
�� ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q"
MensajeErrorConexion
��Q e
)
��e f
;
��f g
	_bitacora
�� 
.
�� 
Warn
�� 
(
�� -
excepcionPuntoFinalNoEncontrado
�� >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� &
MostrarOcultarContrasena
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
�� 	 
_mostrarContrasena
�� 
=
��  
!
��! " 
_mostrarContrasena
��" 4
;
��4 5
if
�� 
(
��  
_mostrarContrasena
�� "
)
��" #
{
�� $
Txt_ContraseniaVisible
�� &
.
��& '
Text
��' +
=
��, -
Pwd_Contrasenia
��. =
.
��= >
Password
��> F
;
��F G$
Txt_ContraseniaVisible
�� &
.
��& '

Visibility
��' 1
=
��2 3

Visibility
��4 >
.
��> ?
Visible
��? F
;
��F G
Pwd_Contrasenia
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
	Collapsed
��8 A
;
��A B
}
�� 
else
�� 
{
�� 
Pwd_Contrasenia
�� 
.
��  
Password
��  (
=
��) *$
Txt_ContraseniaVisible
��+ A
.
��A B
Text
��B F
;
��F G
Pwd_Contrasenia
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
Visible
��8 ?
;
��? @$
Txt_ContraseniaVisible
�� &
.
��& '

Visibility
��' 1
=
��2 3

Visibility
��4 >
.
��> ?
	Collapsed
��? H
;
��H I
}
�� 
}
�� 	
private
�� 
void
�� -
Pwd_Contrasenia_PasswordChanged
�� 4
(
��4 5
object
��5 ;
sender
��< B
,
��B C
RoutedEventArgs
��D S
e
��T U
)
��U V
{
�� 	
if
�� 
(
�� 
_sincronizando
�� 
)
�� 
return
��  &
;
��& '
_sincronizando
�� 
=
�� 
true
�� !
;
��! "$
Txt_ContraseniaVisible
�� "
.
��" #
Text
��# '
=
��( )
Pwd_Contrasenia
��* 9
.
��9 :
Password
��: B
;
��B C
_sincronizando
�� 
=
�� 
false
�� "
;
��" #
}
�� 	
private
�� 
void
�� 0
"Txt_ContraseniaVisible_TextChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F"
TextChangedEventArgs
��G [
e
��\ ]
)
��] ^
{
�� 	
if
�� 
(
�� 
_sincronizando
�� 
)
�� 
return
��  &
;
��& '
_sincronizando
�� 
=
�� 
true
�� !
;
��! "
Pwd_Contrasenia
�� 
.
�� 
Password
�� $
=
��% &$
Txt_ContraseniaVisible
��' =
.
��= >
Text
��> B
;
��B C
_sincronizando
�� 
=
�� 
false
�� "
;
��" #
}
�� 	
}
�� 
}�� �
PC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaInicio.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public

 

partial

 
class

 
VentanaInicio

 &
:

' (
Page

) -
{ 
public 
VentanaInicio 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
RegistrarUsuario %
(% &
object& ,
	remitente- 6
,6 7
RoutedEventArgs8 G
	argumentoH Q
)Q R
{ 	
VentanaRegistro 
paginaRegistro *
=+ ,
new- 0
VentanaRegistro1 @
(@ A
)A B
;B C
this 
. 
NavigationService "
." #
Navigate# +
(+ ,
paginaRegistro, :
): ;
;; <
} 	
private 
void 
IniciarSesion "
(" #
object# )
	remitente* 3
,3 4
RoutedEventArgs5 D
	argumentoE N
)N O
{ 	
VentanaInicioSesion 
paginaInicioSesion  2
=3 4
new5 8
VentanaInicioSesion9 L
(L M
)M N
;N O
this 
. 
NavigationService "
." #
Navigate# +
(+ ,
paginaInicioSesion, >
)> ?
;? @
} 	
private 
void 
UnirseComoInvitado '
(' (
object( .
	remitente/ 8
,8 9
RoutedEventArgs: I
	argumentoJ S
)S T
{ 	!
VentanaCodigoInvitado ! 
paginaCodigoInvitado" 6
=6 7
new7 :!
VentanaCodigoInvitado; P
(P Q
)Q R
;R S
this   
.   
NavigationService   "
.  " #
Navigate  # +
(  + , 
paginaCodigoInvitado  , @
)  @ A
;  A B
}!! 	
}"" 
}## �/
YC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaImagenDeJugador.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class "
VentanaImagenDeJugador /
:0 1
Page2 6
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
private 
Image 
_imagenSeleccionada )
;) *
public "
VentanaImagenDeJugador %
(% &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
}   	
private"" 
void"" 
GuardarImagenPerfil"" (
(""( )
object"") /
sender""0 6
,""6 7
RoutedEventArgs""8 G
e""H I
)""I J
{## 	
if$$ 
($$ %
ValidarImagenSeleccionada$$ )
($$) *
)$$* +
)$$+ ,
{%% 
try&& 
{'' /
#ServicioPersonalizacionPerfilClient(( 7
proxy((8 =
=((> ?
new((@ C/
#ServicioPersonalizacionPerfilClient((D g
(((g h
)((h i
;((i j
int)) (
resultadoActualizacionImagen)) 4
=))5 6
proxy))7 <
.))< =(
EditarRutaImagenPorIdJugador))= Y
())Y Z
JugadorSingleton))Z j
.))j k
	IdJugador))k t
,))t u 
_imagenSeleccionada	))v �
.
))� �
Source
))� �
.
))� �
ToString
))� �
(
))� �
)
))� �
)
))� �
;
))� �
if** 
(** (
resultadoActualizacionImagen** 4
==**5 7
$num**8 9
)**9 :
{++ 
MensajeVentana,, &
.,,& '*
MostrarVentanaEmergenteExitosa,,' E
(,,E F

Properties,,F P
.,,P Q
	Resources,,Q Z
.,,Z [!
VentanaEmergenteExito,,[ p
),,p q
;,,q r
JugadorSingleton-- (
.--( )

RutaImagen--) 3
=--4 5
_imagenSeleccionada--6 I
.--I J
Source--J P
.--P Q
ToString--Q Y
(--Y Z
)--Z [
;--[ \!
NavegarAMenuPrincipal.. -
(..- .
)... /
;../ 0
}// 
else00 
if00 
(00 (
resultadoActualizacionImagen00 9
==00: <
$num00= >
)00> ?
{11 !
NavegarAMenuPrincipal22 -
(22- .
)22. /
;22/ 0
}33 
else44 
{55 
MensajeVentana66 &
.66& '(
MostrarVentanaEmergenteError66' C
(66C D

Properties66D N
.66N O
	Resources66O X
.66X Y#
MensajeErrorBaseDeDatos66Y p
)66p q
;66q r!
NavegarAMenuPrincipal77 -
(77- .
)77. /
;77/ 0
}88 
}99 
catch:: 
(:: %
EndpointNotFoundException:: 0+
excepcionPuntoFinalNoEncontrado::1 P
)::P Q
{;; 
MensajeVentana<< "
.<<" #(
MostrarVentanaEmergenteError<<# ?
(<<? @

Properties<<@ J
.<<J K
	Resources<<K T
.<<T U 
MensajeErrorConexion<<U i
)<<i j
;<<j k
	_bitacora== 
.== 
Warn== "
(==" #+
excepcionPuntoFinalNoEncontrado==# B
)==B C
;==C D
}>> 
}?? 
}AA 	
privateCC 
voidCC !
NavegarAMenuPrincipalCC *
(CC* +
)CC+ ,
{DD 	 
VentanaMenuPrincipalEE  
paginaMenuPrincipalEE! 4
=EE5 6
newEE7 : 
VentanaMenuPrincipalEE; O
(EEO P
)EEP Q
;EEQ R
thisFF 
.FF 
NavigationServiceFF "
.FF" #
NavigateFF# +
(FF+ ,
paginaMenuPrincipalFF, ?
)FF? @
;FF@ A
}GG 	
privateJJ 
boolJJ %
ValidarImagenSeleccionadaJJ .
(JJ. /
)JJ/ 0
{KK 	
boolLL 
validacionImagenLL !
=LL" #
falseLL$ )
;LL) *
ifMM 
(MM 
_imagenSeleccionadaMM #
!=MM$ &
nullMM' +
)MM+ ,
{NN 
validacionImagenOO  
=OO! "
trueOO# '
;OO' (
}PP 
returnQQ 
validacionImagenQQ #
;QQ# $
}RR 	
privateTT 
voidTT 
SeleccionarImagenTT &
(TT& '
objectTT' -
senderTT. 4
,TT4 5 
MouseButtonEventArgsTT6 J
eTTK L
)TTL M
{UU 	
ifVV 
(VV 
_imagenSeleccionadaVV #
!=VV$ &
nullVV' +
)VV+ ,
{WW 
_imagenSeleccionadaXX #
.XX# $
TagXX$ '
=XX( )
nullXX* .
;XX. /
}YY 
_imagenSeleccionadaZZ 
=ZZ  !
senderZZ" (
asZZ) +
ImageZZ, 1
;ZZ1 2
_imagenSeleccionada[[ 
.[[  
Tag[[  #
=[[$ %
$str[[& 0
;[[0 1
}\\ 	
private__ 
void__ 
CancelarClick__ "
(__" #
object__# )
sender__* 0
,__0 1
RoutedEventArgs__2 A
e__B C
)__C D
{`` 	
NavigationServiceaa 
.aa 
GoBackaa $
(aa$ %
)aa% &
;aa& '
}bb 	
}cc 
}dd �I
[C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaDificultadPartida.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class $
VentanaDificultadPartida 1
:2 3
Page4 8
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public $
VentanaDificultadPartida '
(' (
)( )
{ 	
InitializeComponent   
(    
)    !
;  ! "
}!! 	
private## 
void## !
RegistrarPartidaFacil## *
(##* +
object##+ 1
	remitente##2 ;
,##; <
RoutedEventArgs##= L
	argumento##M V
)##V W
{$$ 	
AbrirSalaEspera%% 
(%% 
Enumeracion%% '
.%%' ( 
EnumModoJuegoPartida%%( <
.%%< =
Facil%%= B
.%%B C
ToString%%C K
(%%K L
)%%L M
)%%M N
;%%N O
}&& 	
private(( 
void(( !
RegistrarPartidaMedia(( *
(((* +
object((+ 1
	remitente((2 ;
,((; <
RoutedEventArgs((= L
	argumento((M V
)((V W
{)) 	
AbrirSalaEspera** 
(** 
Enumeracion** '
.**' ( 
EnumModoJuegoPartida**( <
.**< =
Medio**= B
.**B C
ToString**C K
(**K L
)**L M
)**M N
;**N O
}++ 	
private-- 
void-- #
RegistrarPartidaDificil-- ,
(--, -
object--- 3
	remitente--4 =
,--= >
RoutedEventArgs--? N
	argumento--O X
)--X Y
{.. 	
AbrirSalaEspera// 
(// 
Enumeracion// '
.//' ( 
EnumModoJuegoPartida//( <
.//< =
Dificil//= D
.//D E
ToString//E M
(//M N
)//N O
)//O P
;//P Q
}00 	
private22 
void22 
AbrirSalaEspera22 $
(22$ %
string22% +
tipoPartida22, 7
)227 8
{33 	
VentanaSalaEspera44 
paginaSalaEspera44 .
=44/ 0
new441 4
VentanaSalaEspera445 F
(44F G
)44G H
;44H I
string55 
codigoPartida55  
=55! " 
ObtenerCodigoPartida55# 7
(557 8
)558 9
;559 :
Partida66 
partida66 
=66 
ObtenerPartida66 ,
(66, -
codigoPartida66- :
,66: ;
tipoPartida66; F
)66F G
;66G H
try77 
{88 (
ServicioGestionPartidaClient99 ,!
servicioGestionPatida99- B
=99C D
new99E H(
ServicioGestionPartidaClient99I e
(99e f
)99f g
;99g h
int:: 
resultadoRegistro:: %
=::& '!
servicioGestionPatida::( =
.::= >(
RegistrarPartidaPorIdJugador::> Z
(::Z [
JugadorSingleton::[ k
.::k l
	IdJugador::l u
,::u v
partida::w ~
)::~ 
;	:: �
if;; 
(;; 
resultadoRegistro;; %
!=;;& (
-;;) *
$num;;* +
);;+ ,
{<< 
paginaSalaEspera== $
.==$ %
Txbl_CodigoPartida==% 7
.==7 8
Text==8 <
==== >
codigoPartida==? L
;==L M
paginaSalaEspera>> $
.>>$ %
ConfigurarJugadores>>% 8
(>>8 9
)>>9 :
;>>: ;
paginaSalaEspera?? $
.??$ %
ConfigurarChat??% 3
(??3 4
)??4 5
;??5 6
paginaSalaEspera@@ $
.@@$ %"
RecuperarPartidaActual@@% ;
(@@; <
)@@< =
;@@= >
thisAA 
.AA 
NavigationServiceAA *
.AA* +
NavigateAA+ 3
(AA3 4
paginaSalaEsperaAA4 D
)AAD E
;AAE F
}BB 
elseCC 
{DD 
MensajeVentanaEE "
.EE" #(
MostrarVentanaEmergenteErrorEE# ?
(EE? @

PropertiesEE@ J
.EEJ K
	ResourcesEEK T
.EET U#
MensajeErrorBaseDeDatosEEU l
)EEl m
;EEm n
}FF 
}GG 
catchHH 
(HH %
EndpointNotFoundExceptionHH ,+
excepcionPuntoFinalNoEncontradoHH- L
)HHL M
{II 
MensajeVentanaJJ 
.JJ (
MostrarVentanaEmergenteErrorJJ ;
(JJ; <

PropertiesJJ< F
.JJF G
	ResourcesJJG P
.JJP Q 
MensajeErrorConexionJJQ e
)JJe f
;JJf g
	_bitacoraKK 
.KK 
WarnKK 
(KK +
excepcionPuntoFinalNoEncontradoKK >
)KK> ?
;KK? @
}LL 
}MM 	
privateOO 
PartidaOO 
ObtenerPartidaOO &
(OO& '
stringOO' -
codigoPartidaOO. ;
,OO; <
stringOO< B
tipoPartidaOOC N
)OON O
{PP 	
PartidaQQ 
partidaQQ 
=QQ 
newQQ !
PartidaQQ" )
{RR 
codigoPartidaSS 
=SS 
codigoPartidaSS  -
,SS- .
	modoJuegoTT 
=TT 
tipoPartidaTT '
,TT' (
estadoPartidaUU 
=UU 
EnumeracionUU  +
.UU+ ,
EnumEstadoPartidaUU, =
.UU= >
IniciadaUU> F
.UUF G
ToStringUUG O
(UUO P
)UUP Q
,UUQ R
idAnfitrionVV 
=VV 
JugadorSingletonVV .
.VV. /
	IdJugadorVV/ 8
,VV8 9
}WW 
;WW 
returnXX 
partidaXX 
;XX 
}YY 	
private[[ 
string[[  
ObtenerCodigoPartida[[ +
([[+ ,
)[[, -
{\\ 	
string]] 
codigoPartida]]  
=]]! "
GeneradorCodigo]]# 2
.]]2 3 
GenerarCodigoPartida]]3 G
(]]G H
)]]H I
;]]I J
try^^ 
{__ (
ServicioGestionPartidaClient`` ,"
servicioGestionPartida``- C
=``D E
new``F I(
ServicioGestionPartidaClient``J f
(``f g
)``g h
;``h i
intaa 
resultadoValidacionaa '
=aa( )"
servicioGestionPartidaaa* @
.aa@ A 
ValidarCodigoPartidaaaA U
(aaU V
codigoPartidaaaV c
)aac d
;aad e
switchbb 
(bb 
resultadoValidacionbb +
)bb+ ,
{cc 
casedd 
-dd 
$numdd 
:dd 
MensajeVentanaee &
.ee& '(
MostrarVentanaEmergenteErroree' C
(eeC D

PropertieseeD N
.eeN O
	ResourceseeO X
.eeX Y#
MensajeErrorBaseDeDatoseeY p
)eep q
;eeq r
breakff 
;ff 
casegg 
$numgg 
:gg 
whilehh 
(hh 
resultadoValidacionhh 2
==hh3 5
$numhh6 7
)hh7 8
{ii 
codigoPartidajj )
=jj* +
GeneradorCodigojj, ;
.jj; < 
GenerarCodigoPartidajj< P
(jjP Q
)jjQ R
;jjR S
resultadoValidacionkk /
=kk0 1"
servicioGestionPartidakk2 H
.kkH I 
ValidarCodigoPartidakkI ]
(kk] ^
codigoPartidakk^ k
)kkk l
;kkl m
}ll 
breakmm 
;mm 
}nn 
}oo 
catchpp 
(pp %
EndpointNotFoundExceptionpp ,+
excepcionPuntoFinalNoEncontradopp- L
)ppL M
{qq 
MensajeVentanarr 
.rr (
MostrarVentanaEmergenteErrorrr ;
(rr; <

Propertiesrr< F
.rrF G
	ResourcesrrG P
.rrP Q 
MensajeErrorConexionrrQ e
)rre f
;rrf g
	_bitacorass 
.ss 
Warnss 
(ss +
excepcionPuntoFinalNoEncontradoss >
)ss> ?
;ss? @
}tt 
returnuu 
codigoPartidauu  
;uu  !
}vv 	
privatexx 
voidxx !
RegresarMenuPrincipalxx *
(xx* +
objectxx+ 1
senderxx2 8
,xx8 9
RoutedEventArgsxx: I
exxJ K
)xxK L
{yy 	 
VentanaMenuPrincipalzz  
paginaMenuPrincipalzz! 4
=zz5 6
newzz7 : 
VentanaMenuPrincipalzz; O
(zzO P
)zzP Q
;zzQ R
this{{ 
.{{ 
NavigationService{{ "
.{{" #
Navigate{{# +
({{+ ,
paginaMenuPrincipal{{, ?
){{? @
;{{@ A
}|| 	
}}} 
}~~ �a
PC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaAmigos.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaAmigos &
:' (
Page) -
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 
VentanaAmigos 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
RecuperarAmigos   
(   
)   
;   
}!! 	
private## 
void## 
Aceptar_Click## "
(##" #
object### )
sender##* 0
,##0 1
RoutedEventArgs##2 A
e##B C
)##C D
{$$ 	
NavigationService%% 
.%% 
GoBack%% $
(%%$ %
)%%% &
;%%& '
}&& 	
private(( 
void(( 
RecuperarAmigos(( $
((($ %
)((% &
{)) 	
try** 
{++ (
ServicioGestionAmistadClient,, ,"
servicioGestionAmistad,,- C
=,,D E
new,,F I(
ServicioGestionAmistadClient,,J f
(,,f g
),,g h
;,,h i
List-- 
<-- 
int-- 
>-- 
idAmistades-- %
=--& '"
servicioGestionAmistad--( >
.--> ?*
ConsultarAmistadesPorIdJugador--? ]
(--] ^
JugadorSingleton--^ n
.--n o
	IdJugador--o x
)--x y
.--y z
ToList	--z �
(
--� �
)
--� �
;
--� �
int.. 
	idAmistad.. 
=.. 
idAmistades..  +
...+ ,
FirstOrDefault.., :
(..: ;
)..; <
;..< =
if// 
(// 
	idAmistad// 
>// 
$num//  !
)//! "
{00 
RecuperarJugadores11 &
(11& '
idAmistades11' 2
)112 3
;113 4
}22 
else33 
if33 
(33 
	idAmistad33 !
==33" $
-33% &
$num33& '
)33' (
{44 
MensajeVentana55 "
.55" #(
MostrarVentanaEmergenteError55# ?
(55? @

Properties55@ J
.55J K
	Resources55K T
.55T U#
MensajeErrorBaseDeDatos55U l
)55l m
;55m n
}66 
}77 
catch88 
(88 %
EndpointNotFoundException88 ,+
excepcionPuntoFinalNoEncontrado88- L
)88L M
{99 
MensajeVentana:: 
.:: (
MostrarVentanaEmergenteError:: ;
(::; <

Properties::< F
.::F G
	Resources::G P
.::P Q 
MensajeErrorConexion::Q e
)::e f
;::f g
	_bitacora;; 
.;; 
Warn;; 
(;; +
excepcionPuntoFinalNoEncontrado;; >
);;> ?
;;;? @
}<< 
}== 	
private?? 
void?? 
RecuperarJugadores?? '
(??' (
List??( ,
<??, -
int??- 0
>??0 1
	amistades??2 ;
)??; <
{@@ 	
tryAA 
{BB (
ServicioGestionAmistadClientCC ,"
servicioGestionAmistadCC- C
=CCD E
newCCF I(
ServicioGestionAmistadClientCCJ f
(CCf g
)CCg h
;CCh i
ListDD 
<DD 
stringDD 
>DD 
nombresUsuarioDD +
=DD, -"
servicioGestionAmistadDD. D
.DDD E1
%ObtenerNombresDeUsuarioPorIdJugadoresDDE j
(DDj k
	amistadesDDk t
.DDt u
ToArrayDDu |
(DD| }
)DD} ~
)DD~ 
.	DD �
ToList
DD� �
(
DD� �
)
DD� �
;
DD� �!
AsignarNombresUsuarioEE %
(EE% &
nombresUsuarioEE& 4
,EE4 5
	amistadesEE5 >
)EE> ?
;EE? @
}FF 
catchGG 
(GG %
EndpointNotFoundExceptionGG ,+
excepcionPuntoFinalNoEncontradoGG- L
)GGL M
{HH 
MensajeVentanaII 
.II (
MostrarVentanaEmergenteErrorII ;
(II; <

PropertiesII< F
.IIF G
	ResourcesIIG P
.IIP Q 
MensajeErrorConexionIIQ e
)IIe f
;IIf g
	_bitacoraJJ 
.JJ 
WarnJJ 
(JJ +
excepcionPuntoFinalNoEncontradoJJ >
)JJ> ?
;JJ? @
}KK 
}LL 	
privateNN 
voidNN !
AsignarNombresUsuarioNN *
(NN* +
ListNN+ /
<NN/ 0
stringNN0 6
>NN6 7
nombresUsuarioNN8 F
,NNF G
ListNNG K
<NNK L
intNNL O
>NNO P
idAmistadesNNQ \
)NN\ ]
{OO 	
stringPP 
primerNombreUsuarioPP &
=PP' (
nombresUsuarioPP) 7
[PP7 8
$numPP8 9
]PP9 :
;PP: ;
ifQQ 
(QQ 
primerNombreUsuarioQQ #
!=QQ$ &
$strQQ' 2
)QQ2 3
{RR 
ListSS 
<SS 
JugadorAmistadSS #
>SS# $
	amistadesSS% .
=SS/ 0
CombinarListasSS1 ?
(SS? @
idAmistadesSS@ K
,SSK L
nombresUsuarioSSM [
)SS[ \
;SS\ ]
ListaAmigosTT 
.TT 
ItemsSourceTT '
=TT( )
	amistadesTT* 3
;TT3 4
}UU 
elseVV 
{WW 
MensajeVentanaXX 
.XX (
MostrarVentanaEmergenteErrorXX ;
(XX; <

PropertiesXX< F
.XXF G
	ResourcesXXG P
.XXP Q#
MensajeErrorBaseDeDatosXXQ h
)XXh i
;XXi j
}YY 
}ZZ 	
private]] 
List]] 
<]] 
JugadorAmistad]] #
>]]# $
CombinarListas]]% 3
(]]3 4
List]]4 8
<]]8 9
int]]9 <
>]]< =
idJugadores]]> I
,]]I J
List]]K O
<]]O P
string]]P V
>]]V W
nombresUsuario]]X f
)]]f g
{^^ 	
List__ 
<__ 
JugadorAmistad__ 
>__  
	jugadores__! *
=__+ ,
idJugadores__- 8
.__8 9
Zip__9 <
(__< =
nombresUsuario__= K
,__K L
(__M N
id__N P
,__P Q
nombre__R X
)__X Y
=>__Z \
new__] `
JugadorAmistad__a o
{`` 
	IdJugadoraa 
=aa 
idaa 
,aa 
NombreUsuariobb 
=bb 
nombrebb  &
,bb& '
Estadocc 
=cc "
VerificarConexionAmigocc /
(cc/ 0
nombrecc0 6
)cc6 7
,cc7 8
}dd 
)dd 
.dd 
ToListdd 
(dd 
)dd 
;dd 
returnee 
	jugadoresee 
;ee 
}ff 	
privatehh 
boolhh "
VerificarConexionAmigohh +
(hh+ ,
stringhh, 2
nombreUsuariohh3 @
)hh@ A
{ii 	
booljj  
resultadoVerificaionjj %
=jj& '
falsejj( -
;jj- .
trykk 
{ll #
ServicioJugadoresClientmm '
servicioJugadoresmm( 9
=mm9 :
newmm: =#
ServicioJugadoresClientmm> U
(mmU V
)mmV W
;mmW X 
resultadoVerificaionnn $
=nn% &
servicioJugadoresnn' 8
.nn8 9$
VerificarConexionUsuarionn9 Q
(nnQ R
nombreUsuarionnR _
)nn_ `
;nn` a
}oo 
catchpp 
(pp %
EndpointNotFoundExceptionpp ,+
excepcionPuntoFinalNoEncontradopp- L
)ppL M
{qq 
MensajeVentanarr 
.rr (
MostrarVentanaEmergenteErrorrr ;
(rr; <

Propertiesrr< F
.rrF G
	ResourcesrrG P
.rrP Q 
MensajeErrorConexionrrQ e
)rre f
;rrf g
	_bitacorass 
.ss 
Warnss 
(ss +
excepcionPuntoFinalNoEncontradoss >
)ss> ?
;ss? @
}tt 
returnuu  
resultadoVerificaionuu '
;uu' (
}vv 	
privatexx 
voidxx 
	VerPerfilxx 
(xx 
objectxx %
	remitentexx& /
,xx/ 0
RoutedEventArgsxx1 @
	argumentoxxA J
)xxJ K
{yy 	
ifzz 
(zz 
	remitentezz 
iszz 
Buttonzz #
Btn_VerPerfilAmigozz$ 6
&&zz7 9
Btn_VerPerfilAmigozz: L
.zzL M
TagzzM P
iszzQ S
intzzT W
	idJugadorzzX a
)zza b
{{{ 
try|| 
{}} '
ServicioGestionAccesoClient~~ /!
servicioGestionAcceso~~0 E
=~~F G
new~~H K'
ServicioGestionAccesoClient~~L g
(~~g h
)~~h i
;~~i j
Cuenta 
cuenta !
=! "!
servicioGestionAcceso" 7
.7 8'
RecuperarCuentaPorIdJugador8 S
(S T
	idJugadorT ]
)] ^
;^ _
if
�� 
(
�� 
cuenta
�� 
.
�� 
IdAcceso
�� '
!=
��( *
-
��+ ,
$num
��, -
)
��- .
{
�� $
VentanaPerfilDeJugador
�� .#
paginaPerfilDeJugador
��/ D
=
��D E
new
��E H$
VentanaPerfilDeJugador
��I _
(
��_ `
)
��` a
;
��a b#
paginaPerfilDeJugador
�� -
.
��- .

Txb_Correo
��. 8
.
��8 9
Text
��9 =
=
��> ?
cuenta
��@ F
.
��F G
Correo
��G M
;
��M N#
paginaPerfilDeJugador
�� -
.
��- .
Txb_Descripcion
��. =
.
��= >
Text
��> B
=
��C D
cuenta
��E K
.
��K L
Descripcion
��L W
;
��W X#
paginaPerfilDeJugador
�� -
.
��- .
Lbl_NombreJugador
��. ?
.
��? @
Content
��@ G
=
��H I
cuenta
��J P
.
��P Q
NombreUsuario
��Q ^
;
��^ _#
paginaPerfilDeJugador
�� -
.
��- .

Img_Perfil
��. 8
.
��8 9
Source
��9 ?
=
��@ A
new
��B E
BitmapImage
��F Q
(
��Q R
new
��R U
Uri
��V Y
(
��Y Z
cuenta
��Z `
.
��` a

RutaImagen
��a k
)
��k l
)
��l m
;
��m n
this
�� 
.
�� 
NavigationService
�� .
.
��. /
Navigate
��/ 7
(
��7 8#
paginaPerfilDeJugador
��8 M
)
��M N
;
��N O
}
�� 
else
�� 
{
�� 
MensajeVentana
�� &
.
��& '*
MostrarVentanaEmergenteError
��' C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y%
MensajeErrorBaseDeDatos
��Y p
)
��p q
;
��q r
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0-
excepcionPuntoFinalNoEncontrado
��1 P
)
��P Q
{
�� 
MensajeVentana
�� "
.
��" #*
MostrarVentanaEmergenteError
��# ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U"
MensajeErrorConexion
��U i
)
��i j
;
��j k
	_bitacora
�� 
.
�� 
Warn
�� "
(
��" #-
excepcionPuntoFinalNoEncontrado
��# B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
[C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaPartidaFinalizada.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public		 

partial		 
class		 $
VentanaPartidaFinalizada		 1
:		2 3
Page		4 8
{

 
public $
VentanaPartidaFinalizada '
(' (
)( )
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
RegresarVentana $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{ 	
if 
( $
ValidarJugadorRegistrado (
(( )
)) *
)* +
{  
VentanaMenuPrincipal $
paginaMenuPrincipal% 8
=9 :
new; > 
VentanaMenuPrincipal? S
(S T
)T U
;U V
this 
. 
NavigationService &
.& '
Navigate' /
(/ 0
paginaMenuPrincipal0 C
)C D
;D E
} 
else 
{ 
VentanaInicio 
paginaInicio *
=* +
new+ .
VentanaInicio/ <
(< =
)= >
;> ?
this 
. 
NavigationService &
.& '
Navigate' /
(/ 0
paginaInicio0 <
)< =
;= >
} 
} 	
private 
bool $
ValidarJugadorRegistrado -
(- .
). /
{ 	
return   
JugadorSingleton   #
.  # $
	IdJugador  $ -
>  . /
$num  0 1
;  1 2
}!! 	
}"" 
}## �R
XC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaCodigoInvitado.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class !
VentanaCodigoInvitado .
:/ 0
Page1 5
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public !
VentanaCodigoInvitado $
($ %
)% &
{ 	
InitializeComponent   
(    
)    !
;  ! "
}!! 	
private## 
void## 
UnirseAPartida## #
(### $
object##$ *
	remitente##+ 4
,##4 5
RoutedEventArgs##6 E
	argumento##F O
)##O P
{$$ 	
if%% 
(%%  
ValidarCodigoPartida%% $
(%%$ %
)%%% &
)%%& '
{&& 
if'' 
(''  
ValidarEstadoPartida'' (
(''( )
)'') *
)''* +
{(( 
CargarDatosPartida)) &
())& '
)))' (
;))( )
}** 
else++ 
{,, 
MensajeVentana-- "
.--" #.
"MostrarVentanaEmergenteAdvertencia--# E
(--E F

Properties--F P
.--P Q
	Resources--Q Z
.--Z [&
MensajePartidaNoDisponible--[ u
)--u v
;--v w
}.. 
}// 
}11 	
private33 
void33 
RegresarInicio33 #
(33# $
object33$ *
	remitente33+ 4
,334 5
RoutedEventArgs336 E
	argumento33F O
)33O P
{44 	
NavigationService55 
.55 
GoBack55 $
(55$ %
)55% &
;55& '
}66 	
private88 
bool88  
ValidarCodigoPartida88 )
(88) *
)88* +
{99 	
bool:: 

validacion:: 
=:: 
false:: #
;::# $
try;; 
{<< (
ServicioGestionPartidaClient== ,"
servicioGestionPartida==- C
===D E
new==F I(
ServicioGestionPartidaClient==J f
(==f g
)==g h
;==h i
int>> 
validacionCodigo>> $
=>>% &"
servicioGestionPartida>>' =
.>>= > 
ValidarCodigoPartida>>> R
(>>R S
Txb_CodigoPartida>>S d
.>>d e
Text>>e i
)>>i j
;>>j k
switch?? 
(?? 
validacionCodigo?? (
)??( )
{@@ 
caseAA 
-AA 
$numAA 
:AA 
MensajeVentanaBB &
.BB& '(
MostrarVentanaEmergenteErrorBB' C
(BBC D

PropertiesBBD N
.BBN O
	ResourcesBBO X
.BBX Y#
MensajeErrorBaseDeDatosBBY p
)BBp q
;BBq r
breakCC 
;CC 
caseDD 
$numDD 
:DD 
MensajeVentanaEE &
.EE& '.
"MostrarVentanaEmergenteAdvertenciaEE' I
(EEI J

PropertiesEEJ T
.EET U
	ResourcesEEU ^
.EE^ _+
MensajeCodigoPartidaInexistenteEE_ ~
)EE~ 
;	EE �
breakFF 
;FF 
caseGG 
$numGG 
:GG 

validacionHH "
=HH# $
trueHH% )
;HH) *
breakII 
;II 
}JJ 
}KK 
catchLL 
(LL %
EndpointNotFoundExceptionLL ,+
excepcionPuntoFinalNoEncontradoLL- L
)LLL M
{MM 
MensajeVentanaNN 
.NN (
MostrarVentanaEmergenteErrorNN ;
(NN; <

PropertiesNN< F
.NNF G
	ResourcesNNG P
.NNP Q 
MensajeErrorConexionNNQ e
)NNe f
;NNf g
	_bitacoraOO 
.OO 
WarnOO 
(OO +
excepcionPuntoFinalNoEncontradoOO >
)OO> ?
;OO? @
}PP 
returnQQ 

validacionQQ 
;QQ 
}RR 	
privateTT 
boolTT  
ValidarEstadoPartidaTT )
(TT) *
)TT* +
{UU 	
boolVV #
validacionEstadoPartidaVV (
=VV) *
falseVV+ 0
;VV0 1
tryWW 
{XX (
ServicioGestionPartidaClientYY ,"
servicioGestionPartidaYY- C
=YYD E
newYYF I(
ServicioGestionPartidaClientYYJ f
(YYf g
)YYg h
;YYh i
varZZ 
partidaZZ 
=ZZ "
servicioGestionPartidaZZ 4
.ZZ4 5%
RecuperarPartidaPorCodigoZZ5 N
(ZZN O
Txb_CodigoPartidaZZO `
.ZZ` a
TextZZa e
)ZZe f
;ZZf g
if[[ 
([[ 
partida[[ 
.[[ 
	IdPartida[[ %
>[[& '
$num[[( )
&&[[* ,
partida[[- 4
.[[4 5
EstadoPartida[[5 B
==[[C E
Enumeracion[[F Q
.[[Q R
EnumEstadoPartida[[R c
.[[c d
Iniciada[[d l
.[[l m
ToString[[m u
([[u v
)[[v w
)[[w x
{\\ #
validacionEstadoPartida]] +
=]], -
true]]. 2
;]]2 3
}^^ 
}__ 
catch`` 
(`` %
EndpointNotFoundException`` ,+
excepcionPuntoFinalNoEncontrado``- L
)``L M
{aa 
MensajeVentanabb 
.bb (
MostrarVentanaEmergenteErrorbb ;
(bb; <

Propertiesbb< F
.bbF G
	ResourcesbbG P
.bbP Q 
MensajeErrorConexionbbQ e
)bbe f
;bbf g
	_bitacoracc 
.cc 
Warncc 
(cc +
excepcionPuntoFinalNoEncontradocc >
)cc> ?
;cc? @
}dd 
returnee #
validacionEstadoPartidaee *
;ee* +
}ff 	
privatehh 
voidhh 
CargarDatosPartidahh '
(hh' (
)hh( )
{ii 	
tryjj 
{kk (
ServicioGestionPartidaClientll ,"
servicioGestionPartidall- C
=llD E
newllF I(
ServicioGestionPartidaClientllJ f
(llf g
)llg h
;llh i
varmm 
partidamm 
=mm "
servicioGestionPartidamm 4
.mm4 5%
RecuperarPartidaPorCodigomm5 N
(mmN O
Txb_CodigoPartidammO `
.mm` a
Textmma e
)mme f
;mmf g
ifnn 
(nn 
partidann 
.nn 
	IdPartidann %
>nn& '
$numnn( )
)nn) *
{oo 
AbrirSalaDeEsperapp %
(pp% &
)pp& '
;pp' (
}qq 
}rr 
catchss 
(ss %
EndpointNotFoundExceptionss ,+
excepcionPuntoFinalNoEncontradoss- L
)ssL M
{tt 
MensajeVentanauu 
.uu (
MostrarVentanaEmergenteErroruu ;
(uu; <

Propertiesuu< F
.uuF G
	ResourcesuuG P
.uuP Q 
MensajeErrorConexionuuQ e
)uue f
;uuf g
	_bitacoravv 
.vv 
Warnvv 
(vv +
excepcionPuntoFinalNoEncontradovv >
)vv> ?
;vv? @
}ww 
}xx 	
privatezz 
voidzz 
AbrirSalaDeEsperazz &
(zz& '
)zz' (
{{{ 	
InicializarJugador|| 
(|| 
)||  
;||  !
VentanaSalaEspera}} 
paginaSalaEspera}} .
=}}/ 0
new}}1 4
VentanaSalaEspera}}5 F
(}}F G
)}}G H
;}}H I
paginaSalaEspera~~ 
.~~ 
Txbl_CodigoPartida~~ /
.~~/ 0
Text~~0 4
=~~5 6
Txb_CodigoPartida~~7 H
.~~H I
Text~~I M
;~~M N
paginaSalaEspera 
. 
Stpl_Amigos (
.( )

Visibility) 3
=4 5

Visibility6 @
.@ A
HiddenA G
;G H
paginaSalaEspera
�� 
.
�� !
ConfigurarJugadores
�� 0
(
��0 1
)
��1 2
;
��2 3
paginaSalaEspera
�� 
.
�� 
ConfigurarChat
�� +
(
��+ ,
)
��, -
;
��- .
paginaSalaEspera
�� 
.
�� $
RecuperarPartidaActual
�� 3
(
��3 4
)
��4 5
;
��5 6
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
paginaSalaEspera
��, <
)
��< =
;
��= >
}
�� 	
private
�� 
void
��  
InicializarJugador
�� '
(
��' (
)
��( )
{
�� 	
JugadorSingleton
�� 
.
�� 
	IdJugador
�� &
=
��' (
$num
��) *
;
��* +
JugadorSingleton
�� 
.
�� 
NombreUsuario
�� *
=
��* ++
GenerarNombreUsuarioAleatorio
��+ H
(
��H I
)
��I J
;
��J K
JugadorSingleton
�� 
.
�� 

RutaImagen
�� '
=
��( )
$str
��* ^
;
��^ _
}
�� 	
private
�� 
string
�� +
GenerarNombreUsuarioAleatorio
�� 4
(
��4 5
)
��5 6
{
�� 	
Random
�� 
	aleatorio
�� 
=
�� 
new
�� !
Random
��" (
(
��( )
)
��) *
;
��* +
int
�� $
numeroUsuarioAleatorio
�� &
=
��' (
	aleatorio
��) 2
.
��2 3
Next
��3 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; B
)
��B C
;
��C D
string
�� 
nombreUsuario
��  
=
��! "
$str
��# -
+
��. /$
numeroUsuarioAleatorio
��0 F
;
��F G
return
�� 
nombreUsuario
��  
;
��  !
}
�� 	
}
�� 
}�� �K
[C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaCambioContrasenia.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class $
VentanaCambioContrasenia 1
:2 3
Page4 8
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public $
VentanaCambioContrasenia '
(' (
)( )
{ 	
InitializeComponent   
(    
)    !
;  ! "
}!! 	
private## 
void## 
Regresar## 
(## 
object## $
	remitente##% .
,##. /
RoutedEventArgs##0 ?
	argumento##@ I
)##I J
{$$ 	%
VentanaPersonalizarPerfil%% %$
paginaPersonalizarPerfil%%& >
=%%> ?
new%%? B%
VentanaPersonalizarPerfil%%C \
(%%\ ]
)%%] ^
;%%^ _
this&& 
.&& 
NavigationService&& "
.&&" #
Navigate&&# +
(&&+ ,$
paginaPersonalizarPerfil&&, D
)&&D E
;&&E F
}'' 	
private)) 
void)) #
AceptarCambioContrasena)) ,
()), -
object))- 3
	remitente))4 =
,))= >
RoutedEventArgs))? N
	argumento))O X
)))X Y
{** 	
ReiniciarCampos++ 
(++ 
)++ 
;++ 
if,, 
(,, 
ValidarCampos,, 
(,, 
),, 
),,  
{-- 
try.. 
{// 
ServidorPassword00 $
.00$ %'
ServicioGestionAccesoClient00% @
proxyServicioAcceso00A T
=00U V
new00W Z
ServidorPassword00[ k
.00k l(
ServicioGestionAccesoClient	00l �
(
00� �
)
00� �
;
00� �
Acceso11 
acceso11 !
=11" #
ObtenerAcceso11$ 1
(111 2
)112 3
;113 4
int22 !
validacionContrasenia22 -
=22. /
proxyServicioAcceso220 C
.22C D!
ValidarInicioDeSesion22D Y
(22Y Z
acceso22Z `
)22` a
;22a b
if33 
(33 !
validacionContrasenia33 -
==33. 0
$num331 2
)332 3
{44 
ServidorPassword55 (
.55( )/
#ServicioPersonalizacionPerfilClient55) L&
proxyPersonalizacionPerfil55M g
=55h i
new55j m
ServidorPassword55n ~
.55~ 0
#ServicioPersonalizacionPerfilClient	55 �
(
55� �
)
55� �
;
55� �
int66 "
resultadoActualizacion66 2
=663 4&
proxyPersonalizacionPerfil665 O
.66O P(
EditarContraseniaPorIdAcceso66P l
(66l m
JugadorSingleton66m }
.66} ~
IdAcceso	66~ �
,
66� �"
Txb_NuevaContrasenia
66� �
.
66� �
Text
66� �
)
66� �
;
66� �
if77 
(77 "
resultadoActualizacion77 2
>=773 5
$num775 6
)776 7
{88 
MensajeVentana99 *
.99* +*
MostrarVentanaEmergenteExitosa99+ I
(99I J

Properties99J T
.99T U
	Resources99U ^
.99^ _!
VentanaEmergenteExito99_ t
)99t u
;99u v
JugadorSingleton:: ,
.::, -
Contrasenia::- 8
=::9 :"
EncriptadorContrasenia::; Q
.::Q R 
EncriptarContrasenia::R f
(::f g 
Txb_NuevaContrasenia::g {
.::{ |
Text	::| �
)
::� �
;
::� �%
VentanaPersonalizarPerfil;; 5$
paginaPersonalizarPerfil;;6 N
=;;O P
new;;Q T%
VentanaPersonalizarPerfil;;U n
(;;n o
);;o p
;;;p q
this<<  
.<<  !
NavigationService<<! 2
.<<2 3
Navigate<<3 ;
(<<; <$
paginaPersonalizarPerfil<<< T
)<<T U
;<<U V
}== 
else>> 
{?? 
MensajeVentana@@ *
.@@* +(
MostrarVentanaEmergenteError@@+ G
(@@G H

Properties@@H R
.@@R S
	Resources@@S \
.@@\ ]#
MensajeErrorBaseDeDatos@@] t
)@@t u
;@@u v
}AA 
}BB 
elseCC 
{DD 
MensajeVentanaEE &
.EE& '(
MostrarVentanaEmergenteErrorEE' C
(EEC D

PropertiesEED N
.EEN O
	ResourcesEEO X
.EEX Y&
MensajeInformacionInvalidaEEY s
)EEs t
;EEt u
}FF 
}GG 
catchHH 
(HH %
EndpointNotFoundExceptionHH 0+
excepcionPuntoFinalNoEncontradoHH1 P
)HHP Q
{II 
MensajeVentanaJJ "
.JJ" #(
MostrarVentanaEmergenteErrorJJ# ?
(JJ? @

PropertiesJJ@ J
.JJJ K
	ResourcesJJK T
.JJT U 
MensajeErrorConexionJJU i
)JJi j
;JJj k
	_bitacoraKK 
.KK 
WarnKK "
(KK" #+
excepcionPuntoFinalNoEncontradoKK# B
)KKB C
;KKC D
}LL 
}MM 
elseNN 
{OO 
MostrarErroresPP 
(PP 
)PP  
;PP  !
MensajeVentanaQQ 
.QQ (
MostrarVentanaEmergenteErrorQQ ;
(QQ; <

PropertiesQQ< F
.QQF G
	ResourcesQQG P
.QQP Q&
MensajeInformacionInvalidaQQQ k
)QQk l
;QQl m
}RR 
}SS 	
privateUU 
AccesoUU 
ObtenerAccesoUU $
(UU$ %
)UU% &
{VV 	
AccesoWW 
accesoWW 
=WW 
newWW 
AccesoWW  &
{XX 
correoYY 
=YY 
JugadorSingletonYY '
.YY' (
CorreoYY( .
,YY. /
contraseniaZZ 
=ZZ !
Txb_ContraseniaActualZZ 1
.ZZ1 2
TextZZ2 6
,ZZ6 7
}[[ 
;[[ 
return\\ 
acceso\\ 
;\\ 
}]] 	
private__ 
bool__ 
ValidarCampos__ "
(__" #
)__# $
{`` 	
boolaa '
validacionContraseniaActualaa ,
=aa, -
ValidacionAccesoaa- =
.aa= >
ValidarContraseniaaa> P
(aaP Q!
Txb_ContraseniaActualaaQ f
.aaf g
Textaag k
)aak l
;aal m
boolbb &
validacionContraseniaNuevabb +
=bb+ ,
ValidacionAccesobb, <
.bb< =
ValidarContraseniabb= O
(bbO P 
Txb_NuevaContraseniabbP d
.bbd e
Textbbe i
)bbi j
;bbj k
returncc '
validacionContraseniaActualcc .
&&cc/ 1&
validacionContraseniaNuevacc2 L
;ccL M
}dd 	
privateff 
voidff 
MostrarErroresff #
(ff# $
)ff$ %
{gg 	
ifhh 
(hh 
!hh 
ValidacionAccesohh !
.hh! "
ValidarContraseniahh" 4
(hh4 5!
Txb_ContraseniaActualhh5 J
.hhJ K
TexthhK O
)hhO P
)hhP Q
{ii !
Txb_ContraseniaActualjj %
.jj% &
BorderBrushjj& 1
=jj2 3
Brushesjj4 ;
.jj; <
Redjj< ?
;jj? @!
Txb_ContraseniaActualkk %
.kk% &
BorderThicknesskk& 5
=kk6 7
newkk8 ;
	Thicknesskk< E
(kkE F
$numkkF G
)kkG H
;kkH I
}ll 
ifmm 
(mm 
!mm 
ValidacionAccesomm !
.mm! "
ValidarContraseniamm" 4
(mm4 5 
Txb_NuevaContraseniamm5 I
.mmI J
TextmmJ N
)mmN O
)mmO P
{nn  
Txb_NuevaContraseniaoo $
.oo$ %
BorderBrushoo% 0
=oo1 2
Brushesoo3 :
.oo: ;
Redoo; >
;oo> ? 
Txb_NuevaContraseniapp $
.pp$ %
BorderThicknesspp% 4
=pp5 6
newpp7 :
	Thicknesspp; D
(ppD E
$numppE F
)ppF G
;ppG H
}qq 
}rr 	
privatett 
voidtt 
ReiniciarCampostt $
(tt$ %
)tt% &
{uu 	!
Txb_ContraseniaActualvv !
.vv! "
BorderBrushvv" -
=vv. /
Brushesvv0 7
.vv7 8
Transparentvv8 C
;vvC D!
Txb_ContraseniaActualww !
.ww! "
BorderThicknessww" 1
=ww2 3
newww4 7
	Thicknessww8 A
(wwA B
$numwwB C
)wwC D
;wwD E 
Txb_NuevaContraseniaxx  
.xx  !
BorderBrushxx! ,
=xx- .
Brushesxx/ 6
.xx6 7
Transparentxx7 B
;xxB C 
Txb_NuevaContraseniayy  
.yy  !
BorderThicknessyy! 0
=yy1 2
newyy3 6
	Thicknessyy7 @
(yy@ A
$numyyA B
)yyB C
;yyC D
}zz 	
}|| 
}}} �2
]C:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaContraseniaOlvidada.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class &
VentanaContraseniaOlvidada 3
:4 5
Page6 :
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public &
VentanaContraseniaOlvidada )
() *
)* +
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private!! 
void!! 
Regresar!! 
(!! 
object!! $
	remitente!!% .
,!!. /
RoutedEventArgs!!0 ?
	argumento!!@ I
)!!I J
{"" 	
VentanaInicio## 
paginaInicio## &
=##& '
new##' *
VentanaInicio##+ 8
(##8 9
)##9 :
;##: ;
this$$ 
.$$ 
NavigationService$$ "
.$$" #
Navigate$$# +
($$+ ,
paginaInicio$$, 8
)$$8 9
;$$9 :
}%% 	
private'' 
void'' 
EnviarContrasenia'' &
(''& '
object''' -
	remitente''. 7
,''7 8
RoutedEventArgs''9 H
	argumento''I R
)''R S
{(( 	
try)) 
{** 
ServidorPassword++  
.++  !'
ServicioGestionAccesoClient++! <
proxy++= B
=++C D
new++E H
ServidorPassword++I Y
.++Y Z'
ServicioGestionAccesoClient++Z u
(++u v
)++v w
;++w x
int,, 
validacionCorreo,, $
=,,$ %
proxy,,% *
.,,* +$
ValidarPresenciaDeCorreo,,+ C
(,,C D

Txb_Correo,,D N
.,,N O
Text,,O S
),,S T
;,,T U
if-- 
(-- 
validacionCorreo-- $
==--% '
$num--( )
)--) *
{.. 
ServidorPassword// $
.//$ %/
#ServicioPersonalizacionPerfilClient//% H 
proxyPersonalizacion//I ]
=//] ^
new//^ a
ServidorPassword//b r
.//r s0
#ServicioPersonalizacionPerfilClient	//s �
(
//� �
)
//� �
;
//� �
int00 
idAcceso00  
=00  ! 
proxyPersonalizacion00! 5
.005 6&
RecuperarIdAccesoPorCorreo006 P
(00P Q

Txb_Correo00Q [
.00[ \
Text00\ `
)00` a
;00a b
if11 
(11 
idAcceso11  
>11! "
$num11# $
)11$ %
{22 
string33 
nuevaContrasenia33 /
=330 1 
GeneradorContrasenia332 F
.33F G
GenerarContraseña33G X
(33X Y
)33Y Z
;33Z [
int44 
resultadoEdicion44 ,
=44, - 
proxyPersonalizacion44- A
.44A B(
EditarContraseniaPorIdAcceso44B ^
(44^ _
idAcceso44_ g
,44g h
nuevaContrasenia44i y
)44y z
;44z {
if55 
(55 
resultadoEdicion55 ,
==55- /
$num550 1
)551 2
{66 
EnviarCorreo77 (
(77( )
nuevaContrasenia77) 9
)779 :
;77: ;
MensajeVentana88 *
.88* +*
MostrarVentanaEmergenteExitosa88+ I
(88I J

Properties88J T
.88T U
	Resources88U ^
.88^ _!
VentanaEmergenteExito88_ t
)88t u
;88u v
VentanaInicio99 )
paginaInicio99* 6
=996 7
new997 :
VentanaInicio99; H
(99H I
)99I J
;99J K
this::  
.::  !
NavigationService::! 2
.::2 3
Navigate::3 ;
(::; <
paginaInicio::< H
)::H I
;::I J
};; 
else<< 
{== 
MensajeVentana>> *
.>>* +(
MostrarVentanaEmergenteError>>+ G
(>>G H

Properties>>H R
.>>R S
	Resources>>S \
.>>\ ]#
MensajeErrorBaseDeDatos>>] t
)>>t u
;>>u v
}?? 
}@@ 
}AA 
elseBB 
ifBB 
(BB 
validacionCorreoBB )
==BB* ,
$numBB- .
)BB. /
{CC 
MensajeVentanaDD "
.DD" #(
MostrarVentanaEmergenteErrorDD# ?
(DD? @

PropertiesDD@ J
.DDJ K
	ResourcesDDK T
.DDT U&
MensajeInformacionInvalidaDDU o
)DDo p
;DDp q
}EE 
elseFF 
{GG 
MensajeVentanaHH "
.HH" #(
MostrarVentanaEmergenteErrorHH# ?
(HH? @

PropertiesHH@ J
.HHJ K
	ResourcesHHK T
.HHT U#
MensajeErrorBaseDeDatosHHU l
)HHl m
;HHm n
}II 
}JJ 
catchKK 
(KK %
EndpointNotFoundExceptionKK ,+
excepcionPuntoFinalNoEncontradoKK- L
)KKL M
{LL 
MensajeVentanaMM 
.MM (
MostrarVentanaEmergenteErrorMM ;
(MM; <

PropertiesMM< F
.MMF G
	ResourcesMMG P
.MMP Q 
MensajeErrorConexionMMQ e
)MMe f
;MMf g
	_bitacoraNN 
.NN 
WarnNN 
(NN +
excepcionPuntoFinalNoEncontradoNN >
)NN> ?
;NN? @
}OO 
}QQ 	
privateRR 
voidRR 
EnviarCorreoRR !
(RR! "
StringRR" (
nuevaContraseniaRR) 9
)RR9 :
{SS 	
EnvioCorreoTT 
.TT 
EnviarCorreoTT $
(TT$ %

Txb_CorreoTT% /
.TT/ 0
TextTT0 4
,TT4 5
$strTT6 H
,TTH I
$"TTJ L
$strTTL X
{TTX Y
nuevaContraseniaTTY i
}TTi j
"TTj k
)TTk l
;TTl m
}UU 	
}WW 
}XX �?
VC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaAgregarAmigo.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaAgregarAmigo ,
:- .
Page/ 3
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 
VentanaAgregarAmigo "
(" #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "
}   	
private"" 
void"" 
RegresarClick"" "
(""" #
object""# )
	remitente""* 3
,""3 4
RoutedEventArgs""5 D
	argumento""E N
)""N O
{## 	
NavigationService$$ 
.$$ 
GoBack$$ $
($$$ %
)$$% &
;$$& '
}%% 	
private'' 
void'' 
AgregarAmigo'' !
(''! "
object''" (
	remitente'') 2
,''2 3
RoutedEventArgs''4 C
	argumento''D M
)''M N
{(( 	
if)) 
()) 
ValidarCorreo)) 
()) 
))) 
)))  
{** 
try++ 
{,, (
ServicioGestionAmistadClient-- 0"
servicioGestionAmistad--1 G
=--H I
new--J M(
ServicioGestionAmistadClient--N j
(--j k
)--k l
;--l m
int.. 
	idJugador.. !
=.." #"
servicioGestionAmistad..$ :
...: ;'
ConsultarIdJugadorPorCorreo..; V
(..V W

Txb_Correo..W a
...a b
Text..b f
)..f g
;..g h
if// 
(// 
	idJugador// !
>//" #
$num//$ %
)//% &
{00 
int11 '
validacionExistenciaAmistad11 7
=118 9"
servicioGestionAmistad11: P
.11P Q2
&ValidarExistenciaAmistadPorIdJugadores11Q w
(11w x
JugadorSingleton	11x �
.
11� �
	IdJugador
11� �
,
11� �
	idJugador
11� �
)
11� �
;
11� �
if22 
(22 '
validacionExistenciaAmistad22 7
==228 :
$num22; <
)22< =
{33 
RegistrarAmistad44 ,
(44, -
	idJugador44- 6
)446 7
;447 8
}55 
else66 
if66 
(66  !'
validacionExistenciaAmistad66! <
==66= ?
$num66@ A
)66A B
{77 
MensajeVentana88 *
.88* +.
"MostrarVentanaEmergenteAdvertencia88+ M
(88M N

Properties88N X
.88X Y
	Resources88Y b
.88b c"
MensajeAmistadAnterior88c y
)88y z
;88z {
}99 
else:: 
{;; 
MensajeVentana<< *
.<<* +(
MostrarVentanaEmergenteError<<+ G
(<<G H

Properties<<H R
.<<R S
	Resources<<S \
.<<\ ]#
MensajeErrorBaseDeDatos<<] t
)<<t u
;<<u v
}== 
}>> 
else?? 
if?? 
(?? 
	idJugador?? &
==??' )
$num??* +
)??+ ,
{@@ 
MensajeVentanaAA &
.AA& '(
MostrarVentanaEmergenteErrorAA' C
(AAC D

PropertiesAAD N
.AAN O
	ResourcesAAO X
.AAX Y&
MensajeInformacionInvalidaAAY s
)AAs t
;AAt u
}BB 
elseCC 
{DD 
MensajeVentanaEE &
.EE& '(
MostrarVentanaEmergenteErrorEE' C
(EEC D

PropertiesEED N
.EEN O
	ResourcesEEO X
.EEX Y#
MensajeErrorBaseDeDatosEEY p
)EEp q
;EEq r
}FF 
}HH 
catchII 
(II %
EndpointNotFoundExceptionII 0+
excepcionPuntoFinalNoEncontradoII1 P
)IIP Q
{JJ 
MensajeVentanaKK "
.KK" #(
MostrarVentanaEmergenteErrorKK# ?
(KK? @

PropertiesKK@ J
.KKJ K
	ResourcesKKK T
.KKT U 
MensajeErrorConexionKKU i
)KKi j
;KKj k
	_bitacoraLL 
.LL 
WarnLL "
(LL" #+
excepcionPuntoFinalNoEncontradoLL# B
)LLB C
;LLC D
}MM 
}NN 
elseOO 
{PP 
MensajeVentanaQQ 
.QQ (
MostrarVentanaEmergenteErrorQQ ;
(QQ; <

PropertiesQQ< F
.QQF G
	ResourcesQQG P
.QQP Q&
MensajeInformacionInvalidaQQQ k
)QQk l
;QQl m
}RR 
}SS 	
privateUU 
voidUU 
RegistrarAmistadUU %
(UU% &
intUU& )
	idJugadorUU* 3
)UU3 4
{VV 	
AmistadWW 
amistadWW 
=WW 
ObtenerAmistadWW ,
(WW, -
	idJugadorWW- 6
)WW6 7
;WW7 8
tryXX 
{YY (
ServicioGestionAmistadClientZZ ,"
servicioGestionAmistadZZ- C
=ZZD E
newZZF I(
ServicioGestionAmistadClientZZJ f
(ZZf g
)ZZg h
;ZZh i
int[[ $
resultadoRegistroAmistad[[ ,
=[[- ."
servicioGestionAmistad[[/ E
.[[E F
RegistrarAmistad[[F V
([[V W
amistad[[W ^
)[[^ _
;[[_ `
if\\ 
(\\ $
resultadoRegistroAmistad\\ ,
==\\- /
$num\\0 1
)\\1 2
{]] 
MensajeVentana^^ "
.^^" #*
MostrarVentanaEmergenteExitosa^^# A
(^^A B

Properties^^B L
.^^L M
	Resources^^M V
.^^V W!
VentanaEmergenteExito^^W l
)^^l m
;^^m n
}__ 
else`` 
{aa 
MensajeVentanabb "
.bb" #(
MostrarVentanaEmergenteErrorbb# ?
(bb? @

Propertiesbb@ J
.bbJ K
	ResourcesbbK T
.bbT U#
MensajeErrorBaseDeDatosbbU l
)bbl m
;bbm n
}cc 
}dd 
catchee 
(ee %
EndpointNotFoundExceptionee ,+
excepcionPuntoFinalNoEncontradoee- L
)eeL M
{ff 
MensajeVentanagg 
.gg (
MostrarVentanaEmergenteErrorgg ;
(gg; <

Propertiesgg< F
.ggF G
	ResourcesggG P
.ggP Q 
MensajeErrorConexionggQ e
)gge f
;ggf g
	_bitacorahh 
.hh 
Warnhh 
(hh +
excepcionPuntoFinalNoEncontradohh >
)hh> ?
;hh? @
}ii 
}jj 	
privatell 
Amistadll 
ObtenerAmistadll &
(ll& '
intll' *
idAmigoll+ 2
)ll2 3
{mm 	
Amistadnn 
amistadnn 
=nn 
newnn !
Amistadnn" )
{oo 
idJugadorAmigopp 
=pp 
idAmigopp &
,pp& '
FKidJugadorqq 
=qq 
JugadorSingletonqq ,
.qq, -
	IdJugadorqq- 6
,qq6 7
fechaSolicitudrr 
=rr 
DateTimerr '
.rr' (
Todayrr( -
,rr- .
}ss 
;ss 
returntt 
amistadtt 
;tt 
}uu 	
privateww 
boolww 
ValidarCorreoww "
(ww" #
)ww# $
{xx 	
returnyy 
ValidacionAccesoyy #
.yy# $
ValidarCorreoyy$ 1
(yy1 2

Txb_Correoyy2 <
.yy< =
Textyy= A
)yyA B
;yyB C
}zz 	
}{{ 
}|| �4
PC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaLogros.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaLogros &
:' (
Page) -
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 
VentanaLogros 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
RecuperarLogros   
(   
)   
;   
}!! 	
private## 
void## 
RegresarClick## "
(##" #
object### )
sender##* 0
,##0 1
RoutedEventArgs##2 A
e##B C
)##C D
{$$ 	
VentanaEstadisticas%% 
paginaEstadisticas%%  2
=%%3 4
new%%5 8
VentanaEstadisticas%%9 L
(%%L M
)%%M N
;%%N O
this&& 
.&& 
NavigationService&& "
.&&" #
Navigate&&# +
(&&+ ,
paginaEstadisticas&&, >
)&&> ?
;&&? @
}(( 	
private** 
void** 
RecuperarLogros** $
(**$ %
)**% &
{++ 	
try,, 
{-- '
ServicioGestionLogrosClient.. +!
servicioGestionLogros.., A
=..B C
new..D G'
ServicioGestionLogrosClient..H c
(..c d
)..d e
;..e f
List// 
<// 
int// 
>// 
idLogros// "
=//# $!
servicioGestionLogros//% :
.//: ;'
ObtenerIdLogrosPorIdJugador//; V
(//V W
JugadorSingleton//W g
.//g h
	IdJugador//h q
)//q r
.//r s
ToList//s y
(//y z
)//z {
;//{ |
if00 
(00 
idLogros00 
.00 
Any00  
(00  !
)00! "
)00" #
{11 
int22 
primerLogro22 #
=22$ %
idLogros22& .
[22. /
$num22/ 0
]220 1
;221 2
if33 
(33 
primerLogro33 #
!=33$ &
-33' (
$num33( )
)33) *
{44 
MostrarLogros55 %
(55% &
idLogros55& .
)55. /
;55/ 0
}66 
else77 
{88 
MensajeVentana99 &
.99& '(
MostrarVentanaEmergenteError99' C
(99C D

Properties99D N
.99N O
	Resources99O X
.99X Y#
MensajeErrorBaseDeDatos99Y p
)99p q
;99q r
}:: 
};; 
}<< 
catch== 
(== %
EndpointNotFoundException== ,+
excepcionPuntoFinalNoEncontrado==- L
)==L M
{>> 
MensajeVentana?? 
.?? (
MostrarVentanaEmergenteError?? ;
(??; <

Properties??< F
.??F G
	Resources??G P
.??P Q 
MensajeErrorConexion??Q e
)??e f
;??f g
	_bitacora@@ 
.@@ 
Warn@@ 
(@@ +
excepcionPuntoFinalNoEncontrado@@ >
)@@> ?
;@@? @
}AA 
}BB 	
privateDD 
voidDD 
MostrarLogrosDD "
(DD" #
ListDD# '
<DD' (
intDD( +
>DD+ ,
idLogrosDD- 5
)DD5 6
{EE 	
ifFF 
(FF 
idLogrosFF 
.FF 
ContainsFF !
(FF! "
ValoresConstantesFF" 3
.FF3 4
IdPrimerLogroFF4 A
)FFA B
)FFB C
{GG 
Img_LogroUnoHH 
.HH 
SourceHH #
=HH$ %
newHH& )
BitmapImageHH* 5
(HH5 6
newHH6 9
UriHH: =
(HH= >
ValoresConstantesHH> O
.HHO P
RutaImagenLogroHHP _
)HH_ `
)HH` a
;HHa b
}II 
ifJJ 
(JJ 
idLogrosJJ 
.JJ 
ContainsJJ !
(JJ! "
ValoresConstantesJJ" 3
.JJ3 4
IdSegundoLogroJJ4 B
)JJB C
)JJC D
{KK 
Img_LogroDosLL 
.LL 
SourceLL #
=LL$ %
newLL& )
BitmapImageLL* 5
(LL5 6
newLL6 9
UriLL: =
(LL= >
ValoresConstantesLL> O
.LLO P
RutaImagenLogroLLP _
)LL_ `
)LL` a
;LLa b
}MM 
ifNN 
(NN 
idLogrosNN 
.NN 
ContainsNN !
(NN! "
ValoresConstantesNN" 3
.NN3 4
IdTercerLogroNN4 A
)NNA B
)NNB C
{OO 
Img_LogroTresPP 
.PP 
SourcePP $
=PP% &
newPP' *
BitmapImagePP+ 6
(PP6 7
newPP7 :
UriPP; >
(PP> ?
ValoresConstantesPP? P
.PPP Q
RutaImagenLogroPPQ `
)PP` a
)PPa b
;PPb c
}QQ 
ifRR 
(RR 
idLogrosRR 
.RR 
ContainsRR !
(RR! "
ValoresConstantesRR" 3
.RR3 4
IdCuartoLogroRR4 A
)RRA B
)RRB C
{SS 
Img_LogroCuatroTT 
.TT  
SourceTT  &
=TT' (
newTT) ,
BitmapImageTT- 8
(TT8 9
newTT9 <
UriTT= @
(TT@ A
ValoresConstantesTTA R
.TTR S
RutaImagenLogroTTS b
)TTb c
)TTc d
;TTd e
}UU 
ifVV 
(VV 
idLogrosVV 
.VV 
ContainsVV !
(VV! "
ValoresConstantesVV" 3
.VV3 4
IdQuintoLogroVV4 A
)VVA B
)VVB C
{WW 
Img_LogroCincoXX 
.XX 
SourceXX %
=XX& '
newXX( +
BitmapImageXX, 7
(XX7 8
newXX8 ;
UriXX< ?
(XX? @
ValoresConstantesXX@ Q
.XXQ R
RutaImagenLogroXXR a
)XXa b
)XXb c
;XXc d
}YY 
}ZZ 	
}[[ 
}\\ �)
VC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Vistas\VentanaEstadisticas.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaEstadisticas ,
:- .
Page/ 3
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v �
)
� �
;
� �
public 
VentanaEstadisticas "
(" #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "
ObtenerEstadisticas   
(    
)    !
;  ! "
}!! 	
private## 
void## 
RegresarClick## "
(##" #
object### )
sender##* 0
,##0 1
RoutedEventArgs##2 A
e##B C
)##C D
{$$ 	 
VentanaMenuPrincipal%%  
paginaMenuPrincipal%%! 4
=%%4 5
new%%6 9 
VentanaMenuPrincipal%%: N
(%%N O
)%%O P
;%%P Q
this&& 
.&& 
NavigationService&& "
.&&" #
Navigate&&# +
(&&+ ,
paginaMenuPrincipal&&, ?
)&&? @
;&&@ A
}'' 	
private)) 
void)) 
ObtenerEstadisticas)) (
())( )
)))) *
{** 	
try++ 
{,, -
!ServicioGestionEstadisticasClient-- 1'
servicioGestionEstadisticas--2 M
=--N O
new--P S-
!ServicioGestionEstadisticasClient--T u
(--u v
)--v w
;--w x
EstadisticaContrato.. #
estadistica..$ /
=..0 1'
servicioGestionEstadisticas..2 M
...M N.
"ObtenerEstadisticaPorIdEstadistica..N p
(..p q
JugadorSingleton	..q �
.
..� �
IdEstadistica
..� �
)
..� �
;
..� �
if// 
(// 
estadistica// 
.//  
IdEstadistica//  -
>//. /
$num//0 1
)//1 2
{00 "
ConfigurarEstadisticas11 *
(11* +
estadistica11+ 6
)116 7
;117 8
}22 
else33 
{44 
MensajeVentana55 "
.55" #(
MostrarVentanaEmergenteError55# ?
(55? @

Properties55@ J
.55J K
	Resources55K T
.55T U#
MensajeErrorBaseDeDatos55U l
)55l m
;55m n
}66 
}77 
catch88 
(88 %
EndpointNotFoundException88 ,+
excepcionPuntoFinalNoEncontrado88- L
)88L M
{99 
MensajeVentana:: 
.:: (
MostrarVentanaEmergenteError:: ;
(::; <

Properties::< F
.::F G
	Resources::G P
.::P Q 
MensajeErrorConexion::Q e
)::e f
;::f g
	_bitacora;; 
.;; 
Warn;; 
(;; +
excepcionPuntoFinalNoEncontrado;; >
);;> ?
;;;? @
}<< 
}== 	
private?? 
void?? "
ConfigurarEstadisticas?? +
(??+ ,
EstadisticaContrato??, ?
estadistica??@ K
)??K L
{@@ 	 
Txbl_PartidasGanadasAA  
.AA  !
TextAA! %
=AA& '
estadisticaAA( 3
.AA3 4
PartidasGanadasAA4 C
.AAC D
ToStringAAD L
(AAL M
)AAM N
;AAN O!
Txbl_PartidasPerdidasBB !
.BB! "
TextBB" &
=BB& '
estadisticaBB' 2
.BB2 3
PartidasPerdidasBB3 C
.BBC D
ToStringBBD L
(BBL M
)BBM N
;BBN O
intCC 
totalPartidasCC 
=CC 
estadisticaCC  +
.CC+ ,
PartidasPerdidasCC, <
+CC= >
estadisticaCC? J
.CCJ K
PartidasGanadasCCK Z
;CCZ [ 
Txbl_PartidasJugadasDD  
.DD  !
TextDD! %
=DD% &
totalPartidasDD& 3
.DD3 4
ToStringDD4 <
(DD< =
)DD= >
;DD> ?
Txbl_PuntajeEE 
.EE 
TextEE 
=EE 
estadisticaEE  +
.EE+ ,
PuntajeEE, 3
.EE3 4
ToStringEE4 <
(EE< =
)EE= >
;EE> ?
}FF 	
privateHH 
voidHH 
LogrosClickHH  
(HH  !
objectHH! '
senderHH( .
,HH. /
RoutedEventArgsHH0 ?
eHH@ A
)HHA B
{II 	
VentanaLogrosJJ 
paginaLogrosJJ &
=JJ' (
newJJ) ,
VentanaLogrosJJ- :
(JJ: ;
)JJ; <
;JJ< =
thisKK 
.KK 
NavigationServiceKK "
.KK" #
NavigateKK# +
(KK+ ,
paginaLogrosKK, 8
)KK8 9
;KK9 :
}MM 	
}NN 
}OO �
HC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Enums\Enumeracion.cs
	namespace 	
Cliente
 
. 
Enums 
{ 
public		 

class		 
Enumeracion		 
{

 
public 
enum 
EnumEstadoPartida %
{ 	
Iniciada 
, 
Proceso 
, 
	Terminada 
, 
	Cancelada 
, 
} 	
public 
enum  
EnumModoJuegoPartida (
{ 	
Facil 
, 
Medio 
, 
Dificil 
, 
} 	
} 
} �
SC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\ValoresConstantes.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{		 
public

 

static

 
class

 
ValoresConstantes

 )
{ 
public 
const 
int "
CantidadPreguntasFacil /
=0 1
$num2 4
;4 5
public 
const 
int "
CantidadPreguntasMedio /
=0 1
$num2 4
;4 5
public 
const 
int $
CantidadPreguntasDificil 1
=2 3
$num4 6
;6 7
public 
const 
int 
TiempoFacil $
=% &
$num' )
;) *
public 
const 
int 
TiempoMedio $
=% &
$num' )
;) *
public 
const 
int 
TiempoDificil &
=' (
$num) +
;+ ,
public 
const 
int 
IdPrimerLogro &
=' (
$num) *
;* +
public 
const 
int 
IdSegundoLogro '
=( )
$num* +
;+ ,
public 
const 
int 
IdTercerLogro &
=' (
$num) *
;* +
public 
const 
int 
IdCuartoLogro &
=' (
$num) *
;* +
public   
const   
int   
IdQuintoLogro   &
=  ' (
$num  ) *
;  * +
public"" 
const"" 
int"" 
PuntajeTecerLogro"" *
=""+ ,
$num""- 0
;""0 1
public$$ 
const$$ 
int$$ 
PuntajeQuintoLogro$$ +
=$$, -
$num$$. 1
;$$1 2
public&& 
const&& 
string&& 
RutaImagenLogro&& +
=&&, -
$str&&. c
;&&c d
public(( 
const(( 
string(( '
RutaImagenJugadorPorDefecto(( 7
=((8 9
$str((: n
;((n o
public** 
const** 
string** !
DescripcionPorDefecto** 1
=**2 3
$str**4 6
;**6 7
}++ 
},, �
SC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\ValidacionJugador.cs
	namespace

 	
Cliente


 
.

 

Auxiliares

 
{ 
public 

class 
ValidacionJugador "
:# $
AbstractValidator% 6
<6 7
Jugador7 >
>> ?
{ 
public 
ValidacionJugador  
(  !
)! "
{ 	
RuleFor 
( 
jugador 
=> 
jugador &
.& '
nombreUsuario' 4
)4 5
.5 6
NotEmpty6 >
(> ?
)? @
.@ A
MaximumLengthA N
(N O
$numO Q
)Q R
.R S
MatchesS Z
(Z [
$str[ f
)f g
;g h
RuleFor 
( 
jugador 
=> 
jugador &
.& '
descripcion' 2
)2 3
.3 4
MaximumLength4 A
(A B
$numB E
)E F
;F G
} 	
public 
static 
bool 
ValidarDescripcion -
(- .
string. 4
descripcion5 @
)@ A
{ 	
return 
descripcion 
. 
Length %
<=& (
$num) ,
;, -
} 	
public 
static 
bool  
ValidarNombreUsuario /
(/ 0
string0 6
nombreUsuario7 D
)D E
{ 	
string 
patronNombreUsuario &
=' (
$str) 4
;4 5
return 
! 
string 
. 
IsNullOrEmpty (
(( )
nombreUsuario) 6
)6 7
&&8 :
nombreUsuario; H
.H I
LengthI O
<=P R
$numS U
&&U W
RegexX ]
.] ^
IsMatch^ e
(e f
nombreUsuariof s
,s t 
patronNombreUsuario	u �
)
� �
;
� �
} 	
} 
} �
RC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\ValidacionAcceso.cs
	namespace

 	
Cliente


 
.

 

Auxiliares

 
{ 
public 

class 
ValidacionAcceso !
:" #
AbstractValidator$ 5
<5 6
Acceso6 <
>< =
{ 
public 
ValidacionAcceso 
(  
)  !
{ 	
RuleFor 
( 
acceso 
=> 
acceso $
.$ %
contrasenia% 0
)0 1
.1 2
MinimumLength2 ?
(? @
$num@ A
)A B
.B C
MatchesC J
(J K
$strK z
)z {
;{ |
RuleFor 
( 
acceso 
=> 
acceso $
.$ %
correo% +
)+ ,
., -
EmailAddress- 9
(9 :
): ;
;; <
} 	
public 
static 
bool 
ValidarCorreo (
(( )
string) /
correo0 6
)6 7
{ 	
string 
patronCorreo 
=  !
$str" ?
;? @
return 
Regex 
. 
IsMatch  
(  !
correo! '
,' (
patronCorreo) 5
)5 6
;6 7
} 	
public 
static 
bool 
ValidarContrasenia -
(- .
string. 4
contrasenia5 @
)@ A
{ 	
string 
patronContrasenia $
=% &
$str' Y
;Y Z
return 
Regex 
. 
IsMatch  
(  !
contrasenia! ,
,, -
patronContrasenia. ?
)? @
;@ A
} 	
} 
}   �(
PC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\MensajeVentana.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{		 
public

 

static

 
class

 
MensajeVentana

 &
{ 
public 
static 
void (
MostrarVentanaEmergenteError 7
(7 8
string8 >
errorMessage? K
)K L
{ 	

MessageBox 
. 
Show 
( 
errorMessage (
,( )

Properties* 4
.4 5
	Resources5 >
.> ?!
VentanaEmergenteError? T
,T U
MessageBoxButtonV f
.f g
OKg i
,i j
MessageBoxImagek z
.z {
Error	{ �
)
� �
;
� �
} 	
public 
static 
void .
"MostrarVentanaEmergenteAdvertencia =
(= >
string> D
warningMessageE S
)S T
{ 	

MessageBox 
. 
Show 
( 
warningMessage *
,* +

Properties, 6
.6 7
	Resources7 @
.@ A'
VentanaEmergenteAdvertenciaA \
,\ ]
MessageBoxButton^ n
.n o
OKo q
,q r
MessageBoxImage	s �
.
� �
Warning
� �
)
� �
;
� �
} 	
public 
static 
void *
MostrarVentanaEmergenteExitosa 9
(9 :
string: @
successMessageA O
)O P
{ 	

MessageBox 
. 
Show 
( 
successMessage *
,* +

Properties, 6
.6 7
	Resources7 @
.@ A!
VentanaEmergenteExitoA V
,V W
MessageBoxButtonX h
.h i
OKi k
,k l
MessageBoxImagem |
.| }
Information	} �
)
� �
;
� �
} 	
public 
static 
bool /
#MostrarVentanaEmergenteConfirmacion >
(> ?
string? E
confirmMessageF T
)T U
{ 	
MessageBoxResult 
result #
=$ %

MessageBox& 0
.0 1
Show1 5
(5 6
confirmMessage6 D
,D E

PropertiesF P
.P Q
	ResourcesQ Z
.Z [(
VentanaEmergenteConfirmacion[ w
,w x
MessageBoxButton	y �
.
� �
OKCancel
� �
,
� �
MessageBoxImage
� �
.
� �
Question
� �
)
� �
;
� �
return 
result 
== 
MessageBoxResult -
.- .
OK. 0
;0 1
} 	
public!! 
static!! 
void!! ,
 MostrarVentanaEmergenteExpulsion!! ;
(!!; <
string!!< B
successMessage!!C Q
)!!Q R
{"" 	

MessageBox## 
.## 
Show## 
(## 
successMessage## *
,##* +

Properties##, 6
.##6 7
	Resources##7 @
.##@ A%
VentanaEmergenteExpulsion##A Z
,##Z [
MessageBoxButton##\ l
.##l m
OKCancel##m u
,##u v
MessageBoxImage	##w �
.
##� �
Information
##� �
)
##� �
;
##� �
}$$ 	
public&& 
static&& 
void&& ,
 MostrarVentanaEmergenteExpulsado&& ;
(&&; <
string&&< B
successMessage&&C Q
)&&Q R
{'' 	

MessageBox(( 
.(( 
Show(( 
((( 
successMessage(( *
,((* +

Properties((, 6
.((6 7
	Resources((7 @
.((@ A%
VentanaEmergenteExpulsado((A Z
,((Z [
MessageBoxButton((\ l
.((l m
OK((m o
,((o p
MessageBoxImage	((q �
.
((� �
Information
((� �
)
((� �
;
((� �
})) 	
public++ 
static++ 
bool++ /
#MostrarVentanaEmergenteCambioIdioma++ >
(++> ?
string++? E
ConfirmMessage++F T
)++T U
{,, 	
MessageBoxResult-- 
result-- #
=--$ %

MessageBox--& 0
.--0 1
Show--1 5
(--5 6
ConfirmMessage--6 D
,--D E

Properties--F P
.--P Q
	Resources--Q Z
.--Z [(
VentanaEmergenteCambioIdioma--[ w
,--w x
MessageBoxButton	--y �
.
--� �
OKCancel
--� �
,
--� �
MessageBoxImage
--� �
.
--� �
Question
--� �
)
--� �
;
--� �
return.. 
result.. 
==.. 
MessageBoxResult.. -
...- .
OK... 0
;..0 1
}// 	
}00 
}11 �
RC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\JugadorSingleton.cs
	namespace		 	
Cliente		
 
.		 

Auxiliares		 
{

 
public 

class 
JugadorSingleton !
{ 
private 
static 
readonly 
JugadorSingleton  0
_jugadorSingleton1 B
=C D
newE H
JugadorSingletonI Y
(Y Z
)Z [
;[ \
public 
static 
int 
IdAcceso "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
static 
string 
Correo #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
static 
string 
Contrasenia (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
static 
string 
NombreUsuario *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
static 
string 

RutaImagen '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
static 
string 
Descripcion (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
static 
int 
	IdJugador #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
static 
int 
IdEstadistica '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
private 
JugadorSingleton  
(  !
)! "
{# $
}% &
public 
static 
JugadorSingleton &
jugadorSingleton' 7
=>8 :
_jugadorSingleton; L
;L M
public 
void !
CrearJugadorSingleton )
() *
Cuenta* 0
cuenta1 7
)7 8
{ 	
Correo 
= 
cuenta 
. 
Correo "
;" #
Contrasenia   
=   
cuenta    
.    !
Contrasenia  ! ,
;  , -
IdAcceso!! 
=!! 
cuenta!! 
.!! 
IdAcceso!! &
;!!& '
NombreUsuario"" 
="" 
cuenta"" "
.""" #
NombreUsuario""# 0
;""0 1

RutaImagen## 
=## 
cuenta## 
.##  

RutaImagen##  *
;##* +
Descripcion$$ 
=$$ 
cuenta$$  
.$$  !
Descripcion$$! ,
;$$, -
	IdJugador%% 
=%% 
cuenta%% 
.%% 
	IdJugador%% (
;%%( )
IdEstadistica&& 
=&& 
cuenta&&  
.&&  !
IdEstadistica&&! .
;&&. /
}'' 	
}(( 
})) �
PC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\JugadorAmistad.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{ 
public		 

class		 
JugadorAmistad		 
{

 
public 
int 
	IdJugador 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
Estado 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �"
VC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\GeneradorContrasenia.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{ 
public		 

static		 
class		  
GeneradorContrasenia		 ,
{

 
private 
static 
readonly 
Random  &

_aleatorio' 1
=2 3
new4 7
Random8 >
(> ?
)? @
;@ A
public 
static 
string 
GenerarContraseña .
(. /
)/ 0
{ 	
const 
int 
Longitud 
=  
$num! "
;" #
const 
string 
LetrasMayusculas )
=* +
$str, H
;H I
const 
string 
LetrasMinusculas )
=* +
$str, H
;H I
const 
string 
Numeros  
=! "
$str# /
;/ 0
const 
string  
CaracteresEspeciales -
=. /
$str0 C
;C D
StringBuilder 
contrasenia %
=& '
new( +
StringBuilder, 9
(9 :
): ;
;; <
contrasenia 
. 
Append 
( 
LetrasMayusculas /
[/ 0

_aleatorio0 :
.: ;
Next; ?
(? @
LetrasMayusculas@ P
.P Q
LengthQ W
)W X
]X Y
)Y Z
;Z [
contrasenia 
. 
Append 
( 
LetrasMinusculas /
[/ 0

_aleatorio0 :
.: ;
Next; ?
(? @
LetrasMinusculas@ P
.P Q
LengthQ W
)W X
]X Y
)Y Z
;Z [
contrasenia 
. 
Append 
( 
Numeros &
[& '

_aleatorio' 1
.1 2
Next2 6
(6 7
Numeros7 >
.> ?
Length? E
)E F
]F G
)G H
;H I
contrasenia 
. 
Append 
(  
CaracteresEspeciales 3
[3 4

_aleatorio4 >
.> ?
Next? C
(C D 
CaracteresEspecialesD X
.X Y
LengthY _
)_ `
]` a
)a b
;b c
string 
todosLosCaracteres %
=& '
LetrasMayusculas( 8
+9 :
LetrasMinusculas; K
+L M
NumerosN U
+V W 
CaracteresEspecialesX l
;l m
int 
caracteresRestantes #
=$ %
Longitud& .
-/ 0
contrasenia1 <
.< =
Length= C
;C D
for 
( 
int 
i 
= 
$num 
; 
i 
< 
caracteresRestantes  3
;3 4
i5 6
++6 8
)8 9
{ 
contrasenia 
. 
Append "
(" #
todosLosCaracteres# 5
[5 6

_aleatorio6 @
.@ A
NextA E
(E F
todosLosCaracteresF X
.X Y
LengthY _
)_ `
]` a
)a b
;b c
} 
char 
[ 
] 
contraseniaCadena $
=% &
contrasenia' 2
.2 3
ToString3 ;
(; <
)< =
.= >
ToCharArray> I
(I J
)J K
;K L
contraseniaCadena   
=   
contraseniaCadena    1
.  1 2
OrderBy  2 9
(  9 :
s  : ;
=>  < >

_aleatorio  ? I
.  I J
Next  J N
(  N O
)  O P
)  P Q
.  Q R
ToArray  R Y
(  Y Z
)  Z [
;  [ \
return!! 
new!! 
string!! 
(!! 
contraseniaCadena!! /
)!!/ 0
;!!0 1
}"" 	
}## 
}$$ �
QC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\GeneradorCodigo.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{ 
public		 

static		 
class		 
GeneradorCodigo		 '
{

 
private 
static 
Random 

_aleatorio (
=) *
new+ .
Random/ 5
(5 6
)6 7
;7 8
public 
static 
string  
GenerarCodigoPartida 1
(1 2
)2 3
{ 	
StringBuilder 
codigoPartida '
=( )
new* -
StringBuilder. ;
(; <
)< =
;= >
for 
( 
int 
i 
= 
$num 
; 
i 
< 
$num  !
;! "
i# $
++$ &
)& '
{ 
codigoPartida 
. 
Append $
($ %

_aleatorio% /
./ 0
Next0 4
(4 5
$num5 6
,6 7
$num8 :
): ;
.; <
ToString< D
(D E
)E F
)F G
;G H
} 
return 
codigoPartida  
.  !
ToString! )
() *
)* +
;+ ,
} 	
} 
} �
MC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\EnvioCorreo.cs
	namespace

 	
Cliente


 
.

 

Auxiliares

 
{ 
public 

static 
class 
EnvioCorreo #
{ 
public 
static 
void 
EnviarCorreo '
(' (
string( .
destinatario/ ;
,; <
string= C
asuntoD J
,J K
stringL R
cuerpoS Y
)Y Z
{ 	
try 
{ 
MailMessage 
mensaje #
=$ %
new& )
MailMessage* 5
(5 6
)6 7
;7 8
mensaje 
. 
From 
= 
new "
MailAddress# .
(. / 
ConfigurationManager/ C
.C D
AppSettingsD O
[O P
$strP _
]_ `
)` a
;a b
mensaje 
. 
To 
. 
Add 
( 
destinatario +
)+ ,
;, -
mensaje 
. 
Subject 
=  !
asunto" (
;( )
mensaje 
. 
Body 
= 
cuerpo %
;% &
mensaje 
. 

IsBodyHtml "
=# $
true% )
;) *

SmtpClient 
clienteSmtp &
=' (
new) ,

SmtpClient- 7
(7 8
$str8 H
,H I
$numJ M
)M N
;N O
clienteSmtp 
. 
Credentials '
=( )
new* -
NetworkCredential. ?
(? @ 
ConfigurationManager (
.( )
AppSettings) 4
[4 5
$str5 D
]D E
,E F 
ConfigurationManager (
.( )
AppSettings) 4
[4 5
$str5 H
]H I
) 
; 
clienteSmtp 
. 
	EnableSsl %
=& '
true( ,
;, -
clienteSmtp 
. 
Send  
(  !
mensaje! (
)( )
;) *
} 
catch   
(   
SmtpException    
)    !
{!! 
MensajeVentana"" 
."" (
MostrarVentanaEmergenteError"" ;
(""; <

Properties""< F
.""F G
	Resources""G P
.""P Q#
MensajeErrorEnvioCorreo""Q h
)""h i
;""i j
}## 
}$$ 	
}%% 
}&& �
XC:\Users\mario\Desktop\Cliente\JuegoPasswordCliente\Auxiliares\EncriptadorContrasenia.cs
	namespace		 	
Cliente		
 
.		 

Auxiliares		 
{

 
public 

static 
class "
EncriptadorContrasenia .
{ 
public 
static 
string  
EncriptarContrasenia 1
(1 2
string2 8
contrasenia9 D
)D E
{ 	
var 
sha256 
= 
SHA256 
.  
Create  &
(& '
)' (
;( )
byte 
[ 
] 
bytes 
= 
sha256 !
.! "
ComputeHash" -
(- .
Encoding. 6
.6 7
UTF87 ;
.; <
GetBytes< D
(D E
contraseniaE P
)P Q
)Q R
;R S
var 
constructorCadena !
=" #
new$ '
StringBuilder( 5
(5 6
)6 7
;7 8
for 
( 
int 
i 
= 
$num 
; 
i 
< 
bytes  %
.% &
Length& ,
;, -
i. /
++/ 1
)1 2
{ 
constructorCadena !
.! "
Append" (
(( )
bytes) .
[. /
i/ 0
]0 1
.1 2
ToString2 :
(: ;
$str; ?
)? @
)@ A
;A B
} 
return 
constructorCadena $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
} 
} 