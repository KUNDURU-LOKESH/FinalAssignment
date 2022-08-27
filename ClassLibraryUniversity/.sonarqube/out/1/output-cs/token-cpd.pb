�o
SD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Controllers\AccountController.cs
	namespace 	
UniversityWebApp
 
. 
Controllers &
{ 
public 

class 
AccountController "
:# $

Controller% /
{		 
Uri

 
baseuri

 
=

 
new

 
Uri

 
(

 
$str

 B
)

B C
;

C D

HttpClient 
client 
= 
new 

HttpClient  *
(* +
)+ ,
;, -
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
<  !
AccountController! 2
>2 3
_logger4 ;
;; <
public 
AccountController  
(  !
ILogger! (
<( )
AccountController) :
>: ;
logger< B
,B C 
IHttpContextAccessorD X
httpContextAccessorY l
)l m
{ 	
_logger 
= 
logger 
; 
_session 
= 
httpContextAccessor *
.* +
HttpContext+ 6
.6 7
Session7 >
;> ?
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Login "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
IActionResult 
Login "
(" #

LoginModel# -

loginModel. 8
)8 9
{   	
using!! 
(!! 
var!! 
client!! 
=!! 
new!!  #

HttpClient!!$ .
(!!. /
)!!/ 0
)!!0 1
{"" 
var## 
postData## 
=## 
client## %
.##% &
PostAsJsonAsync##& 5
(##5 6
baseuri##6 =
+##> ?
$str##@ H
,##H I

loginModel##J T
)##T U
;##U V
postData$$ 
.$$ 
Wait$$ 
($$ 
)$$ 
;$$  
var%% 
result%% 
=%% 
postData%% %
.%%% &
Result%%& ,
;%%, -
string&& 
data&& 
=&& 
result&& $
.&&$ %
Content&&% ,
.&&, -
ReadAsStringAsync&&- >
(&&> ?
)&&? @
.&&@ A
Result&&A G
;&&G H
if'' 
('' 
data'' 
=='' 
$str'' 0
)''0 1
{(( 
return)) 
RedirectToAction)) +
())+ ,
$str)), 4
,))4 5
$str))6 ?
)))? @
;))@ A
}** 
if++ 
(++ 
result++ 
.++ 
IsSuccessStatusCode++ .
)++. /
{,, 
var.. 
user.. 
=.. 
JsonConvert.. *
...* +
DeserializeObject..+ <
<..< =
RegisterModel..= J
>..J K
(..K L
data..L P
)..P Q
;..Q R
this// 
.// 
_session// !
.//! "
	SetString//" +
(//+ ,
$str//, 7
,//7 8
user//9 =
!=//> @
null//A E
?//F G
user//H L
.//L M
Email//M R
://S T
$str//U W
)//W X
;//X Y
if11 
(11 
user11 
!=11 
null11  $
&&11% '
user11( ,
.11, -
RoleId11- 3
==114 6
$num117 8
)118 9
{22 
return33 
RedirectToAction33 /
(33/ 0
$str330 ;
)33; <
;33< =
}44 
else55 
if55 
(55 
user55 !
.55! "
RoleId55" (
==55) +
$num55, -
)55- .
{66 
return77 
RedirectToAction77 /
(77/ 0
$str770 7
,777 8
$str779 E
)77E F
;77F G
}88 
}:: 

ModelState;; 
.;; 
AddModelError;; (
(;;( )
string;;) /
.;;/ 0
Empty;;0 5
,;;5 6
$str;;7 E
);;E F
;;;F G
return<< 
View<< 
(<< 
result<< "
)<<" #
;<<# $
}== 
}>> 	
[?? 	
HttpGet??	 
]?? 
public@@ 
IActionResult@@ 
Register@@ %
(@@% &
)@@& '
{AA 	
returnBB 
ViewBB 
(BB 
)BB 
;BB 
}CC 	
[DD 	
HttpPostDD	 
]DD 
publicEE 
IActionResultEE 
RegisterEE %
(EE% &
RegisterModelEE& 3
registerModelEE4 A
)EEA B
{FF 	
registerModelGG 
.GG 
StatusGG  
=GG! "
stringGG# )
.GG) *
EmptyGG* /
;GG/ 0
varHH 
baseurlHH 
=HH 
newHH 
UriHH !
(HH! "
$strHH" F
)HHF G
;HHG H
usingII 
(II 
varII 
clientII 
=II 
newII  #

HttpClientII$ .
(II. /
)II/ 0
)II0 1
{JJ 
varKK 
postDataKK 
=KK 
clientKK %
.KK% &
PostAsJsonAsyncKK& 5
(KK5 6
baseurlKK6 =
+KK> ?
$strKK@ M
,KKM N
registerModelKKO \
)KK\ ]
;KK] ^
postDataLL 
.LL 
WaitLL 
(LL 
)LL 
;LL  
varMM 
resultMM 
=MM 
postDataMM %
.MM% &
ResultMM& ,
;MM, -
stringNN 
dataNN 
=NN 
resultNN $
.NN$ %
ContentNN% ,
.NN, -
ReadAsStringAsyncNN- >
(NN> ?
)NN? @
.NN@ A
ResultNNA G
;NNG H
ifOO 
(OO 
resultOO 
.OO 
IsSuccessStatusCodeOO .
)OO. /
{PP 
returnSS 
RedirectToActionSS +
(SS+ ,
$strSS, 3
)SS3 4
;SS4 5
}TT 

