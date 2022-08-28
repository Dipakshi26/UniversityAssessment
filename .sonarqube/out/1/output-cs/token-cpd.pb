∫=
jC:\Users\dell\source\repos\UniversityClassLibrary\UniversityApi\Controllers\UniversityDetailsController.cs
	namespace 	
UniversityApi
 
. 
Controllers #
{ 
[ 
Route 

(
 
$str &
)& '
]' (
[ 
ApiController 
] 
public 

class '
UniversityDetailsController ,
:- .
ControllerBase/ =
{ 
private 
readonly 
UniversityDbContext ,
_context- 5
;5 6
public '
UniversityDetailsController *
(* +
UniversityDbContext+ >
context? F
)F G
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
UniversityDetails3 D
>D E
>E F
>F G
GetUniversityH U
(U V
)V W
{ 	
if
 
( 
_context 
. 

University !
==" $
null% )
)) *
{
 
return 
NotFound 
( 
) 
;  
}
 
return   
await   
_context   !
.  ! "

University  " ,
.  , -
ToListAsync  - 8
(  8 9
)  9 :
;  : ;
}!! 	
[$$ 	
HttpGet$$	 
($$ 
$str$$ 
)$$ 
]$$ 
public%% 
async%% 
Task%% 
<%% 
ActionResult%% &
<%%& '
UniversityDetails%%' 8
>%%8 9
>%%9 : 
GetUniversityDetails%%; O
(%%O P
int%%P S
id%%T V
)%%V W
{&& 	
if''
 
('' 
_context'' 
.'' 

University'' !
==''" $
null''% )
)'') *
{((
 
return)) 
NotFound)) 
()) 
))) 
;))  
}**
 
var++ 
universityDetails++ !
=++" #
await++$ )
_context++* 2
.++2 3

University++3 =
.++= >
	FindAsync++> G
(++G H
id++H J
)++J K
;++K L
if-- 
(-- 
universityDetails-- !
==--" $
null--% )
)--) *
{.. 
return// 
NotFound// 
(//  
)//  !
;//! "
}00 
return22 
universityDetails22 $
;22$ %
}33 	
[77 	
HttpPut77	 
(77 
$str77 
)77 
]77 
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' ( 
PutUniversityDetails88) =
(88= >
int88> A
id88B D
,88D E
UniversityDetails88F W
universityDetails88X i
)88i j
{99 	
if:: 
(:: 
id:: 
!=:: 
universityDetails:: '
.::' (
UniversityId::( 4
)::4 5
{;; 
return<< 

BadRequest<< !
(<<! "
)<<" #
;<<# $
}== 
_context?? 
.?? 
Entry?? 
(?? 
universityDetails?? ,
)??, -
.??- .
State??. 3
=??4 5
EntityState??6 A
.??A B
Modified??B J
;??J K
tryAA 
{BB 
awaitCC 
_contextCC 
.CC 
SaveChangesAsyncCC /
(CC/ 0
)CC0 1
;CC1 2
}DD 
catchEE 
(EE (
DbUpdateConcurrencyExceptionEE /
)EE/ 0
{FF 
ifGG 
(GG 
!GG #
UniversityDetailsExistsGG ,
(GG, -
idGG- /
)GG/ 0
)GG0 1
{HH 
returnII 
NotFoundII #
(II# $
)II$ %
;II% &
}JJ 
elseKK 
{LL 
throwMM 
;MM 
}NN 
}OO 
returnQQ 
	NoContentQQ 
(QQ 
)QQ 
;QQ 
}RR 	
[VV 	
HttpPostVV	 
]VV 
publicWW 
asyncWW 
TaskWW 
<WW 
ActionResultWW &
<WW& '
UniversityDetailsWW' 8
>WW8 9
>WW9 :!
PostUniversityDetailsWW; P
(WWP Q
UniversityDetailsWWQ b
universityDetailsWWc t
)WWt u
{XX 	
ifYY
 
(YY 
_contextYY 
.YY 

UniversityYY !
==YY" $
nullYY% )
)YY) *
{ZZ
 
return[[ 
Problem[[ 
([[ 
$str[[ T
)[[T U
;[[U V
}\\
 
_context]] 
.]] 

University]] 
.]]  
Add]]  #
(]]# $
universityDetails]]$ 5
)]]5 6
;]]6 7
await^^ 
_context^^ 
.^^ 
SaveChangesAsync^^ +
(^^+ ,
)^^, -
;^^- .
return`` 
CreatedAtAction`` "
(``" #
$str``# 9
,``9 :
new``; >
{``? @
id``A C
=``D E
universityDetails``F W
.``W X
UniversityId``X d
}``e f
,``f g
universityDetails``h y
)``y z
;``z {
}aa 	
[dd 	

HttpDeletedd	 
(dd 
$strdd 
)dd 
]dd 
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' (#
DeleteUniversityDetailsee) @
(ee@ A
inteeA D
ideeE G
)eeG H
{ff 	
ifgg 
(gg 
_contextgg 
.gg 

Universitygg #
==gg$ &
nullgg' +
)gg+ ,
{hh 
returnii 
NotFoundii 
(ii  
)ii  !
;ii! "
}jj 
varkk 
universityDetailskk !
=kk" #
awaitkk$ )
_contextkk* 2
.kk2 3

