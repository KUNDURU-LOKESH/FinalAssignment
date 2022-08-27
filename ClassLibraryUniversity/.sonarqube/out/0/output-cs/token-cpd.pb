�B
aD:\WebApps\ClassLibraryUniversity\ClassLibraryUniversity\Data\Migrations\20220827113545_intial.cs
	namespace 	"
ClassLibraryUniversity
  
.  !
Data! %
.% &

Migrations& 0
{ 
public 

partial 
class 
intial 
:  !
	Migration" +
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
columns
:
table
=>
new
{ 
RoleId 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
type/ 3
:3 4
$str5 :
,: ;
nullable< D
:D E
falseF K
)K L
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
RoleName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
RoleId> D
)D E
;E F
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str $
,$ %
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
UniversityName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ M
,M N
nullableO W
:W X
falseY ^
)^ _
,_ `
Location 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: G
,G H
nullableI Q
:Q R
falseS X
)X Y
,Y Z
AffiliatedUnder   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
type  ; ?
:  ? @
$str  A N
,  N O
nullable  P X
:  X Y
false  Z _
)  _ `
,  ` a
EstablishedYear!! #
=!!$ %
table!!& +
.!!+ ,
Column!!, 2
<!!2 3
int!!3 6
>!!6 7
(!!7 8
type!!8 <
:!!< =
$str!!> C
,!!C D
nullable!!E M
:!!M N
false!!O T
)!!T U
}"" 
,"" 
constraints## 
:## 
table## "
=>### %
{$$ 
table%% 
.%% 

PrimaryKey%% $
(%%$ %
$str%%% 6
,%%6 7
x%%8 9
=>%%: <
x%%= >
.%%> ?
Id%%? A
)%%A B
;%%B C
}&& 
)&& 
;&& 
migrationBuilder(( 
.(( 
CreateTable(( (
(((( )
name)) 
:)) 
$str)) 
,)) 
columns** 
:** 
table** 
=>** !
new**" %
{++ 
Id,, 
=,, 
table,, 
.,, 
Column,, %
<,,% &
int,,& )
>,,) *
(,,* +
type,,+ /
:,,/ 0
$str,,1 6
,,,6 7
nullable,,8 @
:,,@ A
false,,B G
),,G H
.-- 

Annotation-- #
(--# $
$str--$ 8
,--8 9
$str--: @
)--@ A
,--A B
Email.. 
=.. 
table.. !
...! "
Column.." (
<..( )
string..) /
>../ 0
(..0 1
type..1 5
:..5 6
$str..7 D
,..D E
nullable..F N
:..N O
false..P U
)..U V
,..V W
PanNo// 
=// 
table// !
.//! "
Column//" (
<//( )
string//) /
>/// 0
(//0 1
type//1 5
://5 6
$str//7 D
,//D E
nullable//F N
://N O
false//P U
)//U V
,//V W
Password00 
=00 
table00 $
.00$ %
Column00% +
<00+ ,
string00, 2
>002 3
(003 4
type004 8
:008 9
$str00: G
,00G H
nullable00I Q
:00Q R
false00S X
)00X Y
,00Y Z
ConfirmPassword11 #
=11$ %
table11& +
.11+ ,
Column11, 2
<112 3
string113 9
>119 :
(11: ;
type11; ?
:11? @
$str11A N
,11N O
nullable11P X
:11X Y
false11Z _
)11_ `
,11` a

IsApproved22 
=22  
table22! &
.22& '
Column22' -
<22- .
bool22. 2
>222 3
(223 4
type224 8
:228 9
$str22: ?
,22? @
nullable22A I
:22I J
false22K P
)22P Q
,22Q R
Status33 
=33 
table33 "
.33" #
Column33# )
<33) *
string33* 0
>330 1
(331 2
type332 6
:336 7
$str338 E
,33E F
nullable33G O
:33O P
false33Q V
)33V W
,33W X
RoleId44 
=44 
table44 "
.44" #
Column44# )
<44) *
int44* -
>44- .
(44. /
type44/ 3
:443 4
$str445 :
,44: ;
nullable44< D
:44D E
false44F K
)44K L
}55 
,55 
constraints66 
:66 
table66 "
=>66# %
{77 
table88 
.88 

PrimaryKey88 $
(88$ %
$str88% /
,88/ 0
x881 2
=>883 5
x886 7
.887 8
Id888 :
)88: ;
;88; <
}99 
)99 
;99 
migrationBuilder;; 
.;; 
CreateIndex;; (
(;;( )
name<< 
:<< 
$str<< 6
,<<6 7
table== 
:== 
$str== %
,==% &
column>> 
:>> 
$str>> (
,>>( )
unique?? 
:?? 
true?? 
)?? 
;?? 
}@@ 	
	protectedBB 
overrideBB 
voidBB 
DownBB  $
(BB$ %
MigrationBuilderBB% 5
migrationBuilderBB6 F
)BBF G
{CC 	
migrationBuilderDD 
.DD 
	DropTableDD &
(DD& '
nameEE 
:EE 
$strEE #
)EE# $
;EE$ %
migrationBuilderGG 
.GG 
	DropTableGG &
(GG& '
nameHH 
:HH 
$strHH $
)HH$ %
;HH% &
migrationBuilderJJ 
.JJ 
	DropTableJJ &
(JJ& '
nameKK 
:KK 
$strKK 
)KK 
;KK 
}LL 	
}MM 
}NN �#
cD:\WebApps\ClassLibraryUniversity\ClassLibraryUniversity\Data\Migrations\20220827115637_addfield.cs
	namespace 	"
ClassLibraryUniversity
  
.  !
Data! %
.% &

Migrations& 0
{ 
public 

partial 
class 
addfield !
:" #
	Migration$ -
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
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str  
,  !
table
:
$str
,
type 
: 
$str #
,# $
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str &
)& '
;' (
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str 
, 
table 
: 
$str 
, 
type 
: 
$str #
,# $
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str &
)& '
;' (
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str '
,' (
table 
: 
$str 
, 
type 
: 
$str #
,# $
nullable 
: 
false 
,  

oldClrType   
:   
typeof   "
(  " #
string  # )
)  ) *
,  * +
oldType!! 
:!! 
$str!! &
)!!& '
;!!' (
}"" 	
	protected$$ 
override$$ 
void$$ 
Down$$  $
($$$ %
MigrationBuilder$$% 5
migrationBuilder$$6 F
)$$F G
{%% 	
migrationBuilder&& 
.&& 
AlterColumn&& (
<&&( )
string&&) /
>&&/ 0
(&&0 1
name'' 
:'' 
$str''  
,''  !
table(( 
:(( 
$str(( 
,(( 
type)) 
:)) 
$str)) #
,))# $
nullable** 
:** 
false** 
,**  

oldClrType++ 
:++ 
typeof++ "
(++" #
string++# )
)++) *
,++* +
oldType,, 
:,, 
$str,, &
),,& '
;,,' (
migrationBuilder.. 
... 
AlterColumn.. (
<..( )
string..) /
>../ 0
(..0 1
name// 
:// 
$str// 
,// 
table00 
:00 
$str00 
,00 
type11 
:11 
$str11 #
,11# $
nullable22 
:22 
false22 
,22  

oldClrType33 
:33 
typeof33 "
(33" #
string33# )
)33) *
,33* +
oldType44 
:44 
$str44 &
)44& '
;44' (
migrationBuilder66 
.66 
AlterColumn66 (
<66( )
string66) /
>66/ 0
(660 1
name77 
:77 
$str77 '
,77' (
table88 
:88 
$str88 
,88 
type99 
:99 
$str99 #
,99# $
nullable:: 
::: 
false:: 
,::  

oldClrType;; 
:;; 
typeof;; "
(;;" #
string;;# )
);;) *
,;;* +
oldType<< 
:<< 
$str<< &
)<<& '
;<<' (
}== 	
}>> 
}?? �
LD:\WebApps\ClassLibraryUniversity\ClassLibraryUniversity\Model\RoleMaster.cs
	namespace 	"
ClassLibraryUniversity
  
.  !
Model! &
{		 
public

 

class

 

RoleMaster

 
{ 
[ 	
Key	 
] 
public
int
RoleId
{
get
;
set
;
}
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
LD:\WebApps\ClassLibraryUniversity\ClassLibraryUniversity\Model\University.cs
	namespace		 	"
ClassLibraryUniversity		
  
.		  !
Model		! &
{

 
public 

class 

University 
{ 
[
Key
]
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
UniversityName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
AffiliatedUnder %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
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
} �
UD:\WebApps\ClassLibraryUniversity\ClassLibraryUniversity\Model\UniversityDbContext.cs
	namespace 	"
ClassLibraryUniversity
  
.  !
Model! &
{		 
public

 

class

 
UniversityDbContext

 $
:

$ %
	DbContext

% .
{ 
public 
UniversityDbContext "
(" #
)# $
{
} 	
public 
UniversityDbContext "
(" #
DbContextOptions# 3
options4 ;
); <
:= >
base? C
(C D
optionsD K
)K L
{ 	
} 	
	protected 
override 
void 

(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str( v
)v w
;w x
} 	
public 
DbSet 
< 

University 
>  
Universities! -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
DbSet 
< 

RoleMaster 
>  
roleMasters! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DbSet 
< 
Users 
> 
users !
{" #
get$ '
;' (
set) ,
;, -
}. /
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
builder= D
)D E
{ 	
builder 
. 
Entity 
< 

University %
>% &
(& '
)' (
. 
HasIndex 
( 
x 
=> 
x  
.  !
UniversityName! /
)/ 0
. 
IsUnique 
( 
) 
; 
}   	
}"" 
}## �
GD:\WebApps\ClassLibraryUniversity\ClassLibraryUniversity\Model\Users.cs
	namespace		 	"
ClassLibraryUniversity		
  
.		  !
Model		! &
{

 
public 

class 
Users 
{ 
[
Key
]
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=) *
String* 0
.0 1
Empty1 6
;6 7
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
PanNo 
{ 
get !
;! "
set# &
;& '
}( )
=* +
String, 2
.2 3
Empty3 8
;8 9
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
String/ 5
.5 6
Empty6 ;
;; <
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
String6 <
.< =
Empty= B
;B C
public 
bool 

IsApproved 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
String- 3
.3 4
Empty4 9
;9 :
[ 	

ForeignKey	 
( 
$str !
)! "
]" #
public 
virtual 
int 
RoleId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} 