ModelStateUU 
.UU 
AddModelErrorUU (
(UU( )
stringUU) /
.UU/ 0
EmptyUU0 5
,UU5 6
$strUU7 E
)UUE F
;UUF G
returnVV 
ViewVV 
(VV 
resultVV "
)VV" #
;VV# $
}WW 
}XX 	
[ZZ 	
HttpGetZZ	 
]ZZ 
public[[ 
IActionResult[[ 
	AdminPage[[ &
([[& '
)[[' (
{\\ 	
List]] 
<]] 
RegisterModel]] 
>]] 
users]]  %
=]]& '
new]]( +
List]], 0
<]]0 1
RegisterModel]]1 >
>]]> ?
(]]? @
)]]@ A
;]]A B
Uri^^ 
baseuri^^ 
=^^ 
new^^ 
Uri^^ !
(^^! "
$str^^" F
)^^F G
;^^G H

HttpClient__ 
client__ 
=__ 
new__  #

HttpClient__$ .
(__. /
)__/ 0
;__0 1
client`` 
.`` 
BaseAddress`` 
=``  
baseuri``! (
;``( )
HttpResponseMessageaa 
responseaa  (
=aa) *
clientaa+ 1
.aa1 2
GetAsyncaa2 :
(aa: ;
baseuriaa; B
+aaC D
$straaE K
)aaK L
.aaL M
ResultaaM S
;aaS T
ifbb 
(bb 
responsebb 
.bb 
IsSuccessStatusCodebb ,
)bb, -
{cc 
stringdd 
datadd 
=dd 
responsedd &
.dd& '
Contentdd' .
.dd. /
ReadAsStringAsyncdd/ @
(dd@ A
)ddA B
.ddB C
ResultddC I
;ddI J
usersee 
=ee 
JsonConvertee #
.ee# $
DeserializeObjectee$ 5
<ee5 6
Listee6 :
<ee: ;
RegisterModelee; H
>eeH I
>eeI J
(eeJ K
dataeeK O
)eeO P
;eeP Q
}ff 
returngg 
Viewgg 
(gg 
usersgg 
)gg 
;gg 
}hh 	
[ii 	
HttpPostii	 
]ii 
publicjj 
IActionResultjj 
Approvedjj %
(jj% &
RegisterModeljj& 3
registerModeljj4 A
)jjA B
{kk 	
varll 
baseurlll 
=ll 
newll 
Urill !
(ll! "
$strll" F
)llF G
;llG H
usingmm 
(mm 
varmm 
clientmm 
=mm 
newmm  #

HttpClientmm$ .
(mm. /
)mm/ 0
)mm0 1
{nn 
varoo 
postDataoo 
=oo 
clientoo %
.oo% &
PostAsJsonAsyncoo& 5
(oo5 6
baseurloo6 =
+oo> ?
$stroo@ M
,ooM N
registerModelooO \
)oo\ ]
;oo] ^
postDatapp 
.pp 
Waitpp 
(pp 
)pp 
;pp  
varqq 
resultqq 
=qq 
postDataqq %
.qq% &
Resultqq& ,
;qq, -
stringrr 
datarr 
=rr 
resultrr $
.rr$ %
Contentrr% ,
.rr, -
ReadAsStringAsyncrr- >
(rr> ?
)rr? @
.rr@ A
ResultrrA G
;rrG H
iftt 
(tt 
resulttt 
.tt 
IsSuccessStatusCodett .
)tt. /
{uu 
returnvv 
RedirectToActionvv +
(vv+ ,
$strvv, 3
)vv3 4
;vv4 5
}ww 

