�
eC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Data\AdminDbContext.cs
	namespace 	
UniversityMvc
 
. 
Areas 
. 
Identity &
.& '
Data' +
{ 
public 

class 
AdminDbContext 
:  !
	DbContext" +
{ 
public 
DbSet 
< 
Admin 
> 
AdminModels '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
AdminDbContext		 
(		 
)		 
{

 	
} 	
public 
AdminDbContext 
( 
DbContextOptions .
options/ 6
)6 7
:8 9
base: >
(> ?
options? F
)F G
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str	( �
)
� �
;
� �
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
builder= D
)D E
{ 	
builder 
. 
Entity 
< 
Admin  
>  !
(! "
entity" (
=>) +
entity, 2
.2 3
HasIndex3 ;
(; <
e< =
=>> @
eA B
.B C
EmailC H
)H I
.I J
IsUniqueJ R
(R S
)S T
)T U
;U V
builder 
. 
Entity 
< 
Admin  
>  !
(! "
)" #
.# $
Property$ ,
(, -
e- .
=>/ 1
e2 3
.3 4
PanNo4 9
)9 :
.: ;
HasColumnType; H
(H I
$strI R
)R S
.S T
HasMaxLengthT `
(` a
$numa c
)c d
;d e
builder 
. 
Entity 
< 
Admin  
>  !
(! "
)" #
.# $
Property$ ,
(, -
e- .
=>/ 1
e2 3
.3 4
RoleName4 <
)< =
.= >
HasColumnType> K
(K L
$strL U
)U V
.V W
HasMaxLengthW c
(c d
$numd f
)f g
;g h
} 	
} 
} �

kC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Data\UniversityMvcContext.cs
	namespace 	
UniversityMvc
 
. 
Data 
; 
public		 
class		  
UniversityMvcContext		 !
:		" #
IdentityDbContext		$ 5
<		5 6
UniversityMvcUser		6 G
>		G H
{

 
public 
 
UniversityMvcContext 
(  
DbContextOptions  0
<0 1 
UniversityMvcContext1 E
>E F
optionsG N
)N O
: 	
base
 
( 
options 
) 
{ 
} 
	protected 
override 
void 
OnModelCreating +
(+ ,
ModelBuilder, 8
builder9 @
)@ A
{ 
base 
. 
OnModelCreating 
( 
builder $
)$ %
;% &
} 
public 

DbSet 
< "
UniversityClassLibrary '
.' (
Entities( 0
.0 1
UniversityDetails1 B
>B C
?C D
universityDetailsE V
{W X
getY \
;\ ]
set^ a
;a b
}c d
} �
hC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Data\UniversityMvcUser.cs
	namespace 	
UniversityMvc
 
. 
Areas 
. 
Identity &
.& '
Data' +
;+ ,
public 
class 
UniversityMvcUser 
:  
IdentityUser! -
{ 
[ 
	MaxLength 
( 
$num 
) 
] 
public 

string 
? 
PanNo 
{ 
get 
; 
set  #
;# $
}% &
} �
sC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	
UniversityMvc
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 
AccessDeniedModel "
:# $
	PageModel% .
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} �:
lC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
UniversityMvc
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
UniversityMvcUser' 8
>8 9
_signInManager: H
;H I
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
UniversityMvcUser( 9
>9 :
signInManager; H
,H I
ILoggerJ Q
<Q R

LoginModelR \
>\ ]
logger^ d
)d e
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
IList++ 
<++  
AuthenticationScheme++ )
>++) *
ExternalLogins+++ 9
{++: ;
get++< ?
;++? @
set++A D
;++D E
}++F G
public11 
string11 
	ReturnUrl11 
{11  !
get11" %
;11% &
set11' *
;11* +
}11, -
[77 	
TempData77	 
]77 
public88 
string88 
ErrorMessage88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public>> 
class>> 

