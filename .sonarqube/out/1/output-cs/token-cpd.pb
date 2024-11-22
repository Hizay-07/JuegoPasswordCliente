Ñ
FC:\Users\hizza\Desktop\JuegoPasswordCliente\Properties\AssemblyInfo.cs
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
]55) *œ
>C:\Users\hizza\Desktop\JuegoPasswordCliente\MainWindow.xaml.cs
	namespace 	
Cliente
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
public 

MainWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ê
7C:\Users\hizza\Desktop\JuegoPasswordCliente\App.xaml.cs
	namespace		 	
Cliente		
 
{

 
public 

partial 
class 
App 
: 
Application *
{ 
} 
} ’^
NC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaUnionPartida.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
$num>>( )
)>>) *
{?? 
if@@ 
(@@ 
partida@@ 
.@@  
EstadoPartida@@  -
==@@. 0
Enumeracion@@1 <
.@@< =
EnumEstadoPartida@@= N
.@@N O
Iniciada@@O W
.@@W X
ToString@@X `
(@@` a
)@@a b
)@@b c
{AA #
validacionEstadoPartidaBB /
=BB0 1
trueBB2 6
;BB6 7
}CC 
}DD 
}EE 
catchFF 
(FF %
EndpointNotFoundExceptionFF ,+
excepcionPuntoFinalNoEncontradoFF- L
)FFL M
{GG 
MensajeVentanaHH 
.HH (
MostrarVentanaEmergenteErrorHH ;
(HH; <

PropertiesHH< F
.HHF G
	ResourcesHHG P
.HHP Q 
MensajeErrorConexionHHQ e
)HHe f
;HHf g
	_bitacoraII 
.II 
WarnII 
(II +
excepcionPuntoFinalNoEncontradoII >
)II> ?
;II? @
}JJ 
returnKK #
validacionEstadoPartidaKK *
;KK* +
}LL 	
privateNN 
boolNN  
ValidarCodigoPartidaNN )
(NN) *
)NN* +
{OO 	
boolPP 

validacionPP 
=PP 
falsePP #
;PP# $
tryQQ 
{RR (
ServicioGestionPartidaClientSS ,"
servicioGestionPartidaSS- C
=SSC D
newSSD G(
ServicioGestionPartidaClientSSH d
(SSd e
)SSe f
;SSf g
intTT 
validacionCodigoTT $
=TT$ %"
servicioGestionPartidaTT% ;
.TT; < 
ValidarCodigoPartidaTT< P
(TTP Q
Txb_CodigoPartidaTTQ b
.TTb c
TextTTc g
)TTg h
;TTh i
switchUU 
(UU 
validacionCodigoUU (
)UU( )
{VV 
caseWW 
-WW 
$numWW 
:WW 
MensajeVentanaXX &
.XX& '(
MostrarVentanaEmergenteErrorXX' C
(XXC D

PropertiesXXD N
.XXN O
	ResourcesXXO X
.XXX Y#
MensajeErrorBaseDeDatosXXY p
)XXp q
;XXq r
breakYY 
;YY 
caseZZ 
$numZZ 
:ZZ 
MensajeVentana[[ &
.[[& '.
"MostrarVentanaEmergenteAdvertencia[[' I
([[I J

Properties[[J T
.[[T U
	Resources[[U ^
.[[^ _+
MensajeCodigoPartidaInexistente[[_ ~
)[[~ 
;	[[ Ä
break\\ 
;\\ 
case]] 
$num]] 
:]] 

validacion^^ "
=^^# $
true^^% )
;^^) *
break__ 
;__ 
}`` 
}aa 
catchbb 
(bb %
EndpointNotFoundExceptionbb ,+
excepcionPuntoFinalNoEncontradobb- L
)bbL M
{cc 
MensajeVentanadd 
.dd (
MostrarVentanaEmergenteErrordd ;
(dd; <

Propertiesdd< F
.ddF G
	ResourcesddG P
.ddP Q 
MensajeErrorConexionddQ e
)dde f
;ddf g
	_bitacoraee 
.ee 
Warnee 
(ee +
excepcionPuntoFinalNoEncontradoee >
)ee> ?
;ee? @
}ff 
returngg 

validaciongg 
;gg 
}hh 	
privatekk 
voidkk 
CargarDatosPartidakk '
(kk' (
)kk( )
{ll 	
trymm 
{nn (
ServicioGestionPartidaClientoo ,"
servicioGestionPartidaoo- C
=ooD E
newooF I(
ServicioGestionPartidaClientooJ f
(oof g
)oog h
;ooh i
varpp 
partidapp 
=pp "
servicioGestionPartidapp 4
.pp4 5%
RecuperarPartidaPorCodigopp5 N
(ppN O
Txb_CodigoPartidappO `
.pp` a
Textppa e
)ppe f
;ppf g
ifqq 
(qq 
partidaqq 
.qq 
	IdPartidaqq %
>qq& '
$numqq( )
)qq) *
{rr 
Cuentass 
cuentass !
=ss! "'
ObtenerInformacionAnfitrionss" =
(ss= >
partidass> E
.ssE F
IdAnfitrionssF Q
)ssQ R
;ssR S
iftt 
(tt 
cuentatt 
.tt 
IdAccesott '
>tt( )
$numtt* +
)tt+ ,
{uu 
AbrirSalaDeEsperavv )
(vv) *
cuentavv* 0
)vv0 1
;vv1 2
}ww 
}xx 
}yy 
catchzz 
(zz %
EndpointNotFoundExceptionzz ,+
excepcionPuntoFinalNoEncontradozz- L
)zzL M
{{{ 
MensajeVentana|| 
.|| (
MostrarVentanaEmergenteError|| ;
(||; <

Properties||< F
.||F G
	Resources||G P
.||P Q 
MensajeErrorConexion||Q e
)||e f
;||f g
	_bitacora}} 
.}} 
Warn}} 
(}} +
excepcionPuntoFinalNoEncontrado}} >
)}}> ?
;}}? @
}~~ 
} 	
private
ÅÅ 
Cuenta
ÅÅ )
ObtenerInformacionAnfitrion
ÅÅ 2
(
ÅÅ2 3
int
ÅÅ3 6
idAnfitrion
ÅÅ7 B
)
ÅÅB C
{
ÇÇ 	
Cuenta
ÉÉ 
cuentaAnfitrion
ÉÉ "
=
ÉÉ# $
new
ÉÉ% (
Cuenta
ÉÉ) /
(
ÉÉ/ 0
)
ÉÉ0 1
;
ÉÉ1 2
try
ÑÑ 
{
ÖÖ )
ServicioGestionAccesoClient
ÜÜ +#
servicioGestionAcceso
ÜÜ, A
=
ÜÜA B
new
ÜÜB E)
ServicioGestionAccesoClient
ÜÜF a
(
ÜÜa b
)
ÜÜb c
;
ÜÜc d
cuentaAnfitrion
áá 
=
áá  !#
servicioGestionAcceso
áá" 7
.
áá7 8)
RecuperarCuentaPorIdJugador
áá8 S
(
ááS T
idAnfitrion
ááT _
)
áá_ `
;
áá` a
}
àà 
catch
ââ 
(
ââ '
EndpointNotFoundException
ââ ,-
excepcionPuntoFinalNoEncontrado
ââ- L
)
ââL M
{
ää 
MensajeVentana
ãã 
.
ãã *
MostrarVentanaEmergenteError
ãã ;
(
ãã; <

Properties
ãã< F
.
ããF G
	Resources
ããG P
.
ããP Q"
MensajeErrorConexion
ããQ e
)
ããe f
;
ããf g
	_bitacora
åå 
.
åå 
Warn
åå 
(
åå -
excepcionPuntoFinalNoEncontrado
åå >
)
åå> ?
;
åå? @
}
çç 
return
éé 
cuentaAnfitrion
éé "
;
éé" #
}
èè 	
private
ëë 
void
ëë 
AbrirSalaDeEspera
ëë &
(
ëë& '
Cuenta
ëë' -
cuenta
ëë. 4
)
ëë4 5
{
íí 	
VentanaLobby
ìì 
paginaSalaEspera
ìì )
=
ìì) *
new
ìì* -
VentanaLobby
ìì. :
(
ìì: ;
)
ìì; <
;
ìì< =
paginaSalaEspera
îî 
.
îî 
Img_Anfitrion
îî *
.
îî* +
Source
îî+ 1
=
îî2 3
new
îî4 7
BitmapImage
îî8 C
(
îîC D
new
îîD G
Uri
îîH K
(
îîK L
cuenta
îîL R
.
îîR S

RutaImagen
îîS ]
)
îî] ^
)
îî^ _
;
îî_ `
paginaSalaEspera
ïï 
.
ïï "
Txbl_NombreAnfitrion
ïï 1
.
ïï1 2
Text
ïï2 6
=
ïï7 8
cuenta
ïï9 ?
.
ïï? @
NombreUsuario
ïï@ M
;
ïïM N
paginaSalaEspera
ññ 
.
ññ 
Img_Jugador2
ññ )
.
ññ) *
Source
ññ* 0
=
ññ1 2
new
ññ3 6
BitmapImage
ññ7 B
(
ññB C
new
ññC F
Uri
ññG J
(
ññJ K
JugadorSingleton
ññK [
.
ññ[ \

RutaImagen
ññ\ f
)
ññf g
)
ññg h
;
ññh i
paginaSalaEspera
óó 
.
óó !
Txbl_NombreJugador2
óó 0
.
óó0 1
Text
óó1 5
=
óó6 7
JugadorSingleton
óó8 H
.
óóH I
NombreUsuario
óóI V
;
óóV W
paginaSalaEspera
òò 
.
òò  
Txbl_CodigoPartida
òò /
.
òò/ 0
Text
òò0 4
=
òò5 6
Txb_CodigoPartida
òò7 H
.
òòH I
Text
òòI M
;
òòM N
paginaSalaEspera
ôô 
.
ôô 
Stpl_Amigos
ôô (
.
ôô( )

Visibility
ôô) 3
=
ôô4 5

Visibility
ôô6 @
.
ôô@ A
Hidden
ôôA G
;
ôôG H
paginaSalaEspera
öö 
.
öö 
ConfigurarChat
öö +
(
öö+ ,
)
öö, -
;
öö- .
this
õõ 
.
õõ 
NavigationService
õõ "
.
õõ" #
Navigate
õõ# +
(
õõ+ ,
paginaSalaEspera
õõ, <
)
õõ< =
;
õõ= >
}
úú 	
}
ùù 
}ûû ﬂç
VC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaSolicitudesDeAmistad.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
{'' 
ServidorPassword((  
.((  !(
ServicioGestionAmistadClient((! =
proxy((> C
=((D E
new((F I
ServidorPassword((J Z
.((Z [(
ServicioGestionAmistadClient(([ w
(((w x
)((x y
;((y z
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
.,,+ ,
First,,, 1
(,,1 2
),,2 3
;,,3 4
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
{EE 
ServidorPasswordFF  
.FF  !(
ServicioGestionAmistadClientFF! =
proxyFF> C
=FFD E
newFFF I
ServidorPasswordFFJ Z
.FFZ [(
ServicioGestionAmistadClientFF[ w
(FFw x
)FFx y
;FFy z
ListGG 
<GG 
stringGG 
>GG 
nombresUsuarioGG +
=GG, -
proxyGG. 3
.GG3 41
%ObtenerNombresDeUsuarioPorIdJugadoresGG4 Y
(GGY Z
	amistadesGGZ c
.GGc d
ToArrayGGd k
(GGk l
)GGl m
)GGm n
.GGn o
ToListGGo u
(GGu v
)GGv w
;GGw x!
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
.SS7 8
FirstSS8 =
(SS= >
)SS> ?
;SS? @
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
privateee 
intee +
ObtenerIdAmidstadPorIdJugadoresee 3
(ee3 4
intee4 7!
idJugadorDestinatarioee8 M
)eeM N
{ff 	
intgg 
	idAmistadgg 
=gg 
$numgg 
;gg 
tryhh 
{ii 
ServidorPasswordjj  
.jj  !(
ServicioGestionAmistadClientjj! =
proxyjj> C
=jjC D
newjjD G
ServidorPasswordjjH X
.jjX Y(
ServicioGestionAmistadClientjjY u
(jju v
)jjv w
;jjw x
	idAmistadkk 
=kk 
proxykk 
.kk  ,
 RecuperarIdAmistadPorIdJugadoreskk  @
(kk@ A!
idJugadorDestinatariokkA V
,kkV W
JugadorSingletonkkX h
.kkh i
	IdJugadorkki r
)kkr s
;kks t
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
ÄÄ 
ServidorPassword
ÅÅ (
.
ÅÅ( )*
ServicioGestionAmistadClient
ÅÅ) E
proxy
ÅÅF K
=
ÅÅL M
new
ÅÅN Q
ServidorPassword
ÅÅR b
.
ÅÅb c*
ServicioGestionAmistadClient
ÅÅc 
(ÅÅ Ä
)ÅÅÄ Å
;ÅÅÅ Ç
int
ÇÇ 
resultadoRegistro
ÇÇ -
=
ÇÇ. /
proxy
ÇÇ0 5
.
ÇÇ5 6'
ResponderSolicitudAmistad
ÇÇ6 O
(
ÇÇO P
amistad
ÇÇP W
)
ÇÇW X
;
ÇÇX Y
if
ÉÉ 
(
ÉÉ 
resultadoRegistro
ÉÉ -
==
ÉÉ. 0
$num
ÉÉ1 2
)
ÉÉ2 3
{
ÑÑ 
MensajeVentana
ÖÖ *
.
ÖÖ* +,
MostrarVentanaEmergenteExitosa
ÖÖ+ I
(
ÖÖI J

Properties
ÖÖJ T
.
ÖÖT U
	Resources
ÖÖU ^
.
ÖÖ^ _#
VentanaEmergenteExito
ÖÖ_ t
)
ÖÖt u
;
ÖÖu v*
RecuperarAmistadesPendientes
ÜÜ 8
(
ÜÜ8 9
)
ÜÜ9 :
;
ÜÜ: ;
}
áá 
else
àà 
{
ââ 
MensajeVentana
ää *
.
ää* +*
MostrarVentanaEmergenteError
ää+ G
(
ääG H

Properties
ääH R
.
ääR S
	Resources
ääS \
.
ää\ ]%
MensajeErrorBaseDeDatos
ää] t
)
äät u
;
ääu v
}
ãã 
}
åå 
catch
çç 
(
çç '
EndpointNotFoundException
çç 4-
excepcionPuntoFinalNoEncontrado
çç5 T
)
ççT U
{
éé 
MensajeVentana
èè &
.
èè& '*
MostrarVentanaEmergenteError
èè' C
(
èèC D

Properties
èèD N
.
èèN O
	Resources
èèO X
.
èèX Y"
MensajeErrorConexion
èèY m
)
èèm n
;
èèn o
	_bitacora
êê !
.
êê! "
Warn
êê" &
(
êê& '-
excepcionPuntoFinalNoEncontrado
êê' F
)
êêF G
;
êêG H
}
ëë 
}
íí 
else
ìì 
{
îî 
MensajeVentana
ïï "
.
ïï" #*
MostrarVentanaEmergenteError
ïï# ?
(
ïï? @

Properties
ïï@ J
.
ïïJ K
	Resources
ïïK T
.
ïïT U%
MensajeErrorBaseDeDatos
ïïU l
)
ïïl m
;
ïïm n
}
ññ 
}
óó 
}
òò 	
private
öö 
void
öö 
CancelarSolicitud
öö &
(
öö& '
object
öö' -
	remitente
öö. 7
,
öö7 8
RoutedEventArgs
öö9 H
	argumento
ööI R
)
ööR S
{
õõ 	
if
úú 
(
úú 
ListaSolicitudes
úú  
.
úú  !
SelectedItem
úú! -
is
úú. 0
JugadorAmistad
úú1 ?!
jugadorSeleccionado
úú@ S
)
úúS T
{
ùù 
int
ûû #
idJugadorDestinatario
ûû )
=
ûû* +!
jugadorSeleccionado
ûû, ?
.
ûû? @
	IdJugador
ûû@ I
;
ûûI J
int
üü 
	idAmistad
üü 
=
üü -
ObtenerIdAmidstadPorIdJugadores
üü  ?
(
üü? @#
idJugadorDestinatario
üü@ U
)
üüU V
;
üüV W
if
†† 
(
†† 
	idAmistad
†† 
>
†† 
$num
††  !
)
††! "
{
°° 
Amistad
¢¢ 
amistad
¢¢ #
=
¢¢$ %%
ObtenerAmistadRechazada
¢¢& =
(
¢¢= >
)
¢¢> ?
;
¢¢? @
amistad
££ 
.
££ 
	idAmistad
££ %
=
££& '
	idAmistad
££( 1
;
££1 2
try
§§ 
{
•• 
ServidorPassword
¶¶ (
.
¶¶( )*
ServicioGestionAmistadClient
¶¶) E
proxy
¶¶F K
=
¶¶L M
new
¶¶N Q
ServidorPassword
¶¶R b
.
¶¶b c*
ServicioGestionAmistadClient
¶¶c 
(¶¶ Ä
)¶¶Ä Å
;¶¶Å Ç
int
ßß 
resultadoRegistro
ßß -
=
ßß. /
proxy
ßß0 5
.
ßß5 6'
ResponderSolicitudAmistad
ßß6 O
(
ßßO P
amistad
ßßP W
)
ßßW X
;
ßßX Y
if
®® 
(
®® 
resultadoRegistro
®® -
==
®®. 0
$num
®®1 2
)
®®2 3
{
©© 
MensajeVentana
™™ *
.
™™* +,
MostrarVentanaEmergenteExitosa
™™+ I
(
™™I J

Properties
™™J T
.
™™T U
	Resources
™™U ^
.
™™^ _#
VentanaEmergenteExito
™™_ t
)
™™t u
;
™™u v*
RecuperarAmistadesPendientes
´´ 8
(
´´8 9
)
´´9 :
;
´´: ;
}
¨¨ 
else
≠≠ 
{
ÆÆ 
MensajeVentana
ØØ *
.
ØØ* +*
MostrarVentanaEmergenteError
ØØ+ G
(
ØØG H

Properties
ØØH R
.
ØØR S
	Resources
ØØS \
.
ØØ\ ]%
MensajeErrorBaseDeDatos
ØØ] t
)
ØØt u
;
ØØu v
}
∞∞ 
}
±± 
catch
≤≤ 
(
≤≤ '
EndpointNotFoundException
≤≤ 4-
excepcionPuntoFinalNoEncontrado
≤≤5 T
)
≤≤T U
{
≥≥ 
MensajeVentana
¥¥ &
.
¥¥& '*
MostrarVentanaEmergenteError
¥¥' C
(
¥¥C D

Properties
¥¥D N
.
¥¥N O
	Resources
¥¥O X
.
¥¥X Y"
MensajeErrorConexion
¥¥Y m
)
¥¥m n
;
¥¥n o
	_bitacora
µµ !
.
µµ! "
Warn
µµ" &
(
µµ& '-
excepcionPuntoFinalNoEncontrado
µµ' F
)
µµF G
;
µµG H
}
∂∂ 
}
∑∑ 
else
∏∏ 
{
ππ 
MensajeVentana
∫∫ "
.
∫∫" #*
MostrarVentanaEmergenteError
∫∫# ?
(
∫∫? @

Properties
∫∫@ J
.
∫∫J K
	Resources
∫∫K T
.
∫∫T U%
MensajeErrorBaseDeDatos
∫∫U l
)
∫∫l m
;
∫∫m n
}
ªª 
}
ºº 
}
ΩΩ 	
private
øø 
Amistad
øø $
ObtenerAmistadAceptada
øø .
(
øø. /
)
øø/ 0
{
¿¿ 	
Amistad
¡¡ 
amistad
¡¡ 
=
¡¡ 
new
¡¡ !
Amistad
¡¡" )
{
¬¬ 
	respuesta
√√ 
=
√√ 
true
√√  
,
√√  !
fechaRespuesta
ƒƒ 
=
ƒƒ  
DateTime
ƒƒ! )
.
ƒƒ) *
Now
ƒƒ* -
,
ƒƒ- .
}
≈≈ 
;
≈≈ 
return
∆∆ 
amistad
∆∆ 
;
∆∆ 
}
«« 	
private
…… 
Amistad
…… %
ObtenerAmistadRechazada
…… /
(
……/ 0
)
……0 1
{
   	
Amistad
ÀÀ 
amistad
ÀÀ 
=
ÀÀ 
new
ÀÀ !
Amistad
ÀÀ" )
{
ÃÃ 
	respuesta
ÕÕ 
=
ÕÕ 
false
ÕÕ !
,
ÕÕ! "
fechaRespuesta
ŒŒ 
=
ŒŒ  
DateTime
ŒŒ! )
.
ŒŒ) *
Now
ŒŒ* -
,
ŒŒ- .
}
œœ 
;
œœ 
return
–– 
amistad
–– 
;
–– 
}
—— 	
private
”” 
List
”” 
<
”” 
JugadorAmistad
”” #
>
””# $
CombinarListas
””% 3
(
””3 4
List
””4 8
<
””8 9
int
””9 <
>
””< =
idJugadores
””> I
,
””I J
List
””K O
<
””O P
string
””P V
>
””V W
nombresUsuario
””X f
)
””f g
{
‘‘ 	
List
’’ 
<
’’ 
JugadorAmistad
’’ 
>
’’  
	jugadores
’’! *
=
’’* +
idJugadores
’’+ 6
.
’’6 7
Zip
’’7 :
(
’’: ;
nombresUsuario
’’; I
,
’’I J
(
’’J K
id
’’K M
,
’’M N
nombre
’’N T
)
’’T U
=>
’’U W
new
’’W Z
JugadorAmistad
’’[ i
{
’’j k
	IdJugador
÷÷ 
=
÷÷ 
id
÷÷ 
,
÷÷ 
NombreUsuario
◊◊ 
=
◊◊ 
nombre
◊◊  
}
◊◊  !
)
◊◊! "
.
◊◊" #
ToList
◊◊# )
(
◊◊) *
)
◊◊* +
;
◊◊+ ,
return
ÿÿ 
	jugadores
ÿÿ 
;
ÿÿ 
}
ŸŸ 	
}
€€ 
}‹‹ ∏ê
JC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaRegistro.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
;!!/ 0
Perfil"" 
perfil"" 
="" 
ObtenerPerfil""  -
(""- .
)"". /
;""/ 0
Jugador## 
jugador## 
=##  !
ObtenerJugador##" 0
(##0 1
)##1 2
;##2 3
try$$ 
{%% 
ServidorPassword&& $
.&&$ %'
ServicioGestionAccesoClient&&% @
proxy&&A F
=&&G H
new&&I L'
ServicioGestionAccesoClient&&M h
(&&h i
)&&i j
;&&j k
int'' 
validacionCorreo'' (
='') *
proxy''+ 0
.''0 1$
ValidarPresenciaDeCorreo''1 I
(''I J
acceso''J P
.''P Q
correo''Q W
)''W X
;''X Y
if(( 
((( 
validacionCorreo(( (
==(() +
$num((, -
)((- .
{)) 
int** #
validacionNombreUsuario** 3
=**4 5
proxy**6 ;
.**; < 
ValidarNombreUsuario**< P
(**P Q
perfil**Q W
.**W X
nombreUsuario**X e
)**e f
;**f g
if++ 
(++ #
validacionNombreUsuario++ 3
==++4 6
$num++7 8
)++8 9
{,, 
int-- 
resultadoRegistro--  1
=--2 3
proxy--4 9
.--9 :!
RegistrarNuevoJugador--: O
(--O P
acceso--P V
,--V W
perfil--X ^
,--^ _
jugador--` g
)--g h
;--h i
if.. 
(..  
resultadoRegistro..  1
==..2 4
$num..5 6
)..6 7
{// 
MensajeVentana00  .
.00. /*
MostrarVentanaEmergenteExitosa00/ M
(00M N

Properties00N X
.00X Y
	Resources00Y b
.00b c"
MensajeRegistroExitoso00c y
)00y z
;00z {
VentanaInicio11  -

inicioPage11. 8
=119 :
new11; >
VentanaInicio11? L
(11L M
)11M N
;11N O
this22  $
.22$ %
NavigationService22% 6
.226 7
Navigate227 ?
(22? @

inicioPage22@ J
)22J K
;22K L
}33 
else44  
{55 
MensajeVentana66  .
.66. /(
MostrarVentanaEmergenteError66/ K
(66K L

Properties66L V
.66V W
	Resources66W `
.66` a#
MensajeErrorBaseDeDatos66a x
)66x y
;66y z
}77 
}88 
else99 
if99 
(99  !#
validacionNombreUsuario99! 8
==999 ;
$num99< =
)99= >
{:: 
MensajeVentana;; *
.;;* +(
MostrarVentanaEmergenteError;;+ G
(;;G H

Properties;;H R
.;;R S
	Resources;;S \
.;;\ ]&
MensajeUsuarioNoDisponible;;] w
);;w x
;;;x y
}<< 
else== 
{>> 
MensajeVentana?? *
.??* +(
MostrarVentanaEmergenteError??+ G
(??G H

Properties??H R
.??R S
	Resources??S \
.??\ ]#
MensajeErrorBaseDeDatos??] t
)??t u
;??u v
}@@ 
}AA 
elseBB 
ifBB 
(BB 
validacionCorreoBB -
==BB. 0
$numBB1 2
)BB2 3
{CC 
MensajeVentanaDD &
.DD& '(
MostrarVentanaEmergenteErrorDD' C
(DDC D

PropertiesDDD N
.DDN O
	ResourcesDDO X
.DDX Y#
MensajeCorreoRegistradoDDY p
)DDp q
;DDq r
}EE 
elseFF 
{GG 
MensajeVentanaHH &
.HH& '(
MostrarVentanaEmergenteErrorHH' C
(HHC D

PropertiesHHD N
.HHN O
	ResourcesHHO X
.HHX Y#
MensajeErrorBaseDeDatosHHY p
)HHp q
;HHq r
}II 
}JJ 
catchKK 
(KK %
EndpointNotFoundExceptionKK 0+
excepcionPuntoFinalNoEncontradoKK1 P
)KKP Q
{LL 
MensajeVentanaMM "
.MM" #(
MostrarVentanaEmergenteErrorMM# ?
(MM? @

PropertiesMM@ J
.MMJ K
	ResourcesMMK T
.MMT U 
MensajeErrorConexionMMU i
)MMi j
;MMj k
	_bitacoraNN 
.NN 
WarnNN "
(NN" #+
excepcionPuntoFinalNoEncontradoNN# B
)NNB C
;NNC D
}OO 
}PP 
}QQ 	
privateSS 
JugadorSS 
ObtenerJugadorSS &
(SS& '
)SS' (
{TT 	
JugadorUU 
jugadorUU 
=UU 
newUU !
JugadorUU" )
{VV 
nombreWW 
=WW 

Txb_NombreWW #
.WW# $
TextWW$ (
,WW( )
	apellidosXX 
=XX 
Txb_ApellidosXX )
.XX) *
TextXX* .
,XX. /
}YY 
;YY 
returnZZ 
jugadorZZ 
;ZZ 
}[[ 	
private]] 
Acceso]] 
ObtenerAcceso]] $
(]]$ %
)]]% &
{^^ 	
Acceso__ 
acceso__ 
=__ 
new__ 
Acceso__  &
{`` 
correoaa 
=aa 

Txb_Correoaa #
.aa# $
Textaa$ (
,aa( )
contraseniabb 
=bb 
Txb_Contraseniabb -
.bb- .
Textbb. 2
,bb2 3
}cc 
;cc 
returndd 
accesodd 
;dd 
}ee 	
privategg 
Perfilgg 
ObtenerPerfilgg $
(gg$ %
)gg% &
{hh 	
Perfilii 
perfilii 
=ii 
newii 
Perfilii  &
{jj 
nombreUsuariokk 
=kk 
Txb_NombreUsuariokk  1
.kk1 2
Textkk2 6
,kk6 7

rutaImagenll 
=ll 
$strll P
,llP Q
}mm 
;mm 
returnnn 
perfilnn 
;nn 
}oo 	
privateqq 
boolqq 
ValidarRegistroqq $
(qq$ %
)qq% &
{rr 	
ReiniciarCamposss 
(ss 
)ss 
;ss 
booltt 

validaciontt 
=tt 
falsett #
;tt# $
Jugadoruu 
jugadoruu 
=uu 
ObtenerJugadoruu ,
(uu, -
)uu- .
;uu. /
Accesovv 
accesovv 
=vv 
ObtenerAccesovv )
(vv) *
)vv* +
;vv+ ,
Perfilww 
perfilww 
=ww 
ObtenerPerfilww )
(ww) *
)ww* +
;ww+ ,
ValidacionAccesoxx 
validacionAccesoxx -
=xx. /
newxx0 3
ValidacionAccesoxx4 D
(xxD E
)xxE F
;xxF G
ValidacionJugadoryy 
validacionJugadoryy /
=yy0 1
newyy2 5
ValidacionJugadoryy6 G
(yyG H
)yyH I
;yyI J
ValidacionPerfilzz 
validacionPerfilzz -
=zz. /
newzz0 3
ValidacionPerfilzz4 D
(zzD E
)zzE F
;zzF G
FluentValidation{{ 
.{{ 
Results{{ $
.{{$ %
ValidationResult{{% 5
resultadoAcceso{{6 E
={{F G
validacionAcceso{{H X
.{{X Y
Validate{{Y a
({{a b
acceso{{b h
){{h i
;{{i j
FluentValidation|| 
.|| 
Results|| $
.||$ %
ValidationResult||% 5
resultadoJugador||6 F
=||G H
validacionJugador||I Z
.||Z [
Validate||[ c
(||c d
jugador||d k
)||k l
;||l m
FluentValidation}} 
.}} 
Results}} $
.}}$ %
ValidationResult}}% 5
resultadoPerfil}}6 E
=}}F G
validacionPerfil}}H X
.}}X Y
Validate}}Y a
(}}a b
perfil}}b h
)}}h i
;}}i j
if~~ 
(~~ 
resultadoAcceso~~ 
.~~  
IsValid~~  '
&&~~( *
resultadoJugador~~+ ;
.~~; <
IsValid~~< C
&&~~D F
resultadoPerfil~~G V
.~~V W
IsValid~~W ^
)~~^ _
{ 

validacion
ÄÄ 
=
ÄÄ 
true
ÄÄ !
;
ÄÄ! "
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
MarcarErrores
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ  
if
ÖÖ 
(
ÖÖ 
string
ÖÖ 
.
ÖÖ  
IsNullOrWhiteSpace
ÖÖ -
(
ÖÖ- .
jugador
ÖÖ. 5
.
ÖÖ5 6
nombre
ÖÖ6 <
)
ÖÖ< =
||
ÖÖ> @
string
ÖÖA G
.
ÖÖG H 
IsNullOrWhiteSpace
ÖÖH Z
(
ÖÖZ [
jugador
ÖÖ[ b
.
ÖÖb c
	apellidos
ÖÖc l
)
ÖÖl m
||
ÖÖn p
string
ÜÜ 
.
ÜÜ  
IsNullOrWhiteSpace
ÜÜ (
(
ÜÜ( )
acceso
ÜÜ) /
.
ÜÜ/ 0
correo
ÜÜ0 6
)
ÜÜ6 7
||
ÜÜ8 :
string
ÜÜ; A
.
ÜÜA B 
IsNullOrWhiteSpace
ÜÜB T
(
ÜÜT U
acceso
ÜÜU [
.
ÜÜ[ \
contrasenia
ÜÜ\ g
)
ÜÜg h
||
ÜÜi k
string
áá 
.
áá  
IsNullOrWhiteSpace
áá (
(
áá( )
perfil
áá) /
.
áá/ 0
nombreUsuario
áá0 =
)
áá= >
)
áá> ?
{
àà 
MensajeVentana
ââ "
.
ââ" #*
MostrarVentanaEmergenteError
ââ# ?
(
ââ? @

Properties
ââ@ J
.
ââJ K
	Resources
ââK T
.
ââT U%
MensajeCamposRequeridos
ââU l
)
ââl m
;
ââm n
}
ää 
else
ãã 
{
åå 
MensajeVentana
çç "
.
çç" #*
MostrarVentanaEmergenteError
çç# ?
(
çç? @

Properties
çç@ J
.
ççJ K
	Resources
ççK T
.
ççT U&
MensajeCamposIncorrectos
ççU m
)
ççm n
;
ççn o
}
éé 
}
èè 
return
êê 

validacion
êê 
;
êê 
}
ëë 	
private
ìì 
void
ìì 
CancelarRegistro
ìì %
(
ìì% &
object
ìì& ,
	remitente
ìì- 6
,
ìì6 7
RoutedEventArgs
ìì8 G
	argumento
ììH Q
)
ììQ R
{
îî 	
VentanaInicio
ïï 
paginaInicio
ïï &
=
ïï' (
new
ïï) ,
VentanaInicio
ïï- :
(
ïï: ;
)
ïï; <
;
ïï< =
this
ññ 
.
ññ 
NavigationService
ññ "
.
ññ" #
Navigate
ññ# +
(
ññ+ ,
paginaInicio
ññ, 8
)
ññ8 9
;
ññ9 :
}
óó 	
private
ôô 
void
ôô 
MarcarErrores
ôô "
(
ôô" #
)
ôô# $
{
öö 	
ValidacionAcceso
õõ 
validacionAcceso
õõ -
=
õõ- .
new
õõ/ 2
ValidacionAcceso
õõ3 C
(
õõC D
)
õõD E
;
õõE F
if
úú 
(
úú 
!
úú 
validacionAcceso
úú !
.
úú! "
ValidarCorreo
úú" /
(
úú/ 0

Txb_Correo
úú0 :
.
úú: ;
Text
úú; ?
)
úú? @
)
úú@ A
{
ùù 

Txb_Correo
ûû 
.
ûû 
BorderBrush
ûû &
=
ûû' (
Brushes
ûû) 0
.
ûû0 1
Red
ûû1 4
;
ûû4 5

Txb_Correo
üü 
.
üü 
BorderThickness
üü *
=
üü+ ,
new
üü- 0
	Thickness
üü1 :
(
üü: ;
$num
üü; <
)
üü< =
;
üü= >
}
†† 
if
°° 
(
°° 
!
°° 
validacionAcceso
°° !
.
°°! " 
ValidarContrasenia
°°" 4
(
°°4 5
Txb_Contrasenia
°°5 D
.
°°D E
Text
°°E I
)
°°I J
)
°°J K
{
¢¢ 
Txb_Contrasenia
££ 
.
££  
BorderBrush
££  +
=
££, -
Brushes
££. 5
.
££5 6
Red
££6 9
;
££9 :
Txb_Contrasenia
§§ 
.
§§  
BorderThickness
§§  /
=
§§0 1
new
§§2 5
	Thickness
§§6 ?
(
§§? @
$num
§§@ A
)
§§A B
;
§§B C
}
•• 
ValidacionJugador
¶¶ 
validacionJugador
¶¶ /
=
¶¶/ 0
new
¶¶1 4
ValidacionJugador
¶¶5 F
(
¶¶F G
)
¶¶G H
;
¶¶H I
if
ßß 
(
ßß 
!
ßß 
validacionJugador
ßß "
.
ßß" #
ValidarNombre
ßß# 0
(
ßß0 1

Txb_Nombre
ßß1 ;
.
ßß; <
Text
ßß< @
)
ßß@ A
)
ßßA B
{
®® 

Txb_Nombre
©© 
.
©© 
BorderBrush
©© &
=
©©' (
Brushes
©©) 0
.
©©0 1
Red
©©1 4
;
©©4 5

Txb_Nombre
™™ 
.
™™ 
BorderThickness
™™ *
=
™™+ ,
new
™™- 0
	Thickness
™™1 :
(
™™: ;
$num
™™; <
)
™™< =
;
™™= >
}
´´ 
if
¨¨ 
(
¨¨ 
!
¨¨ 
validacionJugador
¨¨ "
.
¨¨" #
ValidarApellidos
¨¨# 3
(
¨¨3 4
Txb_Apellidos
¨¨4 A
.
¨¨A B
Text
¨¨B F
)
¨¨F G
)
¨¨G H
{
≠≠ 
Txb_Apellidos
ÆÆ 
.
ÆÆ 
BorderBrush
ÆÆ )
=
ÆÆ* +
Brushes
ÆÆ, 3
.
ÆÆ3 4
Red
ÆÆ4 7
;
ÆÆ7 8
Txb_Apellidos
ØØ 
.
ØØ 
BorderThickness
ØØ -
=
ØØ. /
new
ØØ0 3
	Thickness
ØØ4 =
(
ØØ= >
$num
ØØ> ?
)
ØØ? @
;
ØØ@ A
}
∞∞ 
ValidacionPerfil
±± 
validacionPerfil
±± -
=
±±- .
new
±±/ 2
ValidacionPerfil
±±3 C
(
±±C D
)
±±D E
;
±±E F
if
≤≤ 
(
≤≤ 
!
≤≤ 
validacionPerfil
≤≤ !
.
≤≤! ""
ValidarNombreUsuario
≤≤" 6
(
≤≤6 7
Txb_NombreUsuario
≤≤7 H
.
≤≤H I
Text
≤≤I M
)
≤≤M N
)
≤≤N O
{
≥≥ 
Txb_NombreUsuario
¥¥ !
.
¥¥! "
BorderBrush
¥¥" -
=
¥¥. /
Brushes
¥¥0 7
.
¥¥7 8
Red
¥¥8 ;
;
¥¥; <
Txb_NombreUsuario
µµ !
.
µµ! "
BorderThickness
µµ" 1
=
µµ2 3
new
µµ4 7
	Thickness
µµ8 A
(
µµA B
$num
µµB C
)
µµC D
;
µµD E
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ 
ReiniciarCampos
ππ $
(
ππ$ %
)
ππ% &
{
∫∫ 	

Txb_Correo
ªª 
.
ªª 
BorderBrush
ªª "
=
ªª# $
Brushes
ªª% ,
.
ªª, -
Transparent
ªª- 8
;
ªª8 9

Txb_Correo
ºº 
.
ºº 
BorderThickness
ºº &
=
ºº' (
new
ºº) ,
	Thickness
ºº- 6
(
ºº6 7
$num
ºº7 8
)
ºº8 9
;
ºº9 :
Txb_Contrasenia
ΩΩ 
.
ΩΩ 
BorderBrush
ΩΩ '
=
ΩΩ( )
Brushes
ΩΩ* 1
.
ΩΩ1 2
Transparent
ΩΩ2 =
;
ΩΩ= >
Txb_Contrasenia
ææ 
.
ææ 
BorderThickness
ææ +
=
ææ, -
new
ææ. 1
	Thickness
ææ2 ;
(
ææ; <
$num
ææ< =
)
ææ= >
;
ææ> ?

Txb_Nombre
øø 
.
øø 
BorderBrush
øø "
=
øø# $
Brushes
øø% ,
.
øø, -
Transparent
øø- 8
;
øø8 9

Txb_Nombre
¿¿ 
.
¿¿ 
BorderThickness
¿¿ &
=
¿¿' (
new
¿¿) ,
	Thickness
¿¿- 6
(
¿¿6 7
$num
¿¿7 8
)
¿¿8 9
;
¿¿9 :
Txb_Apellidos
¡¡ 
.
¡¡ 
BorderBrush
¡¡ %
=
¡¡& '
Brushes
¡¡( /
.
¡¡/ 0
Transparent
¡¡0 ;
;
¡¡; <
Txb_Apellidos
¬¬ 
.
¬¬ 
BorderThickness
¬¬ )
=
¬¬* +
new
¬¬, /
	Thickness
¬¬0 9
(
¬¬9 :
$num
¬¬: ;
)
¬¬; <
;
¬¬< =
Txb_NombreUsuario
√√ 
.
√√ 
BorderBrush
√√ )
=
√√* +
Brushes
√√, 3
.
√√3 4
Transparent
√√4 ?
;
√√? @
Txb_NombreUsuario
ƒƒ 
.
ƒƒ 
BorderThickness
ƒƒ -
=
ƒƒ. /
new
ƒƒ0 3
	Thickness
ƒƒ4 =
(
ƒƒ= >
$num
ƒƒ> ?
)
ƒƒ? @
;
ƒƒ@ A
}
≈≈ 	
}
∆∆ 
}«« ¶Ñ
JC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaPregunta.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaPregunta (
:) *
Page+ /
{ 
private 
DispatcherTimer $
_temporizadorDespachador  8
;8 9
private 
int 
_tiempoRestante #
=$ %
$num& (
;( )
private 
int !
_numeroPreguntaActual )
=* +
$num, -
;- .
private 
int 
_totalPreguntas #
=$ %
$num& '
;' (
private   
List   
<   
PreguntaContrato   %
>  % &

_preguntas  ' 1
;  1 2
private!! 
List!! 
<!! 
PreguntaContrato!! %
>!!% &"
_preguntasSinModificar!!' =
;!!= >
private"" 
List"" 
<"" 
RespuestaContrato"" &
>""& '
_respuestas""( 3
;""3 4
public$$ 
string$$ 
TiempoRestante$$ $
=>$$% '
_tiempoRestante$$( 7
.$$7 8
ToString$$8 @
($$@ A
)$$A B
;$$B C
public&& 
VentanaPregunta&& 
(&& 
)&&  
{'' 	
InitializeComponent(( 
(((  
)((  !
;((! "
DataContext)) 
=)) 
this)) 
;)) 
ConfigurarPartida** 
(** 
)** 
;**  
IniciarPregunta++ 
(++ 
)++ 
;++ "
ConfigurarTemporizador,, "
(,," #
),,# $
;,,$ %$
Txbl_NumeroPreguntaTotal-- $
.--$ %
Text--% )
=--* +
_totalPreguntas--, ;
.--; <
ToString--< D
(--D E
)--E F
;--F G%
Txbl_NumeroPreguntaActual.. %
...% &
Text..& *
=..+ ,!
_numeroPreguntaActual..- B
...B C
ToString..C K
(..K L
)..L M
;..M N
}// 	
private11 
void11 
ConfigurarPartida11 &
(11& '
)11' (
{22 	
PartidaAuxiliar33 
partidaAuxiliar33 +
=33, -
new33. 1
PartidaAuxiliar332 A
(33A B
)33B C
;33C D
partidaAuxiliar44 
.44 
RecuperarPreguntas44 .
(44. /
$num44/ 0
)440 1
;441 2

_preguntas55 
=55 
partidaAuxiliar55 (
.55( )
	Preguntas55) 2
;552 3"
_preguntasSinModificar66 "
=66# $

_preguntas66% /
;66/ 0
_respuestas77 
=77 
partidaAuxiliar77 (
.77( )

Respuestas77) 3
;773 4
}88 	
private99 
void99 "
ConfigurarTemporizador99 +
(99+ ,
)99, -
{:: 	$
_temporizadorDespachador;; $
=;;% &
new;;' *
DispatcherTimer;;+ :
(;;: ;
);;; <
;;;< =$
_temporizadorDespachador<< $
.<<$ %
Interval<<% -
=<<. /
TimeSpan<<0 8
.<<8 9
FromSeconds<<9 D
(<<D E
$num<<E F
)<<F G
;<<G H$
_temporizadorDespachador== $
.==$ %
Tick==% )
+===* ,
DisminuirTiempo==- <
;==< =$
_temporizadorDespachador>> $
.>>$ %
Start>>% *
(>>* +
)>>+ ,
;>>, -
Txbl_Cronometro?? 
.?? 
Text??  
=??  !
_tiempoRestante??! 0
.??0 1
ToString??1 9
(??9 :
)??: ;
;??; <
}@@ 	
privateBB 
voidBB 
DisminuirTiempoBB $
(BB$ %
objectBB% +
senderBB, 2
,BB2 3
	EventArgsBB4 =
eBB> ?
)BB? @
{CC 	
_tiempoRestanteDD 
--DD 
;DD 
Txbl_CronometroEE 
.EE 
TextEE  
=EE! "
_tiempoRestanteEE# 2
.EE2 3
ToStringEE3 ;
(EE; <
)EE< =
;EE= >
ifFF 
(FF 
_tiempoRestanteFF 
==FF  "
$numFF# $
)FF$ %
{GG $
_temporizadorDespachadorHH (
.HH( )
StopHH) -
(HH- .
)HH. /
;HH/ 0
CambiarPreguntaII 
(II  
)II  !
;II! "
ActivarBotonesJJ 
(JJ 
)JJ  
;JJ  !
}KK 
}LL 	
privateNN 
voidNN 
IniciarPreguntaNN $
(NN$ %
)NN% &
{OO 	
intPP 
numeroPreguntaPP 
=PP  !
_numeroPreguntaActualPP! 6
-PP7 8
$numPP9 :
;PP: ;
PreguntaContratoQQ 
preguntaQQ %
=QQ& '

_preguntasQQ( 2
[QQ2 3
numeroPreguntaQQ3 A
]QQA B
;QQB C
Txbl_PreguntaRR 
.RR 
TextRR 
=RR  
preguntaRR! )
.RR) *
PreguntaRR* 2
;RR2 3
ListSS 
<SS 
stringSS 
>SS 
respuestasActualesSS +
=SS, --
!ObtenerRespuestasDePreguntaActualSS. O
(SSO P
preguntaSSP X
.SSX Y

IdPreguntaSSY c
)SSc d
;SSd e
respuestasActualesTT 
.TT 
AddTT "
(TT" #
preguntaTT# +
.TT+ ,
RespuestaCorrectaTT, =
)TT= >
;TT> ?
ListUU 
<UU 
stringUU 
>UU 
respuestasAlAzarUU )
=UU* +#
ObtenerRespuestasAlAzarUU, C
(UUC D
respuestasActualesUUD V
)UUV W
;UUW X
Txbl_Respuesta1VV 
.VV 
TextVV  
=VV! "
respuestasAlAzarVV# 3
[VV3 4
$numVV4 5
]VV5 6
;VV6 7
Txbl_Respuesta2WW 
.WW 
TextWW  
=WW! "
respuestasAlAzarWW# 3
[WW3 4
$numWW4 5
]WW5 6
;WW6 7
Txbl_Respuesta3XX 
.XX 
TextXX  
=XX! "
respuestasAlAzarXX# 3
[XX3 4
$numXX4 5
]XX5 6
;XX6 7
Txbl_Respuesta4YY 
.YY 
TextYY  
=YY! "
respuestasAlAzarYY# 3
[YY3 4
$numYY4 5
]YY5 6
;YY6 7
_tiempoRestanteZZ 
=ZZ 
$numZZ  
;ZZ  !
}[[ 	
private]] 
List]] 
<]] 
string]] 
>]] -
!ObtenerRespuestasDePreguntaActual]] >
(]]> ?
int]]? B

idPregunta]]C M
)]]M N
{^^ 	
List__ 
<__ 
string__ 
>__ 

respuestas__ #
=__# $
new__$ '
List__( ,
<__, -
string__- 3
>__3 4
(__4 5
)__5 6
;__6 7
foreach`` 
(`` 
var`` 
	respuesta`` "
in``# %
_respuestas``& 1
)``1 2
{aa 
ifbb 
(bb 
	respuestabb 
.bb 
FKIdPreguntabb *
==bb+ -

idPreguntabb. 8
)bb8 9
{cc 

respuestasdd 
.dd 
Adddd "
(dd" #
	respuestadd# ,
.dd, -
	Respuestadd- 6
)dd6 7
;dd7 8
}ee 
}ff 
returngg 

respuestasgg 
;gg 
}hh 	
privatejj 
Listjj 
<jj 
stringjj 
>jj #
ObtenerRespuestasAlAzarjj 4
(jj4 5
Listjj5 9
<jj9 :
stringjj: @
>jj@ A
respuestasActualesjjB T
)jjT U
{kk 	
Randomll 
	aleatorioll 
=ll 
newll  
Randomll! '
(ll' (
)ll( )
;ll) *
returnmm 
respuestasActualesmm %
.mm% &
OrderBymm& -
(mm- .
xmm. /
=>mm/ 1
	aleatoriomm1 :
.mm: ;
Nextmm; ?
(mm? @
)mm@ A
)mmA B
.mmB C
ToListmmC I
(mmI J
)mmJ K
;mmK L
}nn 	
privatepp 
voidpp 
CambiarPreguntapp $
(pp$ %
)pp% &
{qq 	
ifrr 
(rr !
_numeroPreguntaActualrr %
<rr& '
_totalPreguntasrr( 7
)rr7 8
{ss !
_numeroPreguntaActualtt %
++tt% '
;tt' (
IniciarPreguntauu 
(uu  
)uu  !
;uu! "$
_temporizadorDespachadorvv (
.vv( )
Startvv) .
(vv. /
)vv/ 0
;vv0 1
ActivarBotonesww 
(ww 
)ww  
;ww  !%
Txbl_NumeroPreguntaActualxx )
.xx) *
Textxx* .
=xx/ 0!
_numeroPreguntaActualxx1 F
.xxF G
ToStringxxG O
(xxO P
)xxP Q
;xxQ R
}yy 
elsezz 
{{{ 

MessageBox|| 
.|| 
Show|| 
(||  
$str||  5
)||5 6
;||6 7
}}} 
}~~ 	
	protected
ÄÄ 
void
ÄÄ 
OnPropertyChanged
ÄÄ (
(
ÄÄ( )
string
ÄÄ) /
nombre
ÄÄ0 6
)
ÄÄ6 7
{
ÅÅ 	
var
ÇÇ 
handler
ÇÇ 
=
ÇÇ 
PropertyChanged
ÇÇ )
;
ÇÇ) *
handler
ÉÉ 
?
ÉÉ 
.
ÉÉ 
Invoke
ÉÉ 
(
ÉÉ 
this
ÉÉ  
,
ÉÉ  !
new
ÉÉ" %
System
ÉÉ& ,
.
ÉÉ, -
ComponentModel
ÉÉ- ;
.
ÉÉ; <&
PropertyChangedEventArgs
ÉÉ< T
(
ÉÉT U
nombre
ÉÉU [
)
ÉÉ[ \
)
ÉÉ\ ]
;
ÉÉ] ^
}
ÑÑ 	
public
ÜÜ 
event
ÜÜ 
System
ÜÜ 
.
ÜÜ 
ComponentModel
ÜÜ *
.
ÜÜ* +)
PropertyChangedEventHandler
ÜÜ+ F
PropertyChanged
ÜÜG V
;
ÜÜV W
private
àà 
void
àà 
RevisarRespuesta1
àà &
(
àà& '
object
àà' -
sender
àà. 4
,
àà4 5
RoutedEventArgs
àà6 E
e
ààF G
)
ààG H
{
ââ 	
int
ää 
numeroPregunta
ää 
=
ää  #
_numeroPreguntaActual
ää! 6
-
ää7 8
$num
ää9 :
;
ää: ;
string
ãã 
respuestaCorrecta
ãã $
=
ãã% &$
_preguntasSinModificar
ãã' =
[
ãã= >
numeroPregunta
ãã> L
]
ããL M
.
ããM N
RespuestaCorrecta
ããN _
;
ãã_ `
if
åå 
(
åå 
Txbl_Respuesta1
åå 
.
åå  
Text
åå  $
==
åå% '
respuestaCorrecta
åå( 9
)
åå9 :
{
çç 

MessageBox
éé 
.
éé 
Show
éé 
(
éé  
$str
éé  *
)
éé* +
;
éé+ ,
}
èè 
else
êê 
{
ëë 

MessageBox
íí 
.
íí 
Show
íí 
(
íí  
$str
íí  ,
)
íí, -
;
íí- .
}
ìì 
DesactivarBotones
îî 
(
îî 
)
îî 
;
îî  
}
ïï 	
private
óó 
void
óó 
RevisarRespuesta2
óó &
(
óó& '
object
óó' -
sender
óó. 4
,
óó4 5
RoutedEventArgs
óó6 E
e
óóF G
)
óóG H
{
òò 	
int
ôô 
numeroPregunta
ôô 
=
ôô  #
_numeroPreguntaActual
ôô! 6
-
ôô7 8
$num
ôô9 :
;
ôô: ;
string
öö 
respuestaCorrecta
öö $
=
öö% &$
_preguntasSinModificar
öö' =
[
öö= >
numeroPregunta
öö> L
]
ööL M
.
ööM N
RespuestaCorrecta
ööN _
;
öö_ `
if
õõ 
(
õõ 
Txbl_Respuesta2
õõ 
.
õõ  
Text
õõ  $
==
õõ% '
respuestaCorrecta
õõ( 9
)
õõ9 :
{
úú 

MessageBox
ùù 
.
ùù 
Show
ùù 
(
ùù  
$str
ùù  *
)
ùù* +
;
ùù+ ,
}
ûû 
else
üü 
{
†† 

MessageBox
°° 
.
°° 
Show
°° 
(
°°  
$str
°°  ,
)
°°, -
;
°°- .
}
¢¢ 
DesactivarBotones
££ 
(
££ 
)
££ 
;
££  
}
§§ 	
private
¶¶ 
void
¶¶ 
RevisarRespuesta3
¶¶ &
(
¶¶& '
object
¶¶' -
sender
¶¶. 4
,
¶¶4 5
RoutedEventArgs
¶¶6 E
e
¶¶F G
)
¶¶G H
{
ßß 	
int
®® 
numeroPregunta
®® 
=
®®  #
_numeroPreguntaActual
®®! 6
-
®®7 8
$num
®®9 :
;
®®: ;
string
©© 
respuestaCorrecta
©© $
=
©©% &$
_preguntasSinModificar
©©' =
[
©©= >
numeroPregunta
©©> L
]
©©L M
.
©©M N
RespuestaCorrecta
©©N _
;
©©_ `
if
™™ 
(
™™ 
Txbl_Respuesta3
™™ 
.
™™  
Text
™™  $
==
™™% '
respuestaCorrecta
™™( 9
)
™™9 :
{
´´ 

MessageBox
¨¨ 
.
¨¨ 
Show
¨¨ 
(
¨¨  
$str
¨¨  *
)
¨¨* +
;
¨¨+ ,
}
≠≠ 
else
ÆÆ 
{
ØØ 

MessageBox
∞∞ 
.
∞∞ 
Show
∞∞ 
(
∞∞  
$str
∞∞  ,
)
∞∞, -
;
∞∞- .
}
±± 
DesactivarBotones
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤  
}
≥≥ 	
private
µµ 
void
µµ 
RevisarRespuesta4
µµ &
(
µµ& '
object
µµ' -
sender
µµ. 4
,
µµ4 5
RoutedEventArgs
µµ6 E
e
µµF G
)
µµG H
{
∂∂ 	
int
∑∑ 
numeroPregunta
∑∑ 
=
∑∑  #
_numeroPreguntaActual
∑∑! 6
-
∑∑7 8
$num
∑∑9 :
;
∑∑: ;
string
∏∏ 
respuestaCorrecta
∏∏ $
=
∏∏% &$
_preguntasSinModificar
∏∏' =
[
∏∏= >
numeroPregunta
∏∏> L
]
∏∏L M
.
∏∏M N
RespuestaCorrecta
∏∏N _
;
∏∏_ `
if
ππ 
(
ππ 
Txbl_Respuesta4
ππ 
.
ππ  
Text
ππ  $
==
ππ% '
respuestaCorrecta
ππ( 9
)
ππ9 :
{
∫∫ 

MessageBox
ªª 
.
ªª 
Show
ªª 
(
ªª  
$str
ªª  *
)
ªª* +
;
ªª+ ,
}
ºº 
else
ΩΩ 
{
ææ 

MessageBox
øø 
.
øø 
Show
øø 
(
øø  
$str
øø  ,
)
øø, -
;
øø- .
}
¿¿ 
DesactivarBotones
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡  
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
DesactivarBotones
ƒƒ &
(
ƒƒ& '
)
ƒƒ' (
{
≈≈ 	
Btn_Respuesta1
∆∆ 
.
∆∆ 
IsHitTestVisible
∆∆ +
=
∆∆, -
false
∆∆. 3
;
∆∆3 4
Btn_Respuesta2
«« 
.
«« 
IsHitTestVisible
«« +
=
««, -
false
««. 3
;
««3 4
Btn_Respuesta3
»» 
.
»» 
IsHitTestVisible
»» +
=
»», -
false
»». 3
;
»»3 4
Btn_Respuesta4
…… 
.
…… 
IsHitTestVisible
…… +
=
……, -
false
……. 3
;
……3 4
}
   	
private
ÃÃ 
void
ÃÃ 
ActivarBotones
ÃÃ #
(
ÃÃ# $
)
ÃÃ$ %
{
ÕÕ 	
Btn_Respuesta1
ŒŒ 
.
ŒŒ 
IsHitTestVisible
ŒŒ +
=
ŒŒ, -
true
ŒŒ. 2
;
ŒŒ2 3
Btn_Respuesta2
œœ 
.
œœ 
IsHitTestVisible
œœ +
=
œœ, -
true
œœ. 2
;
œœ2 3
Btn_Respuesta3
–– 
.
–– 
IsHitTestVisible
–– +
=
––, -
true
––. 2
;
––2 3
Btn_Respuesta4
—— 
.
—— 
IsHitTestVisible
—— +
=
——, -
true
——. 2
;
——2 3
}
““ 	
}
”” 
}‘‘ ß¢
TC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaPersonalizarPerfil.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
int00 
idPerfil00 
=00 
JugadorSingleton00 +
.00+ ,
IdPerfil00, 4
;004 5
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
{88 (
EditarDescripcionPorIdPerfil99 ,
(99, -
idPerfil99- 5
,995 6
Txb_Descripcion997 F
.99F G
Text99G K
)99K L
;99L M
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
{== *
EditarNombreUsuarioPorIdPerfil>> .
(>>. /
idPerfil>>/ 7
,>>7 8
Txb_NombreDeUsuario>>9 L
.>>L M
Text>>M Q
)>>Q R
;>>R S
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
{GG 
ServidorPasswordHH $
.HH$ %/
#ServicioPersonalizacionPerfilClientHH% H
proxyHHI N
=HHO P
newHHQ T
ServidorPasswordHHU e
.HHe f0
#ServicioPersonalizacionPerfilClient	HHf â
(
HHâ ä
)
HHä ã
;
HHã å
ServidorPasswordII $
.II$ %'
ServicioGestionAccesoClientII% @
proxyAccesoIIA L
=IIM N
newIIO R'
ServicioGestionAccesoClientIIS n
(IIn o
)IIo p
;IIp q
intJJ 
validacionCorreoJJ (
=JJ) *
proxyAccesoJJ+ 6
.JJ6 7$
ValidarPresenciaDeCorreoJJ7 O
(JJO P
nuevoCorreoJJP [
)JJ[ \
;JJ\ ]
ifKK 
(KK 
validacionCorreoKK (
==KK) +
$numKK, -
)KK- .
{LL 
intMM "
resultadoEdicionCorreoMM 2
=MM3 4
proxyMM5 :
.MM: ;#
EditarCorreoPorIdAccesoMM; R
(MMR S
idAccesoMMS [
,MM[ \
nuevoCorreoMM] h
)MMh i
;MMi j
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
{yy 	
ValidacionAccesozz 
validacionAccesozz -
=zz. /
newzz0 3
ValidacionAccesozz4 D
(zzD E
)zzE F
;zzF G
return{{ 
validacionAcceso{{ #
.{{# $
ValidarCorreo{{$ 1
({{1 2
correo{{2 8
){{8 9
;{{9 :
}|| 	
private~~ 
bool~~ #
ValidarNuevaDescripcion~~ ,
(~~, -
string~~- 3
descripcion~~4 ?
)~~? @
{ 	
ValidacionPerfil
ÄÄ 
validacionPerfil
ÄÄ -
=
ÄÄ. /
new
ÄÄ0 3
ValidacionPerfil
ÄÄ4 D
(
ÄÄD E
)
ÄÄE F
;
ÄÄF G
return
ÅÅ 
validacionPerfil
ÅÅ #
.
ÅÅ# $ 
ValidarDescripcion
ÅÅ$ 6
(
ÅÅ6 7
descripcion
ÅÅ7 B
)
ÅÅB C
;
ÅÅC D
}
ÇÇ 	
private
ÑÑ 
bool
ÑÑ '
ValidarNuevoNombreUsuario
ÑÑ .
(
ÑÑ. /
string
ÑÑ/ 5
nombreUsuario
ÑÑ6 C
)
ÑÑC D
{
ÖÖ 	
ValidacionPerfil
ÜÜ 
validacionPerfil
ÜÜ -
=
ÜÜ. /
new
ÜÜ0 3
ValidacionPerfil
ÜÜ4 D
(
ÜÜD E
)
ÜÜE F
;
ÜÜF G
return
áá 
validacionPerfil
áá #
.
áá# $"
ValidarNombreUsuario
áá$ 8
(
áá8 9
nombreUsuario
áá9 F
)
ááF G
;
ááG H
}
àà 	
public
ää 
void
ää *
EditarDescripcionPorIdPerfil
ää 0
(
ää0 1
int
ää1 4
idPerfil
ää5 =
,
ää= >
string
ää? E
nuevaDescripcion
ääF V
)
ääV W
{
ãã 	
if
åå 
(
åå %
ValidarNuevaDescripcion
åå '
(
åå' (
nuevaDescripcion
åå( 8
)
åå8 9
)
åå9 :
{
çç 
try
éé 
{
èè 
ServidorPassword
êê $
.
êê$ %1
#ServicioPersonalizacionPerfilClient
êê% H
proxy
êêI N
=
êêO P
new
êêQ T
ServidorPassword
êêU e
.
êêe f2
#ServicioPersonalizacionPerfilClientêêf â
(êêâ ä
)êêä ã
;êêã å
int
ëë )
resultadoEdicionDescripcion
ëë 3
=
ëë4 5
proxy
ëë6 ;
.
ëë; <*
EditarDescripcionPorIdPerfil
ëë< X
(
ëëX Y
idPerfil
ëëY a
,
ëëa b
nuevaDescripcion
ëëc s
)
ëës t
;
ëët u
if
íí 
(
íí )
resultadoEdicionDescripcion
íí 3
==
íí4 6
$num
íí7 8
)
íí8 9
{
ìì 
MensajeVentana
îî &
.
îî& ',
MostrarVentanaEmergenteExitosa
îî' E
(
îîE F

Properties
îîF P
.
îîP Q
	Resources
îîQ Z
.
îîZ [%
MensajeCambiosGuardados
îî[ r
)
îîr s
;
îîs t
JugadorSingleton
ïï (
.
ïï( )
Descripcion
ïï) 4
=
ïï5 6
nuevaDescripcion
ïï7 G
;
ïïG H
}
ññ 
else
óó 
{
òò 
MensajeVentana
ôô &
.
ôô& '*
MostrarVentanaEmergenteError
ôô' C
(
ôôC D

Properties
ôôD N
.
ôôN O
	Resources
ôôO X
.
ôôX Y%
MensajeErrorBaseDeDatos
ôôY p
)
ôôp q
;
ôôq r
}
öö 
}
õõ 
catch
úú 
(
úú '
EndpointNotFoundException
úú 0-
excepcionPuntoFinalNoEncontrado
úú1 P
)
úúP Q
{
ùù 
MensajeVentana
ûû "
.
ûû" #*
MostrarVentanaEmergenteError
ûû# ?
(
ûû? @

Properties
ûû@ J
.
ûûJ K
	Resources
ûûK T
.
ûûT U"
MensajeErrorConexion
ûûU i
)
ûûi j
;
ûûj k
	_bitacora
üü 
.
üü 
Warn
üü "
(
üü" #-
excepcionPuntoFinalNoEncontrado
üü# B
)
üüB C
;
üüC D
}
†† 
}
°° 
else
¢¢ 
{
££ 
MensajeVentana
§§ 
.
§§ *
MostrarVentanaEmergenteError
§§ ;
(
§§; <

Properties
§§< F
.
§§F G
	Resources
§§G P
.
§§P Q(
MensajeInformacionInvalida
§§Q k
)
§§k l
;
§§l m
Txb_Descripcion
•• 
.
••  
BorderBrush
••  +
=
••, -
Brushes
••. 5
.
••5 6
Red
••6 9
;
••9 :
Txb_Descripcion
¶¶ 
.
¶¶  
BorderThickness
¶¶  /
=
¶¶0 1
new
¶¶2 5
	Thickness
¶¶6 ?
(
¶¶? @
$num
¶¶@ A
)
¶¶A B
;
¶¶B C
}
ßß 
}
®® 	
public
™™ 
void
™™ ,
EditarNombreUsuarioPorIdPerfil
™™ 2
(
™™2 3
int
™™3 6
idPerfil
™™7 ?
,
™™? @
string
™™A G 
nuevoNombreUsuario
™™H Z
)
™™Z [
{
´´ 	
if
¨¨ 
(
¨¨ '
ValidarNuevoNombreUsuario
¨¨ )
(
¨¨) * 
nuevoNombreUsuario
¨¨* <
)
¨¨< =
)
¨¨= >
{
≠≠ 
try
ÆÆ 
{
ØØ 
ServidorPassword
∞∞ $
.
∞∞$ %1
#ServicioPersonalizacionPerfilClient
∞∞% H
proxy
∞∞I N
=
∞∞O P
new
∞∞Q T
ServidorPassword
∞∞U e
.
∞∞e f2
#ServicioPersonalizacionPerfilClient∞∞f â
(∞∞â ä
)∞∞ä ã
;∞∞ã å
ServidorPassword
±± $
.
±±$ %)
ServicioGestionAccesoClient
±±% @
proxyAcceso
±±A L
=
±±M N
new
±±O R)
ServicioGestionAccesoClient
±±S n
(
±±n o
)
±±o p
;
±±p q
int
≤≤ %
validacionNombreUsuario
≤≤ /
=
≤≤0 1
proxyAcceso
≤≤2 =
.
≤≤= >"
ValidarNombreUsuario
≤≤> R
(
≤≤R S 
nuevoNombreUsuario
≤≤S e
)
≤≤e f
;
≤≤f g
if
≥≥ 
(
≥≥ %
validacionNombreUsuario
≥≥ /
==
≥≥0 2
$num
≥≥3 4
)
≥≥4 5
{
¥¥ 
int
µµ +
resultadoEdicionNombreUsuario
µµ 9
=
µµ: ;
proxy
µµ< A
.
µµA B,
EditarNombreUsuarioPorIdPerfil
µµB `
(
µµ` a
idPerfil
µµa i
,
µµi j 
nuevoNombreUsuario
µµk }
)
µµ} ~
;
µµ~ 
if
∂∂ 
(
∂∂ +
resultadoEdicionNombreUsuario
∂∂ 9
==
∂∂: <
$num
∂∂= >
)
∂∂> ?
{
∑∑ 
MensajeVentana
∏∏ *
.
∏∏* +,
MostrarVentanaEmergenteExitosa
∏∏+ I
(
∏∏I J

Properties
∏∏J T
.
∏∏T U
	Resources
∏∏U ^
.
∏∏^ _%
MensajeCambiosGuardados
∏∏_ v
)
∏∏v w
;
∏∏w x
JugadorSingleton
ππ ,
.
ππ, -
NombreUsuario
ππ- :
=
ππ; < 
nuevoNombreUsuario
ππ= O
;
ππO P
}
∫∫ 
else
ªª 
{
ºº 
MensajeVentana
ΩΩ *
.
ΩΩ* +*
MostrarVentanaEmergenteError
ΩΩ+ G
(
ΩΩG H

Properties
ΩΩH R
.
ΩΩR S
	Resources
ΩΩS \
.
ΩΩ\ ]%
MensajeErrorBaseDeDatos
ΩΩ] t
)
ΩΩt u
;
ΩΩu v
}
ææ 
}
øø 
else
¿¿ 
if
¿¿ 
(
¿¿ %
validacionNombreUsuario
¿¿ 4
==
¿¿5 7
$num
¿¿8 9
)
¿¿9 :
{
¡¡ 
MensajeVentana
¬¬ &
.
¬¬& '*
MostrarVentanaEmergenteError
¬¬' C
(
¬¬C D

Properties
¬¬D N
.
¬¬N O
	Resources
¬¬O X
.
¬¬X Y(
MensajeUsuarioNoDisponible
¬¬Y s
)
¬¬s t
;
¬¬t u
}
√√ 
else
ƒƒ 
{
≈≈ 
MensajeVentana
∆∆ &
.
∆∆& '*
MostrarVentanaEmergenteError
∆∆' C
(
∆∆C D

Properties
∆∆D N
.
∆∆N O
	Resources
∆∆O X
.
∆∆X Y%
MensajeErrorBaseDeDatos
∆∆Y p
)
∆∆p q
;
∆∆q r
}
«« 
}
»» 
catch
…… 
(
…… '
EndpointNotFoundException
…… 0-
excepcionPuntoFinalNoEncontrado
……1 P
)
……P Q
{
   
MensajeVentana
ÀÀ "
.
ÀÀ" #*
MostrarVentanaEmergenteError
ÀÀ# ?
(
ÀÀ? @

Properties
ÀÀ@ J
.
ÀÀJ K
	Resources
ÀÀK T
.
ÀÀT U"
MensajeErrorConexion
ÀÀU i
)
ÀÀi j
;
ÀÀj k
	_bitacora
ÃÃ 
.
ÃÃ 
Warn
ÃÃ "
(
ÃÃ" #-
excepcionPuntoFinalNoEncontrado
ÃÃ# B
)
ÃÃB C
;
ÃÃC D
}
ÕÕ 
}
ŒŒ 
else
œœ 
{
–– 
MensajeVentana
—— 
.
—— *
MostrarVentanaEmergenteError
—— ;
(
——; <

Properties
——< F
.
——F G
	Resources
——G P
.
——P Q(
MensajeInformacionInvalida
——Q k
)
——k l
;
——l m!
Txb_NombreDeUsuario
““ #
.
““# $
BorderBrush
““$ /
=
““0 1
Brushes
““2 9
.
““9 :
Red
““: =
;
““= >!
Txb_NombreDeUsuario
”” #
.
””# $
BorderThickness
””$ 3
=
””4 5
new
””6 9
	Thickness
””: C
(
””C D
$num
””D E
)
””E F
;
””F G
}
‘‘ 
}
’’ 	
private
◊◊ 
void
◊◊ %
CancelarPersonalizacion
◊◊ ,
(
◊◊, -
object
◊◊- 3
	remitente
◊◊4 =
,
◊◊= >
RoutedEventArgs
◊◊? N
	argumento
◊◊O X
)
◊◊X Y
{
ÿÿ 	"
VentanaMenuPrincipal
ŸŸ  !
paginaMenuPrincipal
ŸŸ! 4
=
ŸŸ5 6
new
ŸŸ7 :"
VentanaMenuPrincipal
ŸŸ; O
(
ŸŸO P
)
ŸŸP Q
;
ŸŸQ R
this
⁄⁄ 
.
⁄⁄ 
NavigationService
⁄⁄ "
.
⁄⁄" #
Navigate
⁄⁄# +
(
⁄⁄+ ,!
paginaMenuPrincipal
⁄⁄, ?
)
⁄⁄? @
;
⁄⁄@ A
}
€€ 	
private
›› 
void
››  
CambiarContrasenia
›› '
(
››' (
object
››( .
	remitente
››/ 8
,
››8 9
RoutedEventArgs
››: I
	argumento
››J S
)
››S T
{
ﬁﬁ 	&
VentanaCambioContrasenia
ﬂﬂ $%
paginaCambioContrasenia
ﬂﬂ% <
=
ﬂﬂ= >
new
ﬂﬂ? B&
VentanaCambioContrasenia
ﬂﬂC [
(
ﬂﬂ[ \
)
ﬂﬂ\ ]
;
ﬂﬂ] ^
this
‡‡ 
.
‡‡ 
NavigationService
‡‡ "
.
‡‡" #
Navigate
‡‡# +
(
‡‡+ ,%
paginaCambioContrasenia
‡‡, C
)
‡‡C D
;
‡‡D E
}
·· 	
private
„„ 
void
„„ 
CambiarImagen
„„ "
(
„„" #
object
„„# )
	remitente
„„* 3
,
„„3 4
RoutedEventArgs
„„5 D
	argumento
„„E N
)
„„N O
{
‰‰ 	$
VentanaImagenDeJugador
ÂÂ "#
paginaImagenDeJugador
ÂÂ# 8
=
ÂÂ9 :
new
ÂÂ; >$
VentanaImagenDeJugador
ÂÂ? U
(
ÂÂU V
)
ÂÂV W
;
ÂÂW X
this
ÊÊ 
.
ÊÊ 
NavigationService
ÊÊ "
.
ÊÊ" #
Navigate
ÊÊ# +
(
ÊÊ+ ,#
paginaImagenDeJugador
ÊÊ, A
)
ÊÊA B
;
ÊÊB C
}
ÁÁ 	
}
ËË 
}ÈÈ Í
QC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaPerfilDeJugador.xaml.cs
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
}## ú,
OC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaMenuPrincipal.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
}!! 	
private## 
void## "
ConfigurarImagenPerfil## +
(##+ ,
)##, -
{$$ 	

Img_Perfil%% 
.%% 
Source%% 
=%% 
new%%  #
BitmapImage%%$ /
(%%/ 0
new%%0 3
Uri%%4 7
(%%7 8
JugadorSingleton%%8 H
.%%H I

RutaImagen%%I S
)%%S T
)%%T U
;%%U V
}&& 	
private(( 
void(( 
PersonalizarPerfil(( '
(((' (
object((( .
	remitente((/ 8
,((8 9
RoutedEventArgs((: I
	argumento((J S
)((S T
{)) 	%
VentanaPersonalizarPerfil** %$
paginaPersonalizarPerfil**& >
=**? @
new**A D%
VentanaPersonalizarPerfil**E ^
(**^ _
)**_ `
;**` a
this++ 
.++ 
NavigationService++ "
.++" #
Navigate++# +
(+++ ,$
paginaPersonalizarPerfil++, D
)++D E
;++E F
},, 	
private.. 
void.. 
AgregarAmigo.. !
(..! "
object.." (
	remitente..) 2
,..2 3
RoutedEventArgs..4 C
	argumento..D M
)..M N
{// 	
VentanaAgregarAmigo00 
paginaAgregarAmigo00  2
=003 4
new005 8
VentanaAgregarAmigo009 L
(00L M
)00M N
;00N O
this11 
.11 
NavigationService11 "
.11" #
Navigate11# +
(11+ ,
paginaAgregarAmigo11, >
)11> ?
;11? @
}22 	
private44 
void44 
SalirDelJuego44 "
(44" #
object44# )
sender44* 0
,440 1
RoutedEventArgs442 A
e44B C
)44C D
{55 	
VentanaInicio66 
paginaInicio66 &
=66& '
new66( +
VentanaInicio66, 9
(669 :
)66: ;
;66; <
this77 
.77 
NavigationService77 "
.77" #
Navigate77# +
(77+ ,
paginaInicio77, 8
)778 9
;779 :
}88 	
private:: 
void:: 
ConsultarAmigos:: $
(::$ %
object::% +
	remitente::, 5
,::5 6
RoutedEventArgs::7 F
	argumento::G P
)::P Q
{;; 	
VentanaAmigos<< 
paginaAmigos<< &
=<<& '
new<<( +
VentanaAmigos<<, 9
(<<9 :
)<<: ;
;<<; <
this== 
.== 
NavigationService== "
.==" #
Navigate==# +
(==+ ,
paginaAmigos==, 8
)==8 9
;==9 :
}>> 	
private@@ 
void@@ #
VerSolicitudesDeAmistad@@ ,
(@@, -
object@@- 3
	remitente@@4 =
,@@= >
RoutedEventArgs@@? N
	argumento@@O X
)@@X Y
{AA 	'
VentanaSolicitudesDeAmistadBB '&
paginaSolicitudesDeAmistadBB( B
=BBB C
newBBC F'
VentanaSolicitudesDeAmistadBBG b
(BBb c
)BBc d
;BBd e
thisCC 
.CC 
NavigationServiceCC "
.CC" #
NavigateCC# +
(CC+ ,&
paginaSolicitudesDeAmistadCC, F
)CCF G
;CCG H
}DD 	
privateFF 
voidFF #
ElegirDificultadPartidaFF ,
(FF, -
objectFF- 3
	remitenteFF4 =
,FF= >
RoutedEventArgsFF? N
	argumentoFFO X
)FFX Y
{GG 	$
VentanaDificultadPartidaHH $#
paginaDificultadPartidaHH% <
=HH= >
newHH? B$
VentanaDificultadPartidaHHC [
(HH[ \
)HH\ ]
;HH] ^
thisII 
.II 
NavigationServiceII "
.II" #
NavigateII# +
(II+ ,#
paginaDificultadPartidaII, C
)IIC D
;IID E
}JJ 	
privateLL 
voidLL 
AbrirCodigoPartidaLL '
(LL' (
objectLL( .
	remitenteLL/ 8
,LL8 9
RoutedEventArgsLL: I
	argumentoLLJ S
)LLS T
{MM 	
VentanaUnionPartidaNN 
paginaUnionPartidaNN  2
=NN2 3
newNN3 6
VentanaUnionPartidaNN7 J
(NNJ K
)NNK L
;NNL M
thisOO 
.OO 
NavigationServiceOO "
.OO" #
NavigateOO# +
(OO+ ,
paginaUnionPartidaOO, >
)OO> ?
;OO? @
}PP 	
}QQ 
}RR õÅ
GC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaLobby.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaLobby %
:& '
Page( ,
,, -
ServidorPassword- =
.= >!
IServicioChatCallback> S
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
private 
ServidorPassword  
.  !
ServicioChatClient! 3
_servicioChat4 A
;A B
public 
VentanaLobby 
( 
) 
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
ConfigurarChat"" 
("" 
)"" 
;"" 
RecuperarAmigos## 
(## 
)## 
;## 
ConfigurarAnfitrion$$ 
($$  
)$$  !
;$$! "
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
ServidorPassword,,$ 4
.,,4 5
ServicioChatClient,,5 G
(,,G H
contexto,,H P
),,P Q
;,,Q R
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
+//M N
$str//O a
;//a b
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
}66 	
private77 
void77 
ConfigurarAnfitrion77 (
(77( )
)77) *
{88 	
Img_Anfitrion99 
.99 
Source99  
=99! "
new99# &
BitmapImage99' 2
(992 3
new993 6
Uri997 :
(99: ;
JugadorSingleton99; K
.99K L

RutaImagen99L V
)99V W
)99W X
;99X Y 
Txbl_NombreAnfitrion::  
.::  !
Text::! %
=::& '
JugadorSingleton::( 8
.::8 9
NombreUsuario::9 F
;::F G
};; 	
public== 
void== 
	Responder== 
(== 
string== $
	respuesta==% .
)==. /
{>> 	
string??  
codigoPartidaCliente?? '
=??( )
Txbl_CodigoPartida??* <
.??< =
Text??= A
;??A B
string@@ 
[@@ 
]@@ 
partesMensaje@@ "
=@@# $
	respuesta@@% .
.@@. /
Split@@/ 4
(@@4 5
$char@@5 8
)@@8 9
;@@9 :
stringAA "
codigoPartidaAEliminarAA )
=AA* +
$strAA, /
+AA0 1 
codigoPartidaClienteAA2 F
;AAF G
ifBB 
(BB 
partesMensajeBB 
.BB 
LengthBB $
>BB% &
$numBB' (
&&BB) +
partesMensajeBB, 9
[BB9 :
$numBB: ;
]BB; <
==BB= ? 
codigoPartidaClienteBB@ T
)BBT U
{CC 
stringDD %
respuestaSinCodigoPartidaDD 0
=DD1 2
	respuestaDD3 <
.DD< =
ReplaceDD= D
(DDD E"
codigoPartidaAEliminarDDE [
,DD[ \
$strDD] _
)DD_ `
;DD` a
Txb_ConversacionEE  
.EE  !
TextEE! %
+=EE& (%
respuestaSinCodigoPartidaEE) B
;EEB C
}FF 
}GG 	
privateII 
voidII 
EnviarMensajeII "
(II" #
objectII# )
	remitenteII* 3
,II3 4
RoutedEventArgsII5 D
	argumentoIIE N
)IIN O
{JJ 	
stringKK 
nombreUsuarioKK  
=KK! "
JugadorSingletonKK# 3
.KK3 4
NombreUsuarioKK4 A
;KKA B
stringLL 
codigoPartidaLL  
=LL  !
Txbl_CodigoPartidaLL! 3
.LL3 4
TextLL4 8
;LL8 9
stringMM 
mensajeMM 
=MM 
$"MM 
{MM  
nombreUsuarioMM  -
}MM- .
$strMM. /
{MM/ 0
codigoPartidaMM0 =
}MM= >
$strMM> @
"MM@ A
+MMB C
Txb_MensajeMMD O
.MMO P
TextMMP T
;MMT U
Txb_MensajeNN 
.NN 
TextNN 
=NN 
stringNN %
.NN% &
EmptyNN& +
;NN+ ,
_servicioChatOO 
.OO 
ChatearOO !
(OO! "
mensajeOO" )
)OO) *
;OO* +
}PP 	
privateRR 
voidRR 
SalirMenuPrincipalRR '
(RR' (
objectRR( .
	remitenteRR/ 8
,RR8 9
RoutedEventArgsRR: I
	argumentoRRJ S
)RRS T
{SS 	 
VentanaMenuPrincipalTT  
paginaMenuPrincipalTT! 4
=TT4 5
newTT5 8 
VentanaMenuPrincipalTT9 M
(TTM N
)TTN O
;TTO P
thisUU 
.UU 
NavigationServiceUU "
.UU" #
NavigateUU# +
(UU+ ,
paginaMenuPrincipalUU, ?
)UU? @
;UU@ A
}VV 	
privateXX 
voidXX 
RecuperarAmigosXX $
(XX$ %
)XX% &
{YY 	
tryZZ 
{[[ (
ServicioGestionAmistadClient\\ ,"
servicioGestionAmistad\\- C
=\\D E
new\\F I(
ServicioGestionAmistadClient\\J f
(\\f g
)\\g h
;\\h i
List]] 
<]] 
int]] 
>]] 
idAmistades]] %
=]]& '"
servicioGestionAmistad]]( >
.]]> ?*
ConsultarAmistadesPorIdJugador]]? ]
(]]] ^
JugadorSingleton]]^ n
.]]n o
	IdJugador]]o x
)]]x y
.]]y z
ToList	]]z Ä
(
]]Ä Å
)
]]Å Ç
;
]]Ç É
int^^ 
	idAmistad^^ 
=^^ 
idAmistades^^  +
.^^+ ,
FirstOrDefault^^, :
(^^: ;
)^^; <
;^^< =
if__ 
(__ 
	idAmistad__ 
==__  
-__! "
$num__" #
)__# $
{`` 
MensajeVentanaaa "
.aa" #(
MostrarVentanaEmergenteErroraa# ?
(aa? @

Propertiesaa@ J
.aaJ K
	ResourcesaaK T
.aaT U#
MensajeErrorBaseDeDatosaaU l
)aal m
;aam n
}bb 
elsecc 
{dd 
RecuperarJugadoresee &
(ee& '
idAmistadesee' 2
)ee2 3
;ee3 4
}ff 
}gg 
catchhh 
(hh %
EndpointNotFoundExceptionhh ,+
excepcionPuntoFinalNoEncontradohh- L
)hhL M
{ii 
MensajeVentanajj 
.jj (
MostrarVentanaEmergenteErrorjj ;
(jj; <

Propertiesjj< F
.jjF G
	ResourcesjjG P
.jjP Q 
MensajeErrorConexionjjQ e
)jje f
;jjf g
	_bitacorakk 
.kk 
Warnkk 
(kk +
excepcionPuntoFinalNoEncontradokk >
)kk> ?
;kk? @
}ll 
}mm 	
privateoo 
voidoo 
RecuperarJugadoresoo '
(oo' (
Listoo( ,
<oo, -
intoo- 0
>oo0 1
	amistadesoo2 ;
)oo; <
{pp 	
tryqq 
{rr 
ServidorPasswordss  
.ss  !(
ServicioGestionAmistadClientss! =
proxyss> C
=ssD E
newssF I
ServidorPasswordssJ Z
.ssZ [(
ServicioGestionAmistadClientss[ w
(ssw x
)ssx y
;ssy z
Listtt 
<tt 
stringtt 
>tt 
nombresUsuariott +
=tt, -
proxytt. 3
.tt3 41
%ObtenerNombresDeUsuarioPorIdJugadorestt4 Y
(ttY Z
	amistadesttZ c
.ttc d
ToArrayttd k
(ttk l
)ttl m
)ttm n
.ttn o
ToListtto u
(ttu v
)ttv w
;ttw x!
AsignarNombresUsuariouu %
(uu% &
nombresUsuariouu& 4
,uu4 5
	amistadesuu6 ?
)uu? @
;uu@ A
}vv 
catchww 
(ww %
EndpointNotFoundExceptionww ,+
excepcionPuntoFinalNoEncontradoww- L
)wwL M
{xx 
MensajeVentanayy 
.yy (
MostrarVentanaEmergenteErroryy ;
(yy; <

Propertiesyy< F
.yyF G
	ResourcesyyG P
.yyP Q 
MensajeErrorConexionyyQ e
)yye f
;yyf g
	_bitacorazz 
.zz 
Warnzz 
(zz +
excepcionPuntoFinalNoEncontradozz >
)zz> ?
;zz? @
}{{ 
}|| 	
private~~ 
void~~ !
AsignarNombresUsuario~~ *
(~~* +
List~~+ /
<~~/ 0
string~~0 6
>~~6 7
nombresUsuario~~8 F
,~~F G
List~~H L
<~~L M
int~~M P
>~~P Q
idAmistades~~R ]
)~~] ^
{ 	
string
ÄÄ !
primerNombreUsuario
ÄÄ &
=
ÄÄ' (
nombresUsuario
ÄÄ) 7
.
ÄÄ7 8
First
ÄÄ8 =
(
ÄÄ= >
)
ÄÄ> ?
;
ÄÄ? @
if
ÅÅ 
(
ÅÅ !
primerNombreUsuario
ÅÅ #
!=
ÅÅ$ &
$str
ÅÅ' 2
)
ÅÅ2 3
{
ÇÇ 
List
ÉÉ 
<
ÉÉ 
JugadorAmistad
ÉÉ #
>
ÉÉ# $
	amistades
ÉÉ% .
=
ÉÉ/ 0
CombinarListas
ÉÉ1 ?
(
ÉÉ? @
idAmistades
ÉÉ@ K
,
ÉÉK L
nombresUsuario
ÉÉM [
)
ÉÉ[ \
;
ÉÉ\ ]

Ltv_Amigos
ÑÑ 
.
ÑÑ 
ItemsSource
ÑÑ &
=
ÑÑ' (
	amistades
ÑÑ) 2
;
ÑÑ2 3
}
ÖÖ 
else
ÜÜ 
{
áá 
MensajeVentana
àà 
.
àà *
MostrarVentanaEmergenteError
àà ;
(
àà; <

Properties
àà< F
.
ààF G
	Resources
ààG P
.
ààP Q%
MensajeErrorBaseDeDatos
ààQ h
)
ààh i
;
àài j
}
ââ 
}
ää 	
private
åå 
List
åå 
<
åå 
JugadorAmistad
åå #
>
åå# $
CombinarListas
åå% 3
(
åå3 4
List
åå4 8
<
åå8 9
int
åå9 <
>
åå< =
idJugadores
åå> I
,
ååI J
List
ååK O
<
ååO P
string
ååP V
>
ååV W
nombresUsuario
ååX f
)
ååf g
{
çç 	
List
éé 
<
éé 
JugadorAmistad
éé 
>
éé  
	jugadores
éé! *
=
éé+ ,
idJugadores
éé- 8
.
éé8 9
Zip
éé9 <
(
éé< =
nombresUsuario
éé= K
,
ééK L
(
ééM N
id
ééN P
,
ééP Q
nombre
ééR X
)
ééX Y
=>
ééZ \
new
éé] `
JugadorAmistad
ééa o
{
èè 
	IdJugador
êê 
=
êê 
id
êê 
,
êê 
NombreUsuario
ëë 
=
ëë 
nombre
ëë  &
}
íí 
)
íí 
.
íí 
ToList
íí 
(
íí 
)
íí 
;
íí 
return
ìì 
	jugadores
ìì 
;
ìì 
}
îî 	
private
ññ 
void
ññ 
InvitarAPartida
ññ $
(
ññ$ %
object
ññ% +
	remitente
ññ, 5
,
ññ5 6
RoutedEventArgs
ññ7 F
	argumento
ññG P
)
ññP Q
{
óó 	
Button
òò 
Btn_EnviarCorreo
òò #
=
òò$ %
	remitente
òò& /
as
òò0 2
Button
òò3 9
;
òò9 :
JugadorAmistad
ôô 
amigo
ôô  
=
ôô! "
Btn_EnviarCorreo
ôô# 3
?
ôô3 4
.
ôô4 5
DataContext
ôô5 @
as
ôôA C
JugadorAmistad
ôôD R
;
ôôR S
if
öö 
(
öö 
amigo
öö 
!=
öö 
null
öö 
)
öö 
{
õõ 
try
úú 
{
ùù )
ServicioGestionAccesoClient
ûû /#
servicioGestionAcceso
ûû0 E
=
ûûF G
new
ûûH K)
ServicioGestionAccesoClient
ûûL g
(
ûûg h
)
ûûh i
;
ûûi j
Cuenta
üü 
cuenta
üü !
=
üü" ##
servicioGestionAcceso
üü$ 9
.
üü9 :)
RecuperarCuentaPorIdJugador
üü: U
(
üüU V
amigo
üüV [
.
üü[ \
	IdJugador
üü\ e
)
üüe f
;
üüf g
if
†† 
(
†† 
cuenta
†† 
.
†† 
IdAcceso
†† '
!=
††( *
-
††+ ,
$num
††, -
)
††- .
{
°° !
EnviarCorreoPartida
¢¢ +
(
¢¢+ ,
cuenta
¢¢, 2
.
¢¢2 3
Correo
¢¢3 9
)
¢¢9 :
;
¢¢: ;
MensajeVentana
££ &
.
££& ',
MostrarVentanaEmergenteExitosa
££' E
(
££E F

Properties
££F P
.
££P Q
	Resources
££Q Z
.
££Z ["
MensajeCorreoEnviado
££[ o
)
££o p
;
££p q
}
§§ 
else
•• 
{
¶¶ 
MensajeVentana
ßß &
.
ßß& '*
MostrarVentanaEmergenteError
ßß' C
(
ßßC D

Properties
ßßD N
.
ßßN O
	Resources
ßßO X
.
ßßX Y%
MensajeErrorBaseDeDatos
ßßY p
)
ßßp q
;
ßßq r
}
®® 
}
©© 
catch
™™ 
(
™™ '
EndpointNotFoundException
™™ 0-
excepcionPuntoFinalNoEncontrado
™™1 P
)
™™P Q
{
´´ 
MensajeVentana
¨¨ "
.
¨¨" #*
MostrarVentanaEmergenteError
¨¨# ?
(
¨¨? @

Properties
¨¨@ J
.
¨¨J K
	Resources
¨¨K T
.
¨¨T U"
MensajeErrorConexion
¨¨U i
)
¨¨i j
;
¨¨j k
	_bitacora
≠≠ 
.
≠≠ 
Warn
≠≠ "
(
≠≠" #-
excepcionPuntoFinalNoEncontrado
≠≠# B
)
≠≠B C
;
≠≠C D
}
ÆÆ 
}
ØØ 
}
∞∞ 	
private
≤≤ 
void
≤≤ !
EnviarCorreoPartida
≤≤ (
(
≤≤( )
string
≤≤) /
correoAmigo
≤≤0 ;
)
≤≤; <
{
≥≥ 	
EnvioCorreo
¥¥ 
envioCorreo
¥¥ #
=
¥¥$ %
new
¥¥& )
EnvioCorreo
¥¥* 5
(
¥¥5 6
)
¥¥6 7
;
¥¥7 8
envioCorreo
µµ 
.
µµ 
EnviarCorreo
µµ $
(
µµ$ %
correoAmigo
µµ% 0
,
µµ0 1

Properties
µµ1 ;
.
µµ; <
	Resources
µµ< E
.
µµE F%
CorreoInvitacionPartida
µµF ]
,
µµ] ^ 
Txbl_CodigoPartida
µµ_ q
.
µµq r
Text
µµr v
)
µµv w
;
µµw x
}
∂∂ 	
}
∑∑ 
}∏∏ œ
KC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaJugadores.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class 
VentanaJugadores )
:* +
Page, 0
{ 
public		  
ObservableCollection		 #
<		# $
Amigo		$ )
>		) *
Amigos		+ 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public 
VentanaJugadores 
(  
)  !
{ 	
InitializeComponent 
(  
)  !
;! "
CargarAmigos 
( 
) 
; 
ListaAmigos 
. 
ItemsSource #
=$ %
Amigos& ,
;, -
} 	
private 
void 
CargarAmigos !
(! "
)" #
{ 	
Amigos 
= 
new  
ObservableCollection -
<- .
Amigo. 3
>3 4
{ 
new 
Amigo 
{ 
NombreAmigo '
=( )
$str* 2
}3 4
,4 5
new 
Amigo 
{ 
NombreAmigo '
=( )
$str* 2
}3 4
,4 5
new 
Amigo 
{ 
NombreAmigo '
=( )
$str* 2
}3 4
,4 5
new 
Amigo 
{ 
NombreAmigo '
=( )
$str* 2
}3 4
} 
; 
} 	
private 
void 
InvitarAmigo_Click '
(' (
object( .
sender/ 5
,5 6
RoutedEventArgs7 F
eG H
)H I
{ 	
Button 
boton 
= 
sender !
as" $
Button% +
;+ ,
if   
(   
boton   
!=   
null   
&&    
boton  ! &
.  & '
DataContext  ' 2
is  3 5
Amigo  6 ;
amigo  < A
)  A B
{!! 

MessageBox"" 
."" 
Show"" 
(""  
$"""  "
$str""" 7
{""7 8
amigo""8 =
.""= >
NombreAmigo""> I
}""I J
"""J K
,""K L
$str""M Y
,""Y Z
MessageBoxButton""[ k
.""k l
OK""l n
,""n o
MessageBoxImage""p 
.	"" Ä
Information
""Ä ã
)
""ã å
;
""å ç
}## 
}$$ 	
private&& 
void&& 
Cancelar_Click&& #
(&&# $
object&&$ *
sender&&+ 1
,&&1 2
RoutedEventArgs&&3 B
e&&C D
)&&D E
{'' 	
NavigationService(( 
.(( 
GoBack(( $
((($ %
)((% &
;((& '
})) 	
}** 
public,, 

class,, 
Amigo,, 
{-- 
public.. 
string.. 
NombreAmigo.. !
{.." #
get..$ '
;..' (
set..) ,
;.., -
}... /
}// 
}00 ˆV
NC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaInicioSesion.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
public 
VentanaInicioSesion "
(" #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private!! 
void!! "
CancelarInicioDeSesion!! +
(!!+ ,
object!!, 2
	remitente!!3 <
,!!< =
RoutedEventArgs!!> M
	argumento!!N W
)!!W X
{"" 	
VentanaInicio## 

inicioPage## $
=##% &
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
($$+ ,

inicioPage$$, 6
)$$6 7
;$$7 8
}%% 	
private'' 
void'' #
ObtenerNuevaContrasenia'' ,
('', -
object''- 3
	remitente''4 =
,''= >
RoutedEventArgs''? N
	argumento''O X
)''X Y
{(( 	&
VentanaContraseniaOlvidada)) &%
paginaContraseniaOlvidada))' @
=))@ A
new))A D&
VentanaContraseniaOlvidada))E _
())_ `
)))` a
;))a b
this** 
.** 
NavigationService** "
.**" #
Navigate**# +
(**+ ,%
paginaContraseniaOlvidada**, E
)**E F
;**F G
}++ 	
private-- 
Acceso-- 
ObtenerAcceso-- $
(--$ %
)--% &
{.. 	
Acceso// 
acceso// 
=// 
new// 
Acceso//  &
{00 
correo11 
=11 

Txb_Correo11 !
.11! "
Text11" &
,11& '
contrasenia22 
=22 
Pwd_Contrasenia22 +
.22+ ,
Password22, 4
,224 5
}33 
;33 
return44 
acceso44 
;44 
}55 	
private77 
bool77 
ValidarCampos77 "
(77" #
)77# $
{88 	
bool99 

validacion99 
=99 
false99 !
;99! "
Acceso:: 
acceso:: 
=:: 
ObtenerAcceso:: )
(::) *
)::* +
;::+ ,
ValidacionAcceso;; 
validacionAcceso;; -
=;;. /
new;;0 3
ValidacionAcceso;;4 D
(;;D E
);;E F
;;;F G
FluentValidation<< 
.<< 
Results<< $
.<<$ %
ValidationResult<<% 5
resultadoAcceso<<6 E
=<<F G
validacionAcceso<<H X
.<<X Y
Validate<<Y a
(<<a b
acceso<<b h
)<<h i
;<<i j
if== 
(== 
resultadoAcceso== 
.==  
IsValid==  '
)==' (
{>> 

validacion?? 
=?? 
true?? !
;??! "
}@@ 
elseAA 
{BB 
MarcarErroresCC 
(CC 
)CC 
;CC  
ifDD 
(DD 
stringDD 
.DD 
IsNullOrWhiteSpaceDD -
(DD- .

Txb_CorreoDD. 8
.DD8 9
TextDD9 =
)DD= >
||DD? A
stringDDB H
.DDH I
IsNullOrWhiteSpaceDDI [
(DD[ \
Pwd_ContraseniaDD\ k
.DDk l
PasswordDDl t
)DDt u
)DDu v
{EE 
MensajeVentanaFF "
.FF" #(
MostrarVentanaEmergenteErrorFF# ?
(FF? @

PropertiesFF@ J
.FFJ K
	ResourcesFFK T
.FFT U#
MensajeCamposRequeridosFFU l
)FFl m
;FFm n
}GG 
elseHH 
{II 
MensajeVentanaJJ "
.JJ" #(
MostrarVentanaEmergenteErrorJJ# ?
(JJ? @

PropertiesJJ@ J
.JJJ K
	ResourcesJJK T
.JJT U&
MensajeInformacionInvalidaJJU o
)JJo p
;JJp q
}KK 
}LL 
returnMM 

validacionMM 
;MM 
}NN 	
privatePP 
voidPP 
MarcarErroresPP "
(PP" #
)PP# $
{QQ 	
ValidacionAccesoRR 
validacionAccesoRR -
=RR. /
newRR0 3
ValidacionAccesoRR4 D
(RRD E
)RRE F
;RRF G
ifSS 
(SS 
!SS 
validacionAccesoSS !
.SS! "
ValidarCorreoSS" /
(SS/ 0

Txb_CorreoSS0 :
.SS: ;
TextSS; ?
)SS? @
)SS@ A
{TT 

Txb_CorreoUU 
.UU 
BorderBrushUU &
=UU' (
BrushesUU) 0
.UU0 1
RedUU1 4
;UU4 5

Txb_CorreoVV 
.VV 
BorderThicknessVV *
=VV+ ,
newVV- 0
	ThicknessVV1 :
(VV: ;
$numVV; <
)VV< =
;VV= >
}WW 
ifXX 
(XX 
!XX 
validacionAccesoXX !
.XX! "
ValidarContraseniaXX" 4
(XX4 5
Pwd_ContraseniaXX5 D
.XXD E
PasswordXXE M
)XXM N
)XXN O
{YY 
Pwd_ContraseniaZZ 
.ZZ  
BorderBrushZZ  +
=ZZ, -
BrushesZZ. 5
.ZZ5 6
RedZZ6 9
;ZZ9 :
Pwd_Contrasenia[[ 
.[[  
BorderThickness[[  /
=[[0 1
new[[2 5
	Thickness[[6 ?
([[? @
$num[[@ A
)[[A B
;[[B C
}\\ 
}]] 	
private__ 
void__ 
ReiniciarCampos__ $
(__$ %
)__% &
{`` 	

Txb_Correoaa 
.aa 
BorderBrushaa "
=aa# $
Brushesaa% ,
.aa, -
Transparentaa- 8
;aa8 9

Txb_Correobb 
.bb 
BorderThicknessbb &
=bb' (
newbb) ,
	Thicknessbb- 6
(bb6 7
$numbb7 8
)bb8 9
;bb9 :
Pwd_Contraseniacc 
.cc 
BorderBrushcc '
=cc( )
Brushescc* 1
.cc1 2
Transparentcc2 =
;cc= >
Pwd_Contraseniadd 
.dd 
BorderThicknessdd +
=dd, -
newdd. 1
	Thicknessdd2 ;
(dd; <
$numdd< =
)dd= >
;dd> ?
}ee 	
privategg 
voidgg !
AceptarInicioDeSesiongg *
(gg* +
objectgg+ 1
	remitentegg2 ;
,gg; <
RoutedEventArgsgg= L
	argumentoggM V
)ggV W
{hh 	
ReiniciarCamposii 
(ii 
)ii 
;ii 
ifjj 
(jj 
ValidarCamposjj 
(jj 
)jj 
)jj  
{kk 
Accesoll 
accesoll 
=ll 
ObtenerAccesoll  -
(ll- .
)ll. /
;ll/ 0
trymm 
{nn 
ServidorPasswordoo $
.oo$ %'
ServicioGestionAccesoClientoo% @
proxyooA F
=ooG H
newooI L
ServidorPasswordooM ]
.oo] ^'
ServicioGestionAccesoClientoo^ y
(ooy z
)ooz {
;oo{ |
intpp 
	resultadopp !
=pp" #
proxypp$ )
.pp) *!
ValidarInicioDeSesionpp* ?
(pp? @
accesopp@ F
)ppF G
;ppG H
ifqq 
(qq 
	resultadoqq !
==qq" $
$numqq% &
)qq& '
{rr #
ObtenerJugadorSingletonss /
(ss/ 0
accesoss0 6
.ss6 7
correoss7 =
)ss= >
;ss> ? 
VentanaMenuPrincipaltt ,
paginaMenuPrincipaltt- @
=ttA B
newttC F 
VentanaMenuPrincipalttG [
(tt[ \
)tt\ ]
;tt] ^
thisuu 
.uu 
NavigationServiceuu .
.uu. /
Navigateuu/ 7
(uu7 8
paginaMenuPrincipaluu8 K
)uuK L
;uuL M
}vv 
elseww 
ifww 
(ww 
	resultadoww &
==ww' )
$numww* +
)ww+ ,
{xx 
MensajeVentanayy &
.yy& '(
MostrarVentanaEmergenteErroryy' C
(yyC D

PropertiesyyD N
.yyN O
	ResourcesyyO X
.yyX Y&
MensajeInformacionInvalidayyY s
)yys t
;yyt u
}zz 
else{{ 
{|| 
MensajeVentana}} &
.}}& '(
MostrarVentanaEmergenteError}}' C
(}}C D

Properties}}D N
.}}N O
	Resources}}O X
.}}X Y#
MensajeErrorBaseDeDatos}}Y p
)}}p q
;}}q r
}~~ 
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ '
EndpointNotFoundException
ÅÅ 0-
excepcionPuntoFinalNoEncontrado
ÅÅ1 P
)
ÅÅP Q
{
ÇÇ 
MensajeVentana
ÉÉ "
.
ÉÉ" #*
MostrarVentanaEmergenteError
ÉÉ# ?
(
ÉÉ? @

Properties
ÉÉ@ J
.
ÉÉJ K
	Resources
ÉÉK T
.
ÉÉT U"
MensajeErrorConexion
ÉÉU i
)
ÉÉi j
;
ÉÉj k
	_bitacora
ÑÑ 
.
ÑÑ 
Warn
ÑÑ "
(
ÑÑ" #-
excepcionPuntoFinalNoEncontrado
ÑÑ# B
)
ÑÑB C
;
ÑÑC D
}
ÖÖ 
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ %
ObtenerJugadorSingleton
ââ ,
(
ââ, -
string
ââ- 3
correo
ââ4 :
)
ââ: ;
{
ää 	
ServidorPassword
ãã 
.
ãã )
ServicioGestionAccesoClient
ãã 8
proxy
ãã9 >
=
ãã? @
new
ããA D
ServidorPassword
ããE U
.
ããU V)
ServicioGestionAccesoClient
ããV q
(
ããq r
)
ããr s
;
ããs t
ServidorPassword
åå 
.
åå 
Cuenta
åå #
cuenta
åå$ *
=
åå+ ,
proxy
åå- 2
.
åå2 3&
RecuperarCuentaPorCorreo
åå3 K
(
ååK L
correo
ååL R
)
ååR S
;
ååS T
JugadorSingleton
çç 
.
çç 
jugadorSingleton
çç -
.
çç- .#
CrearJugadorSingleton
çç. C
(
ççC D
cuenta
ççD J
)
ççJ K
;
ççK L
}
éé 	
}
èè 
}êê Á
HC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaInicio.xaml.cs
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
}## ß,
QC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaImagenDeJugador.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
.))< ='
EditarRutaImagenPorIdPerfil))= X
())X Y
JugadorSingleton))Y i
.))i j
IdPerfil))j r
,))r s 
_imagenSeleccionada	))t á
.
))á à
Source
))à é
.
))é è
ToString
))è ó
(
))ó ò
)
))ò ô
)
))ô ö
;
))ö õ
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
;--[ \
NavigationService.. )
...) *
GoBack..* 0
(..0 1
)..1 2
;..2 3
}// 
else00 
if00 
(00 (
resultadoActualizacionImagen00 9
==00: <
$num00= >
)00> ?
{11 
NavigationService22 )
.22) *
GoBack22* 0
(220 1
)221 2
;222 3
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
;66q r
NavigationService77 )
.77) *
GoBack77* 0
(770 1
)771 2
;772 3
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
boolCC %
ValidarImagenSeleccionadaCC .
(CC. /
)CC/ 0
{DD 	
boolEE 
validacionImagenEE !
=EE" #
falseEE$ )
;EE) *
ifFF 
(FF 
_imagenSeleccionadaFF #
!=FF$ &
nullFF' +
)FF+ ,
{GG 
validacionImagenHH  
=HH! "
trueHH# '
;HH' (
}II 
returnJJ 
validacionImagenJJ #
;JJ# $
}KK 	
privateMM 
voidMM 
SeleccionarImagenMM &
(MM& '
objectMM' -
senderMM. 4
,MM4 5 
MouseButtonEventArgsMM6 J
eMMK L
)MML M
{NN 	
ifOO 
(OO 
_imagenSeleccionadaOO #
!=OO$ &
nullOO' +
)OO+ ,
{PP 
_imagenSeleccionadaQQ #
.QQ# $
TagQQ$ '
=QQ( )
nullQQ* .
;QQ. /
}RR 
_imagenSeleccionadaSS 
=SS  !
senderSS" (
asSS) +
ImageSS, 1
;SS1 2
_imagenSeleccionadaTT 
.TT  
TagTT  #
=TT$ %
$strTT& 0
;TT0 1
}UU 	
privateXX 
voidXX 
CancelarClickXX "
(XX" #
objectXX# )
senderXX* 0
,XX0 1
RoutedEventArgsXX2 A
eXXB C
)XXC D
{YY 	
NavigationServiceZZ 
.ZZ 
GoBackZZ $
(ZZ$ %
)ZZ% &
;ZZ& '
}[[ 	
}\\ 
}]] ﬂH
SC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaDificultadPartida.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
{33 	
VentanaLobby44 
paginaSalaEspera44 )
=44* +
new44, /
VentanaLobby440 <
(44< =
)44= >
;44> ?
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
;	:: Ä
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
.>>$ %
ConfigurarChat>>% 3
(>>3 4
)>>4 5
;>>5 6
this?? 
.?? 
NavigationService?? *
.??* +
Navigate??+ 3
(??3 4
paginaSalaEspera??4 D
)??D E
;??E F
}@@ 
elseAA 
{BB 
MensajeVentanaCC "
.CC" #(
MostrarVentanaEmergenteErrorCC# ?
(CC? @

PropertiesCC@ J
.CCJ K
	ResourcesCCK T
.CCT U#
MensajeErrorBaseDeDatosCCU l
)CCl m
;CCm n
}DD 
}EE 
catchFF 
(FF %
EndpointNotFoundExceptionFF ,+
excepcionPuntoFinalNoEncontradoFF- L
)FFL M
{GG 
MensajeVentanaHH 
.HH (
MostrarVentanaEmergenteErrorHH ;
(HH; <

PropertiesHH< F
.HHF G
	ResourcesHHG P
.HHP Q 
MensajeErrorConexionHHQ e
)HHe f
;HHf g
	_bitacoraII 
.II 
WarnII 
(II +
excepcionPuntoFinalNoEncontradoII >
)II> ?
;II? @
}JJ 
}LL 	
privateNN 
PartidaNN 
ObtenerPartidaNN &
(NN& '
stringNN' -
codigoPartidaNN. ;
,NN; <
stringNN< B
tipoPartidaNNC N
)NNN O
{OO 	
PartidaPP 
partidaPP 
=PP 
newPP !
PartidaPP" )
{QQ 
codigoPartidaRR 
=RR 
codigoPartidaRR  -
,RR- .
	modoJuegoSS 
=SS 
tipoPartidaSS '
,SS' (
estadoPartidaTT 
=TT 
EnumeracionTT  +
.TT+ ,
EnumEstadoPartidaTT, =
.TT= >
IniciadaTT> F
.TTF G
ToStringTTG O
(TTO P
)TTP Q
,TTQ R
idAnfitrionUU 
=UU 
JugadorSingletonUU .
.UU. /
	IdJugadorUU/ 8
,UU8 9
}VV 
;VV 
returnWW 
partidaWW 
;WW 
}XX 	
privateZZ 
stringZZ  
ObtenerCodigoPartidaZZ +
(ZZ+ ,
)ZZ, -
{[[ 	
GeneradorCodigo\\ 
generadorCodigo\\ +
=\\, -
new\\. 1
GeneradorCodigo\\2 A
(\\A B
)\\B C
;\\C D
string]] 
codigoPartida]]  
=]]! "
generadorCodigo]]# 2
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
generadorCodigojj, ;
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
}~~ Ä7
UC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaContraseniaOlvidada.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
#ServicioPersonalizacionPerfilClient	//s ñ
(
//ñ ó
)
//ó ò
;
//ò ô
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
GenerarContrasenia332 D
(33D E
)33E F
;33F G
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
EnvioCorreoTT 
envioCorreoTT #
=TT$ %
newTT& )
EnvioCorreoTT* 5
(TT5 6
)TT6 7
;TT7 8
envioCorreoUU 
.UU 
EnviarCorreoUU $
(UU$ %

Txb_CorreoUU% /
.UU/ 0
TextUU0 4
,UU4 5
$strUU6 H
,UUH I
$"UUJ L
$strUUL X
{UUX Y
nuevaContraseniaUUY i
}UUi j
"UUj k
)UUk l
;UUl m
}VV 	
privateXX 
stringXX 
GenerarContraseniaXX )
(XX) *
)XX* +
{YY 	 
GeneradorContraseniaZZ   
generadorContraseniaZZ! 5
=ZZ6 7
newZZ8 ; 
GeneradorContraseniaZZ< P
(ZZP Q
)ZZQ R
;ZZR S
return[[  
generadorContrasenia[[ '
.[[' (
GenerarContrase√±a[[( 9
([[9 :
)[[: ;
;[[; <
}\\ 	
}]] 
}^^ ·
PC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaCodigoInvitado.xaml.cs
	namespace 	
Cliente
 
. 
Vistas 
{ 
public 

partial 
class !
VentanaCodigoInvitado .
:/ 0
Page1 5
{ 
public !
VentanaCodigoInvitado $
($ %
)% &
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
UnirseAPartida #
(# $
object$ *
	remitente+ 4
,4 5
RoutedEventArgs6 E
	argumentoF O
)O P
{ 	
} 	
private!! 
void!! 
RegresarInicio!! #
(!!# $
object!!$ *
	remitente!!+ 4
,!!4 5
RoutedEventArgs!!6 E
	argumento!!F O
)!!O P
{"" 	
NavigationService## 
.## 
GoBack## $
(##$ %
)##% &
;##& '
}$$ 	
}%% 
}&& ‹Z
SC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaCambioContrasenia.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
ServicioGestionAccesoClient	00l á
(
00á à
)
00à â
;
00â ä
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
#ServicioPersonalizacionPerfilClient	55 ¢
(
55¢ £
)
55£ §
;
55§ •
int66 "
resultadoActualizacion66 2
=663 4&
proxyPersonalizacionPerfil665 O
.66O P(
EditarContraseniaPorIdAcceso66P l
(66l m
JugadorSingleton66m }
.66} ~
IdAcceso	66~ Ü
,
66Ü á"
Txb_NuevaContrasenia
66à ú
.
66ú ù
Text
66ù °
)
66° ¢
;
66¢ £
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
=::9 : 
EncriptarContrasenia::; O
(::O P 
Txb_NuevaContrasenia::P d
.::d e
Text::e i
)::i j
;::j k%
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
{`` 	
ValidacionAccesoaa 
validacionAccesoaa -
=aa- .
newaa. 1
ValidacionAccesoaa2 B
(aaB C
)aaC D
;aaD E
boolbb '
validacionContraseniaActualbb ,
=bb, -
validacionAccesobb- =
.bb= >
ValidarContraseniabb> P
(bbP Q!
Txb_ContraseniaActualbbQ f
.bbf g
Textbbg k
)bbk l
;bbl m
boolcc &
validacionContraseniaNuevacc +
=cc+ ,
validacionAccesocc, <
.cc< =
ValidarContraseniacc= O
(ccO P 
Txb_NuevaContraseniaccP d
.ccd e
Textcce i
)cci j
;ccj k
returndd '
validacionContraseniaActualdd .
&&dd/ 1&
validacionContraseniaNuevadd2 L
;ddL M
}ee 	
privategg 
voidgg 
MostrarErroresgg #
(gg# $
)gg$ %
{hh 	
ValidacionAccesoii 
validacionAccesoii -
=ii. /
newii0 3
ValidacionAccesoii4 D
(iiD E
)iiE F
;iiF G
ifjj 
(jj 
!jj 
validacionAccesojj !
.jj! "
ValidarContraseniajj" 4
(jj4 5!
Txb_ContraseniaActualjj5 J
.jjJ K
TextjjK O
)jjO P
)jjP Q
{kk !
Txb_ContraseniaActualll %
.ll% &
BorderBrushll& 1
=ll2 3
Brushesll4 ;
.ll; <
Redll< ?
;ll? @!
Txb_ContraseniaActualmm %
.mm% &
BorderThicknessmm& 5
=mm6 7
newmm8 ;
	Thicknessmm< E
(mmE F
$nummmF G
)mmG H
;mmH I
}nn 
ifoo 
(oo 
!oo 
validacionAccesooo !
.oo! "
ValidarContraseniaoo" 4
(oo4 5 
Txb_NuevaContraseniaoo5 I
.ooI J
TextooJ N
)ooN O
)ooO P
{pp  
Txb_NuevaContraseniaqq $
.qq$ %
BorderBrushqq% 0
=qq1 2
Brushesqq3 :
.qq: ;
Redqq; >
;qq> ? 
Txb_NuevaContraseniarr $
.rr$ %
BorderThicknessrr% 4
=rr5 6
newrr7 :
	Thicknessrr; D
(rrD E
$numrrE F
)rrF G
;rrG H
}ss 
}tt 	
privatevv 
voidvv 
ReiniciarCamposvv $
(vv$ %
)vv% &
{ww 	!
Txb_ContraseniaActualxx !
.xx! "
BorderBrushxx" -
=xx. /
Brushesxx0 7
.xx7 8
Transparentxx8 C
;xxC D!
Txb_ContraseniaActualyy !
.yy! "
BorderThicknessyy" 1
=yy2 3
newyy4 7
	Thicknessyy8 A
(yyA B
$numyyB C
)yyC D
;yyD E 
Txb_NuevaContraseniazz  
.zz  !
BorderBrushzz! ,
=zz- .
Brusheszz/ 6
.zz6 7
Transparentzz7 B
;zzB C 
Txb_NuevaContrasenia{{  
.{{  !
BorderThickness{{! 0
={{1 2
new{{3 6
	Thickness{{7 @
({{@ A
$num{{A B
){{B C
;{{C D
}|| 	
private~~ 
string~~  
EncriptarContrasenia~~ +
(~~+ ,
string~~, 2
contrasenia~~3 >
)~~> ?
{ 	
var
ÄÄ 
sha256
ÄÄ 
=
ÄÄ 
SHA256
ÄÄ 
.
ÄÄ  
Create
ÄÄ  &
(
ÄÄ& '
)
ÄÄ' (
;
ÄÄ( )
byte
ÅÅ 
[
ÅÅ 
]
ÅÅ 
bytes
ÅÅ 
=
ÅÅ 
sha256
ÅÅ !
.
ÅÅ! "
ComputeHash
ÅÅ" -
(
ÅÅ- .
Encoding
ÅÅ. 6
.
ÅÅ6 7
UTF8
ÅÅ7 ;
.
ÅÅ; <
GetBytes
ÅÅ< D
(
ÅÅD E
contrasenia
ÅÅE P
)
ÅÅP Q
)
ÅÅQ R
;
ÅÅR S
var
ÇÇ 
constructorCadena
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '
StringBuilder
ÇÇ( 5
(
ÇÇ5 6
)
ÇÇ6 7
;
ÇÇ7 8
for
ÉÉ 
(
ÉÉ 
int
ÉÉ 
i
ÉÉ 
=
ÉÉ 
$num
ÉÉ 
;
ÉÉ 
i
ÉÉ 
<
ÉÉ 
bytes
ÉÉ  %
.
ÉÉ% &
Length
ÉÉ& ,
;
ÉÉ, -
i
ÉÉ. /
++
ÉÉ/ 1
)
ÉÉ1 2
{
ÑÑ 
constructorCadena
ÖÖ !
.
ÖÖ! "
Append
ÖÖ" (
(
ÖÖ( )
bytes
ÖÖ) .
[
ÖÖ. /
i
ÖÖ/ 0
]
ÖÖ0 1
.
ÖÖ1 2
ToString
ÖÖ2 :
(
ÖÖ: ;
$str
ÖÖ; ?
)
ÖÖ? @
)
ÖÖ@ A
;
ÖÖA B
}
ÜÜ 
return
áá 
constructorCadena
áá $
.
áá$ %
ToString
áá% -
(
áá- .
)
áá. /
;
áá/ 0
}
àà 	
}
ââ 
}ää óQ
HC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaAmigos.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
ToList	--z Ä
(
--Ä Å
)
--Å Ç
;
--Ç É
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
	idAmistad// 
==//  
-//! "
$num//" #
)//# $
{00 
MensajeVentana11 "
.11" #(
MostrarVentanaEmergenteError11# ?
(11? @

Properties11@ J
.11J K
	Resources11K T
.11T U#
MensajeErrorBaseDeDatos11U l
)11l m
;11m n
}22 
else33 
{44 
RecuperarJugadores55 &
(55& '
idAmistades55' 2
)552 3
;553 4
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
{BB 
ServidorPasswordCC  
.CC  !(
ServicioGestionAmistadClientCC! =
proxyCC> C
=CCD E
newCCF I
ServidorPasswordCCJ Z
.CCZ [(
ServicioGestionAmistadClientCC[ w
(CCw x
)CCx y
;CCy z
ListDD 
<DD 
stringDD 
>DD 
nombresUsuarioDD +
=DD, -
proxyDD. 3
.DD3 41
%ObtenerNombresDeUsuarioPorIdJugadoresDD4 Y
(DDY Z
	amistadesDDZ c
.DDc d
ToArrayDDd k
(DDk l
)DDl m
)DDm n
.DDn o
ToListDDo u
(DDu v
)DDv w
;DDw x!
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
.PP7 8
FirstPP8 =
(PP= >
)PP> ?
;PP? @
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
private\\ 
List\\ 
<\\ 
JugadorAmistad\\ #
>\\# $
CombinarListas\\% 3
(\\3 4
List\\4 8
<\\8 9
int\\9 <
>\\< =
idJugadores\\> I
,\\I J
List\\K O
<\\O P
string\\P V
>\\V W
nombresUsuario\\X f
)\\f g
{]] 	
List^^ 
<^^ 
JugadorAmistad^^ 
>^^  
	jugadores^^! *
=^^+ ,
idJugadores^^- 8
.^^8 9
Zip^^9 <
(^^< =
nombresUsuario^^= K
,^^K L
(^^M N
id^^N P
,^^P Q
nombre^^R X
)^^X Y
=>^^Z \
new^^] `
JugadorAmistad^^a o
{__ 
	IdJugador`` 
=`` 
id`` 
,`` 
NombreUsuarioaa 
=aa 
nombreaa  &
}bb 
)bb 
.bb 
ToListbb 
(bb 
)bb 
;bb 
returncc 
	jugadorescc 
;cc 
}dd 	
privateff 
voidff 
	VerPerfilff 
(ff 
objectff %
	remitenteff& /
,ff/ 0
RoutedEventArgsff1 @
	argumentoffA J
)ffJ K
{gg 	
ifhh 
(hh 
	remitentehh 
ishh 
Buttonhh #
Btn_VerPerfilAmigohh$ 6
&&hh7 9
Btn_VerPerfilAmigohh: L
.hhL M
TaghhM P
ishhQ S
inthhT W
	idJugadorhhX a
)hha b
{ii 
tryjj 
{kk '
ServicioGestionAccesoClientll /!
servicioGestionAccesoll0 E
=llF G
newllH K'
ServicioGestionAccesoClientllL g
(llg h
)llh i
;lli j
Cuentamm 
cuentamm !
=mm! "!
servicioGestionAccesomm" 7
.mm7 8'
RecuperarCuentaPorIdJugadormm8 S
(mmS T
	idJugadormmT ]
)mm] ^
;mm^ _
ifnn 
(nn 
cuentann 
.nn 
IdAccesonn '
!=nn( *
-nn+ ,
$numnn, -
)nn- .
{oo "
VentanaPerfilDeJugadorpp .!
paginaPerfilDeJugadorpp/ D
=ppD E
newppE H"
VentanaPerfilDeJugadorppI _
(pp_ `
)pp` a
;ppa b!
paginaPerfilDeJugadorqq -
.qq- .

Txb_Correoqq. 8
.qq8 9
Textqq9 =
=qq> ?
cuentaqq@ F
.qqF G
CorreoqqG M
;qqM N!
paginaPerfilDeJugadorrr -
.rr- .
Txb_Descripcionrr. =
.rr= >
Textrr> B
=rrC D
cuentarrE K
.rrK L
DescripcionrrL W
;rrW X!
paginaPerfilDeJugadorss -
.ss- .
Lbl_NombreJugadorss. ?
.ss? @
Contentss@ G
=ssH I
cuentassJ P
.ssP Q
NombreUsuariossQ ^
;ss^ _
thistt 
.tt 
NavigationServicett .
.tt. /
Navigatett/ 7
(tt7 8!
paginaPerfilDeJugadortt8 M
)ttM N
;ttN O
}uu 
elsevv 
{ww 
MensajeVentanaxx &
.xx& '(
MostrarVentanaEmergenteErrorxx' C
(xxC D

PropertiesxxD N
.xxN O
	ResourcesxxO X
.xxX Y#
MensajeErrorBaseDeDatosxxY p
)xxp q
;xxq r
}yy 
}zz 
catch{{ 
({{ %
EndpointNotFoundException{{ 0+
excepcionPuntoFinalNoEncontrado{{1 P
){{P Q
{|| 
MensajeVentana}} "
.}}" #(
MostrarVentanaEmergenteError}}# ?
(}}? @

Properties}}@ J
.}}J K
	Resources}}K T
.}}T U 
MensajeErrorConexion}}U i
)}}i j
;}}j k
	_bitacora~~ 
.~~ 
Warn~~ "
(~~" #+
excepcionPuntoFinalNoEncontrado~~# B
)~~B C
;~~C D
} 
}
ÄÄ 
}
ÅÅ 	
}
ÉÉ 
}ÑÑ ˚8
NC:\Users\hizza\Desktop\JuegoPasswordCliente\Vistas\VentanaAgregarAmigo.xaml.cs
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
DeclaringType	v É
)
É Ñ
;
Ñ Ö
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
{,, 
ServidorPassword-- $
.--$ %(
ServicioGestionAmistadClient--% A
proxy--B G
=--H I
new--J M
ServidorPassword--N ^
.--^ _(
ServicioGestionAmistadClient--_ {
(--{ |
)--| }
;--} ~
int.. 
	idJugador.. !
=.." #
proxy..$ )
...) *'
ConsultarIdJugadorPorCorreo..* E
(..E F

Txb_Correo..F P
...P Q
Text..Q U
)..U V
;..V W
if// 
(// 
	idJugador// !
>//" #
$num//$ %
)//% &
{00 
int11 '
validacionExistenciaAmistad11 7
=118 9
proxy11: ?
.11? @2
&ValidarExistenciaAmistadPorIdJugadores11@ f
(11f g
JugadorSingleton11g w
.11w x
	IdJugador	11x Å
,
11Å Ç
	idJugador
11É å
)
11å ç
;
11ç é
if22 
(22 '
validacionExistenciaAmistad22 7
==228 :
$num22; <
)22< =
{33 
Amistad44 #
amistad44$ +
=44, -
ObtenerAmistad44. <
(44< =
	idJugador44= F
)44F G
;44G H
int55 $
resultadoRegistroAmistad55  8
=559 :
proxy55; @
.55@ A
RegistrarAmistad55A Q
(55Q R
amistad55R Y
)55Y Z
;55Z [
if66 
(66  $
resultadoRegistroAmistad66  8
==669 ;
$num66< =
)66= >
{77 
MensajeVentana88  .
.88. /*
MostrarVentanaEmergenteExitosa88/ M
(88M N

Properties88N X
.88X Y
	Resources88Y b
.88b c!
VentanaEmergenteExito88c x
)88x y
;88y z
}99 
else::  
{;; 
MensajeVentana<<  .
.<<. /(
MostrarVentanaEmergenteError<</ K
(<<K L

Properties<<L V
.<<V W
	Resources<<W `
.<<` a#
MensajeErrorBaseDeDatos<<a x
)<<x y
;<<y z
}== 
}>> 
else?? 
if?? 
(??  !'
validacionExistenciaAmistad??! <
==??= ?
$num??@ A
)??A B
{@@ 
MensajeVentanaAA *
.AA* +.
"MostrarVentanaEmergenteAdvertenciaAA+ M
(AAM N

PropertiesAAN X
.AAX Y
	ResourcesAAY b
.AAb c"
MensajeAmistadAnteriorAAc y
)AAy z
;AAz {
}BB 
elseCC 
{DD 
MensajeVentanaEE *
.EE* +(
MostrarVentanaEmergenteErrorEE+ G
(EEG H

PropertiesEEH R
.EER S
	ResourcesEES \
.EE\ ]#
MensajeErrorBaseDeDatosEE] t
)EEt u
;EEu v
}FF 
}GG 
elseHH 
ifHH 
(HH 
	idJugadorHH &
==HH' )
$numHH* +
)HH+ ,
{II 
MensajeVentanaJJ &
.JJ& '(
MostrarVentanaEmergenteErrorJJ' C
(JJC D

PropertiesJJD N
.JJN O
	ResourcesJJO X
.JJX Y&
MensajeInformacionInvalidaJJY s
)JJs t
;JJt u
}KK 
elseLL 
{MM 
MensajeVentanaNN &
.NN& '(
MostrarVentanaEmergenteErrorNN' C
(NNC D

PropertiesNND N
.NNN O
	ResourcesNNO X
.NNX Y#
MensajeErrorBaseDeDatosNNY p
)NNp q
;NNq r
}OO 
}QQ 
catchRR 
(RR %
EndpointNotFoundExceptionRR 0+
excepcionPuntoFinalNoEncontradoRR1 P
)RRP Q
{SS 
MensajeVentanaTT "
.TT" #(
MostrarVentanaEmergenteErrorTT# ?
(TT? @

PropertiesTT@ J
.TTJ K
	ResourcesTTK T
.TTT U 
MensajeErrorConexionTTU i
)TTi j
;TTj k
	_bitacoraUU 
.UU 
WarnUU "
(UU" #+
excepcionPuntoFinalNoEncontradoUU# B
)UUB C
;UUC D
}VV 
}WW 
elseXX 
{YY 
MensajeVentanaZZ 
.ZZ (
MostrarVentanaEmergenteErrorZZ ;
(ZZ; <

PropertiesZZ< F
.ZZF G
	ResourcesZZG P
.ZZP Q&
MensajeInformacionInvalidaZZQ k
)ZZk l
;ZZl m
}[[ 
}\\ 	
private^^ 
Amistad^^ 
ObtenerAmistad^^ &
(^^& '
int^^' *
idAmigo^^+ 2
)^^2 3
{__ 	
Amistad`` 
amistad`` 
=`` 
new`` !
Amistad``" )
{aa 
idJugadorAmigobb 
=bb 
idAmigobb &
,bb& '
FKidJugadorcc 
=cc 
JugadorSingletoncc ,
.cc, -
	IdJugadorcc- 6
,cc6 7
fechaSolicituddd 
=dd 
DateTimedd '
.dd' (
Todaydd( -
,dd- .
}ee 
;ee 
returnff 
amistadff 
;ff 
}gg 	
privateii 
boolii 
ValidarCorreoii "
(ii" #
)ii# $
{jj 	
ValidacionAccesokk 
validacionAccesokk -
=kk. /
newkk0 3
ValidacionAccesokk4 D
(kkD E
)kkE F
;kkF G
returnll 
validacionAccesoll #
.ll# $
ValidarCorreoll$ 1
(ll1 2

Txb_Correoll2 <
.ll< =
Textll= A
)llA B
;llB C
}mm 	
}nn 
}oo Ã
@C:\Users\hizza\Desktop\JuegoPasswordCliente\Enums\Enumeracion.cs
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
} è
JC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\ValidacionPerfil.cs
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
ValidacionPerfil !
:" #
AbstractValidator$ 5
<5 6
Perfil6 <
>< =
{ 
public 
ValidacionPerfil 
(  
)  !
{ 	
RuleFor 
( 
perfil 
=> 
perfil $
.$ %
nombreUsuario% 2
)2 3
.3 4
NotEmpty4 <
(< =
)= >
.> ?
MaximumLength? L
(L M
$numM O
)O P
.P Q
MatchesQ X
(X Y
$strY d
)d e
;e f
RuleFor 
( 
perfil 
=> 
perfil $
.$ %
descripcion% 0
)0 1
.1 2
MaximumLength2 ?
(? @
$num@ C
)C D
;D E
} 	
public 
bool 
ValidarDescripcion &
(& '
string' -
descripcion. 9
)9 :
{ 	
return 
descripcion 
. 
Length %
<=& (
$num) ,
;, -
} 	
public 
bool  
ValidarNombreUsuario (
(( )
string) /
nombreUsuario0 =
)= >
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
patronNombreUsuario	u à
)
à â
;
â ä
} 	
} 
} å
KC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\ValidacionJugador.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{ 
public 

class 
ValidacionJugador "
:# $
AbstractValidator% 6
<6 7
Jugador7 >
>> ?
{ 
public 
ValidacionJugador  
(  !
)! "
{ 	
RuleFor 
( 
jugador 
=> 
jugador &
.& '
nombre' -
)- .
.. /
NotEmpty/ 7
(7 8
)8 9
.9 :
MaximumLength: G
(G H
$numH K
)K L
.L M
MatchesM T
(T U
$strU q
)q r
;r s
RuleFor 
( 
jugador 
=> 
jugador &
.& '
	apellidos' 0
)0 1
.1 2
NotEmpty2 :
(: ;
); <
.< =
MaximumLength= J
(J K
$numK N
)N O
.O P
MatchesP W
(W X
$strX t
)t u
;u v
} 	
public 
bool 
ValidarNombre !
(! "
string" (
nombre) /
)/ 0
{ 	
string 
patronNombre 
=  
$str! =
;= >
return 
Regex 
. 
IsMatch  
(  !
nombre! '
,' (
patronNombre) 5
)5 6
;6 7
} 	
public 
bool 
ValidarApellidos $
($ %
string% +
	apellidos, 5
)5 6
{ 	
string 
patronApellido !
=" #
$str$ @
;@ A
return 
Regex 
. 
IsMatch  
(  !
	apellidos! *
,* +
patronApellido, :
): ;
;; <
} 	
}!! 
}"" ˛8
IC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\PartidaAuxiliar.cs
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
class 
PartidaAuxiliar  
{ 
private 
static 
readonly 
ILog  $
	_bitacora% .
=/ 0

LogManager1 ;
.; <
	GetLogger< E
(E F
SystemF L
.L M

ReflectionM W
.W X

MethodBaseX b
.b c
GetCurrentMethodc s
(s t
)t u
.u v
DeclaringType	v É
)
É Ñ
;
Ñ Ö
public 
List 
< 
PreguntaContrato $
>$ %
	Preguntas& /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
List 
< 
RespuestaContrato %
>% &

Respuestas' 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
void 
RecuperarPreguntas &
(& '
int' *
cantidadPreguntas+ <
)< =
{ 	
try 
{ (
ServicioGestionPartidaClient ,"
servicioGestionPartida- C
=D E
newF I(
ServicioGestionPartidaClientJ f
(f g
)g h
;h i
List 
< 
PreguntaContrato %
>% &
preguntasObtenidas' 9
=: ;"
servicioGestionPartida< R
.R S
ObtenerPreguntasS c
(c d
)d e
.e f
ToListf l
(l m
)m n
;n o
if 
( 
preguntasObtenidas &
.& '
Count' ,
(, -
)- .
>/ 0
$num1 2
)2 3
{ &
SeleccionarPreguntasAlAzar .
(. /
preguntasObtenidas/ A
,A B
cantidadPreguntasB S
)S T
;T U
} 
} 
catch 
( %
EndpointNotFoundException ,+
excepcionPuntoFinalNoEncontrado- L
)L M
{ 
MensajeVentana 
. (
MostrarVentanaEmergenteError ;
(; <

Properties< F
.F G
	ResourcesG P
.P Q 
MensajeErrorConexionQ e
)e f
;f g
	_bitacora   
.   
Warn   
(   +
excepcionPuntoFinalNoEncontrado   >
)  > ?
;  ? @
}!! 
}"" 	
private$$ 
void$$ &
SeleccionarPreguntasAlAzar$$ /
($$/ 0
List$$0 4
<$$4 5
PreguntaContrato$$5 E
>$$E F
preguntasObtenidas$$G Y
,$$Y Z
int$$Z ]
cantidadPreguntas$$^ o
)$$o p
{%% 	
List&& 
<&& 
PreguntaContrato&& !
>&&! ""
preguntasSeleccionadas&&# 9
=&&: ;
new&&< ?
List&&@ D
<&&D E
PreguntaContrato&&E U
>&&U V
(&&V W
)&&W X
;&&X Y
Random'' 
	aleatorio'' 
='' 
new'' "
Random''# )
('') *
)''* +
;''+ ,
HashSet(( 
<(( 
int(( 
>((  
indicesSeleccionados(( -
=((. /
new((0 3
HashSet((4 ;
<((; <
int((< ?
>((? @
(((@ A
)((A B
;((B C
while** 
(** "
preguntasSeleccionadas** )
.**) *
Count*** /
<**0 1
cantidadPreguntas**2 C
)**C D
{++ 
int,, 
indiceAleatorio,, #
=,,$ %
	aleatorio,,& /
.,,/ 0
Next,,0 4
(,,4 5
preguntasObtenidas,,5 G
.,,G H
Count,,H M
),,M N
;,,N O
if-- 
(-- 
!--  
indicesSeleccionados-- )
.--) *
Contains--* 2
(--2 3
indiceAleatorio--3 B
)--B C
)--C D
{..  
indicesSeleccionados// (
.//( )
Add//) ,
(//, -
indiceAleatorio//- <
)//< =
;//= >"
preguntasSeleccionadas00 *
.00* +
Add00+ .
(00. /
preguntasObtenidas00/ A
[00A B
indiceAleatorio00B Q
]00Q R
)00R S
;00S T
}11 
}22 
	Preguntas33 
=33 "
preguntasSeleccionadas33 .
;33. /
List44 
<44 
int44 
>44 
idPreguntas44 !
=44! "
ObtenerIdPreguntas44" 4
(444 5
)445 6
;446 7!
SeleccionarRespuestas55 !
(55! "
idPreguntas55" -
)55- .
;55. /
}66 	
private88 
List88 
<88 
int88 
>88 
ObtenerIdPreguntas88 ,
(88, -
)88- .
{99 	
List:: 
<:: 
int:: 
>:: 
idPreguntas:: !
=::" #
new::$ '
List::( ,
<::, -
int::- 0
>::0 1
(::1 2
)::2 3
;::3 4
foreach;; 
(;; 
var;; 
pregunta;; !
in;;" $
	Preguntas;;% .
);;. /
{<< 
idPreguntas== 
.== 
Add== 
(==  
pregunta==  (
.==( )

IdPregunta==) 3
)==3 4
;==4 5
}>> 
return?? 
idPreguntas?? 
;?? 
}@@ 	
privateBB 
voidBB !
SeleccionarRespuestasBB *
(BB* +
ListBB+ /
<BB/ 0
intBB0 3
>BB3 4
idPreguntasBB5 @
)BB@ A
{CC 	
tryDD 
{EE (
ServicioGestionPartidaClientFF ,"
servicioGestionPartidaFF- C
=FFD E
newFFF I(
ServicioGestionPartidaClientFFJ f
(FFf g
)FFg h
;FFh i

RespuestasGG 
=GG "
servicioGestionPartidaGG 1
.GG1 2-
!RecuperarRespuestasPorIdPreguntasGG2 S
(GGS T
idPreguntasGGT _
.GG_ `
ToArrayGG` g
(GGg h
)GGh i
)GGi j
.GGj k
ToListGGk q
(GGq r
)GGr s
;GGs t
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
}NN 	
}OO 
}PP •
JC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\ValidacionAcceso.cs
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
public 
bool 
ValidarCorreo !
(! "
string" (
correo) /
)/ 0
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
public 
bool 
ValidarContrasenia &
(& '
string' -
contrasenia. 9
)9 :
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
}   Ú!
HC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\MensajeVentana.cs
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
Error	{ Ä
)
Ä Å
;
Å Ç
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
MessageBoxImage	s Ç
.
Ç É
Warning
É ä
)
ä ã
;
ã å
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
Information	} à
)
à â
;
â ä
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
MessageBoxButton	y â
.
â ä
OKCancel
ä í
,
í ì
MessageBoxImage
î £
.
£ §
Question
§ ¨
)
¨ ≠
;
≠ Æ
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
MessageBoxImage	##w Ü
.
##Ü á
Information
##á í
)
##í ì
;
##ì î
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
MessageBoxImage	((q Ä
.
((Ä Å
Information
((Å å
)
((å ç
;
((ç é
})) 	
}** 
}++ ˘
JC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\JugadorSingleton.cs
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
static 
int 
IdPerfil "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
static 
string 
NombreUsuario *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
static 
string 

RutaImagen '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
static 
string 
Descripcion (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
static 
int 
	IdJugador #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
static 
string 
Nombre #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
static 
string 
	Apellidos &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
JugadorSingleton  
(  !
)! "
{# $
}% &
public 
static 
JugadorSingleton &
jugadorSingleton' 7
=>8 :
_jugadorSingleton; L
;L M
public 
void !
CrearJugadorSingleton )
() *
Cuenta* 0
cuenta1 7
)7 8
{ 	
Correo   
=   
cuenta   
.   
Correo   "
;  " #
Contrasenia!! 
=!! 
cuenta!!  
.!!  !
Contrasenia!!! ,
;!!, -
IdAcceso"" 
="" 
cuenta"" 
."" 
IdAcceso"" &
;""& '
IdPerfil## 
=## 
cuenta## 
.## 
IdPerfil## &
;##& '
NombreUsuario$$ 
=$$ 
cuenta$$ "
.$$" #
NombreUsuario$$# 0
;$$0 1

RutaImagen%% 
=%% 
cuenta%% 
.%%  

RutaImagen%%  *
;%%* +
Descripcion&& 
=&& 
cuenta&&  
.&&  !
Descripcion&&! ,
;&&, -
	IdJugador'' 
='' 
cuenta'' 
.'' 
	IdJugador'' (
;''( )
Nombre(( 
=(( 
cuenta(( 
.(( 
Nombre(( "
;((" #
	Apellidos)) 
=)) 
cuenta)) 
.)) 
	Apellidos)) (
;))( )
}** 	
}++ 
},, —
HC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\JugadorAmistad.cs
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
}0 1
} 
} ©
NC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\GeneradorContrasenia.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{ 
public		 

class		  
GeneradorContrasenia		 %
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
public 
string 
GenerarContrase√±a '
(' (
)( )
{ 	
const 
int 
longitud 
=  
$num! "
;" #
const 
string 
letrasMayusculas )
=* +
$str, H
;H I
const 
string 
letrasMinusculas )
=* +
$str, H
;H I
const 
string 
numeros  
=! "
$str# /
;/ 0
const 
string  
caracteresEspeciales -
=. /
$str0 C
;C D
string 
contrase√±a 
= 
$" 
{ 
letrasMayusculas #
[# $

_aleatorio$ .
.. /
Next/ 3
(3 4
letrasMayusculas4 D
.D E
LengthE K
)K L
]L M
}M N
"N O
+P Q
$" 
{ 
letrasMinusculas #
[# $

_aleatorio$ .
.. /
Next/ 3
(3 4
letrasMinusculas4 D
.D E
LengthE K
)K L
]L M
}M N
"N O
+P Q
$" 
{ 
numeros 
[ 

_aleatorio %
.% &
Next& *
(* +
numeros+ 2
.2 3
Length3 9
)9 :
]: ;
}; <
"< =
+> ?
$" 
{  
caracteresEspeciales '
[' (

_aleatorio( 2
.2 3
Next3 7
(7 8 
caracteresEspeciales8 L
.L M
LengthM S
)S T
]T U
}U V
"V W
;W X
string 
todosLosCaracteres %
=& '
letrasMayusculas( 8
+9 :
letrasMinusculas; K
+L M
numerosN U
+V W 
caracteresEspecialesX l
;l m
int 
caracteresRestantes #
=$ %
longitud& .
-/ 0
contrase√±a1 ;
.; <
Length< B
;B C
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
contrase√±a 
+= 
todosLosCaracteres 0
[0 1

_aleatorio1 ;
.; <
Next< @
(@ A
todosLosCaracteresA S
.S T
LengthT Z
)Z [
][ \
;\ ]
} 
contrase√±a 
= 
new 
string #
(# $
contrase√±a$ .
.. /
ToCharArray/ :
(: ;
); <
.< =
OrderBy= D
(D E
sE F
=>G I

_aleatorioJ T
.T U
NextU Y
(Y Z
)Z [
)[ \
.\ ]
ToArray] d
(d e
)e f
)f g
;g h
return   
contrase√±a   
;   
}!! 	
}"" 
}## Ó	
IC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\GeneradorCodigo.cs
	namespace 	
Cliente
 
. 

Auxiliares 
{ 
public		 

class		 
GeneradorCodigo		  
{

 
public 
string  
GenerarCodigoPartida *
(* +
)+ ,
{ 	
Random 

_aleatorio 
= 
new  #
Random$ *
(* +
)+ ,
;, -
string 
codigoPartida  
=  !
string! '
.' (
Empty( -
;- .
for 
( 
int 
i 
= 
$num 
; 
i 
< 
$num  !
;! "
i# $
++$ &
)& '
{ 
codigoPartida 
+=  

_aleatorio! +
.+ ,
Next, 0
(0 1
$num1 2
,2 3
$num4 6
)6 7
.7 8
ToString8 @
(@ A
)A B
;B C
} 
return 
codigoPartida  
;  !
} 	
} 
} Â
EC:\Users\hizza\Desktop\JuegoPasswordCliente\Auxiliares\EnvioCorreo.cs
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
class 
EnvioCorreo 
{ 
public 
void 
EnviarCorreo  
(  !
string! '
destinatario( 4
,4 5
string6 <
asunto= C
,C D
stringE K
cuerpoL R
)R S
{ 	
try 
{ 
MailMessage 
mensaje #
=$ %
new& )
MailMessage* 5
(5 6
)6 7
;7 8
mensaje 
. 
From 
= 
new "
MailAddress# .
(. /
$str/ G
)G H
;H I
mensaje 
. 
To 
. 
Add 
( 
destinatario +
)+ ,
;, -
mensaje 
. 
Subject 
=  !
asunto" (
;( )
mensaje 
. 
Body 
= 
cuerpo %
;% &
mensaje 
. 

IsBodyHtml "
=# $
true% )
;) *

SmtpClient 
clienteSmtp &
=' (
new) ,

SmtpClient- 7
(7 8
$str8 H
,H I
$numJ M
)M N
;N O
clienteSmtp 
. 
Credentials '
=( )
new* -
NetworkCredential. ?
(? @
$str@ X
,X Y
$strZ o
)o p
;p q
clienteSmtp 
. 
	EnableSsl %
=& '
true( ,
;, -
clienteSmtp 
. 
Send  
(  !
mensaje! (
)( )
;) *
} 
catch 
( 
SmtpException  
)  !
{ 
MensajeVentana 
. (
MostrarVentanaEmergenteError ;
(; <

Properties< F
.F G
	ResourcesG P
.P Q#
MensajeErrorEnvioCorreoQ h
)h i
;i j
} 
}   	
}!! 
}"" 