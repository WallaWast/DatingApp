µ<
PC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\AccountController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
AccountController "
:# $
BaseApiController% 6
{ 
private 
readonly 
UserManager $
<$ %
AppUser% ,
>, -
_userManager. :
;: ;
private 
readonly 
ITokenService &
_tokenService' 4
;4 5
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
SignInManager &
<& '
AppUser' .
>. /
_signInManager0 >
;> ?
public 
AccountController  
(  !
UserManager! ,
<, -
AppUser- 4
>4 5
userManager6 A
,A B
SignInManagerC P
<P Q
AppUserQ X
>X Y
signInManagerZ g
,g h
ITokenServicei v
tokenService	w É
,
É Ñ
IMapper
Ö å
mapper
ç ì
)
ì î
{ 	
_signInManager 
= 
signInManager *
;* +
_mapper 
= 
mapper 
; 
_tokenService 
= 
tokenService (
;( )
_userManager 
= 
userManager &
;& '
}   	
["" 	
HttpPost""	 
("" 
$str"" 
)"" 
]"" 
public## 
async## 
Task## 
<## 
ActionResult## &
<##& '
UserDto##' .
>##. /
>##/ 0
Register##1 9
(##9 :
RegisterDto##: E
registerDto##F Q
)##Q R
{$$ 	
if%% 
(%% 
await%% 

UserExists%%  
(%%  !
registerDto%%! ,
.%%, -
Username%%- 5
)%%5 6
)%%6 7
return&& 

BadRequest&& !
(&&! "
$str&&" 5
)&&5 6
;&&6 7
var(( 
user(( 
=(( 
_mapper(( 
.(( 
Map(( "
<((" #
AppUser((# *
>((* +
(((+ ,
registerDto((, 7
)((7 8
;((8 9
user** 
.** 
UserName** 
=** 
registerDto** '
.**' (
Username**( 0
.**0 1
ToLower**1 8
(**8 9
)**9 :
;**: ;
var,, 
result,, 
=,, 
await,, 
_userManager,, +
.,,+ ,
CreateAsync,,, 7
(,,7 8
user,,8 <
,,,< =
registerDto,,> I
.,,I J
Password,,J R
),,R S
;,,S T
if.. 
(.. 
!.. 
result.. 
... 
	Succeeded.. !
)..! "
return// 

BadRequest// !
(//! "
result//" (
.//( )
Errors//) /
)/// 0
;//0 1
var11 

roleResult11 
=11 
await11 "
_userManager11# /
.11/ 0
AddToRoleAsync110 >
(11> ?
user11? C
,11C D
$str11E M
)11M N
;11N O
if33 
(33 
!33 

roleResult33 
.33 
	Succeeded33 %
)33% &
return44 

BadRequest44 !
(44! "
result44" (
.44( )
Errors44) /
)44/ 0
;440 1
return66 
new66 
UserDto66 
{77 
Username88 
=88 
user88 
.88  
UserName88  (
,88( )
Token99 
=99 
await99 
_tokenService99 +
.99+ ,
CreateToken99, 7
(997 8
user998 <
)99< =
,99= >
KnownAs:: 
=:: 
user:: 
.:: 
KnownAs:: &
,::& '
Gender;; 
=;; 
user;; 
.;; 
Gender;; $
}<< 
;<< 
}== 	
[?? 	
HttpPost??	 
(?? 
$str?? 
)?? 
]?? 
public@@ 
async@@ 
Task@@ 
<@@ 
ActionResult@@ &
<@@& '
UserDto@@' .
>@@. /
>@@/ 0
Login@@1 6
(@@6 7
LoginDto@@7 ?
loginDto@@@ H
)@@H I
{AA 	
varBB 
userBB 
=BB 
awaitBB 
_userManagerBB )
.BB) *
UsersBB* /
.CC  !
IncludeCC! (
(CC( )
pCC) *
=>CC+ -
pCC. /
.CC/ 0
PhotosCC0 6
)CC6 7
.DD  ! 
SingleOrDefaultAsyncDD! 5
(DD5 6
uDD6 7
=>DD8 :
uDD; <
.DD< =
UserNameDD= E
.DDE F
EqualsDDF L
(DDL M
loginDtoDDM U
.DDU V
UsernameDDV ^
.DD^ _
ToLowerDD_ f
(DDf g
)DDg h
)DDh i
)DDi j
;DDj k
ifFF 
(FF 
userFF 
==FF 
nullFF 
)FF 
returnGG 
UnauthorizedGG #
(GG# $
$strGG$ 6
)GG6 7
;GG7 8
varII 
resultII 
=II 
awaitII 
_signInManagerII -
.II- .$
CheckPasswordSignInAsyncII. F
(IIF G
userIIG K
,IIK L
loginDtoIIM U
.IIU V
PasswordIIV ^
,II^ _
falseII` e
)IIe f
;IIf g
ifKK 
(KK 
!KK 
resultKK 
.KK 
	SucceededKK !
)KK! "
returnLL 
UnauthorizedLL #
(LL# $
)LL$ %
;LL% &
returnNN 
newNN 
UserDtoNN 
{OO 
UsernamePP 
=PP 
userPP 
.PP  
UserNamePP  (
,PP( )
TokenQQ 
=QQ 
awaitQQ 
_tokenServiceQQ +
.QQ+ ,
CreateTokenQQ, 7
(QQ7 8
userQQ8 <
)QQ< =
,QQ= >
PhotoUrlRR 
=RR 
userRR 
.RR  
PhotosRR  &
?RR& '
.RR' (
FirstOrDefaultRR( 6
(RR6 7
pRR7 8
=>RR9 ;
pRR< =
.RR= >
IsMainRR> D
)RRD E
?RRE F
.RRF G
UrlRRG J
,RRJ K
KnownAsSS 
=SS 
userSS 
.SS 
KnownAsSS &
,SS& '
GenderTT 
=TT 
userTT 
.TT 
GenderTT $
}UU 
;UU 
}VV 	
privateXX 
asyncXX 
TaskXX 
<XX 
boolXX 
>XX  

UserExistsXX! +
(XX+ ,
stringXX, 2
usernameXX3 ;
)XX; <
{YY 	
returnZZ 
awaitZZ 
_userManagerZZ %
.ZZ% &
UsersZZ& +
.ZZ+ ,
AnyAsyncZZ, 4
(ZZ4 5
uZZ5 6
=>ZZ7 9
uZZ: ;
.ZZ; <
UserNameZZ< D
.ZZD E
EqualsZZE K
(ZZK L
usernameZZL T
.ZZT U
ToLowerZZU \
(ZZ\ ]
)ZZ] ^
)ZZ^ _
)ZZ_ `
;ZZ` a
}[[ 	
}\\ 
}]] ÷,
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\AdminController.cs
	namespace		 	
API		
 
.		 
Controllers		 
{

 
public 

class 
AdminController  
:! "
BaseApiController# 4
{ 
private 
readonly 
UserManager $
<$ %
AppUser% ,
>, -
_userManager. :
;: ;
public 
AdminController 
( 
UserManager *
<* +
AppUser+ 2
>2 3
userManager4 ?
)? @
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
	Authorize	 
( 
Policy 
= 
$str .
). /
]/ 0
[ 	
HttpGet	 
( 
$str #
)# $
]$ %
public 
async 
Task 
< 
ActionResult &
>& '
GetUsersWithRoles( 9
(9 :
): ;
{ 	
var 
users 
= 
await 
_userManager *
.* +
Users+ 0
.  !
Include! (
(( )
r) *
=>+ -
r. /
./ 0
	UserRoles0 9
)9 :
.  !
ThenInclude! ,
(, -
r- .
=>/ 1
r2 3
.3 4
Role4 8
)8 9
.  !
OrderBy! (
(( )
u) *
=>+ -
u. /
./ 0
UserName0 8
)8 9
.  !
Select! '
(' (
u( )
=>* ,
new- 0
{  !
u$ %
.% &
Id& (
,( )
Username$ ,
=- .
u/ 0
.0 1
UserName1 9
,9 :
Roles  $ )
=  * +
u  , -
.  - .
	UserRoles  . 7
.  7 8
Select  8 >
(  > ?
r  ? @
=>  A C
r  D E
.  E F
Role  F J
.  J K
Name  K O
)  O P
.  P Q
ToList  Q W
(  W X
)  X Y
}!!  !
)!!! "
.""  !
ToListAsync""! ,
("", -
)""- .
;"". /
return$$ 
Ok$$ 
($$ 
users$$ 
)$$ 
;$$ 
}%% 	
['' 	
HttpPost''	 
('' 
$str'' )
)'') *
]''* +
public(( 
async(( 
Task(( 
<(( 
ActionResult(( &
>((& '
	EditRoles((( 1
(((1 2
string((2 8
username((9 A
,((A B
[((C D
	FromQuery((D M
]((M N
string((O U
roles((V [
)(([ \
{)) 	
var** 
selectedRoles** 
=** 
roles**  %
.**% &
Split**& +
(**+ ,
$str**, /
)**/ 0
.**0 1
ToArray**1 8
(**8 9
)**9 :
;**: ;
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
FindByNameAsync,,* 9
(,,9 :
username,,: B
),,B C
;,,C D
if.. 
(.. 
user.. 
==.. 
null.. 
).. 
return// 
NotFound// 
(//  
$str//  0
)//0 1
;//1 2
var11 
	userRoles11 
=11 
await11 !
_userManager11" .
.11. /
GetRolesAsync11/ <
(11< =
user11= A
)11A B
;11B C
var33 
result33 
=33 
await33 
_userManager33 +
.33+ ,
AddToRolesAsync33, ;
(33; <
user33< @
,33@ A
selectedRoles33B O
.33O P
Except33P V
(33V W
	userRoles33W `
)33` a
)33a b
;33b c
if55 
(55 
!55 
result55 
.55 
	Succeeded55 !
)55! "
return66 

BadRequest66 !
(66! "
$str66" :
)66: ;
;66; <
result88 
=88 
await88 
_userManager88 '
.88' ( 
RemoveFromRolesAsync88( <
(88< =
user88= A
,88A B
	userRoles88C L
.88L M
Except88M S
(88S T
selectedRoles88T a
)88a b
)88b c
;88c d
if:: 
(:: 
!:: 
result:: 
.:: 
	Succeeded:: !
)::! "
return;; 

BadRequest;; !
(;;! "
$str;;" ?
);;? @
;;;@ A
return== 
Ok== 
(== 
await== 
_userManager== (
.==( )
GetRolesAsync==) 6
(==6 7
user==7 ;
)==; <
)==< =
;=== >
}>> 	
[@@ 	
	Authorize@@	 
(@@ 
Policy@@ 
=@@ 
$str@@ /
)@@/ 0
]@@0 1
[AA 	
HttpGetAA	 
(AA 
$strAA %
)AA% &
]AA& '
publicBB 
ActionResultBB "
GetPhotosForModerationBB 2
(BB2 3
)BB3 4
{CC 	
returnDD 
OkDD 
(DD 
$strDD 9
)DD9 :
;DD: ;
}EE 	
}GG 
}HH â
PC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\BaseApiController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
ServiceFilter 
( 
typeof 
( 
LogUserActivity )
)) *
)* +
]+ ,
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public		 

class		 
BaseApiController		 "
:		# $
ControllerBase		% 3
{

 
} 
} ˜
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\BuggyController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public		 

class		 
BuggyController		  
:		! "
BaseApiController		# 4
{

 
private 
readonly 
DataContext $
_context% -
;- .
public 
BuggyController 
( 
DataContext *
context+ 2
)2 3
{ 	
_context 
= 
context 
; 
} 	
[ 	
	Authorize	 
] 
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
ActionResult 
< 
string "
>" #
	GetSecret$ -
(- .
). /
{ 	
return 
$str  
;  !
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
ActionResult 
< 
AppUser #
># $
GetNotFound% 0
(0 1
)1 2
{ 	
var 
user 
= 
_context 
.  
Users  %
.% &
Find& *
(* +
-+ ,
$num, -
)- .
;. /
if 
( 
user 
== 
null 
) 
return $
NotFound% -
(- .
). /
;/ 0
return 
Ok 
( 
user 
) 
; 
}   	
["" 	
HttpGet""	 
("" 
$str"" 
)""  
]""  !
public## 
ActionResult## 
<## 
string## "
>##" #
GetServerError##$ 2
(##2 3
)##3 4
{$$ 	
var%% 
user%% 
=%% 
_context%% 
.%%  
Users%%  %
.%%% &
Find%%& *
(%%* +
-%%+ ,
$num%%, -
)%%- .
;%%. /
var'' 
userToReturn'' 
='' 
user'' #
.''# $
ToString''$ ,
('', -
)''- .
;''. /
return)) 
userToReturn)) 
;))  
}** 	
[,, 	
HttpGet,,	 
(,, 
$str,, 
),, 
],,  
public-- 
ActionResult-- 
<-- 
string-- "
>--" #
GetBadRequest--$ 1
(--1 2
)--2 3
{.. 	
return// 

BadRequest// 
(// 
$str// <
)//< =
;//= >
}00 	
}22 
}33 ´
MC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\CityController.cs
	namespace 	
API
 
. 
Controllers 
{		 
public

 

class

 
CityController

 
:

  !
BaseApiController

" 3
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 
CityController 
( 
IUnityOfWork *
unityOfWork+ 6
,6 7
IMapper8 ?
mapper@ F
)F G
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
City3 7
>7 8
>8 9
>9 :
GetCitiesByStateId; M
(M N
intN Q
stateIdR Y
)Y Z
{ 	
var 
cities 
= 
await 
_unityOfWork +
.+ ,
CityRepository, :
.: ;#
GetCitiesByStateIdAsync; R
(R S
stateIdS Z
)Z [
;[ \
return 
Ok 
( 
cities 
) 
; 
} 	
} 
} Ã
PC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\CountryController.cs
	namespace 	
API
 
. 
Controllers 
{		 
public

 

class

 
CountryController

 "
:

# $
BaseApiController

% 6
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 
CountryController  
(  !
IUnityOfWork! -
unityOfWork. 9
,9 :
IMapper; B
mapperC I
)I J
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
Country3 :
>: ;
>; <
>< =
GetCountries> J
(J K
)K L
{ 	
var 
	countries 
= 
await !
_unityOfWork" .
.. /
CountryRepository/ @
.@ A 
GetAllCountriesAsyncA U
(U V
)V W
;W X
return 
Ok 
( 
	countries 
)  
;  !
} 	
} 
} ª
QC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\FallbackController.cs
	namespace 	
API
 
. 
Controllers 
{ 
public 

class 
FallbackController #
:$ %

Controller& 0
{ 
public 
ActionResult 
Index !
(! "
)" #
{		 	
return

 
PhysicalFile

 
(

  
Path

  $
.

$ %
Combine

% ,
(

, -
	Directory

- 6
.

6 7
GetCurrentDirectory

7 J
(

J K
)

K L
,

L M
$str

N W
,

W X
$str

Y e
)

e f
,

f g
$str

h s
)

s t
;

t u
} 	
} 
} ©&
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\LikesController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
LikesController  
:! "
BaseApiController# 4
{ 
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 
LikesController 
( 
IUnityOfWork +
unityOfWork, 7
)7 8
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
} 	
[ 	
HttpPost	 
( 
$str 
) 
]  
public 
async 
Task 
< 
ActionResult &
>& '
AddLike( /
(/ 0
string0 6
username7 ?
)? @
{ 	
var 
sourceUserId 
= 
User #
.# $
	GetUserId$ -
(- .
). /
;/ 0
var 
	likedUser 
= 
await !
_unityOfWork" .
.. /
UserRepository/ =
.= >"
GetUserByUserNameAsync> T
(T U
usernameU ]
)] ^
;^ _
var 

sourceUser 
= 
await "
_unityOfWork# /
./ 0
LikesRepository0 ?
.? @
GetUserWithLikes@ P
(P Q
sourceUserIdQ ]
)] ^
;^ _
if 
( 
	likedUser 
== 
null !
)! "
return 
NotFound 
(  
)  !
;! "
if!! 
(!! 

sourceUser!! 
.!! 
UserName!! #
==!!$ &
username!!' /
)!!/ 0
return"" 

BadRequest"" !
(""! "
$str""" <
)""< =
;""= >
var$$ 
userLike$$ 
=$$ 
await$$  
_unityOfWork$$! -
.$$- .
LikesRepository$$. =
.$$= >
GetUserLike$$> I
($$I J
sourceUserId$$J V
,$$V W
	likedUser$$X a
.$$a b
Id$$b d
)$$d e
;$$e f
if&& 
(&& 
userLike&& 
!=&& 
null&&  
)&&  !
return'' 

BadRequest'' !
(''! "
$str''" >
)''> ?
;''? @
userLike)) 
=)) 
new)) 
UserLike)) #
{** 
SourceUserId++ 
=++ 
sourceUserId++ +
,+++ ,
LikedUserId,, 
=,, 
	likedUser,, '
.,,' (
Id,,( *
}-- 
;-- 

sourceUser// 
.// 

LikedUsers// !
.//! "
Add//" %
(//% &
userLike//& .
)//. /
;/// 0
if11 
(11 
await11 
_unityOfWork11 "
.11" #
Complete11# +
(11+ ,
)11, -
)11- .
return22 
Ok22 
(22 
)22 
;22 
return44 

BadRequest44 
(44 
$str44 3
)443 4
;444 5
}55 	
[77 	
HttpGet77	 
]77 
public88 
async88 
Task88 
<88 
ActionResult88 &
<88& '
IEnumerable88' 2
<882 3
LikeDto883 :
>88: ;
>88; <
>88< =
GetUserLikes88> J
(88J K
[88K L
	FromQuery88L U
]88U V
LikesParams88W b
likesParams88c n
)88n o
{99 	
likesParams:: 
.:: 
UserId:: 
=::  
User::! %
.::% &
	GetUserId::& /
(::/ 0
)::0 1
;::1 2
var;; 
users;; 
=;; 
await;; 
_unityOfWork;; *
.;;* +
LikesRepository;;+ :
.;;: ;
GetUserLikes;;; G
(;;G H
likesParams;;H S
);;S T
;;;T U
Response== 
.== 
AddPaginationHeader== (
(==( )
users==) .
.==. /
CurrentPage==/ :
,==: ;
users==< A
.==A B
PageSize==B J
,==J K
users==L Q
.==Q R

TotalCount==R \
,==\ ]
users==^ c
.==c d

TotalPages==d n
)==n o
;==o p
return?? 
Ok?? 
(?? 
users?? 
)?? 
;?? 
}@@ 	
}AA 
}BB «;
QC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\MessagesController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
MessagesController #
:$ %
BaseApiController& 7
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 
MessagesController !
(! "
IUnityOfWork" .
unityOfWork/ :
,: ;
IMapper< C
mapperD J
)J K
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
<& '

MessageDto' 1
>1 2
>2 3
CreateMessage4 A
(A B
CreateMessageDtoB R
createMessageDtoS c
)c d
{ 	
var 
username 
= 
User 
.  
GetUsername  +
(+ ,
), -
;- .
if   
(   
username   
.   
Equals   
(    
createMessageDto    0
.  0 1
RecipientUsername  1 B
.  B C
ToLower  C J
(  J K
)  K L
)  L M
)  M N
return!! 

BadRequest!! !
(!!! "
$str!!" H
)!!H I
;!!I J
var## 
sender## 
=## 
await## 
_unityOfWork## +
.##+ ,
UserRepository##, :
.##: ;"
GetUserByUserNameAsync##; Q
(##Q R
username##R Z
)##Z [
;##[ \
var$$ 
	recipient$$ 
=$$ 
await$$ !
_unityOfWork$$" .
.$$. /
UserRepository$$/ =
.$$= >"
GetUserByUserNameAsync$$> T
($$T U
createMessageDto$$U e
.$$e f
RecipientUsername$$f w
)$$w x
;$$x y
if&& 
(&& 
	recipient&& 
==&& 
null&& !
)&&! "
return'' 
NotFound'' 
(''  
)''  !
;''! "
var)) 
message)) 
=)) 
new)) 
Message)) %
{** 
Sender++ 
=++ 
sender++ 
,++  
	Recipient,, 
=,, 
	recipient,, %
,,,% &
SenderUsername-- 
=--  
sender--! '
.--' (
UserName--( 0
,--0 1
RecipientUsername.. !
=.." #
	recipient..$ -
...- .
UserName... 6
,..6 7
Content// 
=// 
createMessageDto// *
.//* +
Content//+ 2
}00 
;00 
_unityOfWork22 
.22 
MessageRepository22 *
.22* +

AddMessage22+ 5
(225 6
message226 =
)22= >
;22> ?
if44 
(44 
await44 
_unityOfWork44 "
.44" #
Complete44# +
(44+ ,
)44, -
)44- .
return55 
Ok55 
(55 
_mapper55 !
.55! "
Map55" %
<55% &

MessageDto55& 0
>550 1
(551 2
message552 9
)559 :
)55: ;
;55; <
return77 

BadRequest77 
(77 
$str77 6
)776 7
;777 8
}88 	
[:: 	
HttpGet::	 
]:: 
public;; 
async;; 
Task;; 
<;; 
ActionResult;; &
<;;& '
IEnumerable;;' 2
<;;2 3

MessageDto;;3 =
>;;= >
>;;> ?
>;;? @
GetMessagesForUser;;A S
(;;S T
[;;T U
	FromQuery;;U ^
];;^ _
MessageParams;;` m
messageParams;;n {
);;{ |
{<< 	
messageParams== 
.== 
Username== "
===# $
User==% )
.==) *
GetUsername==* 5
(==5 6
)==6 7
;==7 8
var?? 
messages?? 
=?? 
await??  
_unityOfWork??! -
.??- .
MessageRepository??. ?
.??? @
GetMessagesForUser??@ R
(??R S
messageParams??S `
)??` a
;??a b
ResponseAA 
.AA 
AddPaginationHeaderAA (
(AA( )
messagesAA) 1
.AA1 2
CurrentPageAA2 =
,AA= >
messagesAA? G
.AAG H
PageSizeAAH P
,AAP Q
messagesAAR Z
.AAZ [

TotalCountAA[ e
,AAe f
messagesAAg o
.AAo p

TotalPagesAAp z
)AAz {
;AA{ |
returnCC 
messagesCC 
;CC 
}DD 	
[FF 	

HttpDeleteFF	 
(FF 
$strFF 
)FF 
]FF 
publicGG 
asyncGG 
TaskGG 
<GG 
ActionResultGG &
>GG& '
DeleteMessageGG( 5
(GG5 6
intGG6 9
idGG: <
)GG< =
{HH 	
varII 
usernameII 
=II 
UserII 
.II  
GetUsernameII  +
(II+ ,
)II, -
;II- .
varKK 
messageKK 
=KK 
awaitKK 
_unityOfWorkKK  ,
.KK, -
MessageRepositoryKK- >
.KK> ?

GetMessageKK? I
(KKI J
idKKJ L
)KKL M
;KKM N
ifMM 
(MM 
!MM 
messageMM 
.MM 
SenderMM 
.MM  
UserNameMM  (
.MM( )
EqualsMM) /
(MM/ 0
usernameMM0 8
)MM8 9
&&MM: <
!MM= >
messageMM> E
.MME F
	RecipientMMF O
.MMO P
UserNameMMP X
.MMX Y
EqualsMMY _
(MM_ `
usernameMM` h
)MMh i
)MMi j
returnNN 
UnauthorizedNN #
(NN# $
)NN$ %
;NN% &
ifPP 
(PP 
messagePP 
.PP 
SenderPP 
.PP 
UserNamePP '
.PP' (
EqualsPP( .
(PP. /
usernamePP/ 7
)PP7 8
)PP8 9
messageQQ 
.QQ 
SenderDeletedQQ %
=QQ& '
trueQQ( ,
;QQ, -
ifSS 
(SS 
messageSS 
.SS 
	RecipientSS !
.SS! "
UserNameSS" *
.SS* +
EqualsSS+ 1
(SS1 2
usernameSS2 :
)SS: ;
)SS; <
messageTT 
.TT 
RecipientDeletedTT (
=TT) *
trueTT+ /
;TT/ 0
ifZZ 
(ZZ 
awaitZZ 
_unityOfWorkZZ "
.ZZ" #
CompleteZZ# +
(ZZ+ ,
)ZZ, -
)ZZ- .
return[[ 
Ok[[ 
([[ 
)[[ 
;[[ 
return]] 

BadRequest]] 
(]] 
$str]] <
)]]< =
;]]= >
}^^ 	
}`` 
}aa ∏
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\StateController.cs
	namespace 	
API
 
. 
Controllers 
{		 
public

 

class

 
StateController

  
:

! "
BaseApiController

# 4
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 
StateController 
( 
IUnityOfWork +
unityOfWork, 7
,7 8
IMapper9 @
mapperA G
)G H
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
]  
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
State3 8
>8 9
>9 :
>: ; 
GetStatesByCountryId< P
(P Q
intQ T
	countryIdU ^
)^ _
{ 	
var 
states 
= 
await 
_unityOfWork +
.+ ,
StateRepository, ;
.; <%
GetStatesByCountryIdAsync< U
(U V
	countryIdV _
)_ `
;` a
return 
Ok 
( 
states 
) 
; 
} 	
} 
} ¨l
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Controllers\UsersController.cs
	namespace 	
API
 
. 
Controllers 
{ 
[ 
	Authorize 
] 
public 

class 
UsersController  
:! "
BaseApiController# 4
{ 
private 
readonly 
ILogger  
<  !
UsersController! 0
>0 1
_logger2 9
;9 :
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IPhotoService &
_photoService' 4
;4 5
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 
UsersController 
( 
IUnityOfWork +
unityOfWork, 7
,7 8
ILogger9 @
<@ A
UsersControllerA P
>P Q
loggerR X
,X Y
IMapperZ a
mapperb h
,h i
IPhotoServicej w
photoService	x Ñ
)
Ñ Ö
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
_photoService 
= 
photoService (
;( )
_mapper   
=   
mapper   
;   
_logger!! 
=!! 
logger!! 
;!! 
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
ActionResult%% &
<%%& '
IEnumerable%%' 2
<%%2 3
	MemberDto%%3 <
>%%< =
>%%= >
>%%> ?
GetUsers%%@ H
(%%H I
[%%I J
	FromQuery%%J S
]%%S T

UserParams%%U _

userParams%%` j
)%%j k
{&& 	
var'' 
gender'' 
='' 
await'' 
_unityOfWork'' +
.''+ ,
UserRepository'', :
.'': ;
GetUserGender''; H
(''H I
User''I M
.''M N
GetUsername''N Y
(''Y Z
)''Z [
)''[ \
;''\ ]

userParams(( 
.(( 
CurrentUsername(( &
=((' (
User(() -
.((- .
GetUsername((. 9
(((9 :
)((: ;
;((; <
if** 
(** 
string** 
.** 
IsNullOrEmpty** $
(**$ %

userParams**% /
.**/ 0
Gender**0 6
)**6 7
)**7 8
{++ 

userParams,, 
.,, 
Gender,, !
=,," #
gender,,$ *
.,,* +
Equals,,+ 1
(,,1 2
$str,,2 8
),,8 9
?,,: ;
$str,,< D
:,,E F
$str,,G M
;,,M N
}-- 
var// 
users// 
=// 
await// 
_unityOfWork// *
.//* +
UserRepository//+ 9
.//9 :
GetMembersAsync//: I
(//I J

userParams//J T
)//T U
;//U V
Response11 
.11 
AddPaginationHeader11 (
(11( )
users11) .
.11. /
CurrentPage11/ :
,11: ;
users11< A
.11A B
PageSize11B J
,11J K
users11L Q
.11Q R

TotalCount11R \
,11\ ]
users11^ c
.11c d

TotalPages11d n
)11n o
;11o p
return33 
Ok33 
(33 
users33 
)33 
;33 
}44 	
[;; 	
HttpGet;;	 
(;; 
$str;; 
,;; 
Name;; #
=;;$ %
$str;;& /
);;/ 0
];;0 1
public<< 
async<< 
Task<< 
<<< 
ActionResult<< &
<<<& '
	MemberDto<<' 0
><<0 1
><<1 2
GetUser<<3 :
(<<: ;
string<<; A
username<<B J
)<<J K
{== 	
var>> 
user>> 
=>> 
await>> 
_unityOfWork>> )
.>>) *
UserRepository>>* 8
.>>8 9
GetMemberAsync>>9 G
(>>G H
username>>H P
)>>P Q
;>>Q R
return@@ 
user@@ 
;@@ 
}AA 	
[CC 	
HttpPutCC	 
]CC 
publicDD 
asyncDD 
TaskDD 
<DD 
ActionResultDD &
>DD& '

UpdateUserDD( 2
(DD2 3
MemberUpdateDtoDD3 B
memberUpdateDtoDDC R
)DDR S
{EE 	
varFF 
userFF 
=FF 
awaitFF 
_unityOfWorkFF )
.FF) *
UserRepositoryFF* 8
.FF8 9"
GetUserByUserNameAsyncFF9 O
(FFO P
UserFFP T
.FFT U
GetUsernameFFU `
(FF` a
)FFa b
)FFb c
;FFc d
_mapperHH 
.HH 
MapHH 
(HH 
memberUpdateDtoHH '
,HH' (
userHH) -
)HH- .
;HH. /
_unityOfWorkJJ 
.JJ 
UserRepositoryJJ '
.JJ' (
UpdateJJ( .
(JJ. /
userJJ/ 3
)JJ3 4
;JJ4 5
ifLL 
(LL 
awaitLL 
_unityOfWorkLL "
.LL" #
CompleteLL# +
(LL+ ,
)LL, -
)LL- .
returnLL/ 5
	NoContentLL6 ?
(LL? @
)LL@ A
;LLA B
returnNN 

BadRequestNN 
(NN 
$strNN 9
)NN9 :
;NN: ;
}OO 	
[QQ 	
HttpPostQQ	 
(QQ 
$strQQ 
)QQ 
]QQ 
publicRR 
asyncRR 
TaskRR 
<RR 
ActionResultRR &
<RR& '
PhotoDtoRR' /
>RR/ 0
>RR0 1
AddPhotoRR2 :
(RR: ;
	IFormFileRR; D
fileRRE I
)RRI J
{SS 	
varTT 
userTT 
=TT 
awaitTT 
_unityOfWorkTT )
.TT) *
UserRepositoryTT* 8
.TT8 9"
GetUserByUserNameAsyncTT9 O
(TTO P
UserTTP T
.TTT U
GetUsernameTTU `
(TT` a
)TTa b
)TTb c
;TTc d
varVV 
resultVV 
=VV 
awaitVV 
_photoServiceVV ,
.VV, -
AddPhotoAsyncVV- :
(VV: ;
fileVV; ?
)VV? @
;VV@ A
ifXX 
(XX 
resultXX 
.XX 
ErrorXX 
!=XX 
nullXX  $
)XX$ %
returnYY 

BadRequestYY !
(YY! "
resultYY" (
.YY( )
ErrorYY) .
.YY. /
MessageYY/ 6
)YY6 7
;YY7 8
var[[ 
photo[[ 
=[[ 
new[[ 
Photo[[ !
{\\ 
Url]] 
=]] 
result]] 
.]] 
	SecureUrl]] &
.]]& '
AbsoluteUri]]' 2
,]]2 3
PublicId^^ 
=^^ 
result^^ !
.^^! "
PublicId^^" *
}__ 
;__ 
ifaa 
(aa 
useraa 
.aa 
Photosaa 
.aa 
Countaa !
==aa" $
$numaa% &
)aa& '
{bb 
photocc 
.cc 
IsMaincc 
=cc 
truecc #
;cc# $
}dd 
userff 
.ff 
Photosff 
.ff 
Addff 
(ff 
photoff !
)ff! "
;ff" #
ifhh 
(hh 
awaithh 
_unityOfWorkhh "
.hh" #
Completehh# +
(hh+ ,
)hh, -
)hh- .
{ii 
returnjj 
CreatedAtRoutejj %
(jj% &
$strjj& /
,jj/ 0
newjj1 4
{jj5 6
usernamejj7 ?
=jj@ A
userjjB F
.jjF G
UserNamejjG O
}jjP Q
,jjQ R
_mapperjjS Z
.jjZ [
Mapjj[ ^
<jj^ _
PhotoDtojj_ g
>jjg h
(jjh i
photojji n
)jjn o
)jjo p
;jjp q
}kk 
returnmm 

BadRequestmm 
(mm 
$strmm 4
)mm4 5
;mm5 6
}nn 	
[pp 	
HttpPutpp	 
(pp 
$strpp +
)pp+ ,
]pp, -
publicqq 
asyncqq 
Taskqq 
<qq 
ActionResultqq &
>qq& '
SetMainPhotoqq( 4
(qq4 5
intqq5 8
photoIdqq9 @
)qq@ A
{rr 	
varss 
userss 
=ss 
awaitss 
_unityOfWorkss )
.ss) *
UserRepositoryss* 8
.ss8 9"
GetUserByUserNameAsyncss9 O
(ssO P
UserssP T
.ssT U
GetUsernamessU `
(ss` a
)ssa b
)ssb c
;ssc d
varuu 
photouu 
=uu 
useruu 
.uu 
Photosuu #
.uu# $
FirstOrDefaultuu$ 2
(uu2 3
puu3 4
=>uu5 7
puu8 9
.uu9 :
Iduu: <
==uu= ?
photoIduu@ G
)uuG H
;uuH I
ifww 
(ww 
photoww 
==ww 
nullww 
)ww 
returnxx 

BadRequestxx !
(xx! "
$strxx" ;
)xx; <
;xx< =
ifzz 
(zz 
photozz 
.zz 
IsMainzz 
)zz 
return{{ 

BadRequest{{ !
({{! "
$str{{" C
){{C D
;{{D E
var}} 
currentMain}} 
=}} 
user}} "
.}}" #
Photos}}# )
.}}) *
FirstOrDefault}}* 8
(}}8 9
p}}9 :
=>}}; =
p}}> ?
.}}? @
IsMain}}@ F
)}}F G
;}}G H
if 
( 
currentMain 
!= 
null #
)# $
currentMain
ÄÄ 
.
ÄÄ 
IsMain
ÄÄ "
=
ÄÄ# $
false
ÄÄ% *
;
ÄÄ* +
photo
ÇÇ 
.
ÇÇ 
IsMain
ÇÇ 
=
ÇÇ 
true
ÇÇ 
;
ÇÇ  
if
ÑÑ 
(
ÑÑ 
await
ÑÑ 
_unityOfWork
ÑÑ "
.
ÑÑ" #
Complete
ÑÑ# +
(
ÑÑ+ ,
)
ÑÑ, -
)
ÑÑ- .
return
ÖÖ 
	NoContent
ÖÖ  
(
ÖÖ  !
)
ÖÖ! "
;
ÖÖ" #
return
áá 

BadRequest
áá 
(
áá 
$str
áá 8
)
áá8 9
;
áá9 :
}
àà 	
[
ää 	

HttpDelete
ää	 
(
ää 
$str
ää ,
)
ää, -
]
ää- .
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
ActionResult
ãã &
>
ãã& '
DeletePhoto
ãã( 3
(
ãã3 4
int
ãã4 7
photoId
ãã8 ?
)
ãã? @
{
åå 	
var
çç 
user
çç 
=
çç 
await
çç 
_unityOfWork
çç )
.
çç) *
UserRepository
çç* 8
.
çç8 9$
GetUserByUserNameAsync
çç9 O
(
ççO P
User
ççP T
.
ççT U
GetUsername
ççU `
(
çç` a
)
çça b
)
ççb c
;
ççc d
var
èè 
photo
èè 
=
èè 
user
èè 
.
èè 
Photos
èè #
.
èè# $
FirstOrDefault
èè$ 2
(
èè2 3
photo
èè3 8
=>
èè9 ;
photo
èè< A
.
èèA B
Id
èèB D
==
èèE G
photoId
èèH O
)
èèO P
;
èèP Q
if
ëë 
(
ëë 
photo
ëë 
==
ëë 
null
ëë 
)
ëë 
return
íí 
NotFound
íí 
(
íí  
)
íí  !
;
íí! "
if
îî 
(
îî 
photo
îî 
.
îî 
IsMain
îî 
)
îî 
return
ïï 

BadRequest
ïï !
(
ïï! "
$str
ïï" E
)
ïïE F
;
ïïF G
if
óó 
(
óó 
photo
óó 
.
óó 
PublicId
óó 
!=
óó !
null
óó" &
)
óó& '
{
òò 
var
ôô 
result
ôô 
=
ôô 
await
ôô "
_photoService
ôô# 0
.
ôô0 1
DeletePhotoAsync
ôô1 A
(
ôôA B
photo
ôôB G
.
ôôG H
PublicId
ôôH P
)
ôôP Q
;
ôôQ R
if
õõ 
(
õõ 
result
õõ 
.
õõ 
Error
õõ  
!=
õõ! #
null
õõ$ (
)
õõ( )
return
úú 

BadRequest
úú %
(
úú% &
result
úú& ,
.
úú, -
Error
úú- 2
.
úú2 3
Message
úú3 :
)
úú: ;
;
úú; <
}
ùù 
user
üü 
.
üü 
Photos
üü 
.
üü 
Remove
üü 
(
üü 
photo
üü $
)
üü$ %
;
üü% &
if
°° 
(
°° 
await
°° 
_unityOfWork
°° "
.
°°" #
Complete
°°# +
(
°°+ ,
)
°°, -
)
°°- .
return
¢¢ 
Ok
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
return
§§ 

BadRequest
§§ 
(
§§ 
$str
§§ 6
)
§§6 7
;
§§7 8
}
•• 	
}
¶¶ 
}ßß á
FC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\CityRepository.cs
	namespace		 	
API		
 
.		 
Data		 
{

 
public 

class 
CityRepository 
:  !
ICityRepository" 1
{ 
private 
readonly 
DataContext $
_context% -
;- .
private 
readonly 
IMapper  
_mapper! (
;( )
public 
CityRepository 
( 
DataContext )
context* 1
,1 2
IMapper3 :
mapper; A
)A B
{ 	
_mapper 
= 
mapper 
; 
_context 
= 
context 
; 
} 	
public 
void 
AddCity 
( 
City  
city! %
)% &
{ 	
_context 
. 
Cities 
. 
Add 
(  
city  $
)$ %
;% &
} 	
public 
void 

DeleteCity 
( 
City #
city$ (
)( )
{ 	
_context 
. 
Cities 
. 
Remove "
(" #
city# '
)' (
;( )
} 	
public!! 
async!! 
Task!! 
<!! 
City!! 
>!! 
GetCityAsync!!  ,
(!!, -
int!!- 0
id!!1 3
)!!3 4
{"" 	
return## 
await## 
_context## !
.##! "
Cities##" (
.##( )
	FindAsync##) 2
(##2 3
id##3 5
)##5 6
;##6 7
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IEnumerable&& %
<&&% &
City&&& *
>&&* +
>&&+ ,#
GetCitiesByStateIdAsync&&- D
(&&D E
int&&E H
stateId&&I P
)&&P Q
{'' 	
return(( 
await(( 
_context(( !
.((! "
Cities((" (
.))$ %
Where))% *
())* +
s))+ ,
=>))- /
s))0 1
.))1 2
StateId))2 9
==)): <
stateId))= D
)))D E
.**$ %
ToListAsync**% 0
(**0 1
)**1 2
;**2 3
}++ 	
},, 
}-- ‡
IC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\CountryRepository.cs
	namespace 	
API
 
. 
Data 
{		 
public

 

class

 
CountryRepository

 "
:

# $
ICountryRepository

% 7
{ 
private 
readonly 
DataContext $
_context% -
;- .
private 
readonly 
IMapper  
_mapper! (
;( )
public 
CountryRepository  
(  !
DataContext! ,
context- 4
,4 5
IMapper6 =
mapper> D
)D E
{ 	
_mapper 
= 
mapper 
; 
_context 
= 
context 
; 
} 	
public 
void 

AddCountry 
( 
Country &
country' .
). /
{ 	
_context 
. 
	Countries 
. 
Add "
(" #
country# *
)* +
;+ ,
} 	
public 
void 
DeleteCountry !
(! "
Country" )
country* 1
)1 2
{ 	
_context 
. 
	Countries 
. 
Remove %
(% &
country& -
)- .
;. /
} 	
public   
async   
Task   
<   
Country   !
>  ! "
GetCountryAsync  # 2
(  2 3
int  3 6
id  7 9
)  9 :
{!! 	
return"" 
await"" 
_context"" !
.""! "
	Countries""" +
.""+ ,
	FindAsync"", 5
(""5 6
id""6 8
)""8 9
;""9 :
}## 	
public%% 
async%% 
Task%% 
<%% 
IEnumerable%% %
<%%% &
Country%%& -
>%%- .
>%%. / 
GetAllCountriesAsync%%0 D
(%%D E
)%%E F
{&& 	
return'' 
await'' 
_context'' !
.''! "
	Countries''" +
.''+ ,
ToListAsync'', 7
(''7 8
)''8 9
;''9 :
}(( 	
})) 
}** Ï]
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\DataContext.cs
	namespace

 	
API


 
.

 
Data

 
{ 
public 

class 
DataContext 
: 
IdentityDbContext 0
<0 1
AppUser1 8
,8 9
AppRole: A
,A B
intC F
,F G
IdentityUserClaimH Y
<Y Z
intZ ]
>] ^
,^ _
AppUserRole` k
,k l
IdentityUserLoginm ~
<~ 
int	 Ç
>
Ç É
,
É Ñ
IdentityRoleClaim  1
<1 2
int2 5
>5 6
,6 7
IdentityUserToken8 I
<I J
intJ M
>M N
>N O
{ 
public 
DataContext 
( 
DbContextOptions +
options, 3
)3 4
:5 6
base7 ;
(; <
options< C
)C D
{ 	
} 	
public 
DbSet 
< 
UserLike 
> 
Likes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DbSet 
< 
Message 
> 
Messages &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Group 
> 
Groups "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 

Connection 
>  
Connections! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DbSet 
< 
Country 
> 
	Countries '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DbSet 
< 
State 
> 
States "
{# $
get% (
;( )
set* -
;- .
}/ 0
public   
DbSet   
<   
City   
>   
Cities   !
{  " #
get  $ '
;  ' (
set  ) ,
;  , -
}  . /
	protected"" 
override"" 
void"" 
OnModelCreating""  /
(""/ 0
ModelBuilder""0 <
builder""= D
)""D E
{## 	
base$$ 
.$$ 
OnModelCreating$$  
($$  !
builder$$! (
)$$( )
;$$) *
builder&& 
.&& 
Entity&& 
<&& 
AppUser&& "
>&&" #
(&&# $
)&&$ %
.'' 
HasMany'' 
('' 
ur'' 
=>'' 
ur'' !
.''! "
	UserRoles''" +
)''+ ,
.(( 
WithOne(( 
((( 
u(( 
=>(( 
u(( 
.((  
User((  $
)(($ %
.)) 
HasForeignKey)) 
()) 
ur)) !
=>))" $
ur))% '
.))' (
UserId))( .
))). /
.** 

IsRequired** 
(** 
)** 
;** 
builder,, 
.,, 
Entity,, 
<,, 
AppRole,, "
>,," #
(,,# $
),,$ %
.-- 
HasMany-- 
(-- 
ur-- 
=>-- 
ur-- !
.--! "
	UserRoles--" +
)--+ ,
... 
WithOne.. 
(.. 
u.. 
=>.. 
u.. 
...  
Role..  $
)..$ %
.// 
HasForeignKey// 
(// 
ur// !
=>//" $
ur//% '
.//' (
RoleId//( .
)//. /
.00 

IsRequired00 
(00 
)00 
;00 
builder22 
.22 
Entity22 
<22 
UserLike22 #
>22# $
(22$ %
)22% &
.33 
HasKey33 
(33 
k33 
=>33 
new33  
{33! "
k33# $
.33$ %
SourceUserId33% 1
,331 2
k333 4
.334 5
LikedUserId335 @
}33A B
)33B C
;33C D
builder55 
.55 
Entity55 
<55 
UserLike55 #
>55# $
(55$ %
)55% &
.66 
HasOne66 
(66 
s66 
=>66 
s66 
.66 

SourceUser66 )
)66) *
.77 
WithMany77 
(77 
l77 
=>77 
l77  
.77  !

LikedUsers77! +
)77+ ,
.88 
HasForeignKey88 
(88 
s88  
=>88! #
s88$ %
.88% &
SourceUserId88& 2
)882 3
.99 
OnDelete99 
(99 
DeleteBehavior99 (
.99( )
Cascade99) 0
)990 1
;991 2
builder;; 
.;; 
Entity;; 
<;; 
UserLike;; #
>;;# $
(;;$ %
);;% &
.<< 
HasOne<< 
(<< 
s<< 
=><< 
s<< 
.<< 
	LikedUser<< (
)<<( )
.== 
WithMany== 
(== 
l== 
=>== 
l==  
.==  !
LikedByUsers==! -
)==- .
.>> 
HasForeignKey>> 
(>> 
s>>  
=>>>! #
s>>$ %
.>>% &
LikedUserId>>& 1
)>>1 2
.?? 
OnDelete?? 
(?? 
DeleteBehavior?? (
.??( )
Cascade??) 0
)??0 1
;??1 2
builderAA 
.AA 
EntityAA 
<AA 
MessageAA "
>AA" #
(AA# $
)AA$ %
.BB 
HasOneBB 
(BB 
uBB 
=>BB 
uBB 
.BB 
	RecipientBB (
)BB( )
.CC 
WithManyCC 
(CC 
mCC 
=>CC 
mCC  
.CC  !
MessagesReceivedCC! 1
)CC1 2
.DD 
OnDeleteDD 
(DD 
DeleteBehaviorDD (
.DD( )
RestrictDD) 1
)DD1 2
;DD2 3
builderFF 
.FF 
EntityFF 
<FF 
MessageFF "
>FF" #
(FF# $
)FF$ %
.GG 
HasOneGG 
(GG 
uGG 
=>GG 
uGG 
.GG 
SenderGG %
)GG% &
.HH 
WithManyHH 
(HH 
mHH 
=>HH 
mHH  
.HH  !
MessagesSentHH! -
)HH- .
.II 
OnDeleteII 
(II 
DeleteBehaviorII (
.II( )
RestrictII) 1
)II1 2
;II2 3
builderLL 
.LL %
ApplyUtcDateTimeConverterLL -
(LL- .
)LL. /
;LL/ 0
}MM 	
}NN 
publicPP 

staticPP 
classPP 
UtcDateAnnotationPP )
{QQ 
privateRR 
constRR 
StringRR 
IsUtcAnnotationRR ,
=RR- .
$strRR/ 6
;RR6 7
privateSS 
staticSS 
readonlySS 
ValueConverterSS  .
<SS. /
DateTimeSS/ 7
,SS7 8
DateTimeSS9 A
>SSA B
UtcConverterSSC O
=SSP Q
newTT
 
ValueConverterTT 
<TT 
DateTimeTT %
,TT% &
DateTimeTT' /
>TT/ 0
(TT0 1
vTT1 2
=>TT3 5
vTT6 7
,TT7 8
vTT9 :
=>TT; =
DateTimeTT> F
.TTF G
SpecifyKindTTG R
(TTR S
vTTS T
,TTT U
DateTimeKindTTV b
.TTb c
UtcTTc f
)TTf g
)TTg h
;TTh i
privateVV 
staticVV 
readonlyVV 
ValueConverterVV  .
<VV. /
DateTimeVV/ 7
?VV7 8
,VV8 9
DateTimeVV: B
?VVB C
>VVC D 
UtcNullableConverterVVE Y
=VVZ [
newWW
 
ValueConverterWW 
<WW 
DateTimeWW %
?WW% &
,WW& '
DateTimeWW( 0
?WW0 1
>WW1 2
(WW2 3
vWW3 4
=>WW5 7
vWW8 9
,WW9 :
vWW; <
=>WW= ?
vWW@ A
==WWB D
nullWWE I
?WWJ K
vWWL M
:WWN O
DateTimeWWP X
.WWX Y
SpecifyKindWWY d
(WWd e
vWWe f
.WWf g
ValueWWg l
,WWl m
DateTimeKindWWn z
.WWz {
UtcWW{ ~
)WW~ 
)	WW Ä
;
WWÄ Å
publicYY 
staticYY 
PropertyBuilderYY %
<YY% &
	TPropertyYY& /
>YY/ 0
IsUtcYY1 6
<YY6 7
	TPropertyYY7 @
>YY@ A
(YYA B
thisYYB F
PropertyBuilderYYG V
<YYV W
	TPropertyYYW `
>YY` a
builderYYb i
,YYi j
BooleanYYk r
isUtcYYs x
=YYy z
trueYY{ 
)	YY Ä
=>
YYÅ É
builderZZ
 
.ZZ 
HasAnnotationZZ 
(ZZ  
IsUtcAnnotationZZ  /
,ZZ/ 0
isUtcZZ1 6
)ZZ6 7
;ZZ7 8
public\\ 
static\\ 
Boolean\\ 
IsUtc\\ #
(\\# $
this\\$ (
IMutableProperty\\) 9
property\\: B
)\\B C
=>\\D F
(]]
 
(]] 
Boolean]] 
?]] 
)]] 
property]] 
.]] 
FindAnnotation]] ,
(]], -
IsUtcAnnotation]]- <
)]]< =
?]]= >
.]]> ?
Value]]? D
)]]D E
??]]F H
true]]I M
;]]M N
publicbb 
staticbb 
voidbb %
ApplyUtcDateTimeConverterbb 4
(bb4 5
thisbb5 9
ModelBuilderbb: F
builderbbG N
)bbN O
{cc 	
foreachdd 
(dd 
vardd 

entityTypedd #
indd$ &
builderdd' .
.dd. /
Modeldd/ 4
.dd4 5
GetEntityTypesdd5 C
(ddC D
)ddD E
)ddE F
{ee 
foreachff 
(ff 
varff 
propertyff %
inff& (

entityTypeff) 3
.ff3 4
GetPropertiesff4 A
(ffA B
)ffB C
)ffC D
{gg 
ifhh 
(hh 
!hh 
propertyhh !
.hh! "
IsUtchh" '
(hh' (
)hh( )
)hh) *
{ii 
continuejj  
;jj  !
}kk 
ifmm 
(mm 
propertymm  
.mm  !
ClrTypemm! (
==mm) +
typeofmm, 2
(mm2 3
DateTimemm3 ;
)mm; <
)mm< =
{nn 
propertyoo  
.oo  !
SetValueConverteroo! 2
(oo2 3
UtcConverteroo3 ?
)oo? @
;oo@ A
}pp 
ifrr 
(rr 
propertyrr  
.rr  !
ClrTyperr! (
==rr) +
typeofrr, 2
(rr2 3
DateTimerr3 ;
?rr; <
)rr< =
)rr= >
{ss 
propertytt  
.tt  !
SetValueConvertertt! 2
(tt2 3 
UtcNullableConvertertt3 G
)ttG H
;ttH I
}uu 
}vv 
}ww 
}xx 	
}yy 
}zz Í-
GC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\LikesRepository.cs
	namespace 	
API
 
. 
Data 
{ 
public 

class 
LikesRepository  
:! "
ILikesRepository# 3
{ 
private 
readonly 
DataContext $
_context% -
;- .
public 
LikesRepository 
( 
DataContext *
context+ 2
)2 3
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
UserLike "
>" #
GetUserLike$ /
(/ 0
int0 3
sourceUserId4 @
,@ A
intB E
likedUserIdF Q
)Q R
{ 	
return 
await 
_context !
.! "
Likes" '
.' (
	FindAsync( 1
(1 2
sourceUserId2 >
,> ?
likedUserId@ K
)K L
;L M
} 	
public 
async 
Task 
< 
AppUser !
>! "
GetUserWithLikes# 3
(3 4
int4 7
userId8 >
)> ?
{ 	
return 
await 
_context !
.! "
Users" '
. 
Include $
($ %
l% &
=>' )
l* +
.+ ,

LikedUsers, 6
)6 7
. 
FirstOrDefaultAsync 0
(0 1
li1 3
=>4 6
li7 9
.9 :
Id: <
=== ?
userId@ F
)F G
;G H
}   	
public"" 
async"" 
Task"" 
<"" 
	PagedList"" #
<""# $
LikeDto""$ +
>""+ ,
>"", -
GetUserLikes"". :
("": ;
LikesParams""; F
likesParams""G R
)""R S
{## 	
var$$ 
users$$ 
=$$ 
_context$$  
.$$  !
Users$$! &
.$$& '
Include$$' .
($$. /
u$$/ 0
=>$$1 3
u$$4 5
.$$5 6
City$$6 :
)$$: ;
.$$; <
OrderBy$$< C
($$C D
u$$D E
=>$$F H
u$$I J
.$$J K
UserName$$K S
)$$S T
.$$T U
AsQueryable$$U `
($$` a
)$$a b
;$$b c
var%% 
likes%% 
=%% 
_context%%  
.%%  !
Likes%%! &
.%%& '
AsQueryable%%' 2
(%%2 3
)%%3 4
;%%4 5
if'' 
('' 
likesParams'' 
.'' 
	Predicate'' %
.''% &
Equals''& ,
('', -
$str''- 4
)''4 5
)''5 6
{(( 
likes)) 
=)) 
likes)) 
.)) 
Where)) #
())# $
like))$ (
=>))) +
like)), 0
.))0 1
SourceUserId))1 =
==))> @
likesParams))A L
.))L M
UserId))M S
)))S T
;))T U
users** 
=** 
likes** 
.** 
Select** $
(**$ %
like**% )
=>*** ,
like**- 1
.**1 2
	LikedUser**2 ;
)**; <
;**< =
}++ 
if-- 
(-- 
likesParams-- 
.-- 
	Predicate-- %
.--% &
Equals--& ,
(--, -
$str--- 6
)--6 7
)--7 8
{.. 
likes// 
=// 
likes// 
.// 
Where// #
(//# $
like//$ (
=>//) +
like//, 0
.//0 1
LikedUserId//1 <
==//= ?
likesParams//@ K
.//K L
UserId//L R
)//R S
;//S T
users00 
=00 
likes00 
.00 
Select00 $
(00$ %
like00% )
=>00* ,
like00- 1
.001 2

SourceUser002 <
)00< =
;00= >
}11 
var33 