InputModel>> 
{?? 	
[DD 
RequiredDD 
]DD 
[EE 
EmailAddressEE 
]EE 
publicFF 
stringFF 
EmailFF 
{FF  !
getFF" %
;FF% &
setFF' *
;FF* +
}FF, -
[LL 
RequiredLL 
]LL 
[MM 
DataTypeMM 
(MM 
DataTypeMM 
.MM 
PasswordMM '
)MM' (
]MM( )
publicNN 
stringNN 
PasswordNN "
{NN# $
getNN% (
;NN( )
setNN* -
;NN- .
}NN/ 0
[TT 
DisplayTT 
(TT 
NameTT 
=TT 
$strTT *
)TT* +
]TT+ ,
publicUU 
boolUU 

RememberMeUU "
{UU# $
getUU% (
;UU( )
setUU* -
;UU- .
}UU/ 0
}VV 	
publicXX 
asyncXX 
TaskXX 

OnGetAsyncXX $
(XX$ %
stringXX% +
	returnUrlXX, 5
=XX6 7
nullXX8 <
)XX< =
{YY 	
ifZZ 
(ZZ 
!ZZ 
stringZZ 
.ZZ 
IsNullOrEmptyZZ %
(ZZ% &
ErrorMessageZZ& 2
)ZZ2 3
)ZZ3 4
{[[ 

ModelState\\ 
.\\ 
AddModelError\\ (
(\\( )
string\\) /
.\\/ 0
Empty\\0 5
,\\5 6
ErrorMessage\\7 C
)\\C D
;\\D E
}]] 
	returnUrl__ 
??=__ 
Url__ 
.__ 
Content__ %
(__% &
$str__& *
)__* +
;__+ ,
awaitbb 
HttpContextbb 
.bb 
SignOutAsyncbb *
(bb* +
IdentityConstantsbb+ <
.bb< =
ExternalSchemebb= K
)bbK L
;bbL M
ExternalLoginsdd 
=dd 
(dd 
awaitdd #
_signInManagerdd$ 2
.dd2 31
%GetExternalAuthenticationSchemesAsyncdd3 X
(ddX Y
)ddY Z
)ddZ [
.dd[ \
ToListdd\ b
(ddb c
)ddc d
;ddd e
	ReturnUrlff 
=ff 
	returnUrlff !
;ff! "
}gg 	
publicii 
asyncii 
Taskii 
<ii 
IActionResultii '
>ii' (
OnPostAsyncii) 4
(ii4 5
stringii5 ;
	returnUrlii< E
=iiF G
nulliiH L
)iiL M
{jj 	
	returnUrlkk 
??=kk 
Urlkk 
.kk 
Contentkk %
(kk% &
$strkk& *
)kk* +
;kk+ ,
ExternalLoginsmm 
=mm 
(mm 
awaitmm #
_signInManagermm$ 2
.mm2 31
%GetExternalAuthenticationSchemesAsyncmm3 X
(mmX Y
)mmY Z
)mmZ [
.mm[ \
ToListmm\ b
(mmb c
)mmc d
;mmd e
ifoo 
(oo 

ModelStateoo 
.oo 
IsValidoo "
)oo" #
{pp 
varss 
resultss 
=ss 
awaitss "
_signInManagerss# 1
.ss1 2
PasswordSignInAsyncss2 E
(ssE F
InputssF K
.ssK L
EmailssL Q
,ssQ R
InputssS X
.ssX Y
PasswordssY a
,ssa b
Inputssc h
.ssh i

RememberMessi s
,sss t
lockoutOnFailure	ssu �
:
ss� �
false
ss� �
)
ss� �
;
ss� �
iftt 
(tt 
resulttt 
.tt 
	Succeededtt $
)tt$ %
{uu 
_loggervv 
.vv 
LogInformationvv *
(vv* +
$strvv+ <
)vv< =
;vv= >
returnww 
LocalRedirectww (
(ww( )
	returnUrlww) 2
)ww2 3
;ww3 4
}xx 
ifyy 
(yy 
resultyy 
.yy 
RequiresTwoFactoryy ,
)yy, -
{zz 
return{{ 
RedirectToPage{{ )
({{) *
$str{{* :
,{{: ;
new{{< ?
{{{@ A
	ReturnUrl{{B K
={{L M
	returnUrl{{N W
,{{W X

RememberMe{{Y c
={{d e
Input{{f k
.{{k l

RememberMe{{l v
}{{w x
){{x y
;{{y z
}|| 
if}} 
(}} 
result}} 
.}} 
IsLockedOut}} &
)}}& '
{~~ 
_logger 
. 

LogWarning &
(& '
$str' A
)A B
;B C
return
�� 
RedirectToPage
�� )
(
��) *
$str
��* 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
$str
��; S
)
��S T
;
��T U
return
�� 
Page
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
return
�� 
Page
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
}�� �
mC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
UniversityMvc
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
UniversityMvcUser' 8
>8 9
_signInManager: H
;H I
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
UniversityMvcUser) :
>: ;
signInManager< I
,I J
ILoggerK R
<R S
LogoutModelS ^
>^ _
logger` f
)f g
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{   
return!! 
LocalRedirect!! $
(!!$ %
	returnUrl!!% .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ��
oC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	
UniversityMvc
 
. 
Areas 
. 
Identity &
.& '
Pages' ,
., -
Account- 4
{ 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
AdminDbContext '
_adminDbContext( 7
;7 8
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
private   
readonly   
SignInManager   &
<  & '
UniversityMvcUser  ' 8
>  8 9
_signInManager  : H
;  H I
private!! 
readonly!! 
UserManager!! $
<!!$ %
UniversityMvcUser!!% 6
>!!6 7
_userManager!!8 D
;!!D E
private"" 
readonly"" 

IUserStore"" #
<""# $
UniversityMvcUser""$ 5
>""5 6

_userStore""7 A
;""A B
private## 
readonly## 
IUserEmailStore## (
<##( )
UniversityMvcUser##) :
>##: ;
_emailStore##< G
;##G H
private$$ 
readonly$$ 
ILogger$$  
<$$  !
RegisterModel$$! .
>$$. /
_logger$$0 7
;$$7 8
private%% 
readonly%% 
IEmailSender%% %
_emailSender%%& 2
;%%2 3
public'' 
RegisterModel'' 
('' 
AdminDbContext(( 
adminDbContext(( )
,(() *
RoleManager)) 
<)) 
IdentityRole)) $
>))$ %
roleManager))& 1
,))1 2
UserManager** 
<** 
UniversityMvcUser** )
>**) *
userManager**+ 6
,**6 7

IUserStore++ 
<++ 
UniversityMvcUser++ (
>++( )
	userStore++* 3
,++3 4
SignInManager,, 
<,, 
UniversityMvcUser,, +
>,,+ ,
signInManager,,- :
,,,: ;
ILogger-- 
<-- 
RegisterModel-- !
>--! "
logger--# )
,--) *
IEmailSender.. 
emailSender.. $
)..$ %
{// 	
_roleManager00 
=00 
roleManager00 &
;00& '
_userManager11 
=11 
userManager11 &
;11& '

_userStore22 
=22 
	userStore22 "
;22" #
_emailStore33 
=33 
GetEmailStore33 '
(33' (
)33( )
;33) *
_signInManager44 
=44 
signInManager44 *
;44* +
_logger55 
=55 
logger55 
;55 
_emailSender66 
=66 
emailSender66 &
;66& '
_adminDbContext77 
=77 
adminDbContext77 ,
;77, -
}88 	
[>> 	
BindProperty>>	 
]>> 
public?? 

InputModel?? 
Input?? 
{??  !
get??" %
;??% &
set??' *
;??* +
}??, -
publicEE 
stringEE 
	ReturnUrlEE 
{EE  !
getEE" %
;EE% &
setEE' *
;EE* +
}EE, -
publicKK 
IListKK 
<KK  
AuthenticationSchemeKK )
>KK) *
ExternalLoginsKK+ 9
{KK: ;
getKK< ?
;KK? @
setKKA D
;KKD E
}KKF G
publicQQ 
classQQ 

InputModelQQ 
{RR 	
[SS 
	MaxLengthSS 
(SS 
$numSS 
)SS 
]SS 
publicTT 
stringTT 
?TT 
PanNoTT  
{TT! "
getTT# &
;TT& '
setTT( +
;TT+ ,
}TT- .
publicUU 
stringUU 
RoleNameUU "
{UU# $
getUU% (
;UU( )
setUU* -
;UU- .
}UU/ 0
[ZZ 
RequiredZZ 
]ZZ 
[[[ 
EmailAddress[[ 
][[ 
[\\ 
Display\\ 
(\\ 
Name\\ 
=\\ 
$str\\ #
)\\# $
]\\$ %
public]] 
string]] 
Email]] 
{]]  !
get]]" %
;]]% &
set]]' *
;]]* +
}]], -
[cc 
Requiredcc 
]cc 
[dd 
StringLengthdd 
(dd 
$numdd 
,dd 
ErrorMessagedd +
=dd, -
$strdd. l
,ddl m
MinimumLengthddn {
=dd| }
$numdd~ 
)	dd �
]
dd� �
[ee 
DataTypeee 
(ee 
DataTypeee 
.ee 
Passwordee '
)ee' (
]ee( )
[ff 
Displayff 
(ff 
Nameff 
=ff 
$strff &
)ff& '
]ff' (
publicgg 
stringgg 
Passwordgg "
{gg# $
getgg% (
;gg( )
setgg* -
;gg- .
}gg/ 0
[mm 
DataTypemm 
(mm 
DataTypemm 
.mm 
Passwordmm '
)mm' (
]mm( )
[nn 
Displaynn 
(nn 
Namenn 
=nn 
$strnn .
)nn. /
]nn/ 0
[oo 
Compareoo 
(oo 
$stroo 
,oo  
ErrorMessageoo! -
=oo. /
$stroo0 f
)oof g
]oog h
publicpp 
stringpp 
ConfirmPasswordpp )
{pp* +
getpp, /
;pp/ 0
setpp1 4
;pp4 5
}pp6 7
}qq 	
voidss 
	EmailSendss 
(ss 
stringss 
toss  
)ss  !
{tt 	
stringuu 
fromuu 
=uu 
$struu 6
;uu6 7
stringvv 
passwordvv 
=vv 
$strvv 0
;vv0 1
stringww 
subjectww 
=ww 
$strww 4
;ww4 5
stringxx 
bodyxx 
=xx 
$strxx &
+xx' (
toxx) +
+xx, -
$strxx. g
;xxg h
tryyy 
{zz 
MailMessage{{ 
message{{ #
={{$ %
new{{& )
MailMessage{{* 5
({{5 6
){{6 7
;{{7 8

SmtpClient|| 
smtp|| 
=||  !
new||" %

SmtpClient||& 0
(||0 1
)||1 2
;||2 3
message}} 
.}} 
From}} 
=}} 
new}} "
MailAddress}}# .
(}}. /
from}}/ 3
)}}3 4
;}}4 5
message~~ 
.~~ 
To~~ 
.~~ 
Add~~ 
(~~ 
new~~ "
MailAddress~~# .
(~~. /
to~~/ 1
)~~1 2
)~~2 3
;~~3 4
message 
. 
Subject 
=  !
subject" )
;) *
message
�� 
.
�� 

IsBodyHtml
�� "
=
��# $
true
��% )
;
��) *
message
�� 
.
�� 
Body
�� 
=
�� 
body
�� #
;
��# $
smtp
�� 
.
�� 
Port
�� 
=
�� 
$num
�� 
;
��  
smtp
�� 
.
�� 
Host
�� 
=
�� 
$str
�� ,
;
��, -
smtp
�� 
.
�� 
	EnableSsl
�� 
=
��  
true
��! %
;
��% &
smtp
�� 
.
�� #
UseDefaultCredentials
�� *
=
��+ ,
false
��- 2
;
��2 3
smtp
�� 
.
�� 
Credentials
��  
=
��! "
new
��# &
NetworkCredential
��' 8
(
��8 9
from
��9 =
,
��= >
password
��? G
)
��G H
;
��H I
smtp
�� 
.
�� 
DeliveryMethod
�� #
=
��$ % 
SmtpDeliveryMethod
��& 8
.
��8 9
Network
��9 @
;
��@ A
smtp
�� 
.
�� 
Send
�� 
(
�� 
message
�� !
)
��! "
;
��" #
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
$str
��" 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 

OnGetAsync
�� $
(
��$ %
string
��% +
	returnUrl
��, 5
=
��6 7
null
��8 <
)
��< =
{
�� 	
	ReturnUrl
�� 
=
�� 
	returnUrl
�� !
;
��! "
ExternalLogins
�� 
=
�� 
(
�� 
await
�� #
_signInManager
��$ 2
.
��2 33
%GetExternalAuthenticationSchemesAsync
��3 X
(
��X Y
)
��Y Z
)
��Z [
.
��[ \
ToList
��\ b
(
��b c
)
��c d
;
��d e
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IActionResult
�� '
>
��' (
OnPostAsync
��) 4
(
��4 5
string
��5 ;
	returnUrl
��< E
=
��F G
null
��H L
)
��L M
{
�� 	
var
�� 
role
�� 
=
�� 
Input
�� 
.
�� 
RoleName
�� %
;
��% &
	returnUrl
�� 
??=
�� 
Url
�� 
.
�� 
Content
�� %
(
��% &
$str
��& *
)
��* +
;
��+ ,
ExternalLogins
�� 
=
�� 
(
�� 
await
�� #
_signInManager
��$ 2
.
��2 33
%GetExternalAuthenticationSchemesAsync
��3 X
(
��X Y
)
��Y Z
)
��Z [
.
��[ \
ToList
��\ b
(
��b c
)
��c d
;
��d e
if
�� 
(
�� 

ModelState
�� 
.
�� 
IsValid
�� "
)
��" #
{
�� 
var
�� 
user
�� 
=
�� 

CreateUser
�� %
(
��% &
)
��& '
;
��' (
user
�� 
.
�� 
PanNo
�� 
=
�� 
Input
�� "
.
��" #
PanNo
��# (
;
��( )
try
�� 
{
�� 
var
�� 
data
�� 
=
�� 
new
�� "
Admin
��# (
(
��( )
)
��) *
{
��+ ,
Email
��- 2
=
��3 4
Input
��5 :
.
��: ;
Email
��; @
,
��@ A
PanNo
��B G
=
��H I
Input
��J O
.
��O P
PanNo
��P U
,
��U V
RoleName
��W _
=
��` a
$str
��b l
,
��l m
StatusIsApprove
��n }
=
��~ 
$str��� �
}��� �
;��� �
var
�� 
result1
�� 
=
��  !
await
��" '
_adminDbContext
��( 7
.
��7 8
AdminModels
��8 C
.
��C D
AddAsync
��D L
(
��L M
data
��M Q
)
��Q R
;
��R S
_adminDbContext
�� #
.
��# $
SaveChanges
��$ /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
TempData
�� 
[
�� 
$str
�� &
]
��& '
=
��( )
$str
��* -
;
��- .
}
�� 
await
�� 

_userStore
��  
.
��  !
SetUserNameAsync
��! 1
(
��1 2
user
��2 6
,
��6 7
Input
��8 =
.
��= >
Email
��> C
,
��C D
CancellationToken
��E V
.
��V W
None
��W [
)
��[ \
;
��\ ]
await
�� 
_emailStore
�� !
.
��! "
SetEmailAsync
��" /
(
��/ 0
user
��0 4
,
��4 5
Input
��6 ;
.
��; <
Email
��< A
,
��A B
CancellationToken
��C T
.
��T U
None
��U Y
)
��Y Z
;
��Z [
var
�� 
result
�� 
=
�� 
await
�� "
_userManager
��# /
.
��/ 0
CreateAsync
��0 ;
(
��; <
user
��< @
,
��@ A
Input
��B G
.
��G H
Password
��H P
)
��P Q
;
��Q R
if
�� 
(
�� 
result
�� 
.
�� 
	Succeeded
�� $
)
��$ %
{
�� 
_logger
�� 
.
�� 
LogInformation
�� *
(
��* +
$str
��+ V
)
��V W
;
��W X
	EmailSend
�� 
(
�� 
Input
�� #
.
��# $
Email
��$ )
)
��) *
;
��* +
await
�� 
_userManager
�� &
.
��& '
AddToRoleAsync
��' 5
(
��5 6
user
��6 :
,
��: ;
role
��< @
.
��@ A
ToString
��A I
(
��I J
)
��J K
)
��K L
;
��L M
var
�� 
userId
�� 
=
��  
await
��! &
_userManager
��' 3
.
��3 4
GetUserIdAsync
��4 B
(
��B C
user
��C G
)
��G H
;
��H I
if
�� 
(
�� 
_userManager
�� $
.
��$ %
Options
��% ,
.
��, -
SignIn
��- 3
.
��3 4%
RequireConfirmedAccount
��4 K
)
��K L
{
�� 
return
�� 
RedirectToPage
�� -
(
��- .
$str
��. D
,
��D E
new
��F I
{
��J K
email
��L Q
=
��R S
Input
��T Y
.
��Y Z
Email
��Z _
,
��_ `
	returnUrl
��a j
=
��k l
	returnUrl
��m v
}
��w x
)
��x y
;
��y z
}
�� 
else
�� 
{
�� 
await
�� 
_signInManager
�� ,
.
��, -
SignInAsync
��- 8
(
��8 9
user
��9 =
,
��= >
isPersistent
��? K
:
��K L
false
��M R
)
��R S
;
��S T
return
�� 
LocalRedirect
�� ,
(
��, -
	returnUrl
��- 6
)
��6 7
;
��7 8
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
error
�� "
in
��# %
result
��& ,
.
��, -
Errors
��- 3
)
��3 4
{
�� 

ModelState
�� 
.
�� 
AddModelError
�� ,
(
��, -
string
��- 3
.
��3 4
Empty
��4 9
,
��9 :
error
��; @
.
��@ A
Description
��A L
)
��L M
;
��M N
}
�� 
}
�� 
return
�� 
Page
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
UniversityMvcUser
�� !

CreateUser
��" ,
(
��, -
)
��- .
{
�� 	
try
�� 
{
�� 
return
�� 
	Activator
��  
.
��  !
CreateInstance
��! /
<
��/ 0
UniversityMvcUser
��0 A
>
��A B
(
��B C
)
��C D
;
��D E
}
�� 
catch
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
��4 6
$str
��6 S
{
��S T
nameof
��T Z
(
��Z [
UniversityMvcUser
��[ l
)
��l m
}
��m n
$str
��n q
"
��q r
+
��s t
$"
�� 
$str
�� #
{
��# $
nameof
��$ *
(
��* +
UniversityMvcUser
��+ <
)
��< =
}
��= >
$str��> �
"��� �
+��� �
$"
�� 
$str
�� a
"
��a b
)
��b c
;
��c d
}
�� 
}
�� 	
private
�� 
IUserEmailStore
�� 
<
��  
UniversityMvcUser
��  1
>
��1 2
GetEmailStore
��3 @
(
��@ A
)
��A B
{
�� 	
if
�� 
(
�� 
!
�� 
_userManager
�� 
.
�� 
SupportsUserEmail
�� /
)
��/ 0
{
�� 
throw
�� 
new
�� #
NotSupportedException
�� /
(
��/ 0
$str
��0 j
)
��j k
;
��k l
}
�� 
return
�� 
(
�� 
IUserEmailStore
�� #
<
��# $
UniversityMvcUser
��$ 5
>
��5 6
)
��6 7

_userStore
��7 A
;
��A B
}
�� 	
}
�� 
}�� �
^C:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Controllers\AdminController.cs
	namespace 	
UniversityMvc
 
. 
Controllers #
{ 
public 

class 
AdminController  
:! "

Controller# -
{		 
private

 
readonly

 
AdminDbContext

 '
_adminDbContext

( 7
;

7 8
public 
AdminController 
( 
AdminDbContext -
adminDbContext. <
)< =
{ 	
_adminDbContext 
= 
adminDbContext ,
;, -
} 	
public 
IActionResult 
Approve $
($ %
Admin% *
adminModels+ 6
)6 7
{ 	
adminModels 
. 
StatusIsApprove '
=( )
$str* 4
;4 5
_adminDbContext 
. 
AdminModels '
.' (
Update( .
(. /
adminModels/ :
): ;
;; <
_adminDbContext 
. 
SaveChanges '
(' (
)( )
;) *
return 
View 
( 
$str 
,  
adminModels! ,
), -
;- .
} 	
public 
IActionResult 
Reject #
(# $
Admin$ )
adminModels* 5
)5 6
{ 	
adminModels 
. 
StatusIsApprove '
=( )
$str* 4
;4 5
_adminDbContext 
. 
AdminModels '
.' (
Update( .
(. /
adminModels/ :
): ;
;; <
_adminDbContext 
. 
SaveChanges '
(' (
)( )
;) *
return 
View 
( 
$str 
,  
adminModels! ,
), -
;- .
} 	
[ 	
	Authorize	 
( 
Policy 
= 
$str '
)' (
]( )
public   
IActionResult   
Index   "
(  " #
)  # $
{!! 	
if"" 
("" 
_adminDbContext"" 
.""  
AdminModels""  +
=="", .
null""/ 3
)""3 4
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
List&& 
<&& 
Admin&& 
>&& 
adminModels&& #
=&&$ %
new&&& )
List&&* .
<&&. /
Admin&&/ 4
>&&4 5
(&&5 6
)&&6 7
;&&7 8
adminModels'' 
='' 
_adminDbContext'' )
.'') *
AdminModels''* 5
.''5 6
Where''6 ;
(''; <
x''< =
=>''> @
x''A B
.''B C
StatusIsApprove''C R
==''S U
$str''V _
)''_ `
.''` a
ToList''a g
(''g h
)''h i
;''i j
if(( 
((( 
adminModels(( 
==(( 
null(( #
)((# $
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return,, 
View,, 
(,, 
adminModels,, #
),,# $
;,,$ %
}.. 	
}00 
}11 �
]C:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Controllers\HomeController.cs
	namespace 	
UniversityMvc
 
. 
Controllers #
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
}   �
]C:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Controllers\RoleController.cs
	namespace 	
UniversityMvc
 
. 
Controllers #
{ 
public 

class 
RoleController 
:  !

Controller" ,
{ 
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
public

 
RoleController

 
(

 
RoleManager

 )
<

) *
IdentityRole

* 6
>

6 7
roleManager

8 C
)

C D
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
roles 
= 
_roleManager $
.$ %
Roles% *
.* +
ToList+ 1
(1 2
)2 3
;3 4
return 
View 
( 
roles 
) 
; 
} 	
public 
IActionResult 

CreateRole '
(' (
)( )
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
>& '
Create( .
(. /
IdentityRole/ ;
role< @
)@ A
{ 	
await 
_roleManager 
. 
CreateAsync *
(* +
role+ /
)/ 0
;0 1
return 
RedirectToAction #
(# $
$str$ +
)+ ,
;, -
} 	
} 
} �Q
cC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Controllers\UniversityController.cs
	namespace 	
UniversityMvc
 
. 
Controllers #
{		 
public

 

class

  
UniversityController

 %
:

& '

Controller

( 2
{ 
public 
readonly 
IWebHostEnvironment +
_webHostEnvironment, ?
;? @
Uri 
baseAddress 
= 
new 
Uri !
(! "
$str" >
)> ?
;? @

HttpClient 
client 
; 
private 
readonly 
IMapper  
_mapper! (
;( )
public  
UniversityController #
(# $
IWebHostEnvironment$ 7
webHostEnvironment8 J
,J K
IMapperK R
mapperS Y
)Y Z
{ 	
client 
= 
new 

HttpClient #
(# $
)$ %
;% &
_webHostEnvironment 
=  !
webHostEnvironment" 4
;4 5
client 
. 
BaseAddress 
=  
baseAddress! ,
;, -
_mapper 
= 
mapper 
; 
} 	
[ 	
	Authorize	 
( 
Policy 
= 
$str %
)% &
]& '
public 
IActionResult 
Index "
(" #
)# $
{ 	
HttpResponseMessage 
response  (
=) *
client+ 1
.1 2
GetAsync2 :
(: ;
baseAddress; F
+G H
$strI k
)k l
.l m
Resultm s
;s t
if   
(   
response   
.   
IsSuccessStatusCode   ,
)  , -
{!! 
string"" 
data"" 
="" 
response"" &
.""& '
Content""' .
."". /
ReadAsStringAsync""/ @
(""@ A
)""A B
.""B C
Result""C I
;""I J
var## 
uni## 
=## 
JsonConvert## %
.##% &
DeserializeObject##& 7
<##7 8
List##8 <
<##< =
UniversityDetails##= N
>##N O
>##O P
(##P Q
data##Q U
)##U V
;##V W
var$$ 
uniList$$ 
=$$ 
_mapper$$ %
.$$% &
Map$$& )
<$$) *
List$$* .
<$$. /
UniversityViewModel$$/ B
>$$B C
>$$C D
($$D E
uni$$E H
)$$H I
;$$I J
return&& 
View&& 
(&& 
$str&& #
,&&# $
uniList&&% ,
)&&, -
;&&- .
}'' 
else(( 
{)) 
return** 
View** 
(** 
)** 
;** 
}++ 
}-- 	
public.. 
IActionResult.. 
AddNewUniversity.. -
(..- .
)... /
{// 	
return00 
View00 
(00 
)00 
;00 
}11 	
[22 	
HttpPost22	 
]22 
[33 	$
ValidateAntiForgeryToken33	 !
]33! "
public44 
IActionResult44 
AddNewUniversity44 -
(44- .
UniversityViewModel44. A

university44B L
)44L M
{55 	
try66 
{77 
HttpRequestMessage88 "
request88# *
=88+ ,
new88- 0
HttpRequestMessage881 C
(88C D
)88D E
;88E F
var99 
data99 
=99 
JsonConvert99 &
.99& '
SerializeObject99' 6
(996 7

university997 A
)99A B
;99B C
var:: 
contentData:: 
=::  !
new::" %
StringContent::& 3
(::3 4
data::4 8
,::8 9
System::: @
.::@ A
Text::A E
.::E F
Encoding::F N
.::N O
UTF8::O S
,::S T
$str::U g
)::g h
;::h i
HttpResponseMessage;; #
response;;$ ,
=;;- .
client;;/ 5
.;;5 6
	PostAsync;;6 ?
(;;? @
baseAddress;;@ K
+;;L M
$str;;N x
,;;x y
contentData	;;z �
)
;;� �
.
;;� �
Result
;;� �
;
;;� �
return<< 
RedirectToAction<< '
(<<' (
nameof<<( .
(<<. /
Index<</ 4
)<<4 5
)<<5 6
;<<6 7
}== 
catch>> 
{?? 
return@@ 
Content@@ 
(@@ 
$str@@ %
)@@% &
;@@& '
}AA 
}BB 	
publicDD 
ActionResultDD #
DeleteUniversityDeatilsDD 3
(DD3 4
intDD4 7
idDD8 :
)DD: ;
{EE 	
ListHH 
<HH 
UniversityViewModelHH $
>HH$ %

universityHH& 0
=HH1 2
newHH3 6
ListHH7 ;
<HH; <
UniversityViewModelHH< O
>HHO P
(HHP Q
)HHQ R
;HHR S
varII 

deleteTaskII 
=II 
clientII #
.II# $
DeleteAsyncII$ /
(II/ 0
baseAddressII0 ;
+II< =
$strII> k
+IIl m
idIIn p
)IIp q
;IIq r

deleteTaskJJ 
.JJ 
WaitJJ 
(JJ 
)JJ 
;JJ 
varLL 
resultLL 
=LL 

deleteTaskLL #
.LL# $
ResultLL$ *
;LL* +
ifMM 
(MM 
resultMM 
.MM 
IsSuccessStatusCodeMM *
)MM* +
{NN 
returnOO 
RedirectToActionOO '
(OO' (
$strOO( /
)OO/ 0
;OO0 1
}PP 
returnQQ 
ViewQQ 
(QQ 
$strQQ 
,QQ  

universityQQ  *
)QQ* +
;QQ+ ,
}RR 	
publicTT 
ActionResultTT 
UpdateUniversity1TT -
(TT- .
intTT. 1
idTT2 4
)TT4 5
{UU 	
UniversityViewModelVV 
?VV  

universityVV! +
=VV, -
newVV. 1
(VV1 2
)VV2 3
;VV3 4
HttpResponseMessageXX 
responseMessageXX  /
=XX0 1
clientXX2 8
.XX8 9
GetAsyncXX9 A
(XXA B
baseAddressXXB M
+XXN O
$strXXP z
+XX{ |
idXX} 
.	XX �
ToString
XX� �
(
XX� �
)
XX� �
)
XX� �
.
XX� �
Result
XX� �
;
XX� �
ifYY 
(YY 
responseMessageYY 
.YY  
IsSuccessStatusCodeYY  3
)YY3 4
{ZZ 
string[[ 
data[[ 
=[[ 
responseMessage[[ -
.[[- .
Content[[. 5
.[[5 6
ReadAsStringAsync[[6 G
([[G H
)[[H I
.[[I J
Result[[J P
;[[P Q

university\\ 
=\\ 
JsonConvert\\ (
.\\( )
DeserializeObject\\) :
<\\: ;
UniversityViewModel\\; N
>\\N O
(\\O P
data\\P T
)\\T U
;\\U V
}]] 
return^^ 
View^^ 
(^^ 

university^^ "
)^^" #
;^^# $
}__ 	
[`` 	
HttpPost``	 
]`` 
[aa 	$
ValidateAntiForgeryTokenaa	 !
]aa! "
publicbb 
ActionResultbb 
UpdateUniversitybb ,
(bb, -
UniversityViewModelbb- @

universitybbA K
)bbK L
{cc 	
varee 
putTaskee 
=ee 
clientee  
.ee  !
PutAsJsonAsyncee! /
<ee/ 0
UniversityViewModelee0 C
>eeC D
(eeD E
baseAddresseeE P
+eeQ R
$streeS }
+ee~ 

university
ee� �
.
ee� �
UniversityId
ee� �
.
ee� �
ToString
ee� �
(
ee� �
)
ee� �
,
ee� �

university
ee� �
)
ee� �
;
ee� �
putTaskff 
.ff 
Waitff 
(ff 
)ff 
;ff 
varhh 
resulthh 
=hh 
putTaskhh  
.hh  !
Resulthh! '
;hh' (
ifii 
(ii 
resultii 
.ii 
IsSuccessStatusCodeii *
)ii* +
{jj 
returnkk 
RedirectToActionkk '
(kk' (
$strkk( /
)kk/ 0
;kk0 1
}ll 
returnmm 
Viewmm 
(mm 

universitymm "
)mm" #
;mm# $
}nn 	
[rr 	
HttpGetrr	 
]rr 
publicss 
ActionResultss 
Detailsss #
(ss# $
intss$ '
idss( *
)ss* +
{tt 	
HttpResponseMessagevv 
responsevv  (
=vv) *
clientvv+ 1
.vv1 2
GetAsyncvv2 :
(vv: ;
baseAddressvv; F
+vvG H
$strvvI |
+vv} ~
id	vv �
)
vv� �
.
vv� �
Result
vv� �
;
vv� �
stringww 
dataww 
=ww 
responseww "
.ww" #
Contentww# *
.ww* +
ReadAsStringAsyncww+ <
(ww< =
)ww= >
.ww> ?
Resultww? E
;wwE F
UniversityViewModelxx 

universityxx  *
=xx+ ,
JsonConvertxx- 8
.xx8 9
DeserializeObjectxx9 J
<xxJ K
UniversityViewModelxxK ^
>xx^ _
(xx_ `
dataxx` d
)xxd e
!xxe f
;xxf g
returnyy 
Viewyy 
(yy 
$stryy !
,yy! "

universityyy" ,
)yy, -
;yy- .
}|| 	
} 
}�� �
SC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Mapper\ApiMapper.cs
	namespace 	
UniversityMvc
 
. 
Mapper 
{ 
public 

class 
	ApiMapper 
: 
Profile #
{ 
public		 
	ApiMapper		 
(		 
)		 
{

 	
	CreateMap 
< 
UniversityDetails '
,' (
UniversityViewModel) <
>< =
(= >
)> ?
.? @

ReverseMap@ J
(J K
)K L
;L M
} 	
} 
} ��
dC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Migrations\20220825161528_initial.cs
	namespace 	
UniversityMvc
 
. 

Migrations "
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
PanNo 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 E
,E F
	maxLengthG P
:P Q
$numR T
,T U
nullableV ^
:^ _
true` d
)d e
,e f
UserName   
=   
table   $
.  $ %
Column  % +
<  + ,
string  , 2
>  2 3
(  3 4
type  4 8
:  8 9
$str  : I
,  I J
	maxLength  K T
:  T U
$num  V Y
,  Y Z
nullable  [ c
:  c d
true  e i
)  i j
,  j k
NormalizedUserName!! &
=!!' (
table!!) .
.!!. /
Column!!/ 5
<!!5 6
string!!6 <
>!!< =
(!!= >
type!!> B
:!!B C
$str!!D S
,!!S T
	maxLength!!U ^
:!!^ _
$num!!` c
,!!c d
nullable!!e m
:!!m n
true!!o s
)!!s t
,!!t u
Email"" 
="" 
table"" !
.""! "
Column""" (
<""( )
string"") /
>""/ 0
(""0 1
type""1 5
:""5 6
$str""7 F
,""F G
	maxLength""H Q
:""Q R
$num""S V
,""V W
nullable""X `
:""` a
true""b f
)""f g
,""g h
NormalizedEmail## #
=##$ %
table##& +
.##+ ,
Column##, 2
<##2 3
string##3 9
>##9 :
(##: ;
type##; ?
:##? @
$str##A P
,##P Q
	maxLength##R [
:##[ \
$num##] `
,##` a
nullable##b j
:##j k
true##l p
)##p q
,##q r
EmailConfirmed$$ "
=$$# $
table$$% *
.$$* +
Column$$+ 1
<$$1 2
bool$$2 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> C
,$$C D
nullable$$E M
:$$M N
false$$O T
)$$T U
,$$U V
PasswordHash%%  
=%%! "
table%%# (
.%%( )
Column%%) /
<%%/ 0
string%%0 6
>%%6 7
(%%7 8
type%%8 <
:%%< =
$str%%> M
,%%M N
nullable%%O W
:%%W X
true%%Y ]
)%%] ^
,%%^ _
SecurityStamp&& !
=&&" #
table&&$ )
.&&) *
Column&&* 0
<&&0 1
string&&1 7
>&&7 8
(&&8 9
type&&9 =
:&&= >
$str&&? N
,&&N O
nullable&&P X
:&&X Y
true&&Z ^
)&&^ _
,&&_ `
ConcurrencyStamp'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
string''4 :
>'': ;
(''; <
type''< @
:''@ A
$str''B Q
,''Q R
nullable''S [
:''[ \
true''] a
)''a b
,''b c
PhoneNumber(( 
=((  !
table((" '
.((' (
Column((( .
<((. /
string((/ 5
>((5 6
(((6 7
type((7 ;
:((; <
$str((= L
,((L M
nullable((N V
:((V W
true((X \
)((\ ]
,((] ^ 
PhoneNumberConfirmed)) (
=))) *
table))+ 0
.))0 1
Column))1 7
<))7 8
bool))8 <
>))< =
())= >
type))> B
:))B C
$str))D I
,))I J
nullable))K S
:))S T
false))U Z
)))Z [
,))[ \
TwoFactorEnabled** $
=**% &
table**' ,
.**, -
Column**- 3
<**3 4
bool**4 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ E
,**E F
nullable**G O
:**O P
false**Q V
)**V W
,**W X

LockoutEnd++ 
=++  
table++! &
.++& '
Column++' -
<++- .
DateTimeOffset++. <
>++< =
(++= >
type++> B
:++B C
$str++D T
,++T U
nullable++V ^
:++^ _
true++` d
)++d e
,++e f
LockoutEnabled,, "
=,,# $
table,,% *
.,,* +
Column,,+ 1
<,,1 2
bool,,2 6
>,,6 7
(,,7 8
type,,8 <
:,,< =
$str,,> C
,,,C D
nullable,,E M
:,,M N
false,,O T
),,T U
,,,U V
AccessFailedCount-- %
=--& '
table--( -
.--- .
Column--. 4
<--4 5
int--5 8
>--8 9
(--9 :
type--: >
:--> ?
$str--@ E
,--E F
nullable--G O
:--O P
false--Q V
)--V W
}.. 
,.. 
constraints// 
:// 
table// "
=>//# %
{00 
table11 
.11 

PrimaryKey11 $
(11$ %
$str11% 5
,115 6
x117 8
=>119 ;
x11< =
.11= >
Id11> @
)11@ A
;11A B
}22 
)22 
;22 
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55 (
,55( )
columns66 
:66 
table66 
=>66 !
new66" %
{77 
Id88 
=88 
table88 
.88 
Column88 %
<88% &
int88& )
>88) *
(88* +
type88+ /
:88/ 0
$str881 6
,886 7
nullable888 @
:88@ A
false88B G
)88G H
.99 

Annotation99 #
(99# $
$str99$ 8
,998 9
$str99: @
)99@ A
,99A B
RoleId:: 
=:: 
table:: "
.::" #
Column::# )
<::) *
string::* 0
>::0 1
(::1 2
type::2 6
:::6 7
$str::8 G
,::G H
nullable::I Q
:::Q R
false::S X
)::X Y
,::Y Z
	ClaimType;; 
=;; 
table;;  %
.;;% &
Column;;& ,
<;;, -
string;;- 3
>;;3 4
(;;4 5
type;;5 9
:;;9 :
$str;;; J
,;;J K
nullable;;L T
:;;T U
true;;V Z
);;Z [
,;;[ \

ClaimValue<< 
=<<  
table<<! &
.<<& '
Column<<' -
<<<- .
string<<. 4
><<4 5
(<<5 6
type<<6 :
:<<: ;
$str<<< K
,<<K L
nullable<<M U
:<<U V
true<<W [
)<<[ \
}== 
,== 
constraints>> 
:>> 
table>> "
=>>># %
{?? 
table@@ 
.@@ 

PrimaryKey@@ $
(@@$ %
$str@@% :
,@@: ;
x@@< =
=>@@> @
x@@A B
.@@B C
Id@@C E
)@@E F
;@@F G
tableAA 
.AA 

ForeignKeyAA $
(AA$ %
nameBB 
:BB 
$strBB F
,BBF G
columnCC 
:CC 
xCC  !
=>CC" $
xCC% &
.CC& '
RoleIdCC' -
,CC- .
principalTableDD &
:DD& '
$strDD( 5
,DD5 6
principalColumnEE '
:EE' (
$strEE) -
,EE- .
onDeleteFF  
:FF  !
ReferentialActionFF" 3
.FF3 4
CascadeFF4 ;
)FF; <
;FF< =
}GG 
)GG 
;GG 
migrationBuilderII 
.II 
CreateTableII (
(II( )
nameJJ 
:JJ 
$strJJ (
,JJ( )
columnsKK 
:KK 
tableKK 
=>KK !
newKK" %
{LL 
IdMM 
=MM 
tableMM 
.MM 
ColumnMM %
<MM% &
intMM& )
>MM) *
(MM* +
typeMM+ /
:MM/ 0
$strMM1 6
,MM6 7
nullableMM8 @
:MM@ A
falseMMB G
)MMG H
.NN 

AnnotationNN #
(NN# $
$strNN$ 8
,NN8 9
$strNN: @
)NN@ A
,NNA B
UserIdOO 
=OO 
tableOO "
.OO" #
ColumnOO# )
<OO) *
stringOO* 0
>OO0 1
(OO1 2
typeOO2 6
:OO6 7
$strOO8 G
,OOG H
nullableOOI Q
:OOQ R
falseOOS X
)OOX Y
,OOY Z
	ClaimTypePP 
=PP 
tablePP  %
.PP% &
ColumnPP& ,
<PP, -
stringPP- 3
>PP3 4
(PP4 5
typePP5 9
:PP9 :
$strPP; J
,PPJ K
nullablePPL T
:PPT U
truePPV Z
)PPZ [
,PP[ \

ClaimValueQQ 
=QQ  
tableQQ! &
.QQ& '
ColumnQQ' -
<QQ- .
stringQQ. 4
>QQ4 5
(QQ5 6
typeQQ6 :
:QQ: ;
$strQQ< K
,QQK L
nullableQQM U
:QQU V
trueQQW [
)QQ[ \
}RR 
,RR 
constraintsSS 
:SS 
tableSS "
=>SS# %
{TT 
tableUU 
.UU 

PrimaryKeyUU $
(UU$ %
$strUU% :
,UU: ;
xUU< =
=>UU> @
xUUA B
.UUB C
IdUUC E
)UUE F
;UUF G
tableVV 
.VV 

ForeignKeyVV $
(VV$ %
nameWW 
:WW 
$strWW F
,WWF G
columnXX 
:XX 
xXX  !
=>XX" $
xXX% &
.XX& '
UserIdXX' -
,XX- .
principalTableYY &
:YY& '
$strYY( 5
,YY5 6
principalColumnZZ '
:ZZ' (
$strZZ) -
,ZZ- .
onDelete[[  
:[[  !
ReferentialAction[[" 3
.[[3 4
Cascade[[4 ;
)[[; <
;[[< =
}\\ 
)\\ 
;\\ 
migrationBuilder^^ 
.^^ 
CreateTable^^ (
(^^( )
name__ 
:__ 
$str__ (
,__( )
columns`` 
:`` 
table`` 
=>`` !
new``" %
{aa 
LoginProviderbb !
=bb" #
tablebb$ )
.bb) *
Columnbb* 0
<bb0 1
stringbb1 7
>bb7 8
(bb8 9
typebb9 =
:bb= >
$strbb? N
,bbN O
	maxLengthbbP Y
:bbY Z
$numbb[ ^
,bb^ _
nullablebb` h
:bbh i
falsebbj o
)bbo p
,bbp q
ProviderKeycc 
=cc  !
tablecc" '
.cc' (
Columncc( .
<cc. /
stringcc/ 5
>cc5 6
(cc6 7
typecc7 ;
:cc; <
$strcc= L
,ccL M
	maxLengthccN W
:ccW X
$numccY \
,cc\ ]
nullablecc^ f
:ccf g
falsecch m
)ccm n
,ccn o
ProviderDisplayNamedd '
=dd( )
tabledd* /
.dd/ 0
Columndd0 6
<dd6 7
stringdd7 =
>dd= >
(dd> ?
typedd? C
:ddC D
$strddE T
,ddT U
nullableddV ^
:dd^ _
truedd` d
)ddd e
,dde f
UserIdee 
=ee 
tableee "
.ee" #
Columnee# )
<ee) *
stringee* 0
>ee0 1
(ee1 2
typeee2 6
:ee6 7
$stree8 G
,eeG H
nullableeeI Q
:eeQ R
falseeeS X
)eeX Y
}ff 
,ff 
constraintsgg 
:gg 
tablegg "
=>gg# %
{hh 
tableii 
.ii 

PrimaryKeyii $
(ii$ %
$strii% :
,ii: ;
xii< =
=>ii> @
newiiA D
{iiE F
xiiG H
.iiH I
LoginProvideriiI V
,iiV W
xiiX Y
.iiY Z
ProviderKeyiiZ e
}iif g
)iig h
;iih i
tablejj 
.jj 

ForeignKeyjj $
(jj$ %
namekk 
:kk 
$strkk F
,kkF G
columnll 
:ll 
xll  !
=>ll" $
xll% &
.ll& '
UserIdll' -
,ll- .
principalTablemm &
:mm& '
$strmm( 5
,mm5 6
principalColumnnn '
:nn' (
$strnn) -
,nn- .
onDeleteoo  
:oo  !
ReferentialActionoo" 3
.oo3 4
Cascadeoo4 ;
)oo; <
;oo< =
}pp 
)pp 
;pp 
migrationBuilderrr 
.rr 
CreateTablerr (
(rr( )
namess 
:ss 
$strss '
,ss' (
columnstt 
:tt 
tablett 
=>tt !
newtt" %
{uu 
UserIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
typevv2 6
:vv6 7
$strvv8 G
,vvG H
nullablevvI Q
:vvQ R
falsevvS X
)vvX Y
,vvY Z
RoleIdww 
=ww 
tableww "
.ww" #
Columnww# )
<ww) *
stringww* 0
>ww0 1
(ww1 2
typeww2 6
:ww6 7
$strww8 G
,wwG H
nullablewwI Q
:wwQ R
falsewwS X
)wwX Y
}xx 
,xx 
constraintsyy 
:yy 
tableyy "
=>yy# %
{zz 
table{{ 
.{{ 

PrimaryKey{{ $
({{$ %
$str{{% 9
,{{9 :
x{{; <
=>{{= ?
new{{@ C
{{{D E
x{{F G
.{{G H
UserId{{H N
,{{N O
x{{P Q
.{{Q R
RoleId{{R X
}{{Y Z
){{Z [
;{{[ \
table|| 
.|| 

ForeignKey|| $
(||$ %
name}} 
:}} 
$str}} E
,}}E F
column~~ 
:~~ 
x~~  !
=>~~" $
x~~% &
.~~& '
RoleId~~' -
,~~- .
principalTable &
:& '
$str( 5
,5 6
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
��< =
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
��1 2
type
��2 6
:
��6 7
$str
��8 G
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
��Y Z
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
��8 9
type
��9 =
:
��= >
$str
��? N
,
��N O
	maxLength
��P Y
:
��Y Z
$num
��[ ^
,
��^ _
nullable
��` h
:
��h i
false
��j o
)
��o p
,
��p q
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
��/ 0
type
��0 4
:
��4 5
$str
��6 E
,
��E F
	maxLength
��G P
:
��P Q
$num
��R U
,
��U V
nullable
��W _
:
��_ `
false
��a f
)
��f g
,
��g h
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
��0 1
type
��1 5
:
��5 6
$str
��7 F
,
��F G
nullable
��H P
:
��P Q
true
��R V
)
��V W
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
}�� �
lC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Migrations\AdminDb\20220827115230_initial.cs
	namespace 	
UniversityMvc
 
. 

Migrations "
." #
AdminDb# *
{ 
public 

partial 
class 
initial  
:! "
	Migration# ,
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
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
trueR V
)V W
,W X
PanNo 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 D
,D E
	maxLengthF O
:O P
$numQ S
,S T
nullableU ]
:] ^
true_ c
)c d
,d e
StatusIsApprove #
=$ %
table& +
.+ ,
Column, 2
<2 3
string3 9
>9 :
(: ;
type; ?
:? @
$strA P
,P Q
nullableR Z
:Z [
true\ `
)` a
,a b
RoleName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: G
,G H
	maxLengthI R
:R S
$numT V
,V W
nullableX `
:` a
trueb f
)f g
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str ,
,, -
table 
: 
$str $
,$ %
column 
: 
$str 
,  
unique 
: 
true 
, 
filter   
:   
$str   -
)  - .
;  . /
}!! 	
	protected## 
override## 
void## 
Down##  $
(##$ %
MigrationBuilder##% 5
migrationBuilder##6 F
)##F G
{$$ 	
migrationBuilder%% 
.%% 
	DropTable%% &
(%%& '
name&& 
:&& 
$str&& #
)&&# $
;&&$ %
}'' 	
}(( 
})) �	
OC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Models\Admin.cs
	namespace 	
UniversityMvc
 
. 
Models 
{ 
public 

class 
Admin 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
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
public 
string 
? 
PanNo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
StatusIsApprove &
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
? 
RoleName 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
XC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Models\ErrorViewModel.cs
	namespace 	
UniversityMvc
 
. 
Models 
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
}		 �
]C:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Models\UniversityViewModel.cs
	namespace 	
UniversityMvc
 
. 
Models 
{ 
public 

class 
UniversityViewModel $
{ 
[		 	
Key			 
]		 
public

 
int

 
UniversityId

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
[ 	
DisplayName	 
( 
$str &
)& '
]' (
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& C
)C D
]D E
public 
string 
? 
UniversityName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
[ 	
DisplayName	 
( 
$str 
)  
]  !
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
? 
Location 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str )
)) *
]* +
[ 	
DisplayName	 
( 
$str '
)' (
]( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
public 
string 
? 
AffiliatedUnder &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
EstablishedYear "
{# $
get% (
;( )
set* -
;- .
}/ 0
}   
}!! �+
JC:\Users\dell\source\repos\UniversityClassLibrary\UniversityMvc\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA a
)a b
??c e
throwf k
newl o&
InvalidOperationException	p �
(
� �
$str
� �
)
� �
;
� �
builder

 
.

 
Services

 
.

 
AddDbContext

 
<

  
UniversityMvcContext

 2
>

2 3
(

3 4
options

4 ;
=>

< >
options 
. 
UseSqlServer 
( 
connectionString )
)) *
)* +
;+ ,
builder 
. 
Services 
. 
AddDbContext 
< 
AdminDbContext ,
>, -
(- .
options. 5
=>6 8
options 
. 
UseSqlServer 
( 
connectionString )
)) *
)* +
;+ ,
builder 
. 
Services 
. 
AddIdentity 
< 
UniversityMvcUser .
,. /
IdentityRole0 <
>< =
(= >
options> E
=>F H
optionsI P
.P Q
SignInQ W
.W X#
RequireConfirmedAccountX o
=p q
falser w
)w x
. 
AddDefaultUI 
( 
) 
. $
AddEntityFrameworkStores ,
<, - 
UniversityMvcContext- A
>A B
(B C
)C D
;D E
builder 
. 
Services 
. 

AddSession 
( 
options #
=>$ &
{ 
options 
. 
IdleTimeout 
= 
TimeSpan "
." #
FromMinutes# .
(. /
$num/ 1
)1 2
;2 3
options 
. 
Cookie 
. 
HttpOnly 
= 
true "
;" #
options 
. 
Cookie 
. 
IsEssential 
=  
true! %
;% &
} 
) 
; 
builder 
. 
Services 
. 
AddAuthorization !
(! "
options" )
=>* ,
{ 
options 
. 
	AddPolicy 
( 
$str  
,  !
policy" (
=>) +
policy, 2
.2 3
RequireRole3 >
(> ?
$str? I
)I J
)J K
;K L
options 
. 
	AddPolicy 
( 
$str !
,! "
policy# )
=>* ,
policy- 3
.3 4
RequireRole4 ?
(? @
$str@ G
)G H
)H I
;I J
} 
) 
; 
builder 
. 
Services 
. 
	AddScoped 
< 
AdminDbContext )
>) *
(* +
)+ ,
;, -
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
Program& -
)- .
). /
;/ 0
builder   
.   
Services   
.   #
AddControllersWithViews   (
(  ( )
)  ) *
;  * +
var"" 
app"" 
="" 	
builder""
 
."" 
Build"" 
("" 
)"" 
;"" 
if$$ 
($$ 
!$$ 
app$$ 
.$$ 	
Environment$$	 
.$$ 
IsDevelopment$$ "
($$" #
)$$# $
)$$$ %
{%% 
app&& 
.&& 
UseExceptionHandler&& 
(&& 
$str&& )
)&&) *
;&&* +
app(( 
.(( 
UseHsts(( 
((( 
)(( 
;(( 
})) 
app++ 
.++ 
UseHttpsRedirection++ 
(++ 
)++ 
;++ 
app,, 
.,, 
UseStaticFiles,, 
(,, 
),, 
;,, 
app.. 
... 

UseRouting.. 
(.. 
).. 
;.. 
app// 
.// 
UseAuthentication// 
(// 
)// 
;// 
;// 
app11 
.11 
UseAuthorization11 
(11 
)11 
;11 
app33 
.33 
MapControllerRoute33 
(33 
name44 
:44 	
$str44
 
,44 
pattern55 
:55 
$str55 5
)555 6
;556 7
app66 
.66 
MapRazorPages66 
(66 
)66 
;66 
app77 
.77 
Run77 
(77 
)77 	
;77	 
