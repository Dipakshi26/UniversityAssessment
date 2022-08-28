€
RC:\Users\dell\source\repos\UniversityClassLibrary\UniversityClassLibrary\Class1.cs
	namespace 	"
UniversityClassLibrary
  
{ 
public 

class 
Class1 
{ 
} 
} ã

fC:\Users\dell\source\repos\UniversityClassLibrary\UniversityClassLibrary\Entities\UniversityDetails.cs
	namespace		 	"
UniversityClassLibrary		
  
.		  !
Entities		! )
{

 
public 

class 
UniversityDetails "
{ 
[ 	
DatabaseGenerated	 
( #
DatabaseGeneratedOption 2
.2 3
Identity3 ;
); <
]< =
[ 	
Key	 
] 
public 
int 
UniversityId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
UniversityName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
? 
Location 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
AffiliatedUnder &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
EstablishedYear "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} °
mC:\Users\dell\source\repos\UniversityClassLibrary\UniversityClassLibrary\Migrations\20220825154917_initial.cs
	namespace 	"
UniversityClassLibrary
  
.  !

Migrations! +
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
$str "
," #
columns 
: 
table 
=> !
new" %
{ 
UniversityId  
=! "
table# (
.( )
Column) /
</ 0
int0 3
>3 4
(4 5
type5 9
:9 :
$str; @
,@ A
nullableB J
:J K
falseL Q
)Q R
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
UniversityName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
nullableQ Y
:Y Z
true[ _
)_ `
,` a
Location 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
trueU Y
)Y Z
,Z [
AffiliatedUnder #
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
,a b
EstablishedYear #
=$ %
table& +
.+ ,
Column, 2
<2 3
int3 6
>6 7
(7 8
type8 <
:< =
$str> C
,C D
nullableE M
:M N
falseO T
)T U
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
$str% 4
,4 5
x6 7
=>8 :
x; <
.< =
UniversityId= I
)I J
;J K
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str "
)" #
;# $
}   	
}!! 
}"" ã	
_C:\Users\dell\source\repos\UniversityClassLibrary\UniversityClassLibrary\UniversityDbContext.cs
	namespace		 	"
UniversityClassLibrary		
  
{

 
public 

class 
UniversityDbContext $
:% &
	DbContext' 0
{ 
public 
UniversityDbContext "
(" #
)# $
{ 	
} 	
public 
DbSet 
< 
UniversityDetails &
>& '

University( 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
UniversityDbContext "
(" #
DbContextOptions# 3
options4 ;
); <
:= >
base? C
(C D
optionsD K
)K L
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str	( †
)
† ‡
;
‡ ˆ
} 	
} 
} 