Universitykk3 =
.kk= >
	FindAsynckk> G
(kkG H
idkkH J
)kkJ K
;kkK L
ifll 
(ll 
universityDetailsll !
==ll" $
nullll% )
)ll) *
{mm 
returnnn 
NotFoundnn 
(nn  
)nn  !
;nn! "
}oo 
_contextqq 
.qq 

Universityqq 
.qq  
Removeqq  &
(qq& '
universityDetailsqq' 8
)qq8 9
;qq9 :
awaitrr 
_contextrr 
.rr 
SaveChangesAsyncrr +
(rr+ ,
)rr, -
;rr- .
returntt 
	NoContenttt 
(tt 
)tt 
;tt 
}uu 	
privateww 
boolww #
UniversityDetailsExistsww ,
(ww, -
intww- 0
idww1 3
)ww3 4
{xx 	
returnyy 
(yy 
_contextyy 
.yy 

Universityyy '
?yy' (
.yy( )
Anyyy) ,
(yy, -
eyy- .
=>yy/ 1
eyy2 3
.yy3 4
UniversityIdyy4 @
==yyA C
idyyD F
)yyF G
)yyG H
.yyH I
GetValueOrDefaultyyI Z
(yyZ [
)yy[ \
;yy\ ]
}zz 	
}{{ 
}|| Ã
hC:\Users\dell\source\repos\UniversityClassLibrary\UniversityApi\Controllers\WeatherForecastController.cs
	namespace 	
UniversityApi
 
. 
Controllers #
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private		 
static		 
readonly		 
string		  &
[		& '
]		' (
	Summaries		) 2
=		3 4
new		5 8
[		8 9
]		9 :
{

 	
$str 
, 
$str 
, 
$str '
,' (
$str) /
,/ 0
$str1 7
,7 8
$str9 ?
,? @
$strA H
,H I
$strJ O
,O P
$strQ ]
,] ^
$str_ j
} 
; 
private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date 
= 
DateTime 
.  
Now  #
.# $
AddDays$ +
(+ ,
index, 1
)1 2
,2 3
TemperatureC 
= 
Random %
.% &
Shared& ,
., -
Next- 1
(1 2
-2 3
$num3 5
,5 6
$num7 9
)9 :
,: ;
Summary 
= 
	Summaries #
[# $
Random$ *
.* +
Shared+ 1
.1 2
Next2 6
(6 7
	Summaries7 @
.@ A
LengthA G
)G H
]H I
} 
) 
. 
ToArray 
( 
) 
; 
} 	
}   
}!! Å	
_C:\Users\dell\source\repos\UniversityClassLibrary\UniversityApi\Models\UniversityInformation.cs
	namespace 	
UniversityApi
 
. 
Models 
{ 
public 

class !
UniversityInformation &
{ 
public 
int 
UniversityId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
UniversityName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
? 
Location 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
AffiliatedUnder &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
int		 
EstablishedYear		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
}

 
} ∫
JC:\Users\dell\source\repos\UniversityClassLibrary\UniversityApi\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder		 
.		 
Services		 
.		 
AddDbContext		 
<		 
UniversityDbContext		 1
>		1 2
(		2 3
options		3 :
=>		; =
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
 
builder

  
.

  !
Configuration

! .
.

. /
GetConnectionString

/ B
(

B C
$str

C \
)

\ ]
??

^ `
throw 	
new
 %
InvalidOperationException '
(' (
$str( `
)` a
)a b
)b c
;c d
builder 
. 
Services 
. 
AddControllers 
(  
)  !
. 
AddJsonOptions 
( 
options 
=> 
options &
.& '!
JsonSerializerOptions' <
.< =
ReferenceHandler= M
=N O
ReferenceHandlerP `
.` a
IgnoreCyclesa m
)m n
;n o
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app   
.   
UseHttpsRedirection   
(   
)   
;   
app"" 
."" 
UseAuthorization"" 
("" 
)"" 
;"" 
app$$ 
.$$ 
MapControllers$$ 
($$ 
)$$ 
;$$ 
app&& 
.&& 
Run&& 
(&& 
)&& 	
;&&	 
Ë
RC:\Users\dell\source\repos\UniversityClassLibrary\UniversityApi\WeatherForecast.cs
	namespace 	
UniversityApi
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TemperatureC 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
int		 
TemperatureF		 
=>		  "
$num		# %
+		& '
(		( )
int		) ,
)		, -
(		- .
TemperatureC		. :
/		; <
$num		= C
)		C D
;		D E
public 
string 
? 
Summary 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 