likedUsers33 
=33 
users33 "
.33" #
Select33# )
(33) *
user33* .
=>33/ 1
new332 5
LikeDto336 =
{44 
Username55 
=55 
user55 
.55  
UserName55  (
,55( )
KnownAs66 
=66 
user66 
.66 
KnownAs66 &
,66& '
Age77 
=77 
user77 
.77 
DateOfBirth77 &
.77& '
CalculateAge77' 3
(773 4
)774 5
,775 6
PhotoUrl88 
=88 
user88 
.88  
Photos88  &
.88& '
FirstOrDefault88' 5
(885 6
p886 7
=>888 :
p88; <
.88< =
IsMain88= C
)88C D
.88D E
Url88E H
,88H I
City99 
=99 
user99 
.99 
City99  
.99  !
Name99! %
,99% &
Id:: 
=:: 
user:: 
.:: 
Id:: 
};; 
);; 
;;; 
return== 
await== 
	PagedList== "
<==" #
LikeDto==# *
>==* +
.==+ ,
CreateAsync==, 7
(==7 8

likedUsers==8 B
,==B C
likesParams==D O
.==O P

PageNumber==P Z
,==Z [
likesParams==\ g
.==g h
PageSize==h p
)==p q
;==q r
}>> 	
}?? 
}@@ ÚU
IC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\MessageRepository.cs
	namespace 	