ModelStatexx 
.xx 
AddModelErrorxx (
(xx( )
stringxx) /
.xx/ 0
Emptyxx0 5
,xx5 6
$strxx7 E
)xxE F
;xxF G
returnyy 
Viewyy 
(yy 
resultyy "
)yy" #
;yy# $
}zz 
}{{ 	
[|| 	
HttpGet||	 
]|| 
public}} 
IActionResult}} 
EmailAvailable}} +
(}}+ ,
string}}, 2
email}}3 8
)}}8 9
{~~ 	
if 
( 
email 
== 
null 
) 
{
�� 
return
�� 
Json
�� 
(
�� 
$str
�� -
)
��- .
;
��. /
}
�� 
List
�� 
<
�� 
RegisterModel
�� 
>
�� 
users
��  %
=
��& '
new
��( +
List
��, 0
<
��0 1
RegisterModel
��1 >
>
��> ?
(
��? @
)
��@ A
;
��A B
Uri
�� 
baseuri
�� 
=
�� 
new
�� 
Uri
�� !
(
��! "
$str
��" F
)
��F G
;
��G H

HttpClient
�� 
client
�� 
=
�� 
new
��  #

HttpClient
��$ .
(
��. /
)
��/ 0
;
��0 1
client
�� 
.
�� 
BaseAddress
�� 
=
��  
baseuri
��! (
;
��( )!
HttpResponseMessage
�� 
response
��  (
=
��) *
client
��+ 1
.
��1 2
GetAsync
��2 :
(
��: ;
baseuri
��; B
+
��C D
$str
��E X
)
��X Y
.
��Y Z
Result
��Z `
;
��` a
if
�� 
(
�� 
response
�� 
.
�� !
IsSuccessStatusCode
�� ,
)
��, -
{
�� 
string
�� 
data
�� 
=
�� 
response
�� &
.
��& '
Content
��' .
.
��. /
ReadAsStringAsync
��/ @
(
��@ A
)
��A B
.
��B C
Result
��C I
;
��I J
users
�� 
=
�� 
JsonConvert
�� #
.
��# $
DeserializeObject
��$ 5
<
��5 6
List
��6 :
<
��: ;
RegisterModel
��; H
>
��H I
>
��I J
(
��J K
data
��K O
)
��O P
;
��P Q
if
�� 
(
�� 
users
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
	NoContent
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
foreach
�� 
(
�� 
var
�� 
user
�� !
in
��" $
users
��% *
)
��* +
{
�� 
if
�� 
(
�� 
StringComparer
�� &
.
��& '&
CurrentCultureIgnoreCase
��' ?
.
��? @
Equals
��@ F
(
��F G
user
��G K
.
��K L
Email
��L Q
,
��Q R
email
��S X
)
��X Y
)
��Y Z
{
�� 
return
�� 
Json
�� #
(
��# $
$str
��$ H
)
��H I
;
��I J
}
�� 
}
�� 
return
�� 
Json
�� 
(
�� 
$str
�� 
)
�� 
;
��  
}
�� 
return
�� 
View
�� 
(
�� 
users
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
IActionResult
�� 
status
�� #
(
��# $
)
��$ %
{
�� 	
return
�� 
View
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
PD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Controllers\HomeController.cs
	namespace 	
UniversityWebApp
 
. 
Controllers &
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   �i
VD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Controllers\UniversityController.cs
	namespace 	
UniversityWebApp
 
. 
Controllers &
{ 
public 

class  
UniversityController %
:& '

Controller( 2
{ 
Uri		 
baseuri		 
=		 
new		 
Uri		 
(		 
$str		 H
)		H I
;		I J

HttpClient

 
client

 
=

 
new

 

HttpClient

  *
(

* +
)

+ ,
;

, -
List 
< 
UniversityModel 
> 
universityModels .
=/ 0
new1 4
List5 9
<9 :
UniversityModel: I
>I J
(J K
)K L
;L M
public 
IActionResult 
Index "
(" #
)# $
{ 	
client 
. 
BaseAddress 
=  
baseuri! (
;( )
HttpResponseMessage 
response  (
=( )
client* 0
.0 1
GetAsync1 9
(9 :
baseuri: A
+A B
$strB H
)H I
.I J
ResultJ P
;P Q
if 
( 
response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
response $
.$ %
Content% ,
., -
ReadAsStringAsync- >
(> ?
)? @
.@ A
ResultA G
;G H
universityModels  
=! "
JsonConvert# .
.. /
DeserializeObject/ @
<@ A
ListA E
<E F
UniversityModelF U
>U V
>V W
(W X
dataX \
)\ ]
;] ^
universityModels  
=! "
universityModels# 3
.3 4
OrderBy4 ;
(; <
x< =
=>> @
xA B
.B C
EstablishedYearC R
)R S
.S T
ThenByT Z
(Z [
x[ \
=>] _
x` a
.a b
UniversityNameb p
)p q
.q r
ToListr x
(x y
)y z
;z {
} 
return 
View 
( 
universityModels (
)( )
;) *
} 	
public 
IActionResult 
Create #
(# $
)$ %
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Add  
(  !
UniversityModel! 0
universityModel1 @
)@ A
{ 	
using 
( 
var 
client 
= 
new  #

HttpClient$ .
(. /
)/ 0
)0 1
{   
var!! 
postData!! 
=!! 
client!! %
.!!% &
PostAsJsonAsync!!& 5
<!!5 6
UniversityModel!!6 E
>!!E F
(!!F G
baseuri!!G N
+!!O P
$str!!Q Z
,!!Z [
universityModel!!\ k
)!!k l
;!!l m
postData"" 
."" 
Wait"" 
("" 
)"" 
;""  
var## 
result## 
=## 
postData## %
.##% &
Result##& ,
;##, -
if$$ 
($$ 
result$$ 
.$$ 
IsSuccessStatusCode$$ .
)$$. /
{%% 
return&& 
RedirectToAction&& +
(&&+ ,
$str&&, 3
)&&3 4
;&&4 5
}'' 

ModelState(( 
.(( 
AddModelError(( (
(((( )
string(() /
.((/ 0
Empty((0 5
,((5 6
$str((7 E
)((E F
;((F G
return)) 
View)) 
()) 
result)) "
)))" #
;))# $
}** 
}++ 	
public,, 
IActionResult,, 
Edit,, !
(,,! "
int,," %
id,,& (
),,( )
{-- 	
client.. 
... 
BaseAddress.. 
=.. 
baseuri.. &
;..& '
HttpResponseMessage// 
response//  (
=//) *
client//+ 1
.//1 2
GetAsync//2 :
(//: ;
baseuri//; B
+//C D
$str//E K
)//K L
.//L M
Result//M S
;//S T
string00 
orginalData00 
=00  
response00! )
.00) *
Content00* 1
.001 2
ReadAsStringAsync002 C
(00C D
)00D E
.00E F
Result00F L
;00L M
universityModels11 
=11 
JsonConvert11 *
.11* +
DeserializeObject11+ <
<11< =
List11= A
<11A B
UniversityModel11B Q
>11Q R
>11R S
(11S T
orginalData11T _
)11_ `
;11` a
var22 
data22 
=22 
universityModels22 '
.22' (
Where22( -
(22- .
e22. /
=>22/ 1
e221 2
.222 3
Id223 5
==225 7
id227 9
)229 :
.22: ;
FirstOrDefault22; I
(22I J
)22J K
;22K L
return33 
View33 
(33 
data33 
)33 
;33 
}44 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Save55) -
(55- .
UniversityModel55. =
universityModel55> M
)55M N
{66 	
using77 
(77 
var77 
client77 
=77 
new77  #

HttpClient77$ .
(77. /
)77/ 0
)770 1
{88 
client99 
.99 
BaseAddress99 "
=99# $
baseuri99% ,
;99, -
var:: 
put:: 
=:: 
client::  
.::  !
PutAsJsonAsync::! /
<::/ 0
UniversityModel::0 ?
>::? @
(::@ A
baseuri::A H
+::H I
$"::I K
$str::K S
{::S T
universityModel::T c
.::c d
Id::d f
}::f g
"::g h
,::h i
universityModel::j y
)::y z
;::z {
put;; 
.;; 
Wait;; 
(;; 
);; 
;;; 
var<< 
result<< 
=<< 
put<<  
.<<  !
Result<<! '
;<<' (
if== 
(== 
result== 
.== 
IsSuccessStatusCode== .
)==. /
{>> 
return?? 
RedirectToAction?? +
(??+ ,
$str??, 3
)??3 4
;??4 5
}@@ 

ModelStateBB 
.BB 
AddModelErrorBB (
(BB( )
stringBB) /
.BB/ 0
EmptyBB0 5
,BB5 6
$strBB7 E
)BBE F
;BBF G
}CC 
returnDD 
ViewDD 
(DD 
universityModelDD '
)DD' (
;DD( )
}EE 	
publicGG 
IActionResultGG 
DetailsGG $
(GG$ %
intGG% (
idGG) +
)GG+ ,
{HH 	
clientII 
.II 
BaseAddressII 
=II  
baseuriII! (
;II( )
HttpResponseMessageJJ 
responseJJ  (
=JJ) *
clientJJ+ 1
.JJ1 2
GetAsyncJJ2 :
(JJ: ;
baseuriJJ; B
+JJC D
$strJJE K
)JJK L
.JJL M
ResultJJM S
;JJS T
stringKK 
orginalDataKK 
=KK  
responseKK! )
.KK) *
ContentKK* 1
.KK1 2
ReadAsStringAsyncKK2 C
(KKC D
)KKD E
.KKE F
ResultKKF L
;KKL M
universityModelsLL 
=LL 
JsonConvertLL *
.LL* +
DeserializeObjectLL+ <
<LL< =
ListLL= A
<LLA B
UniversityModelLLB Q
>LLQ R
>LLR S
(LLS T
orginalDataLLT _
)LL_ `
;LL` a
varMM 
dataMM 
=MM 
universityModelsMM '
.MM' (
WhereMM( -
(MM- .
eMM. /
=>MM0 2
eMM3 4
.MM4 5
IdMM5 7
==MM8 :
idMM; =
)MM= >
.MM> ?
FirstOrDefaultMM? M
(MMM N
)MMN O
;MMO P
returnNN 
ViewNN 
(NN 
dataNN 
)NN 
;NN 
}OO 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
DeletePP) /
(PP/ 0
intPP0 3
idPP4 6
)PP6 7
{QQ 	
usingRR 
(RR 
varRR 
clientRR 
=RR 
newRR  #

HttpClientRR$ .
(RR. /
)RR/ 0
)RR0 1
{SS 
clientTT 
.TT 
BaseAddressTT "
=TT# $
baseuriTT% ,
;TT, -
varUU 
deleteUU 
=UU 
clientUU #
.UU# $
DeleteAsyncUU$ /
(UU/ 0
baseuriUU0 7
+UU7 8
$"UU8 :
$strUU: B
{UUB C
idUUC E
}UUE F
"UUF G
)UUG H
;UUH I
deleteVV 
.VV 
WaitVV 
(VV 
)VV 
;VV 
varWW 
resultWW 
=WW 
deleteWW #
.WW# $
ResultWW$ *
;WW* +
ifXX 
(XX 
resultXX 
.XX 
IsSuccessStatusCodeXX .
)XX. /
{YY 
returnZZ 
RedirectToActionZZ +
(ZZ+ ,
$strZZ, 3
)ZZ3 4
;ZZ4 5
}[[ 
}\\ 

ModelState]] 
.]] 
AddModelError]] $
(]]$ %
string]]% +
.]]+ ,
Empty]], 1
,]]1 2
$str]]3 A
)]]A B
;]]B C
return^^ 
View^^ 
(^^ 
)^^ 
;^^ 
}__ 	
[`` 	
HttpGet``	 
]`` 
publicaa 
IActionResultaa 
UniversityAvailableaa 0
(aa0 1
stringaa1 7

universityaa8 B
)aaB C
{bb 	
ifcc 
(cc 

universitycc 
==cc 
nullcc "
)cc" #
{dd 
returnee 
Jsonee 
(ee 
$stree 2
)ee2 3
;ee3 4
}ff 
Listgg 
<gg 
UniversityModelgg  
>gg  !
universityModelsgg" 2
=gg3 4
newgg5 8
Listgg9 =
<gg= >
UniversityModelgg> M
>ggM N
(ggN O
)ggO P
;ggP Q
clienthh 
.hh 
BaseAddresshh 
=hh  
baseurihh! (
;hh( )
HttpResponseMessageii 
responseii  (
=ii) *
clientii+ 1
.ii1 2
GetAsyncii2 :
(ii: ;
baseuriii; B
+iiC D
$striiE K
)iiK L
.iiL M
ResultiiM S
;iiS T
ifjj 
(jj 
responsejj 
.jj 
IsSuccessStatusCodejj ,
)jj, -
{kk 
stringll 
datall 
=ll 
responsell &
.ll& '
Contentll' .
.ll. /
ReadAsStringAsyncll/ @
(ll@ A
)llA B
.llB C
ResultllC I
;llI J
universityModelsmm  
=mm! "
JsonConvertmm# .
.mm. /
DeserializeObjectmm/ @
<mm@ A
ListmmA E
<mmE F
UniversityModelmmF U
>mmU V
>mmV W
(mmW X
datammX \
)mm\ ]
;mm] ^
ifnn 
(nn 
universityModelsnn $
==nn% '
nullnn( ,
)nn, -
{oo 
returnpp 
	NoContentpp $
(pp$ %
)pp% &
;pp& '
}qq 
foreachrr 
(rr 
varrr 
userrr !
inrr" $
universityModelsrr% 5
)rr5 6
{ss 
iftt 
(tt 
StringComparertt &
.tt& '$
CurrentCultureIgnoreCasett' ?
.tt? @
Equalstt@ F
(ttF G
userttG K
.ttK L
UniversityNamettL Z
,ttZ [

universitytt\ f
)ttf g
)ttg h
{uu 
returnvv 
Jsonvv #
(vv# $
$strvv$ V
)vvV W
;vvW X
}ww 
}xx 
returnyy 
Jsonyy 
(yy 
$stryy 1
)yy1 2
;yy2 3
}zz 
return|| 
View|| 
(|| 
universityModels|| (
)||( )
;||) *
} 	
}
�� 
}�� �
SD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Controllers\UserMvcController.cs
	namespace 	
UniversityWebApp
 
. 
Controllers &
{ 
public 

class 
UserMvcController "
:# $

Controller% /
{ 
Uri 
baseuri 
= 
new 
Uri 
( 
$str B
)B C
;C D

HttpClient		 
client		 
=		 
new		 

HttpClient		  *
(		* +
)		+ ,
;		, -
private 
readonly 
ILogger  
<  !
AccountController! 2
>2 3
_logger4 ;
;; <
public 
UserMvcController  
(  !
ILogger! (
<( )
AccountController) :
>: ;
logger< B
)B C
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
client 
. 
BaseAddress 
=  
baseuri! (
;( )
HttpResponseMessage 
response  (
=) *
client+ 1
.1 2
GetAsync2 :
(: ;
baseuri; B
+C D
$strE K
)K L
.L M
ResultM S
;S T
if 
( 
response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
response &
.& '
Content' .
.. /
ReadAsStringAsync/ @
(@ A
)A B
.B C
ResultC I
;I J
var 
result 
= 
JsonConvert (
.( )
DeserializeObject) :
(: ;
data; ?
)? @
;@ A
} 
return 
View 
( 
$str 
)  
;  !
} 	
} 
}   �

OD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Data\ApplicationDbContext.cs
	namespace 	
UniversityWebApp
 
. 
Data 
{ 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
{ 
public		  
ApplicationDbContext		 #
(		# $
DbContextOptions		$ 4
<		4 5 
ApplicationDbContext		5 I
>		I J
options		K R
)		R S
:

 
base

 
(

 
options

 
)

 
{ 	
} 	
public 
DbSet 
< 
UniversityWebApp %
.% &
Models& ,
., -
UniversityModel- <
>< =
?= >
UniversityModel? N
{O P
getQ T
;T U
setV Y
;Y Z
}[ \
public 
DbSet 
< 
UniversityWebApp %
.% &
Models& ,
., -
RegisterModel- :
>: ;
?; <
RegisterModel= J
{K L
getM P
;P Q
setR U
;U V
}W X
} 
} ��
iD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Data\Migrations\00000000000000_CreateIdentitySchema.cs
	namespace 	
UniversityWebApp
 
. 
Data 
.  

Migrations  *
{ 
public 

partial 
class  
CreateIdentitySchema -
:. /
	Migration0 9
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email   
=   
table   !
.  ! "
Column  " (
<  ( )
string  ) /
>  / 0
(  0 1
	maxLength  1 :
:  : ;
$num  < ?
,  ? @
nullable  A I
:  I J
true  K O
)  O P
,  P Q
NormalizedEmail!! #
=!!$ %
table!!& +
.!!+ ,
Column!!, 2
<!!2 3
string!!3 9
>!!9 :
(!!: ;
	maxLength!!; D
:!!D E
$num!!F I
,!!I J
nullable!!K S
:!!S T
true!!U Y
)!!Y Z
,!!Z [
EmailConfirmed"" "
=""# $
table""% *
.""* +
Column""+ 1
<""1 2
bool""2 6
>""6 7
(""7 8
nullable""8 @
:""@ A
false""B G
)""G H
,""H I
PasswordHash##  
=##! "
table### (
.##( )
Column##) /
<##/ 0
string##0 6
>##6 7
(##7 8
nullable##8 @
:##@ A
true##B F
)##F G
,##G H
SecurityStamp$$ !
=$$" #
table$$$ )
.$$) *
Column$$* 0
<$$0 1
string$$1 7
>$$7 8
($$8 9
nullable$$9 A
:$$A B
true$$C G
)$$G H
,$$H I
ConcurrencyStamp%% $
=%%% &
table%%' ,
.%%, -
Column%%- 3
<%%3 4
string%%4 :
>%%: ;
(%%; <
nullable%%< D
:%%D E
true%%F J
)%%J K
,%%K L
PhoneNumber&& 
=&&  !
table&&" '
.&&' (
Column&&( .
<&&. /
string&&/ 5
>&&5 6
(&&6 7
nullable&&7 ?
:&&? @
true&&A E
)&&E F
,&&F G 
PhoneNumberConfirmed'' (
='') *
table''+ 0
.''0 1
Column''1 7
<''7 8
bool''8 <
>''< =
(''= >
nullable''> F
:''F G
false''H M
)''M N
,''N O
TwoFactorEnabled(( $
=((% &
table((' ,
.((, -
Column((- 3
<((3 4
bool((4 8
>((8 9
(((9 :
nullable((: B
:((B C
false((D I
)((I J
,((J K

LockoutEnd)) 
=))  
table))! &
.))& '
Column))' -
<))- .
DateTimeOffset)). <
>))< =
())= >
nullable))> F
:))F G
true))H L
)))L M
,))M N
LockoutEnabled** "
=**# $
table**% *
.*** +
Column**+ 1
<**1 2
bool**2 6
>**6 7
(**7 8
nullable**8 @
:**@ A
false**B G
)**G H
,**H I
AccessFailedCount++ %
=++& '
table++( -
.++- .
Column++. 4
<++4 5
int++5 8
>++8 9
(++9 :
nullable++: B
:++B C
false++D I
)++I J
},, 
,,, 
constraints-- 
:-- 
table-- "
=>--# %
{.. 
table// 
.// 

PrimaryKey// $
(//$ %
$str//% 5
,//5 6
x//7 8
=>//9 ;
x//< =
.//= >
Id//> @
)//@ A
;//A B
}00 
)00 
;00 
migrationBuilder22 
.22 
CreateTable22 (
(22( )
name33 
:33 
$str33 (
,33( )
columns44 
:44 
table44 
=>44 !
new44" %
{55 
Id66 
=66 
table66 
.66 
Column66 %
<66% &
int66& )
>66) *
(66* +
nullable66+ 3
:663 4
false665 :
)66: ;
.77 

Annotation77 #
(77# $
$str77$ G
,77G H,
 SqlServerValueGenerationStrategy77I i
.77i j
IdentityColumn77j x
)77x y
,77y z
RoleId88 
=88 
table88 "
.88" #
Column88# )
<88) *
string88* 0
>880 1
(881 2
nullable882 :
:88: ;
false88< A
)88A B
,88B C
	ClaimType99 
=99 
table99  %
.99% &
Column99& ,
<99, -
string99- 3
>993 4
(994 5
nullable995 =
:99= >
true99? C
)99C D
,99D E

ClaimValue:: 
=::  
table::! &
.::& '
Column::' -
<::- .
string::. 4
>::4 5
(::5 6
nullable::6 >
:::> ?
true::@ D
)::D E
};; 
,;; 
constraints<< 
:<< 
table<< "
=><<# %
{== 
table>> 
.>> 

PrimaryKey>> $
(>>$ %
$str>>% :
,>>: ;
x>>< =
=>>>> @
x>>A B
.>>B C
Id>>C E
)>>E F
;>>F G
table?? 
.?? 

ForeignKey?? $
(??$ %
name@@ 
:@@ 
$str@@ F
,@@F G
columnAA 
:AA 
xAA  !
=>AA" $
xAA% &
.AA& '
RoleIdAA' -
,AA- .
principalTableBB &
:BB& '
$strBB( 5
,BB5 6
principalColumnCC '
:CC' (
$strCC) -
,CC- .
onDeleteDD  
:DD  !
ReferentialActionDD" 3
.DD3 4
CascadeDD4 ;
)DD; <
;DD< =
}EE 
)EE 
;EE 
migrationBuilderGG 
.GG 
CreateTableGG (
(GG( )
nameHH 
:HH 
$strHH (
,HH( )
columnsII 
:II 
tableII 
=>II !
newII" %
{JJ 
IdKK 
=KK 
tableKK 
.KK 
ColumnKK %
<KK% &
intKK& )
>KK) *
(KK* +
nullableKK+ 3
:KK3 4
falseKK5 :
)KK: ;
.LL 

AnnotationLL #
(LL# $
$strLL$ G
,LLG H,
 SqlServerValueGenerationStrategyLLI i
.LLi j
IdentityColumnLLj x
)LLx y
,LLy z
UserIdMM 
=MM 
tableMM "
.MM" #
ColumnMM# )
<MM) *
stringMM* 0
>MM0 1
(MM1 2
nullableMM2 :
:MM: ;
falseMM< A
)MMA B
,MMB C
	ClaimTypeNN 
=NN 
tableNN  %
.NN% &
ColumnNN& ,
<NN, -
stringNN- 3
>NN3 4
(NN4 5
nullableNN5 =
:NN= >
trueNN? C
)NNC D
,NND E

ClaimValueOO 
=OO  
tableOO! &
.OO& '
ColumnOO' -
<OO- .
stringOO. 4
>OO4 5
(OO5 6
nullableOO6 >
:OO> ?
trueOO@ D
)OOD E
}PP 
,PP 
constraintsQQ 
:QQ 
tableQQ "
=>QQ# %
{RR 
tableSS 
.SS 

PrimaryKeySS $
(SS$ %
$strSS% :
,SS: ;
xSS< =
=>SS> @
xSSA B
.SSB C
IdSSC E
)SSE F
;SSF G
tableTT 
.TT 

ForeignKeyTT $
(TT$ %
nameUU 
:UU 
$strUU F
,UUF G
columnVV 
:VV 
xVV  !
=>VV" $
xVV% &
.VV& '
UserIdVV' -
,VV- .
principalTableWW &
:WW& '
$strWW( 5
,WW5 6
principalColumnXX '
:XX' (
$strXX) -
,XX- .
onDeleteYY  
:YY  !
ReferentialActionYY" 3
.YY3 4
CascadeYY4 ;
)YY; <
;YY< =
}ZZ 
)ZZ 
;ZZ 
migrationBuilder\\ 
.\\ 
CreateTable\\ (
(\\( )
name]] 
:]] 
$str]] (
,]]( )
columns^^ 
:^^ 
table^^ 
=>^^ !
new^^" %
{__ 
LoginProvider`` !
=``" #
table``$ )
.``) *
Column``* 0
<``0 1
string``1 7
>``7 8
(``8 9
	maxLength``9 B
:``B C
$num``D G
,``G H
nullable``I Q
:``Q R
false``S X
)``X Y
,``Y Z
ProviderKeyaa 
=aa  !
tableaa" '
.aa' (
Columnaa( .
<aa. /
stringaa/ 5
>aa5 6
(aa6 7
	maxLengthaa7 @
:aa@ A
$numaaB E
,aaE F
nullableaaG O
:aaO P
falseaaQ V
)aaV W
,aaW X
ProviderDisplayNamebb '
=bb( )
tablebb* /
.bb/ 0
Columnbb0 6
<bb6 7
stringbb7 =
>bb= >
(bb> ?
nullablebb? G
:bbG H
truebbI M
)bbM N
,bbN O
UserIdcc 
=cc 
tablecc "
.cc" #
Columncc# )
<cc) *
stringcc* 0
>cc0 1
(cc1 2
nullablecc2 :
:cc: ;
falsecc< A
)ccA B
}dd 
,dd 
constraintsee 
:ee 
tableee "
=>ee# %
{ff 
tablegg 
.gg 

PrimaryKeygg $
(gg$ %
$strgg% :
,gg: ;
xgg< =
=>gg> @
newggA D
{ggE F
xggG H
.ggH I
LoginProviderggI V
,ggV W
xggX Y
.ggY Z
ProviderKeyggZ e
}ggf g
)ggg h
;ggh i
tablehh 
.hh 

ForeignKeyhh $
(hh$ %
nameii 
:ii 
$strii F
,iiF G
columnjj 
:jj 
xjj  !
=>jj" $
xjj% &
.jj& '
UserIdjj' -
,jj- .
principalTablekk &
:kk& '
$strkk( 5
,kk5 6
principalColumnll '
:ll' (
$strll) -
,ll- .
onDeletemm  
:mm  !
ReferentialActionmm" 3
.mm3 4
Cascademm4 ;
)mm; <
;mm< =
}nn 
)nn 
;nn 
migrationBuilderpp 
.pp 
CreateTablepp (
(pp( )
nameqq 
:qq 
$strqq '
,qq' (
columnsrr 
:rr 
tablerr 
=>rr !
newrr" %
{ss 
UserIdtt 
=tt 
tablett "
.tt" #
Columntt# )
<tt) *
stringtt* 0
>tt0 1
(tt1 2
nullablett2 :
:tt: ;
falsett< A
)ttA B
,ttB C
RoleIduu 
=uu 
tableuu "
.uu" #
Columnuu# )
<uu) *
stringuu* 0
>uu0 1
(uu1 2
nullableuu2 :
:uu: ;
falseuu< A
)uuA B
}vv 
,vv 
constraintsww 
:ww 
tableww "
=>ww# %
{xx 
tableyy 
.yy 

PrimaryKeyyy $
(yy$ %
$stryy% 9
,yy9 :
xyy; <
=>yy= ?
newyy@ C
{yyD E
xyyF G
.yyG H
UserIdyyH N
,yyN O
xyyP Q
.yyQ R
RoleIdyyR X
}yyY Z
)yyZ [
;yy[ \
tablezz 
.zz 

ForeignKeyzz $
(zz$ %
name{{ 
:{{ 
$str{{ E
,{{E F
column|| 
:|| 
x||  !
=>||" $
x||% &
.||& '
RoleId||' -
,||- .
principalTable}} &
:}}& '
$str}}( 5
,}}5 6
principalColumn~~ '
:~~' (
$str~~) -
,~~- .
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C
LoginProvider
�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
	maxLength
��9 B
:
��B C
$num
��D G
,
��G H
nullable
��I Q
:
��Q R
false
��S X
)
��X Y
,
��Y Z
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
	maxLength
��0 9
:
��9 :
$num
��; >
,
��> ?
nullable
��@ H
:
��H I
false
��J O
)
��O P
,
��P Q
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
true
��; ?
)
��? @
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S
LoginProvider
��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �
HD:\WebApps\ClassLibraryUniversity\UniversityWebApp\MailSend\MailClass.cs
	namespace 	
UniversityWebApp
 
. 
MailSend #
{ 
public 

class 
	MailClass 
{ 
public 
void 
SendMailMethod "
(" #
string# )
recieverMail* 6
,6 7
string7 =
url> A
)A B
{		 	
MimeMessage

 
message

 
=

  !
new

" %
MimeMessage

& 1
(

1 2
)

2 3
;

3 4
message 
. 
From 
. 
Add 
( 
new  
MailboxAddress! /
(/ 0
$str0 I
,I J
$strK j
)j k
)k l
;l m
message 
. 
To 
. 
Add 
( 
MailboxAddress )
.) *
Parse* /
(/ 0
recieverMail0 <
)< =
)= >
;> ?
message 
. 
Subject 
= 
$str -
;- .
message 
. 
Body 
= 
new 
TextPart '
(' (
$str( .
). /
{ 
Text 
= 
$" 
$str !
{! "
recieverMail" .
}. /
$str/ h
{h i
urli l
}l m
$strm {
"{ |
,| }
} 
; 
string 
email 
= 
$str :
;: ;
string 
password 
= 
$str 0
;0 1

SmtpClient 

smtpClient !
=" #
new$ '

SmtpClient( 2
(2 3
)3 4
;4 5
try 
{ 

smtpClient 
. 
Connect "
(" #
$str# 3
,3 4
$num5 8
,8 9
true: >
)> ?
;? @

smtpClient 
. 
Authenticate '
(' (
email( -
,- .
password/ 7
)7 8
;8 9

smtpClient 
. 
Send 
(  
message  '
)' (
;( )
Console 
. 
	WriteLine !
(! "
$"" $
$str$ 2
{2 3
recieverMail3 ?
}? @
$str@ [
"[ \
)\ ]
;] ^
Console   
.   
	WriteLine   !
(  ! "
$"  " $
$str  $ f
{  f g
email  g l
}  l m
$str  m n
"  n o
)  o p
;  p q
}!! 
catch"" 
("" 
	Exception"" 
ex"" 
)""  
{## 
Console$$ 
.$$ 
	WriteLine$$ !
($$! "
ex$$" $
.$$$ %
Message$$% ,
)$$, -
;$$- .
}%% 
finally&& 
{'' 

smtpClient(( 
.(( 

Disconnect(( %
(((% &
true((& *
)((* +
;((+ ,

smtpClient)) 
.)) 
Dispose)) "
())" #
)))# $
;))$ %
}** 
}++ 	
},, 
}-- �
KD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Models\ErrorViewModel.cs
	namespace 	
UniversityWebApp
 
. 
Models !
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 �
GD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Models\LoginModel.cs
	namespace 	
UniversityWebApp
 
. 
Models !
{ 
public 

class 

LoginModel 
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public

 
string

 
Password

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} �
JD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Models\RegisterModel.cs
	namespace 	
UniversityWebApp
 
. 
Models !
{ 
public 

class 
RegisterModel 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
[		 	
	MaxLength			 
(		 
$num		 
,		 
ErrorMessage		 #
=		# $
$str		$ =
)		= >
]		> ?
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
[ 	
Required	 
] 
public 
string 
PanNo 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
, 
	MinLength !
(! "
$num" #
,# $
ErrorMessage% 1
=2 3
$str4 d
)d e
]e f
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
, 
	MinLength !
(! "
$num" #
,# $
ErrorMessage% 1
=2 3
$str4 d
)d e
]e f
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 

IsApproved 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
int 
RoleId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
LD:\WebApps\ClassLibraryUniversity\UniversityWebApp\Models\UniversityModel.cs
	namespace 	
UniversityWebApp
 
. 
Models !
{ 
public 

class 
UniversityModel  
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
	MaxLength	 
( 
$num 
) 
] 
public		 
string		 
UniversityName		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		2 3
String		3 9
.		9 :
Empty		: ?
;		? @
[

 	
	MaxLength

	 
(

 
$num

 
)

 
]

 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
String/ 5
.5 6
Empty6 ;
;; <
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
AffiliatedUnder %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
String6 <
.< =
Empty= B
;B C
public 
int 
EstablishedYear "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} � 
=D:\WebApps\ClassLibraryUniversity\UniversityWebApp\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA T
)T U
;U V
builder		 
.		 
Services		 
.		 
AddDbContext		 
<		  
ApplicationDbContext		 2
>		2 3
(		3 4
options		4 ;
=>		< >
options

 
.

 
UseSqlServer

 
(

 
connectionString

 )
)

) *
)

* +
;

+ ,
builder 
. 
Services 
. 3
'AddDatabaseDeveloperPageExceptionFilter 8
(8 9
)9 :
;: ;
builder 
. 
Services 
. 
AddDefaultIdentity #
<# $
IdentityUser$ 0
>0 1
(1 2
options2 9
=>: <
options= D
.D E
SignInE K
.K L#
RequireConfirmedAccountL c
=d e
falsef k
)k l
. $
AddEntityFrameworkStores 
<  
ApplicationDbContext 2
>2 3
(3 4
)4 5
;5 6
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. 

AddSession 
( 
options #
=>$ &
{ 
options 
. 
IdleTimeout 
= 
TimeSpan "
." #
FromMinutes# .
(. /
$num/ 1
)1 2
;2 3
options 
. 
Cookie 
. 
HttpOnly 
= 
true "
;" #
options 
. 
Cookie 
. 
IsEssential 
=  
true! %
;% &
} 
) 
; 
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. !
UseMigrationsEndPoint 
( 
) 
;  
} 
else 
{ 
app   
.   
UseExceptionHandler   
(   
$str   )
)  ) *
;  * +
app"" 
."" 
UseHsts"" 
("" 
)"" 
;"" 
}## 
app%% 
.%% 
UseHttpsRedirection%% 
(%% 
)%% 
;%% 
app&& 
.&& 
UseStaticFiles&& 
(&& 
)&& 
;&& 
app(( 
.(( 

UseRouting(( 
((( 
)(( 
;(( 
app** 
.** 
UseAuthentication** 
(** 
)** 
;** 
app++ 
.++ 
UseAuthorization++ 
(++ 
)++ 
;++ 
app,, 
.,, 

UseSession,, 
(,, 
),, 
;,, 
app-- 
.-- 
MapControllerRoute-- 
(-- 
name.. 
:.. 	
$str..
 
,.. 
pattern// 
:// 
$str// 8
)//8 9
;//9 :
app00 
.00 
MapRazorPages00 
(00 
)00 
;00 
app22 
.22 
Run22 
(22 
)22 	
;22	 