API
 
. 
Data 
{ 
public 

class 
MessageRepository "
:# $
IMessageRepository% 7
{ 
private 
readonly 
DataContext $
_context% -
;- .
private 
readonly 
IMapper  
_mapper! (
;( )
public 
MessageRepository  
(  !
DataContext! ,
context- 4
,4 5
IMapper6 =
mapper> D
)D E
{ 	
_mapper 
= 
mapper 
; 
_context 
= 
context 
; 
} 	
public 
void 
AddGroup 
( 
Group "
group# (
)( )
{ 	
_context 
. 
Groups 
. 
Add 
(  
group  %
)% &
;& '
} 	
public   
void   

AddMessage   
(   
Message   &
message  ' .
)  . /
{!! 	
_context"" 
."" 
Messages"" 
."" 
Add"" !
(""! "
message""" )
)"") *
;""* +
}## 	
public%% 
void%% 
DeleteMessage%% !
(%%! "
Message%%" )
message%%* 1
)%%1 2
{&& 	
_context'' 
.'' 
Messages'' 
.'' 
Remove'' $
(''$ %
message''% ,
)'', -
;''- .
}(( 	
public** 
async** 
Task** 
<** 

Connection** $
>**$ %
GetConnection**& 3
(**3 4
string**4 :
connectionId**; G
)**G H
{++ 	
return,, 
await,, 
_context,, !
.,,! "
Connections,," -
.,,- .
	FindAsync,,. 7
(,,7 8
connectionId,,8 D
),,D E
;,,E F
}-- 	
public// 
async// 
Task// 
<// 
Group// 
>//  !
GetGroupForConnection//! 6
(//6 7
string//7 =
connectionId//> J
)//J K
{00 	
return11 
await11 
_context11 !
.11! "
Groups11" (
.22 
Include22 $
(22$ %
c22% &
=>22' )
c22* +
.22+ ,
Connections22, 7
)227 8
.33 
Where33 "
(33" #
c33# $
=>33% '
c33( )
.33) *
Connections33* 5
.335 6
Any336 9
(339 :
x33: ;
=>33< >
x33? @
.33@ A
ConnectionId33A M
.33M N
Equals33N T
(33T U
connectionId33U a
)33a b
)33b c
)33c d
.44 
FirstOrDefaultAsync44 0
(440 1
)441 2
;442 3
}55 	
public77 
async77 
Task77 
<77 
Message77 !
>77! "

GetMessage77# -
(77- .
int77. 1
id772 4
)774 5
{88 	
return99 
await99 
_context99 !
.99! "
Messages99" *
.:: 
Include::  
(::  !
m::! "
=>::# %
m::& '
.::' (
Sender::( .
)::. /
.;; 
Include;;  
(;;  !
m;;! "
=>;;# %
m;;& '
.;;' (
	Recipient;;( 1
);;1 2
.<<  
SingleOrDefaultAsync<< -
(<<- .
m<<. /
=><<0 2
m<<3 4
.<<4 5
Id<<5 7
==<<8 :
id<<; =
)<<= >
;<<> ?
}== 	
public?? 
async?? 
Task?? 
<?? 
Group?? 
>??  
GetMessageGroup??! 0
(??0 1
string??1 7
	groupName??8 A
)??A B
{@@ 	
returnAA 
awaitAA 
_contextAA !
.AA! "
GroupsAA" (
.BB 
IncludeBB $
(BB$ %
gBB% &
=>BB' )
gBB* +
.BB+ ,
ConnectionsBB, 7
)BB7 8
.CC 
FirstOrDefaultAsyncCC 0
(CC0 1
gCC1 2
=>CC3 5
gCC6 7
.CC7 8
NameCC8 <
.CC< =
EqualsCC= C
(CCC D
	groupNameCCD M
)CCM N
)CCN O
;CCO P
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
	PagedListFF #
<FF# $

MessageDtoFF$ .
>FF. /
>FF/ 0
GetMessagesForUserFF1 C
(FFC D
MessageParamsFFD Q
messageParamsFFR _
)FF_ `
{GG 	
varHH 
queryHH 
=HH 
_contextHH  
.HH  !
MessagesHH! )
.II 
OrderByDescendingII +
(II+ ,
mII, -
=>II. 0
mII1 2
.II2 3
MessageSentII3 >
)II> ?
.JJ 
	ProjectToJJ #
<JJ# $

MessageDtoJJ$ .
>JJ. /
(JJ/ 0
_mapperJJ0 7
.JJ7 8!
ConfigurationProviderJJ8 M
)JJM N
.KK 
AsQueryableKK %
(KK% &
)KK& '
;KK' (
queryMM 
=MM 
messageParamsMM !
.MM! "
	ContainerMM" +
switchMM, 2
{NN 
$strOO 
=>OO 
queryOO  
.OO  !
WhereOO! &
(OO& '
uOO' (
=>OO) +
uOO, -
.OO- .
RecipientUsernameOO. ?
==OO@ B
messageParamsOOC P
.OOP Q
UsernameOOQ Y
&&OOZ \
uOO] ^
.OO^ _
RecipientDeletedOO_ o
==OOp r
falseOOs x
)OOx y
,OOy z
$strPP 
=>PP 
queryPP !
.PP! "
WherePP" '
(PP' (
uPP( )
=>PP* ,
uPP- .
.PP. /
SenderUsernamePP/ =
==PP> @
messageParamsPPA N
.PPN O
UsernamePPO W
&&PPX Z
uPP[ \
.PP\ ]
SenderDeletedPP] j
==PPk m
falsePPn s
)PPs t
,PPt u
_QQ 
=>QQ 
queryQQ 
.QQ 
WhereQQ  
(QQ  !
uQQ! "
=>QQ# %
uQQ& '
.QQ' (
RecipientUsernameQQ( 9
==QQ: <
messageParamsQQ= J
.QQJ K
UsernameQQK S
&&QQT V
uQQW X
.QQX Y
RecipientDeletedQQY i
==QQj l
falseQQm r
&&QQs u
uQQv w
.QQw x
DateRead	QQx Ä
==
QQÅ É
null
QQÑ à
)
QQà â
}RR 
;RR 
returnTT 
awaitTT 
	PagedListTT "
<TT" #

MessageDtoTT# -
>TT- .
.TT. /
CreateAsyncTT/ :
(TT: ;
queryTT; @
,TT@ A
messageParamsTTB O
.TTO P

PageNumberTTP Z
,TTZ [
messageParamsTT\ i
.TTi j
PageSizeTTj r
)TTr s
;TTs t
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IEnumerableWW %
<WW% &

MessageDtoWW& 0
>WW0 1
>WW1 2
GetMessageThreadWW3 C
(WWC D
stringWWD J
currentUsernameWWK Z
,WWZ [
stringWW\ b
recipientUsernameWWc t
)WWt u
{XX 	
varYY 
messagesYY 
=YY 
awaitYY  
_contextYY! )
.YY) *
MessagesYY* 2
.ZZ$ %
WhereZZ% *
(ZZ* +
mZZ+ ,
=>ZZ- /
mZZ0 1
.ZZ1 2
	RecipientZZ2 ;
.ZZ; <
UserNameZZ< D
.ZZD E
EqualsZZE K
(ZZK L
currentUsernameZZL [
)ZZ[ \
&&ZZ] _
mZZ` a
.ZZa b
RecipientDeletedZZb r
==ZZs u
falseZZv {
&&[[( *
m[[+ ,
.[[, -
Sender[[- 3
.[[3 4
UserName[[4 <
.[[< =
Equals[[= C
([[C D
recipientUsername[[D U
)[[U V
||\\( *
m\\+ ,
.\\, -
	Recipient\\- 6
.\\6 7
UserName\\7 ?
.\\? @
Equals\\@ F
(\\F G
recipientUsername\\G X
)\\X Y
&&]]( *
m]]+ ,
.]], -
Sender]]- 3
.]]3 4
UserName]]4 <
.]]< =
Equals]]= C
(]]C D
currentUsername]]D S
)]]S T
&&]]U W
m]]X Y
.]]Y Z
SenderDeleted]]Z g
==]]h j
false]]k p
)^^$ %
.__$ %
OrderBy__% ,
(__, -
m__- .
=>__/ 1
m__2 3
.__3 4
MessageSent__4 ?
)__? @
.``$ %
	ProjectTo``% .
<``. /

MessageDto``/ 9
>``9 :
(``: ;
_mapper``; B
.``B C!
ConfigurationProvider``C X
)``X Y
.aa$ %
ToListAsyncaa% 0
(aa0 1
)aa1 2
;aa2 3
varcc 
unreadMessagescc 
=cc  
messagescc! )
.cc) *
Wherecc* /
(cc/ 0
mcc0 1
=>cc2 4
mcc5 6
.cc6 7
DateReadcc7 ?
==cc@ B
nullccC G
&&ccH J
mccK L
.ccL M
RecipientUsernameccM ^
.cc^ _
Equalscc_ e
(cce f
currentUsernameccf u
)ccu v
)ccv w
.ccw x
ToListccx ~
(cc~ 
)	cc Ä
;
ccÄ Å
ifee 
(ee 
unreadMessagesee 
.ee 
Anyee "
(ee" #
)ee# $
)ee$ %
{ff 
foreachgg 
(gg 
vargg 
messagegg $
ingg% '
unreadMessagesgg( 6
)gg6 7
{hh 
messageii 
.ii 
DateReadii $
=ii% &
DateTimeii' /
.ii/ 0
UtcNowii0 6
;ii6 7
}jj 
}kk 
returnmm 
messagesmm 
;mm 
}nn 	
publicpp 
voidpp 
RemoveConnectionpp $
(pp$ %

Connectionpp% /

connectionpp0 :
)pp: ;
{qq 	
_contextrr 
.rr 
Connectionsrr  
.rr  !
Removerr! '
(rr' (

connectionrr( 2
)rr2 3
;rr3 4
}ss 	
}tt 
}uu ¡≤
aC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\Migrations\20210214012252_InitialCreation.cs
	namespace 	
API
 
. 
Data 
. 

Migrations 
{ 
public 

partial 
class 
InitialCreation (
:) *
	Migration+ 4
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
$str1 :
,: ;
nullable< D
:D E
falseF K
)K L
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
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
$str6 N
,N O
	maxLengthP Y
:Y Z
$num[ ^
,^ _
nullable` h
:h i
truej n
)n o
,o p
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
$str@ X
,X Y
	maxLengthZ c
:c d
$nume h
,h i
nullablej r
:r s
truet x
)x y
,y z
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
$strB H
,H I
nullableJ R
:R S
trueT X
)X Y
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
$str !
,! "
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
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 :
,: ;
nullable< D
:D E
falseF K
)K L
. 

Annotation #
(# $
$str$ D
,D E)
NpgsqlValueGenerationStrategyF c
.c d#
IdentityByDefaultColumnd {
){ |
,| }
Name   
=   
table    
.    !
Column  ! '
<  ' (
string  ( .
>  . /
(  / 0
type  0 4
:  4 5
$str  6 <
,  < =
nullable  > F
:  F G
true  H L
)  L M
}!! 
,!! 
constraints"" 
:"" 
table"" "
=>""# %
{## 
table$$ 
.$$ 

PrimaryKey$$ $
($$$ %
$str$$% 3
,$$3 4
x$$5 6
=>$$7 9
x$$: ;
.$$; <
Id$$< >
)$$> ?
;$$? @
}%% 
)%% 
;%% 
migrationBuilder'' 
.'' 
CreateTable'' (
(''( )
name(( 
:(( 
$str(( 
,(( 
columns)) 
:)) 
table)) 
=>)) !
new))" %
{** 
Name++ 
=++ 
table++  
.++  !
Column++! '
<++' (
string++( .
>++. /
(++/ 0
type++0 4
:++4 5
$str++6 <
,++< =
nullable++> F
:++F G
false++H M
)++M N
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
$str//% 0
,//0 1
x//2 3
=>//4 6
x//7 8
.//8 9
Name//9 =
)//= >
;//> ?
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
(66* +
type66+ /
:66/ 0
$str661 :
,66: ;
nullable66< D
:66D E
false66F K
)66K L
.77 

Annotation77 #
(77# $
$str77$ D
,77D E)
NpgsqlValueGenerationStrategy77F c
.77c d#
IdentityByDefaultColumn77d {
)77{ |
,77| }
RoleId88 
=88 
table88 "
.88" #
Column88# )
<88) *
int88* -
>88- .
(88. /
type88/ 3
:883 4
$str885 >
,88> ?
nullable88@ H
:88H I
false88J O
)88O P
,88P Q
	ClaimType99 
=99 
table99  %
.99% &
Column99& ,
<99, -
string99- 3
>993 4
(994 5
type995 9
:999 :
$str99; A
,99A B
nullable99C K
:99K L
true99M Q
)99Q R
,99R S

ClaimValue:: 
=::  
table::! &
.::& '
Column::' -
<::- .
string::. 4
>::4 5
(::5 6
type::6 :
:::: ;
$str::< B
,::B C
nullable::D L
:::L M
true::N R
)::R S
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
$strHH 
,HH 
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
(KK* +
typeKK+ /
:KK/ 0
$strKK1 :
,KK: ;
nullableKK< D
:KKD E
falseKKF K
)KKK L
.LL 

AnnotationLL #
(LL# $
$strLL$ D
,LLD E)
NpgsqlValueGenerationStrategyLLF c
.LLc d#
IdentityByDefaultColumnLLd {
)LL{ |
,LL| }
NameMM 
=MM 
tableMM  
.MM  !
ColumnMM! '
<MM' (
stringMM( .
>MM. /
(MM/ 0
typeMM0 4
:MM4 5
$strMM6 <
,MM< =
nullableMM> F
:MMF G
trueMMH L
)MML M
,MMM N
	CountryIdNN 
=NN 
tableNN  %
.NN% &
ColumnNN& ,
<NN, -
intNN- 0
>NN0 1
(NN1 2
typeNN2 6
:NN6 7
$strNN8 A
,NNA B
nullableNNC K
:NNK L
falseNNM R
)NNR S
}OO 
,OO 
constraintsPP 
:PP 
tablePP "
=>PP# %
{QQ 
tableRR 
.RR 

PrimaryKeyRR $
(RR$ %
$strRR% 0
,RR0 1
xRR2 3
=>RR4 6
xRR7 8
.RR8 9
IdRR9 ;
)RR; <
;RR< =
tableSS 
.SS 

ForeignKeySS $
(SS$ %
nameTT 
:TT 
$strTT =
,TT= >
columnUU 
:UU 
xUU  !
=>UU" $
xUU% &
.UU& '
	CountryIdUU' 0
,UU0 1
principalTableVV &
:VV& '
$strVV( 3
,VV3 4
principalColumnWW '
:WW' (
$strWW) -
,WW- .
onDeleteXX  
:XX  !
ReferentialActionXX" 3
.XX3 4
CascadeXX4 ;
)XX; <
;XX< =
}YY 
)YY 
;YY 
migrationBuilder[[ 
.[[ 
CreateTable[[ (
([[( )
name\\ 
:\\ 
$str\\ #
,\\# $
columns]] 
:]] 
table]] 
=>]] !
new]]" %
{^^ 
ConnectionId__  
=__! "
table__# (
.__( )
Column__) /
<__/ 0
string__0 6
>__6 7
(__7 8
type__8 <
:__< =
$str__> D
,__D E
nullable__F N
:__N O
false__P U
)__U V
,__V W
Username`` 
=`` 
table`` $
.``$ %
Column``% +
<``+ ,
string``, 2
>``2 3
(``3 4
type``4 8
:``8 9
$str``: @
,``@ A
nullable``B J
:``J K
true``L P
)``P Q
,``Q R
	GroupNameaa 
=aa 
tableaa  %
.aa% &
Columnaa& ,
<aa, -
stringaa- 3
>aa3 4
(aa4 5
typeaa5 9
:aa9 :
$straa; A
,aaA B
nullableaaC K
:aaK L
trueaaM Q
)aaQ R
}bb 
,bb 
constraintscc 
:cc 
tablecc "
=>cc# %
{dd 
tableee 
.ee 

PrimaryKeyee $
(ee$ %
$stree% 5
,ee5 6
xee7 8
=>ee9 ;
xee< =
.ee= >
ConnectionIdee> J
)eeJ K
;eeK L
tableff 
.ff 

ForeignKeyff $
(ff$ %
namegg 
:gg 
$strgg ?
,gg? @
columnhh 
:hh 
xhh  !
=>hh" $
xhh% &
.hh& '
	GroupNamehh' 0
,hh0 1
principalTableii &
:ii& '
$strii( 0
,ii0 1
principalColumnjj '
:jj' (
$strjj) /
,jj/ 0
onDeletekk  
:kk  !
ReferentialActionkk" 3
.kk3 4
Restrictkk4 <
)kk< =
;kk= >
}ll 
)ll 
;ll 
migrationBuildernn 
.nn 
CreateTablenn (
(nn( )
nameoo 
:oo 
$stroo 
,oo 
columnspp 
:pp 
tablepp 
=>pp !
newpp" %
{qq 
Idrr 
=rr 
tablerr 
.rr 
Columnrr %
<rr% &
intrr& )
>rr) *
(rr* +
typerr+ /
:rr/ 0
$strrr1 :
,rr: ;
nullablerr< D
:rrD E
falserrF K
)rrK L
.ss 

Annotationss #
(ss# $
$strss$ D
,ssD E)
NpgsqlValueGenerationStrategyssF c
.ssc d#
IdentityByDefaultColumnssd {
)ss{ |
,ss| }
Namett 
=tt 
tablett  
.tt  !
Columntt! '
<tt' (
stringtt( .
>tt. /
(tt/ 0
typett0 4
:tt4 5
$strtt6 <
,tt< =
nullablett> F
:ttF G
truettH L
)ttL M
,ttM N
StateIduu 
=uu 
tableuu #
.uu# $
Columnuu$ *
<uu* +
intuu+ .
>uu. /
(uu/ 0
typeuu0 4
:uu4 5
$struu6 ?
,uu? @
nullableuuA I
:uuI J
falseuuK P
)uuP Q
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
$stryy% 0
,yy0 1
xyy2 3
=>yy4 6
xyy7 8
.yy8 9
Idyy9 ;
)yy; <
;yy< =
tablezz 
.zz 

ForeignKeyzz $
(zz$ %
name{{ 
:{{ 
$str{{ 8
,{{8 9
column|| 
:|| 
x||  !
=>||" $
x||% &
.||& '
StateId||' .
,||. /
principalTable}} &
:}}& '
$str}}( 0
,}}0 1
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
;< =
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
migrationBuilder
ÇÇ 
.
ÇÇ 
CreateTable
ÇÇ (
(
ÇÇ( )
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ #
,
ÉÉ# $
columns
ÑÑ 
:
ÑÑ 
table
ÑÑ 
=>
ÑÑ !
new
ÑÑ" %
{
ÖÖ 
Id
ÜÜ 
=
ÜÜ 
table
ÜÜ 
.
ÜÜ 
Column
ÜÜ %
<
ÜÜ% &
int
ÜÜ& )
>
ÜÜ) *
(
ÜÜ* +
type
ÜÜ+ /
:
ÜÜ/ 0
$str
ÜÜ1 :
,
ÜÜ: ;
nullable
ÜÜ< D
:
ÜÜD E
false
ÜÜF K
)
ÜÜK L
.
áá 

Annotation
áá #
(
áá# $
$str
áá$ D
,
ááD E+
NpgsqlValueGenerationStrategy
ááF c
.
áác d%
IdentityByDefaultColumn
áád {
)
áá{ |
,
áá| }
DateOfBirth
àà 
=
àà  !
table
àà" '
.
àà' (
Column
àà( .
<
àà. /
DateTime
àà/ 7
>
àà7 8
(
àà8 9
type
àà9 =
:
àà= >
$str
àà? \
,
àà\ ]
nullable
àà^ f
:
ààf g
false
ààh m
)
ààm n
,
ààn o
KnownAs
ââ 
=
ââ 
table
ââ #
.
ââ# $
Column
ââ$ *
<
ââ* +
string
ââ+ 1
>
ââ1 2
(
ââ2 3
type
ââ3 7
:
ââ7 8
$str
ââ9 ?
,
ââ? @
nullable
ââA I
:
ââI J
true
ââK O
)
ââO P
,
ââP Q
Created
ää 
=
ää 
table
ää #
.
ää# $
Column
ää$ *
<
ää* +
DateTime
ää+ 3
>
ää3 4
(
ää4 5
type
ää5 9
:
ää9 :
$str
ää; X
,
ääX Y
nullable
ääZ b
:
ääb c
false
ääd i
)
ääi j
,
ääj k

LastActive
ãã 
=
ãã  
table
ãã! &
.
ãã& '
Column
ãã' -
<
ãã- .
DateTime
ãã. 6
>
ãã6 7
(
ãã7 8
type
ãã8 <
:
ãã< =
$str
ãã> [
,
ãã[ \
nullable
ãã] e
:
ããe f
false
ããg l
)
ããl m
,
ããm n
Gender
åå 
=
åå 
table
åå "
.
åå" #
Column
åå# )
<
åå) *
string
åå* 0
>
åå0 1
(
åå1 2
type
åå2 6
:
åå6 7
$str
åå8 >
,
åå> ?
nullable
åå@ H
:
ååH I
true
ååJ N
)
ååN O
,
ååO P
Introduction
çç  
=
çç! "
table
çç# (
.
çç( )
Column
çç) /
<
çç/ 0
string
çç0 6
>
çç6 7
(
çç7 8
type
çç8 <
:
çç< =
$str
çç> D
,
ççD E
nullable
ççF N
:
ççN O
true
ççP T
)
ççT U
,
ççU V

LookingFor
éé 
=
éé  
table
éé! &
.
éé& '
Column
éé' -
<
éé- .
string
éé. 4
>
éé4 5
(
éé5 6
type
éé6 :
:
éé: ;
$str
éé< B
,
ééB C
nullable
ééD L
:
ééL M
true
ééN R
)
ééR S
,
ééS T
	Interests
èè 
=
èè 
table
èè  %
.
èè% &
Column
èè& ,
<
èè, -
string
èè- 3
>
èè3 4
(
èè4 5
type
èè5 9
:
èè9 :
$str
èè; A
,
èèA B
nullable
èèC K
:
èèK L
true
èèM Q
)
èèQ R
,
èèR S
CityId
êê 
=
êê 
table
êê "
.
êê" #
Column
êê# )
<
êê) *
int
êê* -
>
êê- .
(
êê. /
type
êê/ 3
:
êê3 4
$str
êê5 >
,
êê> ?
nullable
êê@ H
:
êêH I
false
êêJ O
)
êêO P
,
êêP Q
UserName
ëë 
=
ëë 
table
ëë $
.
ëë$ %
Column
ëë% +
<
ëë+ ,
string
ëë, 2
>
ëë2 3
(
ëë3 4
type
ëë4 8
:
ëë8 9
$str
ëë: R
,
ëëR S
	maxLength
ëëT ]
:
ëë] ^
$num
ëë_ b
,
ëëb c
nullable
ëëd l
:
ëël m
true
ëën r
)
ëër s
,
ëës t 
NormalizedUserName
íí &
=
íí' (
table
íí) .
.
íí. /
Column
íí/ 5
<
íí5 6
string
íí6 <
>
íí< =
(
íí= >
type
íí> B
:
ííB C
$str
ííD \
,
íí\ ]
	maxLength
íí^ g
:
ííg h
$num
ííi l
,
ííl m
nullable
íín v
:
íív w
true
ííx |
)
íí| }
,
íí} ~
Email
ìì 
=
ìì 
table
ìì !
.
ìì! "
Column
ìì" (
<
ìì( )
string
ìì) /
>
ìì/ 0
(
ìì0 1
type
ìì1 5
:
ìì5 6
$str
ìì7 O
,
ììO P
	maxLength
ììQ Z
:
ììZ [
$num
ìì\ _
,
ìì_ `
nullable
ììa i
:
ììi j
true
ììk o
)
ììo p
,
ììp q
NormalizedEmail
îî #
=
îî$ %
table
îî& +
.
îî+ ,
Column
îî, 2
<
îî2 3
string
îî3 9
>
îî9 :
(
îî: ;
type
îî; ?
:
îî? @
$str
îîA Y
,
îîY Z
	maxLength
îî[ d
:
îîd e
$num
îîf i
,
îîi j
nullable
îîk s
:
îîs t
true
îîu y
)
îîy z
,
îîz {
EmailConfirmed
ïï "
=
ïï# $
table
ïï% *
.
ïï* +
Column
ïï+ 1
<
ïï1 2
bool
ïï2 6
>
ïï6 7
(
ïï7 8
type
ïï8 <
:
ïï< =
$str
ïï> G
,
ïïG H
nullable
ïïI Q
:
ïïQ R
false
ïïS X
)
ïïX Y
,
ïïY Z
PasswordHash
ññ  
=
ññ! "
table
ññ# (
.
ññ( )
Column
ññ) /
<
ññ/ 0
string
ññ0 6
>
ññ6 7
(
ññ7 8
type
ññ8 <
:
ññ< =
$str
ññ> D
,
ññD E
nullable
ññF N
:
ññN O
true
ññP T
)
ññT U
,
ññU V
SecurityStamp
óó !
=
óó" #
table
óó$ )
.
óó) *
Column
óó* 0
<
óó0 1
string
óó1 7
>
óó7 8
(
óó8 9
type
óó9 =
:
óó= >
$str
óó? E
,
óóE F
nullable
óóG O
:
óóO P
true
óóQ U
)
óóU V
,
óóV W
ConcurrencyStamp
òò $
=
òò% &
table
òò' ,
.
òò, -
Column
òò- 3
<
òò3 4
string
òò4 :
>
òò: ;
(
òò; <
type
òò< @
:
òò@ A
$str
òòB H
,
òòH I
nullable
òòJ R
:
òòR S
true
òòT X
)
òòX Y
,
òòY Z
PhoneNumber
ôô 
=
ôô  !
table
ôô" '
.
ôô' (
Column
ôô( .
<
ôô. /
string
ôô/ 5
>
ôô5 6
(
ôô6 7
type
ôô7 ;
:
ôô; <
$str
ôô= C
,
ôôC D
nullable
ôôE M
:
ôôM N
true
ôôO S
)
ôôS T
,
ôôT U"
PhoneNumberConfirmed
öö (
=
öö) *
table
öö+ 0
.
öö0 1
Column
öö1 7
<
öö7 8
bool
öö8 <
>
öö< =
(
öö= >
type
öö> B
:
ööB C
$str
ööD M
,
ööM N
nullable
ööO W
:
ööW X
false
ööY ^
)
öö^ _
,
öö_ `
TwoFactorEnabled
õõ $
=
õõ% &
table
õõ' ,
.
õõ, -
Column
õõ- 3
<
õõ3 4
bool
õõ4 8
>
õõ8 9
(
õõ9 :
type
õõ: >
:
õõ> ?
$str
õõ@ I
,
õõI J
nullable
õõK S
:
õõS T
false
õõU Z
)
õõZ [
,
õõ[ \

LockoutEnd
úú 
=
úú  
table
úú! &
.
úú& '
Column
úú' -
<
úú- .
DateTimeOffset
úú. <
>
úú< =
(
úú= >
type
úú> B
:
úúB C
$str
úúD ^
,
úú^ _
nullable
úú` h
:
úúh i
true
úúj n
)
úún o
,
úúo p
LockoutEnabled
ùù "
=
ùù# $
table
ùù% *
.
ùù* +
Column
ùù+ 1
<
ùù1 2
bool
ùù2 6
>
ùù6 7
(
ùù7 8
type
ùù8 <
:
ùù< =
$str
ùù> G
,
ùùG H
nullable
ùùI Q
:
ùùQ R
false
ùùS X
)
ùùX Y
,
ùùY Z
AccessFailedCount
ûû %
=
ûû& '
table
ûû( -
.
ûû- .
Column
ûû. 4
<
ûû4 5
int
ûû5 8
>
ûû8 9
(
ûû9 :
type
ûû: >
:
ûû> ?
$str
ûû@ I
,
ûûI J
nullable
ûûK S
:
ûûS T
false
ûûU Z
)
ûûZ [
}
üü 
,
üü 
constraints
†† 
:
†† 
table
†† "
=>
††# %
{
°° 
table
¢¢ 
.
¢¢ 

PrimaryKey
¢¢ $
(
¢¢$ %
$str
¢¢% 5
,
¢¢5 6
x
¢¢7 8
=>
¢¢9 ;
x
¢¢< =
.
¢¢= >
Id
¢¢> @
)
¢¢@ A
;
¢¢A B
table
££ 
.
££ 

ForeignKey
££ $
(
££$ %
name
§§ 
:
§§ 
$str
§§ <
,
§§< =
column
•• 
:
•• 
x
••  !
=>
••" $
x
••% &
.
••& '
CityId
••' -
,
••- .
principalTable
¶¶ &
:
¶¶& '
$str
¶¶( 0
,
¶¶0 1
principalColumn
ßß '
:
ßß' (
$str
ßß) -
,
ßß- .
onDelete
®®  
:
®®  !
ReferentialAction
®®" 3
.
®®3 4
Cascade
®®4 ;
)
®®; <
;
®®< =
}
©© 
)
©© 
;
©© 
migrationBuilder
´´ 
.
´´ 
CreateTable
´´ (
(
´´( )
name
¨¨ 
:
¨¨ 
$str
¨¨ (
,
¨¨( )
columns
≠≠ 
:
≠≠ 
table
≠≠ 
=>
≠≠ !
new
≠≠" %
{
ÆÆ 
Id
ØØ 
=
ØØ 
table
ØØ 
.
ØØ 
Column
ØØ %
<
ØØ% &
int
ØØ& )
>
ØØ) *
(
ØØ* +
type
ØØ+ /
:
ØØ/ 0
$str
ØØ1 :
,
ØØ: ;
nullable
ØØ< D
:
ØØD E
false
ØØF K
)
ØØK L
.
∞∞ 

Annotation
∞∞ #
(
∞∞# $
$str
∞∞$ D
,
∞∞D E+
NpgsqlValueGenerationStrategy
∞∞F c
.
∞∞c d%
IdentityByDefaultColumn
∞∞d {
)
∞∞{ |
,
∞∞| }
UserId
±± 
=
±± 
table
±± "
.
±±" #
Column
±±# )
<
±±) *
int
±±* -
>
±±- .
(
±±. /
type
±±/ 3
:
±±3 4
$str
±±5 >
,
±±> ?
nullable
±±@ H
:
±±H I
false
±±J O
)
±±O P
,
±±P Q
	ClaimType
≤≤ 
=
≤≤ 
table
≤≤  %
.
≤≤% &
Column
≤≤& ,
<
≤≤, -
string
≤≤- 3
>
≤≤3 4
(
≤≤4 5
type
≤≤5 9
:
≤≤9 :
$str
≤≤; A
,
≤≤A B
nullable
≤≤C K
:
≤≤K L
true
≤≤M Q
)
≤≤Q R
,
≤≤R S

ClaimValue
≥≥ 
=
≥≥  
table
≥≥! &
.
≥≥& '
Column
≥≥' -
<
≥≥- .
string
≥≥. 4
>
≥≥4 5
(
≥≥5 6
type
≥≥6 :
:
≥≥: ;
$str
≥≥< B
,
≥≥B C
nullable
≥≥D L
:
≥≥L M
true
≥≥N R
)
≥≥R S
}
¥¥ 
,
¥¥ 
constraints
µµ 
:
µµ 
table
µµ "
=>
µµ# %
{
∂∂ 
table
∑∑ 
.
∑∑ 

PrimaryKey
∑∑ $
(
∑∑$ %
$str
∑∑% :
,
∑∑: ;
x
∑∑< =
=>
∑∑> @
x
∑∑A B
.
∑∑B C
Id
∑∑C E
)
∑∑E F
;
∑∑F G
table
∏∏ 
.
∏∏ 

ForeignKey
∏∏ $
(
∏∏$ %
name
ππ 
:
ππ 
$str
ππ F
,
ππF G
column
∫∫ 
:
∫∫ 
x
∫∫  !
=>
∫∫" $
x
∫∫% &
.
∫∫& '
UserId
∫∫' -
,
∫∫- .
principalTable
ªª &
:
ªª& '
$str
ªª( 5
,
ªª5 6
principalColumn
ºº '
:
ºº' (
$str
ºº) -
,
ºº- .
onDelete
ΩΩ  
:
ΩΩ  !
ReferentialAction
ΩΩ" 3
.
ΩΩ3 4
Cascade
ΩΩ4 ;
)
ΩΩ; <
;
ΩΩ< =
}
ææ 
)
ææ 
;
ææ 
migrationBuilder
¿¿ 
.
¿¿ 
CreateTable
¿¿ (
(
¿¿( )
name
¡¡ 
:
¡¡ 
$str
¡¡ (
,
¡¡( )
columns
¬¬ 
:
¬¬ 
table
¬¬ 
=>
¬¬ !
new
¬¬" %
{
√√ 
LoginProvider
ƒƒ !
=
ƒƒ" #
table
ƒƒ$ )
.
ƒƒ) *
Column
ƒƒ* 0
<
ƒƒ0 1
string
ƒƒ1 7
>
ƒƒ7 8
(
ƒƒ8 9
type
ƒƒ9 =
:
ƒƒ= >
$str
ƒƒ? E
,
ƒƒE F
nullable
ƒƒG O
:
ƒƒO P
false
ƒƒQ V
)
ƒƒV W
,
ƒƒW X
ProviderKey
≈≈ 
=
≈≈  !
table
≈≈" '
.
≈≈' (
Column
≈≈( .
<
≈≈. /
string
≈≈/ 5
>
≈≈5 6
(
≈≈6 7
type
≈≈7 ;
:
≈≈; <
$str
≈≈= C
,
≈≈C D
nullable
≈≈E M
:
≈≈M N
false
≈≈O T
)
≈≈T U
,
≈≈U V!
ProviderDisplayName
∆∆ '
=
∆∆( )
table
∆∆* /
.
∆∆/ 0
Column
∆∆0 6
<
∆∆6 7
string
∆∆7 =
>
∆∆= >
(
∆∆> ?
type
∆∆? C
:
∆∆C D
$str
∆∆E K
,
∆∆K L
nullable
∆∆M U
:
∆∆U V
true
∆∆W [
)
∆∆[ \
,
∆∆\ ]
UserId
«« 
=
«« 
table
«« "
.
««" #
Column
««# )
<
««) *
int
««* -
>
««- .
(
««. /
type
««/ 3
:
««3 4
$str
««5 >
,
««> ?
nullable
««@ H
:
««H I
false
««J O
)
««O P
}
»» 
,
»» 
constraints
…… 
:
…… 
table
…… "
=>
……# %
{
   
table
ÀÀ 
.
ÀÀ 

PrimaryKey
ÀÀ $
(
ÀÀ$ %
$str
ÀÀ% :
,
ÀÀ: ;
x
ÀÀ< =
=>
ÀÀ> @
new
ÀÀA D
{
ÀÀE F
x
ÀÀG H
.
ÀÀH I
LoginProvider
ÀÀI V
,
ÀÀV W
x
ÀÀX Y
.
ÀÀY Z
ProviderKey
ÀÀZ e
}
ÀÀf g
)
ÀÀg h
;
ÀÀh i
table
ÃÃ 
.
ÃÃ 

ForeignKey
ÃÃ $
(
ÃÃ$ %
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ F
,
ÕÕF G
column
ŒŒ 
:
ŒŒ 
x
ŒŒ  !
=>
ŒŒ" $
x
ŒŒ% &
.
ŒŒ& '
UserId
ŒŒ' -
,
ŒŒ- .
principalTable
œœ &
:
œœ& '
$str
œœ( 5
,
œœ5 6
principalColumn
–– '
:
––' (
$str
––) -
,
––- .
onDelete
——  
:
——  !
ReferentialAction
——" 3
.
——3 4
Cascade
——4 ;
)
——; <
;
——< =
}
““ 
)
““ 
;
““ 
migrationBuilder
‘‘ 
.
‘‘ 
CreateTable
‘‘ (
(
‘‘( )
name
’’ 
:
’’ 
$str
’’ '
,
’’' (
columns
÷÷ 
:
÷÷ 
table
÷÷ 
=>
÷÷ !
new
÷÷" %
{
◊◊ 
UserId
ÿÿ 
=
ÿÿ 
table
ÿÿ "
.
ÿÿ" #
Column
ÿÿ# )
<
ÿÿ) *
int
ÿÿ* -
>
ÿÿ- .
(
ÿÿ. /
type
ÿÿ/ 3
:
ÿÿ3 4
$str
ÿÿ5 >
,
ÿÿ> ?
nullable
ÿÿ@ H
:
ÿÿH I
false
ÿÿJ O
)
ÿÿO P
,
ÿÿP Q
RoleId
ŸŸ 
=
ŸŸ 
table
ŸŸ "
.
ŸŸ" #
Column
ŸŸ# )
<
ŸŸ) *
int
ŸŸ* -
>
ŸŸ- .
(
ŸŸ. /
type
ŸŸ/ 3
:
ŸŸ3 4
$str
ŸŸ5 >
,
ŸŸ> ?
nullable
ŸŸ@ H
:
ŸŸH I
false
ŸŸJ O
)
ŸŸO P
}
⁄⁄ 
,
⁄⁄ 
constraints
€€ 
:
€€ 
table
€€ "
=>
€€# %
{
‹‹ 
table
›› 
.
›› 

PrimaryKey
›› $
(
››$ %
$str
››% 9
,
››9 :
x
››; <
=>
››= ?
new
››@ C
{
››D E
x
››F G
.
››G H
UserId
››H N
,
››N O
x
››P Q
.
››Q R
RoleId
››R X
}
››Y Z
)
››Z [
;
››[ \
table
ﬁﬁ 
.
ﬁﬁ 

ForeignKey
ﬁﬁ $
(
ﬁﬁ$ %
name
ﬂﬂ 
:
ﬂﬂ 
$str
ﬂﬂ E
,
ﬂﬂE F
column
‡‡ 
:
‡‡ 
x
‡‡  !
=>
‡‡" $
x
‡‡% &
.
‡‡& '
RoleId
‡‡' -
,
‡‡- .
principalTable
·· &
:
··& '
$str
··( 5
,
··5 6
principalColumn
‚‚ '
:
‚‚' (
$str
‚‚) -
,
‚‚- .
onDelete
„„  
:
„„  !
ReferentialAction
„„" 3
.
„„3 4
Cascade
„„4 ;
)
„„; <
;
„„< =
table
‰‰ 
.
‰‰ 

ForeignKey
‰‰ $
(
‰‰$ %
name
ÂÂ 
:
ÂÂ 
$str
ÂÂ E
,
ÂÂE F
column
ÊÊ 
:
ÊÊ 
x
ÊÊ  !
=>
ÊÊ" $
x
ÊÊ% &
.
ÊÊ& '
UserId
ÊÊ' -
,
ÊÊ- .
principalTable
ÁÁ &
:
ÁÁ& '
$str
ÁÁ( 5
,
ÁÁ5 6
principalColumn
ËË '
:
ËË' (
$str
ËË) -
,
ËË- .
onDelete
ÈÈ  
:
ÈÈ  !
ReferentialAction
ÈÈ" 3
.
ÈÈ3 4
Cascade
ÈÈ4 ;
)
ÈÈ; <
;
ÈÈ< =
}
ÍÍ 
)
ÍÍ 
;
ÍÍ 
migrationBuilder
ÏÏ 
.
ÏÏ 
CreateTable
ÏÏ (
(
ÏÏ( )
name
ÌÌ 
:
ÌÌ 
$str
ÌÌ (
,
ÌÌ( )
columns
ÓÓ 
:
ÓÓ 
table
ÓÓ 
=>
ÓÓ !
new
ÓÓ" %
{
ÔÔ 
UserId
 
=
 
table
 "
.
" #
Column
# )
<
) *
int
* -
>
- .
(
. /
type
/ 3
:
3 4
$str
5 >
,
> ?
nullable
@ H
:
H I
false
J O
)
O P
,
P Q
LoginProvider
ÒÒ !
=
ÒÒ" #
table
ÒÒ$ )
.
ÒÒ) *
Column
ÒÒ* 0
<
ÒÒ0 1
string
ÒÒ1 7
>
ÒÒ7 8
(
ÒÒ8 9
type
ÒÒ9 =
:
ÒÒ= >
$str
ÒÒ? E
,
ÒÒE F
nullable
ÒÒG O
:
ÒÒO P
false
ÒÒQ V
)
ÒÒV W
,
ÒÒW X
Name
ÚÚ 
=
ÚÚ 
table
ÚÚ  
.
ÚÚ  !
Column
ÚÚ! '
<
ÚÚ' (
string
ÚÚ( .
>
ÚÚ. /
(
ÚÚ/ 0
type
ÚÚ0 4
:
ÚÚ4 5
$str
ÚÚ6 <
,
ÚÚ< =
nullable
ÚÚ> F
:
ÚÚF G
false
ÚÚH M
)
ÚÚM N
,
ÚÚN O
Value
ÛÛ 
=
ÛÛ 
table
ÛÛ !
.
ÛÛ! "
Column
ÛÛ" (
<
ÛÛ( )
string
ÛÛ) /
>
ÛÛ/ 0
(
ÛÛ0 1
type
ÛÛ1 5
:
ÛÛ5 6
$str
ÛÛ7 =
,
ÛÛ= >
nullable
ÛÛ? G
:
ÛÛG H
true
ÛÛI M
)
ÛÛM N
}
ÙÙ 
,
ÙÙ 
constraints
ıı 
:
ıı 
table
ıı "
=>
ıı# %
{
ˆˆ 
table
˜˜ 
.
˜˜ 

PrimaryKey
˜˜ $
(
˜˜$ %
$str
˜˜% :
,
˜˜: ;
x
˜˜< =
=>
˜˜> @
new
˜˜A D
{
˜˜E F
x
˜˜G H
.
˜˜H I
UserId
˜˜I O
,
˜˜O P
x
˜˜Q R
.
˜˜R S
LoginProvider
˜˜S `
,
˜˜` a
x
˜˜b c
.
˜˜c d
Name
˜˜d h
}
˜˜i j
)
˜˜j k
;
˜˜k l
table
¯¯ 
.
¯¯ 

ForeignKey
¯¯ $
(
¯¯$ %
name
˘˘ 
:
˘˘ 
$str
˘˘ F
,
˘˘F G
column
˙˙ 
:
˙˙ 
x
˙˙  !
=>
˙˙" $
x
˙˙% &
.
˙˙& '
UserId
˙˙' -
,
˙˙- .
principalTable
˚˚ &
:
˚˚& '
$str
˚˚( 5
,
˚˚5 6
principalColumn
¸¸ '
:
¸¸' (
$str
¸¸) -
,
¸¸- .
onDelete
˝˝  
:
˝˝  !
ReferentialAction
˝˝" 3
.
˝˝3 4
Cascade
˝˝4 ;
)
˝˝; <
;
˝˝< =
}
˛˛ 
)
˛˛ 
;
˛˛ 
migrationBuilder
ÄÄ 
.
ÄÄ 
CreateTable
ÄÄ (
(
ÄÄ( )
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ 
,
ÅÅ 
columns
ÇÇ 
:
ÇÇ 
table
ÇÇ 
=>
ÇÇ !
new
ÇÇ" %
{
ÉÉ 
SourceUserId
ÑÑ  
=
ÑÑ! "
table
ÑÑ# (
.
ÑÑ( )
Column
ÑÑ) /
<
ÑÑ/ 0
int
ÑÑ0 3
>
ÑÑ3 4
(
ÑÑ4 5
type
ÑÑ5 9
:
ÑÑ9 :
$str
ÑÑ; D
,
ÑÑD E
nullable
ÑÑF N
:
ÑÑN O
false
ÑÑP U
)
ÑÑU V
,
ÑÑV W
LikedUserId
ÖÖ 
=
ÖÖ  !
table
ÖÖ" '
.
ÖÖ' (
Column
ÖÖ( .
<
ÖÖ. /
int
ÖÖ/ 2
>
ÖÖ2 3
(
ÖÖ3 4
type
ÖÖ4 8
:
ÖÖ8 9
$str
ÖÖ: C
,
ÖÖC D
nullable
ÖÖE M
:
ÖÖM N
false
ÖÖO T
)
ÖÖT U
}
ÜÜ 
,
ÜÜ 
constraints
áá 
:
áá 
table
áá "
=>
áá# %
{
àà 
table
ââ 
.
ââ 

PrimaryKey
ââ $
(
ââ$ %
$str
ââ% /
,
ââ/ 0
x
ââ1 2
=>
ââ3 5
new
ââ6 9
{
ââ: ;
x
ââ< =
.
ââ= >
SourceUserId
ââ> J
,
ââJ K
x
ââL M
.
ââM N
LikedUserId
ââN Y
}
ââZ [
)
ââ[ \
;
ââ\ ]
table
ää 
.
ää 

ForeignKey
ää $
(
ää$ %
name
ãã 
:
ãã 
$str
ãã @
,
ãã@ A
column
åå 
:
åå 
x
åå  !
=>
åå" $
x
åå% &
.
åå& '
LikedUserId
åå' 2
,
åå2 3
principalTable
çç &
:
çç& '
$str
çç( 5
,
çç5 6
principalColumn
éé '
:
éé' (
$str
éé) -
,
éé- .
onDelete
èè  
:
èè  !
ReferentialAction
èè" 3
.
èè3 4
Cascade
èè4 ;
)
èè; <
;
èè< =
table
êê 
.
êê 

ForeignKey
êê $
(
êê$ %
name
ëë 
:
ëë 
$str
ëë A
,
ëëA B
column
íí 
:
íí 
x
íí  !
=>
íí" $
x
íí% &
.
íí& '
SourceUserId
íí' 3
,
íí3 4
principalTable
ìì &
:
ìì& '
$str
ìì( 5
,
ìì5 6
principalColumn
îî '
:
îî' (
$str
îî) -
,
îî- .
onDelete
ïï  
:
ïï  !
ReferentialAction
ïï" 3
.
ïï3 4
Cascade
ïï4 ;
)
ïï; <
;
ïï< =
}
ññ 
)
ññ 
;
ññ 
migrationBuilder
òò 
.
òò 
CreateTable
òò (
(
òò( )
name
ôô 
:
ôô 
$str
ôô  
,
ôô  !
columns
öö 
:
öö 
table
öö 
=>
öö !
new
öö" %
{
õõ 
Id
úú 
=
úú 
table
úú 
.
úú 
Column
úú %
<
úú% &
int
úú& )
>
úú) *
(
úú* +
type
úú+ /
:
úú/ 0
$str
úú1 :
,
úú: ;
nullable
úú< D
:
úúD E
false
úúF K
)
úúK L
.
ùù 

Annotation
ùù #
(
ùù# $
$str
ùù$ D
,
ùùD E+
NpgsqlValueGenerationStrategy
ùùF c
.
ùùc d%
IdentityByDefaultColumn
ùùd {
)
ùù{ |
,
ùù| }
SenderId
ûû 
=
ûû 
table
ûû $
.
ûû$ %
Column
ûû% +
<
ûû+ ,
int
ûû, /
>
ûû/ 0
(
ûû0 1
type
ûû1 5
:
ûû5 6
$str
ûû7 @
,
ûû@ A
nullable
ûûB J
:
ûûJ K
false
ûûL Q
)
ûûQ R
,
ûûR S
SenderUsername
üü "
=
üü# $
table
üü% *
.
üü* +
Column
üü+ 1
<
üü1 2
string
üü2 8
>
üü8 9
(
üü9 :
type
üü: >
:
üü> ?
$str
üü@ F
,
üüF G
nullable
üüH P
:
üüP Q
true
üüR V
)
üüV W
,
üüW X
RecipientId
†† 
=
††  !
table
††" '
.
††' (
Column
††( .
<
††. /
int
††/ 2
>
††2 3
(
††3 4
type
††4 8
:
††8 9
$str
††: C
,
††C D
nullable
††E M
:
††M N
false
††O T
)
††T U
,
††U V
RecipientUsername
°° %
=
°°& '
table
°°( -
.
°°- .
Column
°°. 4
<
°°4 5
string
°°5 ;
>
°°; <
(
°°< =
type
°°= A
:
°°A B
$str
°°C I
,
°°I J
nullable
°°K S
:
°°S T
true
°°U Y
)
°°Y Z
,
°°Z [
Content
¢¢ 
=
¢¢ 
table
¢¢ #
.
¢¢# $
Column
¢¢$ *
<
¢¢* +
string
¢¢+ 1
>
¢¢1 2
(
¢¢2 3
type
¢¢3 7
:
¢¢7 8
$str
¢¢9 ?
,
¢¢? @
nullable
¢¢A I
:
¢¢I J
true
¢¢K O
)
¢¢O P
,
¢¢P Q
DateRead
££ 
=
££ 
table
££ $
.
££$ %
Column
££% +
<
££+ ,
DateTime
££, 4
>
££4 5
(
££5 6
type
££6 :
:
££: ;
$str
££< Y
,
££Y Z
nullable
££[ c
:
££c d
true
££e i
)
££i j
,
££j k
MessageSent
§§ 
=
§§  !
table
§§" '
.
§§' (
Column
§§( .
<
§§. /
DateTime
§§/ 7
>
§§7 8
(
§§8 9
type
§§9 =
:
§§= >
$str
§§? \
,
§§\ ]
nullable
§§^ f
:
§§f g
false
§§h m
)
§§m n
,
§§n o
SenderDeleted
•• !
=
••" #
table
••$ )
.
••) *
Column
••* 0
<
••0 1
bool
••1 5
>
••5 6
(
••6 7
type
••7 ;
:
••; <
$str
••= F
,
••F G
nullable
••H P
:
••P Q
false
••R W
)
••W X
,
••X Y
RecipientDeleted
¶¶ $
=
¶¶% &
table
¶¶' ,
.
¶¶, -
Column
¶¶- 3
<
¶¶3 4
bool
¶¶4 8
>
¶¶8 9
(
¶¶9 :
type
¶¶: >
:
¶¶> ?
$str
¶¶@ I
,
¶¶I J
nullable
¶¶K S
:
¶¶S T
false
¶¶U Z
)
¶¶Z [
}
ßß 
,
ßß 
constraints
®® 
:
®® 
table
®® "
=>
®®# %
{
©© 
table
™™ 
.
™™ 

PrimaryKey
™™ $
(
™™$ %
$str
™™% 2
,
™™2 3
x
™™4 5
=>
™™6 8
x
™™9 :
.
™™: ;
Id
™™; =
)
™™= >
;
™™> ?
table
´´ 
.
´´ 

ForeignKey
´´ $
(
´´$ %
name
¨¨ 
:
¨¨ 
$str
¨¨ C
,
¨¨C D
column
≠≠ 
:
≠≠ 
x
≠≠  !
=>
≠≠" $
x
≠≠% &
.
≠≠& '
RecipientId
≠≠' 2
,
≠≠2 3
principalTable
ÆÆ &
:
ÆÆ& '
$str
ÆÆ( 5
,
ÆÆ5 6
principalColumn
ØØ '
:
ØØ' (
$str
ØØ) -
,
ØØ- .
onDelete
∞∞  
:
∞∞  !
ReferentialAction
∞∞" 3
.
∞∞3 4
Restrict
∞∞4 <
)
∞∞< =
;
∞∞= >
table
±± 
.
±± 

ForeignKey
±± $
(
±±$ %
name
≤≤ 
:
≤≤ 
$str
≤≤ @
,
≤≤@ A
column
≥≥ 
:
≥≥ 
x
≥≥  !
=>
≥≥" $
x
≥≥% &
.
≥≥& '
SenderId
≥≥' /
,
≥≥/ 0
principalTable
¥¥ &
:
¥¥& '
$str
¥¥( 5
,
¥¥5 6
principalColumn
µµ '
:
µµ' (
$str
µµ) -
,
µµ- .
onDelete
∂∂  
:
∂∂  !
ReferentialAction
∂∂" 3
.
∂∂3 4
Restrict
∂∂4 <
)
∂∂< =
;
∂∂= >
}
∑∑ 
)
∑∑ 
;
∑∑ 
migrationBuilder
ππ 
.
ππ 
CreateTable
ππ (
(
ππ( )
name
∫∫ 
:
∫∫ 
$str
∫∫ 
,
∫∫ 
columns
ªª 
:
ªª 
table
ªª 
=>
ªª !
new
ªª" %
{
ºº 
Id
ΩΩ 
=
ΩΩ 
table
ΩΩ 
.
ΩΩ 
Column
ΩΩ %
<
ΩΩ% &
int
ΩΩ& )
>
ΩΩ) *
(
ΩΩ* +
type
ΩΩ+ /
:
ΩΩ/ 0
$str
ΩΩ1 :
,
ΩΩ: ;
nullable
ΩΩ< D
:
ΩΩD E
false
ΩΩF K
)
ΩΩK L
.
ææ 

Annotation
ææ #
(
ææ# $
$str
ææ$ D
,
ææD E+
NpgsqlValueGenerationStrategy
ææF c
.
ææc d%
IdentityByDefaultColumn
ææd {
)
ææ{ |
,
ææ| }
Url
øø 
=
øø 
table
øø 
.
øø  
Column
øø  &
<
øø& '
string
øø' -
>
øø- .
(
øø. /
type
øø/ 3
:
øø3 4
$str
øø5 ;
,
øø; <
nullable
øø= E
:
øøE F
true
øøG K
)
øøK L
,
øøL M
IsMain
¿¿ 
=
¿¿ 
table
¿¿ "
.
¿¿" #
Column
¿¿# )
<
¿¿) *
bool
¿¿* .
>
¿¿. /
(
¿¿/ 0
type
¿¿0 4
:
¿¿4 5
$str
¿¿6 ?
,
¿¿? @
nullable
¿¿A I
:
¿¿I J
false
¿¿K P
)
¿¿P Q
,
¿¿Q R
PublicId
¡¡ 
=
¡¡ 
table
¡¡ $
.
¡¡$ %
Column
¡¡% +
<
¡¡+ ,
string
¡¡, 2
>
¡¡2 3
(
¡¡3 4
type
¡¡4 8
:
¡¡8 9
$str
¡¡: @
,
¡¡@ A
nullable
¡¡B J
:
¡¡J K
true
¡¡L P
)
¡¡P Q
,
¡¡Q R
	AppUserId
¬¬ 
=
¬¬ 
table
¬¬  %
.
¬¬% &
Column
¬¬& ,
<
¬¬, -
int
¬¬- 0
>
¬¬0 1
(
¬¬1 2
type
¬¬2 6
:
¬¬6 7
$str
¬¬8 A
,
¬¬A B
nullable
¬¬C K
:
¬¬K L
false
¬¬M R
)
¬¬R S
}
√√ 
,
√√ 
constraints
ƒƒ 
:
ƒƒ 
table
ƒƒ "
=>
ƒƒ# %
{
≈≈ 
table
∆∆ 
.
∆∆ 

PrimaryKey
∆∆ $
(
∆∆$ %
$str
∆∆% 0
,
∆∆0 1
x
∆∆2 3
=>
∆∆4 6
x
∆∆7 8
.
∆∆8 9
Id
∆∆9 ;
)
∆∆; <
;
∆∆< =
table
«« 
.
«« 

ForeignKey
«« $
(
««$ %
name
»» 
:
»» 
$str
»» ?
,
»»? @
column
…… 
:
…… 
x
……  !
=>
……" $
x
……% &
.
……& '
	AppUserId
……' 0
,
……0 1
principalTable
   &
:
  & '
$str
  ( 5
,
  5 6
principalColumn
ÀÀ '
:
ÀÀ' (
$str
ÀÀ) -
,
ÀÀ- .
onDelete
ÃÃ  
:
ÃÃ  !
ReferentialAction
ÃÃ" 3
.
ÃÃ3 4
Cascade
ÃÃ4 ;
)
ÃÃ; <
;
ÃÃ< =
}
ÕÕ 
)
ÕÕ 
;
ÕÕ 
migrationBuilder
œœ 
.
œœ 
CreateIndex
œœ (
(
œœ( )
name
–– 
:
–– 
$str
–– 2
,
––2 3
table
—— 
:
—— 
$str
—— )
,
——) *
column
““ 
:
““ 
$str
““  
)
““  !
;
““! "
migrationBuilder
‘‘ 
.
‘‘ 
CreateIndex
‘‘ (
(
‘‘( )
name
’’ 
:
’’ 
$str
’’ %
,
’’% &
table
÷÷ 
:
÷÷ 
$str
÷÷ $
,
÷÷$ %
column
◊◊ 
:
◊◊ 
$str
◊◊ (
,
◊◊( )
unique
ÿÿ 
:
ÿÿ 
true
ÿÿ 
)
ÿÿ 
;
ÿÿ 
migrationBuilder
⁄⁄ 
.
⁄⁄ 
CreateIndex
⁄⁄ (
(
⁄⁄( )
name
€€ 
:
€€ 
$str
€€ 2
,
€€2 3
table
‹‹ 
:
‹‹ 
$str
‹‹ )
,
‹‹) *
column
›› 
:
›› 
$str
››  
)
››  !
;
››! "
migrationBuilder
ﬂﬂ 
.
ﬂﬂ 
CreateIndex
ﬂﬂ (
(
ﬂﬂ( )
name
‡‡ 
:
‡‡ 
$str
‡‡ 2
,
‡‡2 3
table
·· 
:
·· 
$str
·· )
,
··) *
column
‚‚ 
:
‚‚ 
$str
‚‚  
)
‚‚  !
;
‚‚! "
migrationBuilder
‰‰ 
.
‰‰ 
CreateIndex
‰‰ (
(
‰‰( )
name
ÂÂ 
:
ÂÂ 
$str
ÂÂ 1
,
ÂÂ1 2
table
ÊÊ 
:
ÊÊ 
$str
ÊÊ (
,
ÊÊ( )
column
ÁÁ 
:
ÁÁ 
$str
ÁÁ  
)
ÁÁ  !
;
ÁÁ! "
migrationBuilder
ÈÈ 
.
ÈÈ 
CreateIndex
ÈÈ (
(
ÈÈ( )
name
ÍÍ 
:
ÍÍ 
$str
ÍÍ "
,
ÍÍ" #
table
ÎÎ 
:
ÎÎ 
$str
ÎÎ $
,
ÎÎ$ %
column
ÏÏ 
:
ÏÏ 
$str
ÏÏ )
)
ÏÏ) *
;
ÏÏ* +
migrationBuilder
ÓÓ 
.
ÓÓ 
CreateIndex
ÓÓ (
(
ÓÓ( )
name
ÔÔ 
:
ÔÔ 
$str
ÔÔ -
,
ÔÔ- .
table
 
:
 
$str
 $
,
$ %
column
ÒÒ 
:
ÒÒ 
$str
ÒÒ  
)
ÒÒ  !
;
ÒÒ! "
migrationBuilder
ÛÛ 
.
ÛÛ 
CreateIndex
ÛÛ (
(
ÛÛ( )
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ %
,
ÙÙ% &
table
ıı 
:
ıı 
$str
ıı $
,
ıı$ %
column
ˆˆ 
:
ˆˆ 
$str
ˆˆ ,
,
ˆˆ, -
unique
˜˜ 
:
˜˜ 
true
˜˜ 
)
˜˜ 
;
˜˜ 
migrationBuilder
˘˘ 
.
˘˘ 
CreateIndex
˘˘ (
(
˘˘( )
name
˙˙ 
:
˙˙ 
$str
˙˙ )
,
˙˙) *
table
˚˚ 
:
˚˚ 
$str
˚˚ 
,
˚˚  
column
¸¸ 
:
¸¸ 
$str
¸¸ !
)
¸¸! "
;
¸¸" #
migrationBuilder
˛˛ 
.
˛˛ 
CreateIndex
˛˛ (
(
˛˛( )
name
ˇˇ 
:
ˇˇ 
$str
ˇˇ 0
,
ˇˇ0 1
table
ÄÄ 
:
ÄÄ 
$str
ÄÄ $
,
ÄÄ$ %
column
ÅÅ 
:
ÅÅ 
$str
ÅÅ #
)
ÅÅ# $
;
ÅÅ$ %
migrationBuilder
ÉÉ 
.
ÉÉ 
CreateIndex
ÉÉ (
(
ÉÉ( )
name
ÑÑ 
:
ÑÑ 
$str
ÑÑ ,
,
ÑÑ, -
table
ÖÖ 
:
ÖÖ 
$str
ÖÖ 
,
ÖÖ 
column
ÜÜ 
:
ÜÜ 
$str
ÜÜ %
)
ÜÜ% &
;
ÜÜ& '
migrationBuilder
àà 
.
àà 
CreateIndex
àà (
(
àà( )
name
ââ 
:
ââ 
$str
ââ /
,
ââ/ 0
table
ää 
:
ää 
$str
ää !
,
ää! "
column
ãã 
:
ãã 
$str
ãã %
)
ãã% &
;
ãã& '
migrationBuilder
çç 
.
çç 
CreateIndex
çç (
(
çç( )
name
éé 
:
éé 
$str
éé ,
,
éé, -
table
èè 
:
èè 
$str
èè !
,
èè! "
column
êê 
:
êê 
$str
êê "
)
êê" #
;
êê# $
migrationBuilder
íí 
.
íí 
CreateIndex
íí (
(
íí( )
name
ìì 
:
ìì 
$str
ìì +
,
ìì+ ,
table
îî 
:
îî 
$str
îî 
,
îî  
column
ïï 
:
ïï 
$str
ïï #
)
ïï# $
;
ïï$ %
migrationBuilder
óó 
.
óó 
CreateIndex
óó (
(
óó( )
name
òò 
:
òò 
$str
òò +
,
òò+ ,
table
ôô 
:
ôô 
$str
ôô 
,
ôô  
column
öö 
:
öö 
$str
öö #
)
öö# $
;
öö$ %
}
õõ 	
	protected
ùù 
override
ùù 
void
ùù 
Down
ùù  $
(
ùù$ %
MigrationBuilder
ùù% 5
migrationBuilder
ùù6 F
)
ùùF G
{
ûû 	
migrationBuilder
üü 
.
üü 
	DropTable
üü &
(
üü& '
name
†† 
:
†† 
$str
†† (
)
††( )
;
††) *
migrationBuilder
¢¢ 
.
¢¢ 
	DropTable
¢¢ &
(
¢¢& '
name
££ 
:
££ 
$str
££ (
)
££( )
;
££) *
migrationBuilder
•• 
.
•• 
	DropTable
•• &
(
••& '
name
¶¶ 
:
¶¶ 
$str
¶¶ (
)
¶¶( )
;
¶¶) *
migrationBuilder
®® 
.
®® 
	DropTable
®® &
(
®®& '
name
©© 
:
©© 
$str
©© '
)
©©' (
;
©©( )
migrationBuilder
´´ 
.
´´ 
	DropTable
´´ &
(
´´& '
name
¨¨ 
:
¨¨ 
$str
¨¨ (
)
¨¨( )
;
¨¨) *
migrationBuilder
ÆÆ 
.
ÆÆ 
	DropTable
ÆÆ &
(
ÆÆ& '
name
ØØ 
:
ØØ 
$str
ØØ #
)
ØØ# $
;
ØØ$ %
migrationBuilder
±± 
.
±± 
	DropTable
±± &
(
±±& '
name
≤≤ 
:
≤≤ 
$str
≤≤ 
)
≤≤ 
;
≤≤ 
migrationBuilder
¥¥ 
.
¥¥ 
	DropTable
¥¥ &
(
¥¥& '
name
µµ 
:
µµ 
$str
µµ  
)
µµ  !
;
µµ! "
migrationBuilder
∑∑ 
.
∑∑ 
	DropTable
∑∑ &
(
∑∑& '
name
∏∏ 
:
∏∏ 
$str
∏∏ 
)
∏∏ 
;
∏∏  
migrationBuilder
∫∫ 
.
∫∫ 
	DropTable
∫∫ &
(
∫∫& '
name
ªª 
:
ªª 
$str
ªª #
)
ªª# $
;
ªª$ %
migrationBuilder
ΩΩ 
.
ΩΩ 
	DropTable
ΩΩ &
(
ΩΩ& '
name
ææ 
:
ææ 
$str
ææ 
)
ææ 
;
ææ  
migrationBuilder
¿¿ 
.
¿¿ 
	DropTable
¿¿ &
(
¿¿& '
name
¡¡ 
:
¡¡ 
$str
¡¡ #
)
¡¡# $
;
¡¡$ %
migrationBuilder
√√ 
.
√√ 
	DropTable
√√ &
(
√√& '
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ 
)
ƒƒ 
;
ƒƒ  
migrationBuilder
∆∆ 
.
∆∆ 
	DropTable
∆∆ &
(
∆∆& '
name
«« 
:
«« 
$str
«« 
)
«« 
;
««  
migrationBuilder
…… 
.
…… 
	DropTable
…… &
(
……& '
name
   
:
   
$str
   !
)
  ! "
;
  " #
}
ÀÀ 	
}
ÃÃ 
}ÕÕ „*
<C:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\Seed.cs
	namespace 	
API
 
. 
Data 
{		 
public

 

class

 
Seed

 
{ 
public 
static 
async 
Task  
	SeedUsers! *
(* +
UserManager+ 6
<6 7
AppUser7 >
>> ?
userManager@ K
,K L
RoleManagerM X
<X Y
AppRoleY `
>` a
roleManagerb m
)m n
{ 	
if 
( 
await 
userManager !
.! "
Users" '
.' (
AnyAsync( 0
(0 1
)1 2
)2 3
return4 :
;: ;
var 
userData 
= 
await  
System! '
.' (
IO( *
.* +
File+ /
./ 0
ReadAllTextAsync0 @
(@ A
$strA Y
)Y Z
;Z [
var 
users 
= 
JsonSerializer &
.& '
Deserialize' 2
<2 3
List3 7
<7 8
AppUser8 ?
>? @
>@ A
(A B
userDataB J
)J K
;K L
if 
( 
users 
== 
null 
) 
return 
; 
var 
roles 
= 
new 
List  
<  !
AppRole! (
>( )
{ 
new 
AppRole 
{ 
Name "
=# $
$str% -
}. /
,/ 0
new 
AppRole 
{ 
Name "
=# $
$str% ,
}- .
,. /
new 
AppRole 
{ 
Name "
=# $
$str% 0
}1 2
,2 3
} 
; 
foreach 
( 
var 
role 
in  
roles! &
)& '
{ 
await   
roleManager   !
.  ! "
CreateAsync  " -
(  - .
role  . 2
)  2 3
;  3 4
}!! 
foreach## 
(## 
var## 
user## 
in##  
users##! &
)##& '
{$$ 
user%% 
.%% 
UserName%% 
=%% 
user%%  $
.%%$ %
UserName%%% -
.%%- .
ToLower%%. 5
(%%5 6
)%%6 7
;%%7 8
await&& 
userManager&& !
.&&! "
CreateAsync&&" -
(&&- .
user&&. 2
,&&2 3
$str&&4 >
)&&> ?
;&&? @
await'' 
userManager'' !
.''! "
AddToRoleAsync''" 0
(''0 1
user''1 5
,''5 6
$str''7 ?
)''? @
;''@ A
}(( 
var** 
admin** 
=** 
new** 
AppUser** #
{++ 
UserName,, 
=,, 
$str,, "
,,," #
Gender-- 
=-- 
$str-- 
}.. 
;.. 
await00 
userManager00 
.00 
CreateAsync00 )
(00) *
admin00* /
,00/ 0
$str001 ;
)00; <
;00< =
await11 
userManager11 
.11 
AddToRolesAsync11 -
(11- .
admin11. 3
,113 4
new115 8
[118 9
]119 :
{11; <
$str11= D
,11D E
$str11F Q
}11R S
)11S T
;11T U
}22 	
public44 
static44 
async44 
Task44  
SeedLocalizations44! 2
(442 3
DataContext443 >
context44? F
)44F G
{55 	
if66 
(66 
await66 
context66 
.66 
	Countries66 '
.66' (
AnyAsync66( 0
(660 1
)661 2
)662 3
return664 :
;66: ;
var88 
countryData88 
=88 
await88 #
System88$ *
.88* +
IO88+ -
.88- .
File88. 2
.882 3
ReadAllTextAsync883 C
(88C D
$str88D W
)88W X
;88X Y
var:: 
	countries:: 
=:: 
JsonSerializer:: *
.::* +
Deserialize::+ 6
<::6 7
List::7 ;
<::; <
Country::< C
>::C D
>::D E
(::E F
countryData::F Q
)::Q R
;::R S
if<< 
(<< 
	countries<< 
==<< 
null<< !
)<<! "
return== 
;== 
foreach?? 
(?? 
var?? 
country??  
in??! #
	countries??$ -
)??- .
{@@ 
awaitAA 
contextAA 
.AA 
	CountriesAA '
.AA' (
AddAsyncAA( 0
(AA0 1
countryAA1 8
)AA8 9
;AA9 :
}BB 
awaitDD 
contextDD 
.DD 
SaveChangesAsyncDD *
(DD* +
)DD+ ,
;DD, -
}EE 	
}FF 
}GG û
GC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\StateRepository.cs
	namespace		 	
API		
 
.		 
Data		 
{

 
public 

class 
StateRepository  
:! "
IStateRepository# 3
{ 
private 
readonly 
DataContext $
_context% -
;- .
private 
readonly 
IMapper  
_mapper! (
;( )
public 
StateRepository 
( 
DataContext *
context+ 2
,2 3
IMapper4 ;
mapper< B
)B C
{ 	
_mapper 
= 
mapper 
; 
_context 
= 
context 
; 
} 	
public 
void 
AddState 
( 
State "
state# (
)( )
{ 	
_context 
. 
States 
. 
Add 
(  
state  %
)% &
;& '
} 	
public 
void 
DeleteState 
(  
State  %
state& +
)+ ,
{ 	
_context 
. 
States 
. 
Remove "
(" #
state# (
)( )
;) *
} 	
public!! 
async!! 
Task!! 
<!! 
State!! 
>!!  
GetStateAsync!!! .
(!!. /
int!!/ 2
id!!3 5
)!!5 6
{"" 	
return## 
await## 
_context## !
.##! "
States##" (
.##( )
	FindAsync##) 2
(##2 3
id##3 5
)##5 6
;##6 7
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IEnumerable&& %
<&&% &
State&&& +
>&&+ ,
>&&, -%
GetStatesByCountryIdAsync&&. G
(&&G H
int&&H K
	countryId&&L U
)&&U V
{'' 	
return(( 
await(( 
_context(( !
.((! "
States((" (
.))$ %
Where))% *
())* +
s))+ ,
=>))- /
s))0 1
.))1 2
	CountryId))2 ;
==))< >
	countryId))? H
)))H I
.**$ %
ToListAsync**% 0
(**0 1
)**1 2
;**2 3
}++ 	
},, 
}-- à
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\UnityOfWork.cs
	namespace 	
API
 
. 
Data 
{ 
public 

class 
UnityOfWork 
: 
IUnityOfWork +
{ 
private		 
readonly		 
DataContext		 $
_context		% -
;		- .
private 
readonly 
IMapper  
_mapper! (
;( )
public 
UnityOfWork 
( 
DataContext &
context' .
,. /
IMapper0 7
mapper8 >
)> ?
{ 	
_mapper 
= 
mapper 
; 
_context 
= 
context 
; 
} 	
public 
IUserRepository 
UserRepository -
=>. 0
new1 4
UserRepository5 C
(C D
_contextD L
,L M
_mapperN U
)U V
;V W
public 
IMessageRepository !
MessageRepository" 3
=>4 6
new7 :
MessageRepository; L
(L M
_contextM U
,U V
_mapperW ^
)^ _
;_ `
public 
ILikesRepository 
LikesRepository  /
=>0 2
new3 6
LikesRepository7 F
(F G
_contextG O
)O P
;P Q
public 
ICountryRepository !
CountryRepository" 3
=>4 6
new7 :
CountryRepository; L
(L M
_contextM U
,U V
_mapperW ^
)^ _
;_ `
public 
IStateRepository 
StateRepository  /
=>0 2
new3 6
StateRepository7 F
(F G
_contextG O
,O P
_mapperQ X
)X Y
;Y Z
public 
ICityRepository 
CityRepository -
=>. 0
new1 4
CityRepository5 C
(C D
_contextD L
,L M
_mapperN U
)U V
;V W
public 
async 
Task 
< 
bool 
> 
Complete  (
(( )
)) *
{   	
return!! 
await!! 
_context!! !
.!!! "
SaveChangesAsync!!" 2
(!!2 3
)!!3 4
>!!5 6
$num!!7 8
;!!8 9
}"" 	
public$$ 
bool$$ 

HasChanges$$ 
($$ 
)$$  
{%% 	
return&& 
_context&& 
.&& 
ChangeTracker&& )
.&&) *

HasChanges&&* 4
(&&4 5
)&&5 6
;&&6 7
}'' 	
}(( 
})) ÍB
FC:\Users\Wallace\Documents\GitHub\DatingApp\API\Data\UserRepository.cs
	namespace 	
API
 
. 
Data 
{ 
public 

class 
UserRepository 
:  !
IUserRepository" 1
{ 
private 
readonly 
DataContext $
_context% -
;- .
private 
readonly 
IMapper  
_mapper! (
;( )
public 
UserRepository 
( 
DataContext )
context* 1
,1 2
IMapper3 :
mapper; A
)A B
{ 	
_mapper 
= 
mapper 
; 
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
AppUser& -
>- .
>. /
GetUsersAsync0 =
(= >
)> ?
{ 	
return 
await 
_context !
.! "
Users" '
. 
Include $
($ %
p% &
=>' )
p* +
.+ ,
Photos, 2
)2 3
. 
ToListAsync (
(( )
)) *
;* +
}   	
public"" 
async"" 
Task"" 
<"" 
AppUser"" !
>""! "
GetUserByIdAsync""# 3
(""3 4
int""4 7
id""8 :
)"": ;
{## 	
return$$ 
await$$ 
_context$$ !
.$$! "
Users$$" '
.$$' (
	FindAsync$$( 1
($$1 2
id$$2 4
)$$4 5
;$$5 6
}%% 	
public'' 
async'' 
Task'' 
<'' 
AppUser'' !
>''! ""
GetUserByUserNameAsync''# 9
(''9 :
string'': @
username''A I
)''I J
{(( 	
return)) 
await)) 
_context)) !
.))! "
Users))" '
.**  !
Include**! (
(**( )
p**) *
=>**+ -
p**. /
.**/ 0
Photos**0 6
)**6 7
.++  ! 
SingleOrDefaultAsync++! 5
(++5 6
u++6 7
=>++8 :
u++; <
.++< =
UserName++= E
.++E F
Equals++F L
(++L M
username++M U
)++U V
)++V W
;++W X
},, 	
public.. 
void.. 
Update.. 
(.. 
AppUser.. "
user..# '
)..' (
{// 	
_context00 
.00 
Entry00 
(00 
user00 
)00  
.00  !
State00! &
=00' (
EntityState00) 4
.004 5
Modified005 =
;00= >
}11 	
public33 
async33 
Task33 
<33 
	PagedList33 #
<33# $
	MemberDto33$ -
>33- .
>33. /
GetMembersAsync330 ?
(33? @

UserParams33@ J

userParams33K U
)33U V
{44 	
var55 
query55 
=55 
_context55  
.55  !
Users55! &
.55& '
Include55' .
(55. /
u55/ 0
=>551 3
u554 5
.555 6
City556 :
)55: ;
.55; <
Include55< C
(55C D
u55D E
=>55F H
u55I J
.55J K
City55K O
.55O P
State55P U
)55U V
.55V W
Include55W ^
(55^ _
u55_ `
=>55a c
u55d e
.55e f
City55f j
.55j k
State55k p
.55p q
Country55q x
)55x y
.66 
AsQueryable66 
(66 
)66 
;66 
query88 
=88 
query88 
.88 
Where88 
(88  
u88  !
=>88" $
!88% &
u88& '
.88' (
UserName88( 0
.880 1
Equals881 7
(887 8

userParams888 B
.88B C
CurrentUsername88C R
)88R S
)88S T
;88T U
query99 
=99 
query99 
.99 
Where99 
(99  
u99  !
=>99" $
u99% &
.99& '
Gender99' -
.99- .
Equals99. 4
(994 5

userParams995 ?
.99? @
Gender99@ F
)99F G
)99G H
;99H I
var;; 
minDob;; 
=;; 
DateTime;; !
.;;! "
Today;;" '
.;;' (
AddYears;;( 0
(;;0 1
-;;1 2

userParams;;2 <
.;;< =
MaxAge;;= C
-;;D E
$num;;F G
);;G H
;;;H I
var<< 
maxDob<< 
=<< 
DateTime<< !
.<<! "
Today<<" '
.<<' (
AddYears<<( 0
(<<0 1
-<<1 2

userParams<<2 <
.<<< =
MinAge<<= C
)<<C D
;<<D E
query>> 
=>> 
query>> 
.>> 
Where>> 
(>>  
u>>  !
=>>>" $
u>>% &
.>>& '
DateOfBirth>>' 2
>=>>3 5
minDob>>6 <
&&>>= ?
u>>@ A
.>>A B
DateOfBirth>>B M
<=>>N P
maxDob>>Q W
)>>W X
;>>X Y
query@@ 
=@@ 

userParams@@ 
.@@ 
OrderBy@@ &
switch@@' -
{AA 
$strBB 
=>BB 
queryBB "
.BB" #
OrderByDescendingBB# 4
(BB4 5
uBB5 6
=>BB7 9
uBB: ;
.BB; <
CreatedBB< C
)BBC D
,BBD E
_CC 
=>CC 
queryCC 
.CC 
OrderByDescendingCC ,
(CC, -
uCC- .
=>CC/ 1
uCC2 3
.CC3 4

LastActiveCC4 >
)CC> ?
}DD 
;DD 
returnFF 
awaitFF 
	PagedListFF "
<FF" #
	MemberDtoFF# ,
>FF, -
.FF- .
CreateAsyncFF. 9
(FF9 :
queryFF: ?
.GG< =
	ProjectToGG= F
<GGF G
	MemberDtoGGG P
>GGP Q
(GGQ R
_mapperGGR Y
.GGY Z!
ConfigurationProviderGGZ o
)GGo p
.HH< =
AsNoTrackingHH= I
(HHI J
)HHJ K
,II 

userParamsII 
.II 

PageNumberII #
,II# $

userParamsII% /
.II/ 0
PageSizeII0 8
)II8 9
;II9 :
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
	MemberDtoLL #
>LL# $
GetMemberAsyncLL% 3
(LL3 4
stringLL4 :
usernameLL; C
)LLC D
{MM 	
returnNN 
awaitNN 
_contextNN !
.NN! "
UsersNN" '
.OO 
WhereOO 
(OO 
uOO 
=>OO 
uOO 
.OO 
UserNameOO "
.OO" #
EqualsOO# )
(OO) *
usernameOO* 2
)OO2 3
)OO3 4
.PP 
	ProjectToPP 
<PP 
	MemberDtoPP  
>PP  !
(PP! "
_mapperPP" )
.PP) *!
ConfigurationProviderPP* ?
)PP? @
.QQ  
SingleOrDefaultAsyncQQ !
(QQ! "
)QQ" #
;QQ# $
}RR 	
publicTT 
asyncTT 
TaskTT 
<TT 
stringTT  
>TT  !
GetUserGenderTT" /
(TT/ 0
stringTT0 6
usernameTT7 ?
)TT? @
{UU 	
returnVV 
awaitVV 
_contextVV !
.VV! "
UsersVV" '
.WW  !
WhereWW! &
(WW& '
uWW' (
=>WW) +
uWW, -
.WW- .
UserNameWW. 6
.WW6 7
EqualsWW7 =
(WW= >
usernameWW> F
)WWF G
)WWG H
.XX  !
SelectXX! '
(XX' (
uXX( )
=>XX* ,
uXX- .
.XX. /
GenderXX/ 5
)XX5 6
.XX6 7
FirstOrDefaultAsyncXX7 J
(XXJ K
)XXK L
;XXL M
}YY 	
}ZZ 
}[[ Œ
HC:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\CreateMessageDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
CreateMessageDto !
{ 
public 
string 
RecipientUsername '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 é	
?C:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\LikeDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
LikeDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
Age		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public 
string 
KnownAs 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
PhotoUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
} 
} û
@C:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\LoginDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
LoginDto 
{ 
[ 	
Required	 
] 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[

 	
Required

	 
]

 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ≤
AC:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\MemberDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
	MemberDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
Username
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
+ ,
public 
string 
PhotoUrl 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Age 
{ 
get 
; 
set !
;! "
}# $
public 
string 
KnownAs 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
Created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 

LastActive "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Introduction "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 

LookingFor  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	Interests 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public   
string   
Country   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public"" 
ICollection"" 
<"" 
PhotoDto"" #
>""# $
Photos""% +
{"", -
get"". 1
;""1 2
set""3 6
;""6 7
}""8 9
}## 
}$$ ö
GC:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\MemberUpdateDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
MemberUpdateDto  
{ 
public 
string 
Introduction "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 

LookingFor  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
	Interests		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ó
BC:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\MessageDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 

MessageDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
int

 
SenderId

 
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
( )
public 
string 
SenderUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
SenderPhotoUrl $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
RecipientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
RecipientUsername '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
RecipientPhotoUrl '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
DateRead !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
MessageSent #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

JsonIgnore	 
] 
public 
bool 
SenderDeleted !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

JsonIgnore	 
] 
public   
bool   
RecipientDeleted   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
}!! 
}"" ¿
@C:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\PhotoDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
PhotoDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
public		 
bool		 
IsMain		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} ù
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\RegisterDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
RegisterDto 
{ 
[ 	
Required	 
] 
public		 
string		 
Username		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
[ 	
Required	 
] 
public 
string 
KnownAs 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
EmailAddress '
,' (
ErrorMessage) 5
=6 7
$str8 H
)H I
]I J
[ 	
EmailAddress	 
( 
ErrorMessage "
=# $
$str% 5
)5 6
]6 7
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
] 
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
Country 
{ 
get  #
;# $
set% (
;( )
}* +
[   	
Required  	 
]   
[!! 	
StringLength!!	 
(!! 
$num!! 
,!! 
MinimumLength!! &
=!!' (
$num!!) *
)!!* +
]!!+ ,
public"" 
string"" 
Password"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
}## 
}$$ Ç
?C:\Users\Wallace\Documents\GitHub\DatingApp\API\DTOs\UserDto.cs
	namespace 	
API
 
. 
DTOs 
{ 
public 

class 
UserDto 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
PhotoUrl		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 
string 
KnownAs 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} µ
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\AppRole.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
AppRole 
: 
IdentityRole '
<' (
int( +
>+ ,
{ 
public 
ICollection 
< 
AppUserRole &
>& '
	UserRoles( 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
}		 
}

 ¨
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\AppUser.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
AppUser 
: 
IdentityUser '
<' (
int( +
>+ ,
{ 
public		 
DateTime		 
DateOfBirth		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public 
string 
KnownAs 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
Created 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
DateTime0 8
.8 9
Now9 <
;< =
public 
DateTime 

LastActive "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
DateTime3 ;
.; <
Now< ?
;? @
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Introduction "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 

LookingFor  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	Interests 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
CityId 
{ 
get 
;  
set! $
;$ %
}& '
public 
City 
City 
{ 
get 
; 
set  #
;# $
}% &
public 
ICollection 
< 
Photo  
>  !
Photos" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
ICollection 
< 
UserLike #
># $
LikedByUsers% 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public!! 
ICollection!! 
<!! 
UserLike!! #
>!!# $

LikedUsers!!% /
{!!0 1
get!!2 5
;!!5 6
set!!7 :
;!!: ;
}!!< =
public## 
ICollection## 
<## 
Message## "
>##" #
MessagesSent##$ 0
{##1 2
get##3 6
;##6 7
set##8 ;
;##; <
}##= >
public%% 
ICollection%% 
<%% 
Message%% "
>%%" #
MessagesReceived%%$ 4
{%%5 6
get%%7 :
;%%: ;
set%%< ?
;%%? @
}%%A B
public'' 
ICollection'' 
<'' 
AppUserRole'' &
>''& '
	UserRoles''( 1
{''2 3
get''4 7
;''7 8
set''9 <
;''< =
}''> ?
}(( 
})) ö
GC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\AppUserRole.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
AppUserRole 
: 
IdentityUserRole /
</ 0
int0 3
>3 4
{ 
public 
AppUser 
User 
{ 
get !
;! "
set# &
;& '
}( )
public		 
AppRole		 
Role		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} Ÿ
@C:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\City.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
City 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
int		 
StateId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
State 
State 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ô
FC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\Connection.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 

Connection 
{ 
public 

Connection 
( 
) 
{ 	
} 	
public

 

Connection

 
(

 
string

  
connectionId

! -
,

- .
string

/ 5
username

6 >
)

> ?
{ 	
ConnectionId 
= 
connectionId '
;' (
Username 
= 
username 
;  
} 	
public 
string 
ConnectionId "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ˇ
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\Country.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
Country 
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
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
ICollection 
< 
State  
>  !
States" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ‰
AC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\Group.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
Group 
{ 
public 
Group 
( 
) 
{		 	
}

 	
public 
Group 
( 
string 
name  
)  !
{ 	
Name 
= 
name 
; 
} 	
[ 	
Key	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
ICollection 
< 

Connection %
>% &
Connections' 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
newC F
ListG K
<K L

ConnectionL V
>V W
(W X
)X Y
;Y Z
} 
} Õ
CC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\Message.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
Message 
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
public		 
int		 
SenderId		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public 
string 
SenderUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
AppUser 
Sender 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
RecipientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
RecipientUsername '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
AppUser 
	Recipient  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
? 
DateRead !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
MessageSent #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
DateTime4 <
.< =
UtcNow= C
;C D
public 
bool 
SenderDeleted !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
RecipientDeleted $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ı	
AC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\Photo.cs
	namespace 	
API
 
. 
Entities 
{ 
[ 
Table 

(
 
$str 
) 
] 
public 

class 
Photo 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public

 
string

 
Url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
bool 
IsMain 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
PublicId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
AppUser 
AppUser 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
	AppUserId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ∞
AC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\State.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
State 
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
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
int 
	CountryId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Country 
Country 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ICollection 
< 
City 
>  
Cities! '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ¸
DC:\Users\Wallace\Documents\GitHub\DatingApp\API\Entities\UserLike.cs
	namespace 	
API
 
. 
Entities 
{ 
public 

class 
UserLike 
{ 
public 
AppUser 

SourceUser !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
SourceUserId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
AppUser		 
	LikedUser		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public 
int 
LikedUserId 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ˛	
FC:\Users\Wallace\Documents\GitHub\DatingApp\API\Errors\ApiException.cs
	namespace 	
API
 
. 
Errors 
{ 
public 

class 
ApiException 
{ 
public 
ApiException 
( 
int 

statusCode  *
,* +
string, 2
message3 :
=; <
null= A
,A B
stringC I
detailsJ Q
=R S
nullT X
)X Y
{ 	

StatusCode 
= 

statusCode #
;# $
Message 
= 
message 
; 
Details		 
=		 
details		 
;		 
}

 	
public 
int 

StatusCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Details 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} …-
ZC:\Users\Wallace\Documents\GitHub\DatingApp\API\Extensions\ApplicationServiceExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class (
ApplicationServiceExtensions 4
{ 
public 
static 
IServiceCollection ("
AddApplicationServices) ?
(? @
this@ D
IServiceCollectionE W
servicesX `
,` a
IConfigurationb p
configq w
)w x
{ 	
services 
. 
AddSingleton !
<! "
PresenceTracker" 1
>1 2
(2 3
)3 4
;4 5
services 
. 
	Configure 
< 
CloudinarySettings 1
>1 2
(2 3
config3 9
.9 :

GetSection: D
(D E
nameofE K
(K L
CloudinarySettingsL ^
)^ _
)_ `
)` a
;a b
services 
. 
	AddScoped 
< 
ITokenService ,
,, -
TokenService. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
IUnityOfWork +
,+ ,
UnityOfWork- 8
>8 9
(9 :
): ;
;; <
services 
. 
	AddScoped 
< 
IPhotoService ,
,, -
PhotoService. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< 
LogUserActivity .
>. /
(/ 0
)0 1
;1 2
services 
. 
AddAutoMapper "
(" #
typeof# )
() *
AutoMapperProfiles* <
)< =
.= >
Assembly> F
)F G
;G H
services 
. 
AddDbContext !
<! "
DataContext" -
>- .
(. /
options/ 6
=>7 9
{ 
var 
env 
= 
Environment %
.% &"
GetEnvironmentVariable& <
(< =
$str= U
)U V
;V W
string 
connStr 
; 
if!! 
(!! 
env!! 
==!! 
$str!! (
)!!( )
{"" 
connStr$$ 
=$$ 
config$$ $
.$$$ %
GetConnectionString$$% 8
($$8 9
$str$$9 L
)$$L M
;$$M N
}%% 
else&& 
{'' 
var)) 
connUrl)) 
=))  !
Environment))" -
.))- ."
GetEnvironmentVariable)). D
())D E
$str))E S
)))S T
;))T U
connUrl,, 
=,, 
connUrl,, %
.,,% &
Replace,,& -
(,,- .
$str,,. ;
,,,; <
string,,= C
.,,C D
Empty,,D I
),,I J
;,,J K
var-- 

pgUserPass-- "
=--# $
connUrl--% ,
.--, -
Split--- 2
(--2 3
$str--3 6
)--6 7
[--7 8
$num--8 9
]--9 :
;--: ;
var.. 
pgHostPortDb.. $
=..% &
connUrl..' .
.... /
Split../ 4
(..4 5
$str..5 8
)..8 9
[..9 :
$num..: ;
]..; <
;..< =
var// 

pgHostPort// "
=//# $
pgHostPortDb//% 1
.//1 2
Split//2 7
(//7 8
$str//8 ;
)//; <
[//< =
$num//= >
]//> ?
;//? @
var00 
pgDb00 
=00 
pgHostPortDb00 +
.00+ ,
Split00, 1
(001 2
$str002 5
)005 6
[006 7
$num007 8
]008 9
;009 :
var11 
pgUser11 
=11  

pgUserPass11! +
.11+ ,
Split11, 1
(111 2
$str112 5
)115 6
[116 7
$num117 8
]118 9
;119 :
var22 
pgPass22 
=22  

pgUserPass22! +
.22+ ,
Split22, 1
(221 2
$str222 5
)225 6
[226 7
$num227 8
]228 9
;229 :
var33 
pgHost33 
=33  

pgHostPort33! +
.33+ ,
Split33, 1
(331 2
$str332 5
)335 6
[336 7
$num337 8
]338 9
;339 :
var44 
pgPort44 
=44  

pgHostPort44! +
.44+ ,
Split44, 1
(441 2
$str442 5
)445 6
[446 7
$num447 8
]448 9
;449 :
connStr66 
=66 
$"66  
Server=66  '
{66' (
pgHost66( .
}66. /
;Port=66/ 5
{665 6
pgPort666 <
}66< =
	;User Id=66= F
{66F G
pgUser66G M
}66M N

;Password=66N X
{66X Y
pgPass66Y _
}66_ `

;Database=66` j
{66j k
pgDb66k o
}66o p;
.;sslmode=Prefer;Trust Server Certificate=true;	66p û
"
66û ü
;
66ü †
}77 
options;; 
.;; 
	UseNpgsql;; !
(;;! "
connStr;;" )
);;) *
;;;* +
}<< 
)<< 
;<< 
return>> 
services>> 
;>> 
}?? 	
}@@ 
}AA Ä

WC:\Users\Wallace\Documents\GitHub\DatingApp\API\Extensions\ClaimsPrincipalExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class %
ClaimsPrincipalExtensions 1
{ 
public 
static 
string 
GetUsername (
(( )
this) -
ClaimsPrincipal. =
user> B
)B C
{ 	
return		 
user		 
.		 
	FindFirst		 !
(		! "

ClaimTypes		" ,
.		, -
Name		- 1
)		1 2
?		2 3
.		3 4
Value		4 9
;		9 :
}

 	
public 
static 
int 
	GetUserId #
(# $
this$ (
ClaimsPrincipal) 8
user9 =
)= >
{ 	
return 
int 
. 
Parse 
( 
user !
.! "
	FindFirst" +
(+ ,

ClaimTypes, 6
.6 7
NameIdentifier7 E
)E F
?F G
.G H
ValueH M
)M N
;N O
} 	
} 
} È
PC:\Users\Wallace\Documents\GitHub\DatingApp\API\Extensions\DateTimeExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class 
DateTimeExtensions *
{ 
public 
static 
int 
CalculateAge &
(& '
this' +
DateTime, 4
dateOfBirth5 @
)@ A
{ 	
var		 
today		 
=		 
DateTime		  
.		  !
Today		! &
;		& '
var

 
age

 
=

 
today

 
.

 
Year

  
-

! "
dateOfBirth

# .
.

. /
Year

/ 3
;

3 4
if 
( 
dateOfBirth 
> 
today #
.# $
AddYears$ ,
(, -
-- .
age. 1
)1 2
)2 3
age4 7
--7 9
;9 :
return 
age 
; 
} 	
} 
} §
LC:\Users\Wallace\Documents\GitHub\DatingApp\API\Extensions\HttpExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class 
HttpExtensions &
{ 
public		 
static		 
void		 
AddPaginationHeader		 .
(		. /
this		/ 3
HttpResponse		4 @
response		A I
,		I J
int		K N
currentPage		O Z
,		Z [
int		\ _
itemsPerPage		` l
,		l m
int		n q

totalItems		r |
,		| }
int			~ Å

totalPages
		Ç å
)
		å ç
{

 	
var 
paginationHeader  
=! "
new# &
PaginationHeader' 7
(7 8
currentPage8 C
,C D
itemsPerPageE Q
,Q R

totalItemsS ]
,] ^

totalPages_ i
)i j
;j k
var 
options 
= 
new !
JsonSerializerOptions 3
{  
PropertyNamingPolicy $
=% &
JsonNamingPolicy' 7
.7 8
	CamelCase8 A
} 
; 
response 
. 
Headers 
. 
Add  
(  !
$str! -
,- .
JsonSerializer/ =
.= >
	Serialize> G
(G H
paginationHeaderH X
,X Y
optionsZ a
)a b
)b c
;c d
response 
. 
Headers 
. 
Add  
(  !
$str! @
,@ A
$strB N
)N O
;O P
} 	
} 
} ∫&
WC:\Users\Wallace\Documents\GitHub\DatingApp\API\Extensions\IdentityServiceExtensions.cs
	namespace 	
API
 
. 

Extensions 
{ 
public 

static 
class %
IdentityServiceExtensions 1
{ 
public 
static 
IServiceCollection (
AddIdentityServices) <
(< =
this= A
IServiceCollectionB T
servicesU ]
,] ^
IConfiguration_ m
confign t
)t u
{ 	
services 
. 
AddIdentityCore $
<$ %
AppUser% ,
>, -
(- .
opt. 1
=>2 4
{ 
opt 
. 
Password 
. "
RequireNonAlphanumeric 3
=4 5
false6 ;
;; <
} 
) 
. 
AddRoles 
< 
AppRole 
> 
( 
)  
. 
AddRoleManager 
< 
RoleManager '
<' (
AppRole( /
>/ 0
>0 1
(1 2
)2 3
. 
AddSignInManager 
< 
SignInManager +
<+ ,
AppUser, 3
>3 4
>4 5
(5 6
)6 7
. 
AddRoleValidator 
< 
RoleValidator +
<+ ,
AppRole, 3
>3 4
>4 5
(5 6
)6 7
. $
AddEntityFrameworkStores %
<% &
DataContext& 1
>1 2
(2 3
)3 4
;4 5
services 
. 
AddAuthentication &
(& '
JwtBearerDefaults' 8
.8 9 
AuthenticationScheme9 M
)M N
. 
AddJwtBearer 
( 
options %
=>& (
{ 
options 
. %
TokenValidationParameters 5
=6 7
new8 ;%
TokenValidationParameters< U
{ $
ValidateIssuerSigningKey   0
=  1 2
true  3 7
,  7 8
IssuerSigningKey!! (
=!!) *
new!!+ . 
SymmetricSecurityKey!!/ C
(!!C D
Encoding!!D L
.!!L M
UTF8!!M Q
.!!Q R
GetBytes!!R Z
(!!Z [
config!![ a
[!!a b
$str!!b l
]!!l m
)!!m n
)!!n o
,!!o p
ValidateIssuer"" &
=""' (
false"") .
,"". /
ValidateAudience## (
=##) *
false##+ 0
}$$ 
;$$ 
options&& 
.&& 
Events&& "
=&&# $
new&&% (
JwtBearerEvents&&) 8
{'' 
OnMessageReceived(( )
=((* +
context((, 3
=>((4 6
{)) 
var** 
accessToken**  +
=**, -
context**. 5
.**5 6
Request**6 =
.**= >
Query**> C
[**C D
$str**D R
]**R S
;**S T
var++ 
path++  $
=++% &
context++' .
.++. /
HttpContext++/ :
.++: ;
Request++; B
.++B C
Path++C G
;++G H
if,, 
(,,  
!,,  !
string,,! '
.,,' (
IsNullOrEmpty,,( 5
(,,5 6
accessToken,,6 A
),,A B
&&,,C E
path,,F J
.,,J K
StartsWithSegments,,K ]
(,,] ^
$str,,^ e
),,e f
),,f g
{-- 
context..  '
...' (
Token..( -
=... /
accessToken..0 ;
;..; <
}// 
return11 "
Task11# '
.11' (
CompletedTask11( 5
;115 6
}22 
}33 
;33 
}44 
)44 
;44 
services66 
.66 
AddAuthorization66 %
(66% &
opt66& )
=>66* ,
{77 
opt88 
.88 
	AddPolicy88 
(88 
$str88 0
,880 1
policy882 8
=>889 ;
policy88< B
.88B C
RequireRole88C N
(88N O
$str88O V
)88V W
)88W X
;88X Y
opt99 
.99 
	AddPolicy99 
(99 
$str99 1
,991 2
policy993 9
=>99: <
policy99= C
.99C D
RequireRole99D O
(99O P
$str99P W
,99W X
$str99Y d
)99d e
)99e f
;99f g
}:: 
):: 
;:: 
return<< 
services<< 
;<< 
}== 	
}>> 
}?? Ω
MC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\AutoMapperProfiles.cs
	namespace 	
API
 
. 
Helpers 
{		 
public

 

class

 
AutoMapperProfiles

 #
:

$ %
Profile

& -
{ 
public 
AutoMapperProfiles !
(! "
)" #
{ 	
	CreateMap 
< 
AppUser 
, 
	MemberDto (
>( )
() *
)* +
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
PhotoUrl$ ,
,, -
opt 
=> 
opt  #
.# $
MapFrom$ +
(+ ,
src, /
=>0 2
src3 6
.6 7
Photos7 =
.= >
FirstOrDefault> L
(L M
pM N
=>O Q
pR S
.S T
IsMainT Z
)Z [
.[ \
Url\ _
)_ `
)` a
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
Age$ '
,' (
opt) ,
=>- /
opt0 3
.3 4
MapFrom4 ;
(; <
src< ?
=>@ B
srcC F
.F G
DateOfBirthG R
.R S
CalculateAgeS _
(_ `
)` a
)a b
)b c
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
City$ (
,( )
opt* -
=>. 0
opt1 4
.4 5
MapFrom5 <
(< =
src= @
=>A C
srcD G
.G H
CityH L
.L M
NameM Q
+R S
$strT X
+Y Z
src[ ^
.^ _
City_ c
.c d
Stated i
.i j
Countryj q
.q r
Namer v
)v w
)w x
;x y
	CreateMap 
< 
Photo 
, 
PhotoDto %
>% &
(& '
)' (
;( )
	CreateMap 
< 
MemberUpdateDto %
,% &
AppUser' .
>. /
(/ 0
)0 1
;1 2
	CreateMap 
< 
RegisterDto !
,! "
AppUser# *
>* +
(+ ,
), -
;- .
	CreateMap 
< 
Message 
, 

MessageDto )
>) *
(* +
)+ ,
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
SenderPhotoUrl( 6
,6 7
opt 
=>  "
opt# &
.& '
MapFrom' .
(. /
src/ 2
=>3 5
src6 9
.9 :
Sender: @
.@ A
PhotosA G
.G H
FirstOrDefaultH V
(V W
xW X
=>Y [
x\ ]
.] ^
IsMain^ d
)d e
.e f
Urlf i
)i j
)j k
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
RecipientPhotoUrl( 9
,9 :
opt 
=>  "
opt# &
.& '
MapFrom' .
(. /
src/ 2
=>3 5
src6 9
.9 :
	Recipient: C
.C D
PhotosD J
.J K
FirstOrDefaultK Y
(Y Z
xZ [
=>\ ^
x_ `
.` a
IsMaina g
)g h
.h i
Urli l
)l m
)m n
;n o
} 	
}   
}!! Ï
MC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\CloudinarySettings.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
CloudinarySettings #
{ 
public 
string 
	CloudName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ApiKey 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
	ApiSecret		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
}

 
} Î
FC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\LikesParams.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
LikesParams 
: 
PaginationParams /
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
	Predicate 
{  !
get" %
;% &
set' *
;* +
}, -
} 
}		 á
JC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\LogUserActivity.cs
	namespace 	
API
 
. 
Helpers 
{		 
public

 

class

 
LogUserActivity

  
:

! "
IAsyncActionFilter

# 5
{ 
public 
async 
Task "
OnActionExecutionAsync 0
(0 1"
ActionExecutingContext1 G
contextH O
,O P#
ActionExecutionDelegateQ h
nexti m
)m n
{ 	
var 
resultContext 
= 
await  %
next& *
(* +
)+ ,
;, -
if 
( 
! 
resultContext 
. 
HttpContext *
.* +
User+ /
./ 0
Identity0 8
.8 9
IsAuthenticated9 H
)H I
return 
; 
var 
userId 
= 
resultContext &
.& '
HttpContext' 2
.2 3
User3 7
.7 8
	GetUserId8 A
(A B
)B C
;C D
var 
uow 
= 
resultContext #
.# $
HttpContext$ /
./ 0
RequestServices0 ?
.? @

GetService@ J
<J K
IUnityOfWorkK W
>W X
(X Y
)Y Z
;Z [
var 
user 
= 
await 
uow  
.  !
UserRepository! /
./ 0
GetUserByIdAsync0 @
(@ A
userIdA G
)G H
;H I
user 
. 

LastActive 
= 
DateTime &
.& '
UtcNow' -
;- .
await 
uow 
. 
Complete 
( 
)  
;  !
} 	
} 
} §
HC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\MessageParams.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
MessageParams 
:  
PaginationParams! 1
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	Container 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
$str0 8
;8 9
} 
}		 ö
DC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\PagedList.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
	PagedList 
< 
T 
> 
: 
List  $
<$ %
T% &
>& '
{		 
public

 
	PagedList

 
(

 
IEnumerable

 $
<

$ %
T

% &
>

& '
items

( -
,

- .
int

/ 2
count

3 8
,

8 9
int

: =

pageNumber

> H
,

H I
int

J M
pageSize

N V
)

V W
{ 	
CurrentPage 
= 

pageNumber $
;$ %

TotalPages 
= 
( 
int 
) 
System $
.$ %
Math% )
.) *
Ceiling* 1
(1 2
count2 7
/8 9
(: ;
double; A
)A B
pageSizeB J
)J K
;K L
PageSize 
= 
pageSize 
;  

TotalCount 
= 
count 
; 
AddRange 
( 
items 
) 
; 
} 	
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

TotalPages 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 

TotalCount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
static 
async 
Task  
<  !
	PagedList! *
<* +
T+ ,
>, -
>- .
CreateAsync/ :
(: ;

IQueryable; E
<E F
TF G
>G H
sourceI O
,O P
intQ T

pageNumberU _
,_ `
inta d
pageSizee m
)m n
{ 	
var 
count 
= 
await 
source $
.$ %

CountAsync% /
(/ 0
)0 1
;1 2
var 
items 
= 
await 
source $
.$ %
Skip% )
() *
(* +

pageNumber+ 5
-6 7
$num8 9
)9 :
*; <
pageSize= E
)E F
.F G
TakeG K
(K L
pageSizeL T
)T U
.U V
ToListAsyncV a
(a b
)b c
;c d
return!! 
new!! 
	PagedList!!  
<!!  !
T!!! "
>!!" #
(!!# $
items!!$ )
,!!) *
count!!+ 0
,!!0 1

pageNumber!!2 <
,!!< =
pageSize!!> F
)!!F G
;!!G H
}"" 	
}## 
}$$ É
KC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\PaginationHeader.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
PaginationHeader !
{ 
public 
PaginationHeader 
(  
int  #
currentPage$ /
,/ 0
int1 4
itemsPerPage5 A
,A B
intC F

totalItemsG Q
,Q R
intS V

totalPagesW a
)a b
{ 	
CurrentPage 
= 
currentPage %
;% &
ItemsPerPage 
= 
itemsPerPage '
;' (

TotalItems		 
=		 

totalItems		 #
;		# $

TotalPages

 
=

 

totalPages

 #
;

# $
} 	
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
ItemsPerPage 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

TotalItems 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 

TotalPages 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Á
KC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\PaginationParams.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 
PaginationParams !
{ 
private 
const 
int 
MaxPageSize %
=& '
$num( *
;* +
public 
int 

PageNumber 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$num. /
;/ 0
private		 
int		 
	_pageSize		 
=		 
$num		  "
;		" #
public 
int 
PageSize 
{ 	
get 
=> 
	_pageSize 
; 
set 
=> 
	_pageSize 
= 
(  
value  %
>& '
MaxPageSize( 3
)3 4
?5 6
MaxPageSize7 B
:C D
valueE J
;J K
} 	
} 
} À	
EC:\Users\Wallace\Documents\GitHub\DatingApp\API\Helpers\UserParams.cs
	namespace 	
API
 
. 
Helpers 
{ 
public 

class 

UserParams 
: 
PaginationParams .
{ 
public 
string 
CurrentUsername %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Gender 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
MinAge		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
=		( )
$num		* ,
;		, -
public 
int 
MaxAge 
{ 
get 
;  
set! $
;$ %
}& '
=( )
$num* ,
;, -
public 
string 
OrderBy 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. :
;: ;
} 
} ™
MC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\ICityRepository.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public 

	interface 
ICityRepository $
{ 
void		 
AddCity		 
(		 
City		 
city		 
)		 
;		  
void 

DeleteCity 
( 
City 
city !
)! "
;" #
Task 
< 
City 
> 
GetCityAsync 
(  
int  #
id$ &
)& '
;' (
Task 
< 
IEnumerable 
< 
City 
> 
> #
GetCitiesByStateIdAsync  7
(7 8
int8 ;
stateId< C
)C D
;D E
} 
} ¢
PC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\ICountryRepository.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public 

	interface 
ICountryRepository '
{ 
void		 

AddCountry		 
(		 
Country		 
country		  '
)		' (
;		( )
void 
DeleteCountry 
( 
Country "
country# *
)* +
;+ ,
Task 
< 
Country 
> 
GetCountryAsync %
(% &
int& )
id* ,
), -
;- .
Task 
< 
IEnumerable 
< 
Country  
>  !
>! " 
GetAllCountriesAsync# 7
(7 8
)8 9
;9 :
} 
} ∂
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\ILikesRepository.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public		 

	interface		 
ILikesRepository		 %
{

 
Task 
< 
UserLike 
> 
GetUserLike "
(" #
int# &
sourceUserId' 3
,3 4
int5 8
likedUserId9 D
)D E
;E F
Task 
< 
AppUser 
> 
GetUserWithLikes &
(& '
int' *
userId+ 1
)1 2
;2 3
Task 
< 
	PagedList 
< 
LikeDto 
> 
>  
GetUserLikes! -
(- .
LikesParams. 9
likesParams: E
)E F
;F G
} 
} Œ
PC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\IMessageRepository.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public		 

	interface		 
IMessageRepository		 '
{

 
void 
AddGroup 
( 
Group 
group !
)! "
;" #
void 
RemoveConnection 
( 

Connection (

connection) 3
)3 4
;4 5
Task 
< 

Connection 
> 
GetConnection &
(& '
string' -
connectionId. :
): ;
;; <
Task 
< 
Group 
> 
GetMessageGroup #
(# $
string$ *
	groupName+ 4
)4 5
;5 6
Task 
< 
Group 
> !
GetGroupForConnection )
() *
string* 0
connectionId1 =
)= >
;> ?
void 

AddMessage 
( 
Message 
message  '
)' (
;( )
void 
DeleteMessage 
( 
Message "
message# *
)* +
;+ ,
Task 
< 
Message 
> 

GetMessage  
(  !
int! $
id% '
)' (
;( )
Task 
< 
	PagedList 
< 

MessageDto !
>! "
>" #
GetMessagesForUser$ 6
(6 7
MessageParams7 D
messageParamsE R
)R S
;S T
Task 
< 
IEnumerable 
< 

MessageDto #
># $
>$ %
GetMessageThread& 6
(6 7
string7 =
currentUsername> M
,M N
stringO U
recipientUsernameV g
)g h
;h i
} 
} ô
KC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\IPhotoService.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public 

	interface 
IPhotoService "
{ 
Task		 
<		 
ImageUploadResult		 
>		 
AddPhotoAsync		  -
(		- .
	IFormFile		. 7
file		8 <
)		< =
;		= >
Task 
< 
DeletionResult 
> 
DeletePhotoAsync -
(- .
string. 4
publicId5 =
)= >
;> ?
} 
} π
NC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\IStateRepository.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public 

	interface 
IStateRepository %
{ 
void		 
AddState		 
(		 
State		 
state		 !
)		! "
;		" #
void 
DeleteState 
( 
State 
state $
)$ %
;% &
Task 
< 
State 
> 
GetStateAsync !
(! "
int" %
id& (
)( )
;) *
Task 
< 
IEnumerable 
< 
State 
> 
>  %
GetStatesByCountryIdAsync! :
(: ;
int; >
	countryId? H
)H I
;I J
} 
} Ã
KC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\ITokenService.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public 

	interface 
ITokenService "
{ 
Task 
< 
string 
> 
CreateToken  
(  !
AppUser! (
appUser) 0
)0 1
;1 2
}		 
}

 Ã	
JC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\IUnityOfWork.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public 

	interface 
IUnityOfWork !
{ 
IUserRepository 
UserRepository &
{' (
get) ,
;, -
}. /
IMessageRepository		 
MessageRepository		 ,
{		- .
get		/ 2
;		2 3
}		4 5
ILikesRepository 
LikesRepository (
{) *
get+ .
;. /
}0 1
ICountryRepository 
CountryRepository ,
{- .
get/ 2
;2 3
}4 5
IStateRepository 
StateRepository (
{) *
get+ .
;. /
}0 1
ICityRepository 
CityRepository &
{' (
get) ,
;, -
}. /
Task 
< 
bool 
> 
Complete 
( 
) 
; 
bool 

HasChanges 
( 
) 
; 
} 
} ±
MC:\Users\Wallace\Documents\GitHub\DatingApp\API\Interfaces\IUserRepository.cs
	namespace 	
API
 
. 

Interfaces 
{ 
public		 

	interface		 
IUserRepository		 $
{

 
void 
Update 
( 
AppUser 
user  
)  !
;! "
Task 
< 
IEnumerable 
< 
AppUser  
>  !
>! "
GetUsersAsync# 0
(0 1
)1 2
;2 3
Task 
< 
AppUser 
> 
GetUserByIdAsync &
(& '
int' *
id+ -
)- .
;. /
Task 
< 
AppUser 
> "
GetUserByUserNameAsync ,
(, -
string- 3
username4 <
)< =
;= >
Task 
< 
	PagedList 
< 
	MemberDto  
>  !
>! "
GetMembersAsync# 2
(2 3

UserParams3 =

userParams> H
)H I
;I J
Task 
< 
	MemberDto 
> 
GetMemberAsync &
(& '
string' -
username. 6
)6 7
;7 8
Task 
< 
string 
> 
GetUserGender "
(" #
string# )
username* 2
)2 3
;3 4
} 
} ’
QC:\Users\Wallace\Documents\GitHub\DatingApp\API\Middleware\ExceptionMiddleware.cs
	namespace

 	
API


 
.

 

Middleware

 
{ 
public 

class 
ExceptionMiddleware $
{ 
public 
RequestDelegate 
_next $
;$ %
private 
readonly 
ILogger  
<  !
ExceptionMiddleware! 4
>4 5
_logger6 =
;= >
private 
readonly 
IHostEnvironment )
_env* .
;. /
public 
ExceptionMiddleware "
(" #
RequestDelegate# 2
next3 7
,7 8
ILogger9 @
<@ A
ExceptionMiddlewareA T
>T U
loggerV \
,\ ]
IHostEnvironment^ n
envo r
)r s
{ 	
_env 
= 
env 
; 
_logger 
= 
logger 
; 
_next 
= 
next 
; 
} 	
public 
async 
Task 
InvokeAsync %
(% &
HttpContext& 1
context2 9
)9 :
{ 	
try 
{ 
await 
_next 
( 
context #
)# $
;$ %
}   
catch!! 
(!! 
	Exception!! 
ex!! 
)!!  
{"" 
_logger## 
.## 
LogError##  
(##  !
ex##! #
,### $
ex##% '
.##' (
Message##( /
)##/ 0
;##0 1
context$$ 
.$$ 
Response$$  
.$$  !
ContentType$$! ,
=$$- .
$str$$/ A
;$$A B
context%% 
.%% 
Response%%  
.%%  !

StatusCode%%! +
=%%, -
(%%. /
int%%/ 2
)%%2 3
HttpStatusCode%%3 A
.%%A B
InternalServerError%%B U
;%%U V
var'' 
response'' 
='' 
_env'' #
.''# $
IsDevelopment''$ 1
(''1 2
)''2 3
?(( 
new(( 
ApiException(( &
(((& '
context((' .
.((. /
Response((/ 7
.((7 8

StatusCode((8 B
,((B C
ex((D F
.((F G
Message((G N
,((N O
ex((P R
.((R S

StackTrace((S ]
?((] ^
.((^ _
ToString((_ g
(((g h
)((h i
)((i j
:)) 
new)) 
ApiException)) &
())& '
context))' .
.)). /
Response))/ 7
.))7 8

StatusCode))8 B
,))B C
$str))D [
)))[ \
;))\ ]
var++ 
options++ 
=++ 
new++ !!
JsonSerializerOptions++" 7
{++8 9 
PropertyNamingPolicy++: N
=++O P
JsonNamingPolicy++Q a
.++a b
	CamelCase++b k
}++l m
;++m n
var-- 
json-- 
=-- 
JsonSerializer-- )
.--) *
	Serialize--* 3
(--3 4
response--4 <
,--< =
options--> E
)--E F
;--F G
await// 
context// 
.// 
Response// &
.//& '

WriteAsync//' 1
(//1 2
json//2 6
)//6 7
;//7 8
}11 
}22 	
}33 
}44 †
:C:\Users\Wallace\Documents\GitHub\DatingApp\API\Program.cs
	namespace 	
API
 
{ 
public 

class 
Program 
{ 
public 
static 
async 
Task  
Main! %
(% &
string& ,
[, -
]- .
args/ 3
)3 4
{ 	
var 
host 
= 
CreateHostBuilder (
(( )
args) -
)- .
.. /
Build/ 4
(4 5
)5 6
;6 7
using 
var 
scope 
= 
host "
." #
Services# +
.+ ,
CreateScope, 7
(7 8
)8 9
;9 :
var 
services 
= 
scope  
.  !
ServiceProvider! 0
;0 1
try 
{ 
var 
context 
= 
services &
.& '
GetRequiredService' 9
<9 :
DataContext: E
>E F
(F G
)G H
;H I
var 
userManager 
=  !
services" *
.* +
GetRequiredService+ =
<= >
UserManager> I
<I J
AppUserJ Q
>Q R
>R S
(S T
)T U
;U V
var 
roleManager 
=  !
services" *
.* +
GetRequiredService+ =
<= >
RoleManager> I
<I J
AppRoleJ Q
>Q R
>R S
(S T
)T U
;U V
await 
context 
. 
Database &
.& '
MigrateAsync' 3
(3 4
)4 5
;5 6
await 
Seed 
. 
SeedLocalizations ,
(, -
context- 4
)4 5
;5 6
await   
Seed   
.   
	SeedUsers   $
(  $ %
userManager  % 0
,  0 1
roleManager  2 =
)  = >
;  > ?
}!! 
catch"" 
("" 
	Exception"" 
ex"" 
)""  
{## 
var$$ 
logger$$ 
=$$ 
services$$ %
.$$% &
GetRequiredService$$& 8
<$$8 9
ILogger$$9 @
<$$@ A
Program$$A H
>$$H I
>$$I J
($$J K
)$$K L
;$$L M
logger%% 
.%% 
LogError%% 
(%%  
ex%%  "
,%%" #
$str%%$ G
)%%G H
;%%H I
}&& 
await(( 
host(( 
.(( 
RunAsync(( 
(((  
)((  !
;((! "
})) 	
public++ 
static++ 
IHostBuilder++ "
CreateHostBuilder++# 4
(++4 5
string++5 ;
[++; <
]++< =
args++> B
)++B C
=>++D F
Host,, 
.,,  
CreateDefaultBuilder,, %
(,,% &
args,,& *
),,* +
.-- $
ConfigureWebHostDefaults-- )
(--) *

webBuilder--* 4
=>--5 7
{.. 

webBuilder// 
.// 

UseStartup// )
<//) *
Startup//* 1
>//1 2
(//2 3
)//3 4
;//4 5
}00 
)00 
;00 
}11 
}22 Ô
HC:\Users\Wallace\Documents\GitHub\DatingApp\API\Services\PhotoService.cs
	namespace		 	
API		
 
.		 
Services		 
{

 
public 

class 
PhotoService 
: 
IPhotoService  -
{ 
private 
readonly 

Cloudinary #
_cloudinary$ /
;/ 0
public 
PhotoService 
( 
IOptions $
<$ %
CloudinarySettings% 7
>7 8
config9 ?
)? @
{ 	
var 
acc 
= 
new 
Account !
(! "
config" (
.( )
Value) .
.. /
	CloudName/ 8
,8 9
config: @
.@ A
ValueA F
.F G
ApiKeyG M
,M N
configO U
.U V
ValueV [
.[ \
	ApiSecret\ e
)e f
;f g
_cloudinary 
= 
new 

Cloudinary (
(( )
acc) ,
), -
;- .
} 	
public 
async 
Task 
< 
ImageUploadResult +
>+ ,
AddPhotoAsync- :
(: ;
	IFormFile; D
fileE I
)I J
{ 	
var 
uploadResult 
= 
new "
ImageUploadResult# 4
(4 5
)5 6
;6 7
if 
( 
file 
. 
Length 
> 
$num 
)  
{ 
using 
var 
stream  
=! "
file# '
.' (
OpenReadStream( 6
(6 7
)7 8
;8 9
var 
uploadParams  
=! "
new# &
ImageUploadParams' 8
{ 
File 
= 
new 
FileDescription .
(. /
file/ 3
.3 4
FileName4 <
,< =
stream> D
)D E
,E F
Transformation   "
=  # $
new  % (
Transformation  ) 7
(  7 8
)  8 9
.  9 :
Height  : @
(  @ A
$num  A D
)  D E
.  E F
Width  F K
(  K L
$num  L O
)  O P
.  P Q
Crop  Q U
(  U V
$str  V \
)  \ ]
.  ] ^
Gravity  ^ e
(  e f
$str  f l
)  l m
}!! 
;!! 
uploadResult## 
=## 
await## $
_cloudinary##% 0
.##0 1
UploadAsync##1 <
(##< =
uploadParams##= I
)##I J
;##J K
}$$ 
return&& 
uploadResult&& 
;&&  
}'' 	
public)) 
async)) 
Task)) 
<)) 
DeletionResult)) (
>))( )
DeletePhotoAsync))* :
()): ;
string)); A
publicId))B J
)))J K
{** 	
var++ 
deleteParams++ 
=++ 
new++ "
DeletionParams++# 1
(++1 2
publicId++2 :
)++: ;
;++; <
var-- 
results-- 
=-- 
await-- 
_cloudinary--  +
.--+ ,
DestroyAsync--, 8
(--8 9
deleteParams--9 E
)--E F
;--F G
return// 
results// 
;// 
}00 	
}11 
}22 Û
HC:\Users\Wallace\Documents\GitHub\DatingApp\API\Services\TokenService.cs
	namespace 	
API
 
. 
Services 
{ 
public 

class 
TokenService 
: 
ITokenService  -
{ 
private 
readonly  
SymmetricSecurityKey -
_key. 2
;2 3
private 
readonly 
UserManager $
<$ %
AppUser% ,
>, -
_userManager. :
;: ;
public 
TokenService 
( 
IConfiguration *
config+ 1
,1 2
UserManager3 >
<> ?
AppUser? F
>F G
userManagerH S
)S T
{ 	
_userManager 
= 
userManager &
;& '
_key 
= 
new  
SymmetricSecurityKey +
(+ ,
Encoding, 4
.4 5
UTF85 9
.9 :
GetBytes: B
(B C
configC I
[I J
$strJ T
]T U
)U V
)V W
;W X
} 	
public 
async 
Task 
< 
string  
>  !
CreateToken" -
(- .
AppUser. 5
user6 :
): ;
{ 	
var 
claims 
= 
new 
List !
<! "
Claim" '
>' (
(( )
)) *
{* +
new 
Claim 
( #
JwtRegisteredClaimNames 1
.1 2
NameId2 8
,8 9
user: >
.> ?
Id? A
.A B
ToStringB J
(J K
)K L
)L M
,M N
new   
Claim   
(   #
JwtRegisteredClaimNames   1
.  1 2

UniqueName  2 <
,  < =
user  > B
.  B C
UserName  C K
)  K L
}!! 
;!! 
var## 
roles## 
=## 
await## 
_userManager## *
.##* +
GetRolesAsync##+ 8
(##8 9
user##9 =
)##= >
;##> ?
claims%% 
.%% 
AddRange%% 
(%% 
roles%% !
.%%! "
Select%%" (
(%%( )
role%%) -
=>%%. 0
new%%1 4
Claim%%5 :
(%%: ;

ClaimTypes%%; E
.%%E F
Role%%F J
,%%J K
role%%L P
)%%P Q
)%%Q R
)%%R S
;%%S T
var'' 
creds'' 
='' 
new'' 
SigningCredentials'' .
(''. /
_key''/ 3
,''3 4
SecurityAlgorithms''5 G
.''G H
HmacSha512Signature''H [
)''[ \
;''\ ]
var)) 
tokenDescriptor)) 
=))  !
new))" %#
SecurityTokenDescriptor))& =
{** 
Subject++ 
=++ 
new++ 
ClaimsIdentity++ ,
(++, -
claims++- 3
)++3 4
,++4 5
Expires,, 
=,, 
DateTime,, "
.,," #
Now,,# &
.,,& '
AddDays,,' .
(,,. /
$num,,/ 0
),,0 1
,,,1 2
SigningCredentials-- "
=--# $
creds--% *
}.. 
;.. 
var00 
tokenHandler00 
=00 
new00 "#
JwtSecurityTokenHandler00# :
(00: ;
)00; <
;00< =
var22 
token22 
=22 
tokenHandler22 $
.22$ %
CreateToken22% 0
(220 1
tokenDescriptor221 @
)22@ A
;22A B
return44 
tokenHandler44 
.44  

WriteToken44  *
(44* +
token44+ 0
)440 1
;441 2
}55 	
}66 
}77 ®m
EC:\Users\Wallace\Documents\GitHub\DatingApp\API\SignalR\MessageHub.cs
	namespace 	
API
 
. 
SignalR 
{ 
public 

class 

MessageHub 
: 
Hub !
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
IHubContext $
<$ %
PresenceHub% 0
>0 1
_presenceHub2 >
;> ?
private 
readonly 
PresenceTracker (
_tracker) 1
;1 2
private 
readonly 
IUnityOfWork %
_unityOfWork& 2
;2 3
public 

MessageHub 
( 
IUnityOfWork &
unityOfWork' 2
,2 3
IMapper4 ;
mapper< B
,B C
IHubContextD O
<O P
PresenceHubP [
>[ \
presenceHub] h
,h i
PresenceTrackerj y
tracker	z Å
)
Å Ç
{ 	
_unityOfWork 
= 
unityOfWork &
;& '
_tracker 
= 
tracker 
; 
_presenceHub 
= 
presenceHub &
;& '
_mapper 
= 
mapper 
; 
} 	
public 
override 
async 
Task "
OnConnectedAsync# 3
(3 4
)4 5
{   	
var!! 
httpContext!! 
=!! 
Context!! %
.!!% &
GetHttpContext!!& 4
(!!4 5
)!!5 6
;!!6 7
var"" 
	otherUser"" 
="" 
httpContext"" '
.""' (
Request""( /
.""/ 0
Query""0 5
[""5 6
$str""6 <
]""< =
.""= >
ToString""> F
(""F G
)""G H
;""H I
var## 
	groupName## 
=## 
GetGroupName## (
(##( )
Context##) 0
.##0 1
User##1 5
.##5 6
GetUsername##6 A
(##A B
)##B C
,##C D
	otherUser##E N
)##N O
;##O P
await%% 
Groups%% 
.%% 
AddToGroupAsync%% (
(%%( )
Context%%) 0
.%%0 1
ConnectionId%%1 =
,%%= >
	groupName%%? H
)%%H I
;%%I J
var&& 
group&& 
=&& 
await&& 

AddToGroup&& (
(&&( )
	groupName&&) 2
)&&2 3
;&&3 4
await(( 
Clients(( 
.(( 
Group(( 
(((  
	groupName((  )
)(() *
.((* +
	SendAsync((+ 4
(((4 5
$str((5 C
,((C D
group((E J
)((J K
;((K L
var** 
messages** 
=** 
await**  
_unityOfWork**! -
.**- .
MessageRepository**. ?
.**? @
GetMessageThread**@ P
(**P Q
Context**Q X
.**X Y
User**Y ]
.**] ^
GetUsername**^ i
(**i j
)**j k
,**k l
	otherUser**m v
)**v w
;**w x
if,, 
(,, 
_unityOfWork,, 
.,, 

HasChanges,, '
(,,' (
),,( )
),,) *
await-- 
_unityOfWork-- "
.--" #
Complete--# +
(--+ ,
)--, -
;--- .
await// 
Clients// 
.// 
Caller//  
.//  !
	SendAsync//! *
(//* +
$str//+ A
,//A B
messages//C K
)//K L
;//L M
}00 	
public22 
override22 
async22 
Task22 "
OnDisconnectedAsync22# 6
(226 7
	Exception227 @
	exception22A J
)22J K
{33 	
var44 
group44 
=44 
await44 "
RemoveFromMessageGroup44 4
(444 5
)445 6
;446 7
await55 
Clients55 
.55 
Group55 
(55  
group55  %
.55% &
Name55& *
)55* +
.55+ ,
	SendAsync55, 5
(555 6
$str556 D
,55D E
group55F K
)55K L
;55L M
await66 
base66 
.66 
OnDisconnectedAsync66 *
(66* +
	exception66+ 4
)664 5
;665 6
}77 	
public99 
async99 
Task99 
SendMessage99 %
(99% &
CreateMessageDto99& 6
createMessageDto997 G
)99G H
{:: 	
var;; 
username;; 
=;; 
Context;; "
.;;" #
User;;# '
.;;' (
GetUsername;;( 3
(;;3 4
);;4 5
;;;5 6
if== 
(== 
username== 
.== 
Equals== 
(==  
createMessageDto==  0
.==0 1
RecipientUsername==1 B
.==B C
ToLower==C J
(==J K
)==K L
)==L M
)==M N
throw>> 
new>> 
HubException>> &
(>>& '
$str>>' M
)>>M N
;>>N O
var@@ 
sender@@ 
=@@ 
await@@ 
_unityOfWork@@ +
.@@+ ,
UserRepository@@, :
.@@: ;"
GetUserByUserNameAsync@@; Q
(@@Q R
username@@R Z
)@@Z [
;@@[ \
varAA 
	recipientAA 
=AA 
awaitAA !
_unityOfWorkAA" .
.AA. /
UserRepositoryAA/ =
.AA= >"
GetUserByUserNameAsyncAA> T
(AAT U
createMessageDtoAAU e
.AAe f
RecipientUsernameAAf w
)AAw x
;AAx y
ifCC 
(CC 
	recipientCC 
==CC 
nullCC !
)CC! "
throwDD 
newDD 
HubExceptionDD &
(DD& '
$strDD' 7
)DD7 8
;DD8 9
varFF 
messageFF 
=FF 
newFF 
MessageFF %
{GG 
SenderHH 
=HH 
senderHH 
,HH  
	RecipientII 
=II 
	recipientII %
,II% &
SenderUsernameJJ 
=JJ  
senderJJ! '
.JJ' (
UserNameJJ( 0
,JJ0 1
RecipientUsernameKK !
=KK" #
	recipientKK$ -
.KK- .
UserNameKK. 6
,KK6 7
ContentLL 
=LL 
createMessageDtoLL *
.LL* +
ContentLL+ 2
}MM 
;MM 
varOO 
	groupNameOO 
=OO 
GetGroupNameOO (
(OO( )
senderOO) /
.OO/ 0
UserNameOO0 8
,OO8 9
	recipientOO: C
.OOC D
UserNameOOD L
)OOL M
;OOM N
varQQ 
groupQQ 
=QQ 
awaitQQ 
_unityOfWorkQQ *
.QQ* +
MessageRepositoryQQ+ <
.QQ< =
GetMessageGroupQQ= L
(QQL M
	groupNameQQM V
)QQV W
;QQW X
ifSS 
(SS 
groupSS 
.SS 
ConnectionsSS !
.SS! "
AnySS" %
(SS% &
gSS& '
=>SS( *
gSS+ ,
.SS, -
UsernameSS- 5
.SS5 6
EqualsSS6 <
(SS< =
	recipientSS= F
.SSF G
UserNameSSG O
)SSO P
)SSP Q
)SSQ R
{TT 
messageUU 
.UU 
DateReadUU  
=UU! "
DateTimeUU# +
.UU+ ,
UtcNowUU, 2
;UU2 3
}VV 
elseWW 
{XX 
varYY 
connectionsYY 
=YY  !
awaitYY" '
_trackerYY( 0
.YY0 1!
GetConnectionsForUserYY1 F
(YYF G
	recipientYYG P
.YYP Q
UserNameYYQ Y
)YYY Z
;YYZ [
if[[ 
([[ 
connections[[ 
!=[[  "
null[[# '
)[[' (
{\\ 
await]] 
_presenceHub]] &
.]]& '
Clients]]' .
.]]. /
Clients]]/ 6
(]]6 7
connections]]7 B
)]]B C
.]]C D
	SendAsync]]D M
(]]M N
$str]]N b
,]]b c
new]]d g
{]]h i
username]]j r
=]]s t
sender]]u {
.]]{ |
UserName	]]| Ñ
,
]]Ñ Ö
knownAs
]]Ü ç
=
]]é è
sender
]]ê ñ
.
]]ñ ó
KnownAs
]]ó û
}
]]ü †
)
]]† °
;
]]° ¢
}^^ 
}__ 
_unityOfWorkaa 
.aa 
MessageRepositoryaa *
.aa* +

AddMessageaa+ 5
(aa5 6
messageaa6 =
)aa= >
;aa> ?
ifcc 
(cc 
awaitcc 
_unityOfWorkcc "
.cc" #
Completecc# +
(cc+ ,
)cc, -
)cc- .
{dd 
awaitee 
Clientsee 
.ee 
Groupee #
(ee# $
	groupNameee$ -
)ee- .
.ee. /
	SendAsyncee/ 8
(ee8 9
$stree9 E
,eeE F
_mappereeG N
.eeN O
MapeeO R
<eeR S

MessageDtoeeS ]
>ee] ^
(ee^ _
messageee_ f
)eef g
)eeg h
;eeh i
}ff 
}gg 	
privateii 
asyncii 
Taskii 
<ii 
Groupii  
>ii  !

AddToGroupii" ,
(ii, -
stringii- 3
	groupNameii4 =
)ii= >
{jj 	
varkk 
groupkk 
=kk 
awaitkk 
_unityOfWorkkk *
.kk* +
MessageRepositorykk+ <
.kk< =
GetMessageGroupkk= L
(kkL M
	groupNamekkM V
)kkV W
;kkW X
varll 

connectionll 
=ll 
newll  

Connectionll! +
(ll+ ,
Contextll, 3
.ll3 4
ConnectionIdll4 @
,ll@ A
ContextllB I
.llI J
UserllJ N
.llN O
GetUsernamellO Z
(llZ [
)ll[ \
)ll\ ]
;ll] ^
ifnn 
(nn 
groupnn 
==nn 
nullnn 
)nn 
{oo 
grouppp 
=pp 
newpp 
Grouppp !
(pp! "
	groupNamepp" +
)pp+ ,
;pp, -
_unityOfWorkqq 
.qq 
MessageRepositoryqq .
.qq. /
AddGroupqq/ 7
(qq7 8
groupqq8 =
)qq= >
;qq> ?
}rr 
grouptt 
.tt 
Connectionstt 
.tt 
Addtt !
(tt! "

connectiontt" ,
)tt, -
;tt- .
ifvv 
(vv 
awaitvv 
_unityOfWorkvv "
.vv" #
Completevv# +
(vv+ ,
)vv, -
)vv- .
returnww 
groupww 
;ww 
throwyy 
newyy 
HubExceptionyy "
(yy" #
$stryy# 9
)yy9 :
;yy: ;
}zz 	
private|| 
async|| 
Task|| 
<|| 
Group||  
>||  !"
RemoveFromMessageGroup||" 8
(||8 9
)||9 :
{}} 	
var~~ 
group~~ 
=~~ 
await~~ 
_unityOfWork~~ *
.~~* +
MessageRepository~~+ <
.~~< =!
GetGroupForConnection~~= R
(~~R S
Context~~S Z
.~~Z [
ConnectionId~~[ g
)~~g h
;~~h i
var 

connection 
= 
group "
." #
Connections# .
.. /
FirstOrDefault/ =
(= >
c> ?
=>@ B
cC D
.D E
ConnectionIdE Q
.Q R
EqualsR X
(X Y
ContextY `
.` a
ConnectionIda m
)m n
)n o
;o p
_unityOfWork
ÅÅ 
.
ÅÅ 
MessageRepository
ÅÅ *
.
ÅÅ* +
RemoveConnection
ÅÅ+ ;
(
ÅÅ; <

connection
ÅÅ< F
)
ÅÅF G
;
ÅÅG H
if
ÉÉ 
(
ÉÉ 
await
ÉÉ 
_unityOfWork
ÉÉ "
.
ÉÉ" #
Complete
ÉÉ# +
(
ÉÉ+ ,
)
ÉÉ, -
)
ÉÉ- .
return
ÑÑ 
group
ÑÑ 
;
ÑÑ 
throw
ÜÜ 
new
ÜÜ 
HubException
ÜÜ "
(
ÜÜ" #
$str
ÜÜ# @
)
ÜÜ@ A
;
ÜÜA B
}
áá 	
private
ââ 
string
ââ 
GetGroupName
ââ #
(
ââ# $
string
ââ$ *
caller
ââ+ 1
,
ââ1 2
string
ââ3 9
other
ââ: ?
)
ââ? @
{
ää 	
var
ãã 
stringCompare
ãã 
=
ãã 
string
ãã  &
.
ãã& '
CompareOrdinal
ãã' 5
(
ãã5 6
caller
ãã6 <
,
ãã< =
other
ãã> C
)
ããC D
<
ããE F
$num
ããG H
;
ããH I
return
åå 
stringCompare
åå  
?
åå! "
$"
åå# %
{
åå% &
caller
åå& ,
}
åå, -
-
åå- .
{
åå. /
other
åå/ 4
}
åå4 5
"
åå5 6
:
åå7 8
$"
åå9 ;
{
åå; <
other
åå< A
}
ååA B
-
ååB C
{
ååC D
caller
ååD J
}
ååJ K
"
ååK L
;
ååL M
}
çç 	
}
éé 
}èè Ô
FC:\Users\Wallace\Documents\GitHub\DatingApp\API\SignalR\PresenceHub.cs
	namespace 	
API
 
. 
SignalR 
{ 
[		 
	Authorize		 
]		 
public

 

class

 
PresenceHub

 
:

 
Hub

 "
{ 
private 
readonly 
PresenceTracker (
_tracker) 1
;1 2
public 
PresenceHub 
( 
PresenceTracker *
tracker+ 2
)2 3
{ 	
_tracker 
= 
tracker 
; 
} 	
public 
override 
async 
Task "
OnConnectedAsync# 3
(3 4
)4 5
{ 	
var 
isOnline 
= 
await  
_tracker! )
.) *
UserConnected* 7
(7 8
Context8 ?
.? @
User@ D
.D E
GetUsernameE P
(P Q
)Q R
,R S
ContextT [
.[ \
ConnectionId\ h
)h i
;i j
if 
( 
isOnline 
) 
await 
Clients 
. 
Others $
.$ %
	SendAsync% .
(. /
$str/ =
,= >
Context? F
.F G
UserG K
.K L
GetUsernameL W
(W X
)X Y
)Y Z
;Z [
var 
currentUsers 
= 
await $
_tracker% -
.- .
GetOnlineUsers. <
(< =
)= >
;> ?
await 
Clients 
. 
All 
. 
	SendAsync '
(' (
$str( 8
,8 9
currentUsers: F
)F G
;G H
} 	
public 
override 
async 
Task "
OnDisconnectedAsync# 6
(6 7
	Exception7 @
	exceptionA J
)J K
{ 	
var   
	isOffline   
=   
await   !
_tracker  " *
.  * +
UserDisconnected  + ;
(  ; <
Context  < C
.  C D
User  D H
.  H I
GetUsername  I T
(  T U
)  U V
,  V W
Context  X _
.  _ `
ConnectionId  ` l
)  l m
;  m n
if"" 
("" 
	isOffline"" 
)"" 
await## 
Clients## 
.## 
Others## $
.##$ %
	SendAsync##% .
(##. /
$str##/ >
,##> ?
Context##@ G
.##G H
User##H L
.##L M
GetUsername##M X
(##X Y
)##Y Z
)##Z [
;##[ \
var%% 
currentUsers%% 
=%% 
await%% $
_tracker%%% -
.%%- .
GetOnlineUsers%%. <
(%%< =
)%%= >
;%%> ?
await&& 
Clients&& 
.&& 
All&& 
.&& 
	SendAsync&& '
(&&' (
$str&&( 8
,&&8 9
currentUsers&&: F
)&&F G
;&&G H
await'' 
base'' 
.'' 
OnDisconnectedAsync'' *
(''* +
	exception''+ 4
)''4 5
;''5 6
}(( 	
})) 
}** Ê*
JC:\Users\Wallace\Documents\GitHub\DatingApp\API\SignalR\PresenceTracker.cs
	namespace 	
API
 
. 
SignalR 
{ 
public 

class 
PresenceTracker  
{ 
private		 
static		 
readonly		 

Dictionary		  *
<		* +
string		+ 1
,		1 2
List		3 7
<		7 8
string		8 >
>		> ?
>		? @
OnlineUsers		A L
=		M N
new		O R

Dictionary		S ]
<		] ^
string		^ d
,		d e
List		f j
<		j k
string		k q
>		q r
>		r s
(		s t
)		t u
;		u v
public 
Task 
< 
bool 
> 
UserConnected '
(' (
string( .
username/ 7
,7 8
string9 ?
connectionId@ L
)L M
{ 	
bool 
isOnline 
= 
false !
;! "
lock 
( 
OnlineUsers 
) 
{ 
if 
( 
OnlineUsers 
.  
ContainsKey  +
(+ ,
username, 4
)4 5
)5 6
{ 
OnlineUsers 
[  
username  (
]( )
.) *
Add* -
(- .
connectionId. :
): ;
;; <
} 
else 
{ 
OnlineUsers 
.  
Add  #
(# $
username$ ,
,, -
new. 1
List2 6
<6 7
string7 =
>= >
{? @
connectionIdA M
}N O
)O P
;P Q
isOnline 
= 
true #
;# $
} 
} 
return 
Task 
. 

FromResult "
(" #
isOnline# +
)+ ,
;, -
} 	
public 
Task 
< 
bool 
> 
UserDisconnected *
(* +
string+ 1
username2 :
,: ;
string< B
connectionIdC O
)O P
{   	
bool!! 
	isOffline!! 
=!! 
false!! "
;!!" #
lock## 
(## 
OnlineUsers## 
)## 
{$$ 
if%% 
(%% 
!%% 
OnlineUsers%%  
.%%  !
ContainsKey%%! ,
(%%, -
username%%- 5
)%%5 6
)%%6 7
return&& 
Task&& 
.&&  

FromResult&&  *
(&&* +
	isOffline&&+ 4
)&&4 5
;&&5 6
OnlineUsers(( 
[(( 
username(( $
](($ %
.((% &
Remove((& ,
(((, -
connectionId((- 9
)((9 :
;((: ;
if** 
(** 
OnlineUsers** 
[**  
username**  (
]**( )
.**) *
Count*** /
==**0 2
$num**3 4
)**4 5
{++ 
OnlineUsers,, 
.,,  
Remove,,  &
(,,& '
username,,' /
),,/ 0
;,,0 1
	isOffline-- 
=-- 
true--  $
;--$ %
}.. 
}// 
return11 
Task11 
.11 

FromResult11 "
(11" #
	isOffline11# ,
)11, -
;11- .
}22 	
public44 
Task44 
<44 
string44 
[44 
]44 
>44 
GetOnlineUsers44 ,
(44, -
)44- .
{55 	
string66 
[66 
]66 
onlineUsers66  
;66  !
lock88 
(88 
OnlineUsers88 
)88 
{99 
onlineUsers:: 
=:: 
OnlineUsers:: )
.::) *
OrderBy::* 1
(::1 2
k::2 3
=>::4 6
k::7 8
.::8 9
Key::9 <
)::< =
.::= >
Select::> D
(::D E
k::E F
=>::G I
k::J K
.::K L
Key::L O
)::O P
.::P Q
ToArray::Q X
(::X Y
)::Y Z
;::Z [
};; 
return== 
Task== 
.== 

FromResult== "
(==" #
onlineUsers==# .
)==. /
;==/ 0
}>> 	
public@@ 
Task@@ 
<@@ 
List@@ 
<@@ 
string@@ 
>@@  
>@@  !!
GetConnectionsForUser@@" 7
(@@7 8
string@@8 >
username@@? G
)@@G H
{AA 	
ListBB 
<BB 
stringBB 
>BB 
connectionnsIdsBB (
;BB( )
lockDD 
(DD 
OnlineUsersDD 
)DD 
{EE 
connectionnsIdsFF 
=FF  !
OnlineUsersFF" -
.FF- .
GetValueOrDefaultFF. ?
(FF? @
usernameFF@ H
)FFH I
;FFI J
}GG 
returnII 
TaskII 
.II 

FromResultII "
(II" #
connectionnsIdsII# 2
)II2 3
;II3 4
}KK 	
}LL 
}MM ©%
:C:\Users\Wallace\Documents\GitHub\DatingApp\API\Startup.cs
	namespace 	
API
 
{ 
public 

class 
Startup 
{ 
private 
readonly 
IConfiguration '
_config( /
;/ 0
public 
Startup 
( 
IConfiguration %
config& ,
), -
{ 	
_config 
= 
config 
; 
} 	
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. "
AddApplicationServices +
(+ ,
_config, 3
)3 4
;4 5
services 
. 
AddControllers #
(# $
)$ %
;% &
services 
. 
AddCors 
( 
) 
; 
services 
. 
AddIdentityServices (
(( )
_config) 0
)0 1
;1 2
services 
. 

AddSignalR 
(  
)  !
;! "
services 
. 
AddSwaggerGen "
(" #
c# $
=>% '
{ 
c   
.   

SwaggerDoc   
(   
$str   !
,  ! "
new  # &
OpenApiInfo  ' 2
{  3 4
Title  5 :
=  ; <
$str  = B
,  B C
Version  D K
=  L M
$str  N R
}  S T
)  T U
;  U V
}!! 
)!! 
;!! 
}"" 	
public%% 
void%% 
	Configure%% 
(%% 
IApplicationBuilder%% 1
app%%2 5
,%%5 6
IWebHostEnvironment%%7 J
env%%K N
)%%N O
{&& 	
if'' 
('' 
env'' 
.'' 
IsDevelopment'' !
(''! "
)''" #
)''# $
{(( 
app)) 
.)) %
UseDeveloperExceptionPage)) -
())- .
))). /
;))/ 0
app** 
.** 

UseSwagger** 
(** 
)**  
;**  !
app++ 
.++ 
UseSwaggerUI++  
(++  !
c++! "
=>++# %
c++& '
.++' (
SwaggerEndpoint++( 7
(++7 8
$str++8 R
,++R S
$str++T \
)++\ ]
)++] ^
;++^ _
},, 
app.. 
... 
UseMiddleware.. 
<.. 
ExceptionMiddleware.. 1
>..1 2
(..2 3
)..3 4
;..4 5
app00 
.00 
UseHttpsRedirection00 #
(00# $
)00$ %
;00% &
app22 
.22 

UseRouting22 
(22 
)22 
;22 
app44 
.44 
UseCors44 
(44 
policy44 
=>44 !
policy44" (
.44( )
AllowAnyHeader44) 7
(447 8
)448 9
.55( )
AllowAnyMethod55) 7
(557 8
)558 9
.66( )
AllowCredentials66) 9
(669 :
)66: ;
.77( )
WithOrigins77) 4
(774 5
$str775 M
)77M N
)77N O
;77O P
app99 
.99 
UseAuthentication99 !
(99! "
)99" #
;99# $
app:: 
.:: 
UseAuthorization::  
(::  !
)::! "
;::" #
app<< 
.<< 
UseDefaultFiles<< 
(<<  
)<<  !
;<<! "
app== 
.== 
UseStaticFiles== 
(== 
)==  
;==  !
app?? 
.?? 
UseEndpoints?? 
(?? 
	endpoints?? &
=>??' )
{@@ 
	endpointsAA 
.AA 
MapControllersAA (
(AA( )
)AA) *
;AA* +
	endpointsBB 
.BB 
MapHubBB  
<BB  !
PresenceHubBB! ,
>BB, -
(BB- .
$strBB. =
)BB= >
;BB> ?
	endpointsCC 
.CC 
MapHubCC  
<CC  !

MessageHubCC! +
>CC+ ,
(CC, -
$strCC- ;
)CC; <
;CC< =
	endpointsDD 
.DD #
MapFallbackToControllerDD 1
(DD1 2
$strDD2 9
,DD9 :
$strDD; E
)DDE F
;DDF G
}EE 
)EE 
;EE 
}FF 	
}GG 
}HH 