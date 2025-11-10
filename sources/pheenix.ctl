; Copyright Megadodo Software 1983, 2025 ArcadeGeek LTD.
; NOTE: Disassembly is Work-In-Progress.
; Label naming is loosely based on Action_ActionName_SubAction
; e.g. Print_HighScore_Loop.

> $4000 @rom
> $4000 @start
> $4000 @expand=#DEF(#POKE #LINK:Pokes)
> $4000 @expand=#DEF(#ANIMATE(delay,count=$50)(name=$a)*$name-1,$delay;#FOR$02,$count||x|$name-x|;||($name-animation))
> $4000 @set-handle-unsupported-macros=1
b $4000 Loading Screen
D $4000 #UDGTABLE { =h Pheenix Loading Screen. } { #SCR$02(loading) } TABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels.
  $5800,$0300,$20 Attributes.

b $5B00

c $5C00

b $5FD4 Graphics: Mothership Alien
@ $5FD4 label=Graphics_MothershipAlien_01
N $5FD4 Frame #N$01:
N $5FD4 #UDGTABLE { #UDGS$02,$02(mothership-alien-01)(
.   #UDG(#PC+$08*($02*$y+$x),#MAP($y)($44,1:$42))(*udg)
.   udg
. ) } TABLE#
  $5FD4,$08,b$01 #UDGTABLE { #UDG(#PC,$44) } TABLE#
L $5FD4,$08,$02,$02
  $5FE4,$08,b$01 #UDGTABLE { #UDG(#PC,$42) } TABLE#
L $5FE4,$08,$02,$02
@ $5FF4 label=Graphics_MothershipAlien_02
N $5FF4 Frame #N$02:
N $5FF4 #UDGTABLE { #UDGS$02,$02(mothership-alien-02)(
.   #UDG(#PC+$08*($02*$y+$x),#MAP($y)($44,1:$42))(*udg)
.   udg
. ) } TABLE#
  $5FF4,$08,b$01 #UDGTABLE { #UDG(#PC,$44) } TABLE#
L $5FF4,$08,$02,$02
  $6004,$08,b$01 #UDGTABLE { #UDG(#PC,$42) } TABLE#
L $6004,$08,$02,$02

b $6014 Graphics: Shield
@ $6014 label=Graphics_Shield_01
  $6014,$09
@ $601D label=Graphics_Shield_02
  $601D,$09

b $6026 Graphics: Lives Icon
@ $6026 label=Graphics_LivesIcon
  $6026,$08,b$01 #UDGTABLE { #UDG(#PC,$42) } TABLE#

b $602E Graphics: Bullets
@ $602E label=Graphics_Bullets_01
  $602E,$08,b$01 #UDGTABLE { #UDG(#PC,$46) } TABLE#
@ $6036 label=Graphics_Bullets_02
  $6036,$08,b$01 #UDGTABLE { #UDG(#PC,$46) } TABLE#
@ $603E label=Graphics_Bullets_03
  $603E,$08,b$01 #UDGTABLE { #UDG(#PC,$46) } TABLE#
@ $6046 label=Graphics_Bullets_04
  $6046,$08,b$01 #UDGTABLE { #UDG(#PC,$45) } TABLE#

b $604E Graphics: Ship
@ $604E label=Graphics_Ship
N $604E #UDGTABLE { #UDGS$02,$02(ship)(
.   #UDG(#PC+$08*($02*$y+$x),$46)(*udg)
.   udg
. ) } TABLE#
  $604E,$08,b$01 #UDGTABLE { #UDG(#PC,$46) } TABLE#
L $604E,$08,$04,$02

b $606E Graphics: Eggsplosion
@ $606E label=Graphics_Eggsplosion_Left
N $606E #UDGTABLE { #UDGS$02,$02(eggsplosion-left)(
.   #UDG(#PC+$08*($02*$y+$x),$42)(*udg)
.   udg
. ) } TABLE#
  $606E,$08,b$01 #UDGTABLE { #UDG(#PC,$42) } TABLE#
L $606E,$08,$04,$02
@ $608E label=Graphics_Eggsplosion_Right
N $608E #UDGTABLE { #UDGS$02,$02(eggsplosion-right)(
.   #UDG(#PC+$08*($02*$y+$x),$42)(*udg)
.   udg
. ) } TABLE#
  $608E,$08,b$01 #UDGTABLE { #UDG(#PC,$42) } TABLE#
L $608E,$08,$04,$02

b $60AE Graphics: Bird
@ $60AE label=Graphics_Bird_01
N $60AE #UDGTABLE { #UDGS$03,$02(bird-01-green)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($60C6,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($43,1:$04,4:$06))(*udg)
.   udg
. ) } TABLE#
N $60AE #UDGTABLE { #UDGS$03,$02(bird-01-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($60C6,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($06,1:$43,4:$06))(*udg)
.   udg
. ) } TABLE#
  $60AE,$08,b$01 #UDGTABLE { #UDG(#PC,$43) } TABLE#
  $60B6,$08,b$01 #UDGTABLE { #UDG(#PC,$44) } TABLE#
  $60BE,$08,b$01 #UDGTABLE { #UDG(#PC,$43) } TABLE#
  $60C6,$07,b$01 #UDGTABLE { #UDG(#PC,$06) } TABLE#
@ $60CD label=Graphics_Bird_02
N $60CD #UDGTABLE { #UDGS$03,$02(bird-02-green)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($60E5,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($43,1:$04,4:$06))(*udg)
.   udg
. ) } TABLE#
N $60CD #UDGTABLE { #UDGS$03,$02(bird-02-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($60E5,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($06,1:$43,4:$06))(*udg)
.   udg
. ) } TABLE#
  $60CD,$08,b$01 #UDGTABLE { #UDG(#PC,$43) } TABLE#
  $60D5,$08,b$01 #UDGTABLE { #UDG(#PC,$44) } TABLE#
  $60DD,$08,b$01 #UDGTABLE { #UDG(#PC,$43) } TABLE#
  $60E5,$02,b$01 #UDGTABLE { #UDG(#PC,$06) } TABLE#

b $60E7 Graphics: Pheenix (Egg)
@ $60E7 label=Graphics_Pheenix_01
N $60E7 #UDGTABLE { #UDGS$03,$01(pheenix-01)(
.   #UDG(#PC+$08*$x,$05)(*udg)
.   udg
. ) } TABLE#
N $60E7 The drawing routine uses this layout:
. #TABLE { X | X | X } { | X | } TABLE#
. Hence, when this sprite is drawn it also writes the empty data at
. #R$60FF(#N$60FF) on the bottom row.
  $60E7,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#
L $60E7,$08,$03,$02
@ $60FF label=Graphics_Pheenix_02
N $60FF #UDGTABLE { #UDGS$03,$01(pheenix-02)(
.   #UDG(#PC+$08*$x,$05)(*udg)
.   udg
. ) } TABLE#
  $60FF,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#
L $60FF,$08,$03,$02
N $6117 Invisible bottom row.
  $6117,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#
@ $611F label=Graphics_Pheenix_03
N $611F #UDGTABLE { #UDGS$03,$02(pheenix-03-blue)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($6137,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($05,1:$41,4:$06))(*udg)
.   udg
. ) } TABLE#
N $611F #UDGTABLE { #UDGS$03,$02(pheenix-03-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($6137,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($05,1:$43,4:$06))(*udg)
.   udg
. ) } TABLE#
  $611F,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#
  $6127,$08,b$01 #UDGTABLE { #UDG(#PC,$01) } TABLE#
  $612F,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#
  $6137,$06,b$01 #UDGTABLE { #UDG(#PC,$06) } TABLE#

b $613D Graphics: Masks
@ $613D label=Graphics_Masks
  $613D,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
  $6145,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
  $614D,$06,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
  $6153,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#

b $615B Graphics: Pheenix (Hatched)
@ $615B label=Graphics_Pheenix_04
N $615B #UDGTABLE { #UDGS$03,$02(pheenix-04-blue)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($6173,$617B),#PC+$08*$x))
.   #UDG({addr},#IF($y==0)($41,$06))(*udg)
.   udg
. ) } TABLE#
N $615B #UDGTABLE { #UDGS$03,$02(pheenix-04-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($6173,$617B),#PC+$08*$x))
.   #UDG({addr},#IF($y==0)($43,$06))(*udg)
.   udg
. ) } TABLE#
  $615B,$08,b$01 #UDGTABLE { #UDG(#PC,$41) } TABLE#
L $615B,$08,$03,$02
  $6173,$08,b$01 #UDGTABLE { #UDG(#PC,$06) } TABLE#
L $6173,$08,$02,$02
  $6183,$02 Unused.
@ $6185 label=Graphics_Pheenix_05
N $6185 #UDGTABLE { #UDGS$03,$02(pheenix-05-blue)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($619D,$617B),#PC+$08*$x))
.   #UDG({addr},#IF($y==0)($41,$06))(*udg)
.   udg
. ) } TABLE#
N $6185 #UDGTABLE { #UDGS$03,$02(pheenix-05-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($619D,$617B),#PC+$08*$x))
.   #UDG({addr},#IF($y==0)($43,$06))(*udg)
.   udg
. ) } TABLE#
  $6185,$08,b$01 #UDGTABLE { #UDG(#PC,$41) } TABLE#
L $6185,$08,$03,$02
  $619D,$06,b$01 #UDGTABLE { #UDG(#PC,$06) } TABLE#

b $61A3 Graphics: Explosion Bits
@ $61A3 label=Graphics_ExplosionBits
  $61A3,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
L $61A3,$08,$03,$02

b $61BB Graphics: MegaDodo Logo
@ $61BB label=Graphics_MegaDodo
N $61BB #UDGTABLE { #UDGS$02,$02(megadodo)(
.   #UDG(#PC+$08*($02*$y+$x),$04)(*udg)
.   udg
. ) } TABLE#
  $61BB,$08,b$01 #UDGTABLE { #UDG(#PC,$04) } TABLE#
L $61BB,$08,$04,$02

b $61DB Graphics: Large Star
@ $61DB label=Graphics_StarLarge
  $61DB,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#

b $61E3 Graphics: Box
@ $61E3 label=Graphics_Box
  $61E3,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#

b $61EB Graphics: UDGs
@ $61EB label=Graphics_UDGs
  $61EB,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
L $61EB,$08,$0C,$02
N $624B Graphics for the "Small Star" and alien mothership window.
@ $624B label=Graphics_StarSmall
  $624B,$08,b$01 #UDGTABLE { #UDG(#PC,$05) } TABLE#
N $6253 Graphics for the mothership.
@ $6253 label=Graphics_Mothership
  $6253,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
L $6253,$08,$0D,$02
N $62BB Font UDGs.
@ $62BB label=Graphics_Font
  $62BB,$08,b$01 #UDGTABLE { #UDG(#PC) } TABLE#
L $62BB,$08,$2E,$02

t $642B Messaging: Presents
@ $642B label=Messaging_Presents
  $642B,$08 "#STR#(#PC,$04,$08)".

t $6433 Messaging: Megadodo Software
@ $6433 label=Messaging_Copyright
  $6433,$02 "#STR#(#PC,$04,$02)".
@ $6435 label=Messaging_MegadodoSoftware
  $6435,$16 "#STR#(#PC,$04,$16)".

t $644B Messaging: Author M.W.Ward
@ $644B label=Messaging_WrittenBy
  $644B,$0B "#STR#(#PC,$04,$13)".
@ $6456 label=Messaging_Author
  $6456,$08 "#STR#(#PC,$04,$08)".

t $645E Messaging: "press S to start"
@ $645E label=Messaging_PressSToStart
  $645E,$10 "#STR#(#PC,$04,$10)".

t $646E Messaging: Game Over
@ $646E label=Messaging_GameOver
  $646E,$08 #FONT#(:(#STR(#PC,$03,$08)))$6253,attr=$06(game-over)

t $6476 Messaging: Instructions
@ $6476 label=Messaging_Instructions
D $6476 Used by the routine at #R$6B99.
  $6476,$0C #FONT#(:(#STR(#PC,$03,$0C)))$6253,attr=$06(instructions)
@ $6482 label=Messaging_Left
  $6482,$14 #FONT#(:(#STR(#PC,$03,$14)))$6253,attr=$43(left)
@ $6496 label=Messaging_Right
  $6496,$0B #FONT#(:(#STR(#PC,$03,$0B)))$6253,attr=$43(right)
@ $64A1 label=Messaging_Fire
  $64A1,$0F #FONT#(:(#STR(#PC,$03,$0F)))$6253,attr=$43(fire)
@ $64B0 label=Messaging_Barrier
  $64B0,$0F #FONT#(:(#STR(#PC,$03,$0F)))$6253,attr=$43(barrier)
@ $64BF label=Messaging_Level
  $64BF,$12 #FONT#(:(#STR(#PC,$03,$12)))$6253,attr=$07(level)

t $64D1 Messaging: "Select Joystick Or Keys"
@ $64D1 label=Messaging_SelectJoystickOrKeys
D $64D1 Used by the routine at #R$6B4F.
  $64D1,$17 #FONT#(:(#STR(#PC,$03,$17)))$6253,attr=$06(joystick-or-keys)
@ $64E8 label=Messaging_KempstonJoystick
  $64E8,$12 #FONT#(:(#STR(#PC,$03,$12)))$3D00,attr=$03(kempston-joystick)
@ $64FA label=Messaging_AGFJoystick
  $64FA,$0D #FONT#(:(#STR(#PC,$03,$0D)))$3D00,attr=$03(agf-joystick)
@ $6507 label=Messaging_Keyboard
  $6507,$0C #FONT#(:(#STR(#PC,$03,$0C)))$3D00,attr=$03(keyboard)

t $6514 Messaging: Header
@ $6514 label=Messaging_Score
  $6514,$06 #FONT#(:(#STR($6514,$03,$06)))$6253,attr=$06(player-score)
@ $651A label=Messaging_Header_HighScore
  $651A,$05 #FONT#(:(#STR($651A,$03,$0B)))$6253,attr=$06(high-score)
N $651F This isn't separate, it's part of the above.
@ $651F label=Messaging_HighScore
  $651F,$06 #FONT#(:(#STR($651F,$03,$06)))$6253,attr=$06(player-high-score)
@ $6525 label=Messaging_Header_Level
  $6525,$02 #FONT#(:(#STR($6525,$03,$03)))$6253,attr=$44(level-in-game)
N $6527 This isn't separate, it's part of the above.
@ $6527 label=Messaging_Header_LevelNumber
  $6527,$01 #FONT#(:(#STR($6527,$03,$01)))$6253,attr=$44(level-number)

g $6528 Score Buffer
@ $6528 label=ScoreBuffer
B $6528,$06,$01

g $652F Table: Explosion UDGs
@ $652F label=Table_ExplosionUDGs_01
N $652F Frame #N$01:
  $652F,$03 #UDGTABLE { #UDGS$03,$01(explosion-01)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$05)(*udg)
.   udg
. ) } TABLE#
N $6532 Frame #N$02:
@ $6532 label=Table_ExplosionUDGs_02
  $6532,$03 #UDGTABLE { #UDGS$03,$01(explosion-02)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$05)(*udg)
.   udg
. ) } TABLE#
N $6535 Frame #N$03:
@ $6535 label=Table_ExplosionUDGs_03
  $6535,$03 #UDGTABLE { #UDGS$03,$01(explosion-03)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$05)(*udg)
.   udg
. ) } TABLE#

g $6538 Table: Mothership UDGs
@ $6538 label=Table_Mothership_MastTop
B $6538,$02 #UDGTABLE { #UDGS$02,$01(mothership-01)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$05)(*udg)
.   udg
. ) } TABLE#
@ $653A label=Table_Mothership_MastBottom
B $653A,$02 #UDGTABLE { #UDGS$02,$01(mothership-02)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$05)(*udg)
.   udg
. ) } TABLE#
@ $653C label=Table_Mothership_Strip01
B $653C,$02 #UDGTABLE { #UDGS$02,$01(mothership-03)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$06)(*udg)
.   udg
. ) } TABLE#
B $653E,$03 #UDGTABLE { #UDGS$03,$01(mothership-04)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$32)(*udg)
.   udg
. ) } TABLE#
@ $6541 label=Table_Mothership_Animation
B $6541,$02 #UDGTABLE { #UDGS$02,$01(mothership-05)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$32)(*udg)
.   udg
. ) } TABLE#
B $6543,$03 #UDGTABLE { #UDGS$03,$01(mothership-06)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$32)(*udg)
.   udg
. ) } TABLE#
B $6546,$02 #UDGTABLE { #UDGS$02,$01(mothership-07)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$06)(*udg)
.   udg
. ) } TABLE#
@ $6548 label=Table_Mothership_Strip02
B $6548,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$06)(mothership-08)
. } TABLE#
B $6549,$0C,$04 #UDGTABLE { #UDGS$0C,$01(mothership-09)(
.   #UDG($3C00+$08*(#PEEK(#PC+$x)),$31)(*udg)
.   udg
. ) } TABLE#
B $6555,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$06)(mothership-10)
. } TABLE#
@ $6556 label=Table_Mothership_Strip03
B $6556,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$06)(mothership-11)
. } TABLE#
B $6557,$0E,$07 #UDGTABLE { #UDGS$0E,$01(mothership-12)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$31)(*udg)
.   udg
. ) } TABLE#
B $6565,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$06)(mothership-13)
. } TABLE#
@ $6566 label=Table_Mothership_BlueStrip
B $6566,$12,$06 #UDGTABLE { #UDGS$12,$01(mothership-14)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$0F)(*udg)
.   udg
. ) } TABLE#
@ $6578 label=Table_Mothership_HullLeft01
B $6578,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$02)(mothership-15)
. } TABLE#
@ $6579 label=Table_Mothership_HullLeft02
B $6579,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$02)(mothership-16)
. } TABLE#
@ $657A label=Table_Mothership_HullLeft03
B $657A,$02 #UDGTABLE { #UDGS$02,$01(mothership-17)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$02)(*udg)
.   udg
. ) } TABLE#
@ $657C label=Table_Mothership_HullBase
B $657C,$0A,$05 #UDGTABLE { #UDGS$0A,$01(mothership-18)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$02)(*udg)
.   udg
. ) } TABLE#
@ $6586 label=Table_Mothership_HullRight03
B $6586,$02 #UDGTABLE { #UDGS$02,$01(mothership-19)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$02)(*udg)
.   udg
. ) } TABLE#
@ $6588 label=Table_Mothership_HullRight02
B $6588,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$02)(mothership-20)
. } TABLE#
@ $6589 label=Table_Mothership_HullRight01
B $6589,$01 #UDGTABLE {
.   #UDG($6153+$08*#PEEK(#PC),$02)(mothership-21)
. } TABLE#

g $658A Table: "PHEENIX" Logo Position Data
@ $658A label=Table_PheenixLogoPositionData
B $658A,$01 Screen buffer address #N(#PC-$658A): #N($4800+#PEEK(#PC)).
L $658A,$01,$51

g $65DB Random Number Seed
@ $65DB label=RandomNumberSeed
D $65DB Used by the routine at #R$670E.
W $65DB,$02

g $65DD Active Alien Wave Data Buffer
@ $65DD label=Table_AlienWaveData
W $65DD,$02 Alien position: #N($01+(#PC-$65DD)/$02).
L $65DD,$02,$0F

g $65FB Table: Phase #N$00 Alien Wave Data
@ $65FB label=Table_AlienWaveData_00
W $65FB,$02 Alien position: #N($01+(#PC-$65FB)/$02).
L $65FB,$02,$0F

g $6619 Table: Phase #N$01 Alien Wave Data
@ $6619 label=Table_AlienWaveData_01
W $6619,$02 Alien position: #N($01+(#PC-$6619)/$02).
L $6619,$02,$0F

g $6637 Table: Phase #N$02/ #N$03 Alien Wave Data
@ $6637 label=Table_AlienWaveData_02_03
W $6637,$02 Alien position: #N($01+(#PC-$6637)/$02).
L $6637,$02,$08

g $6647 Table: Phase #N$04 Alien Wave Data
@ $6647 label=Table_AlienWaveData_04
D $6647 Mothership level.
W $6647,$02 Alien position: #N($01+(#PC-$6647)/$02).
L $6647,$02,$08

g $6657

g $6665

g $6666

g $6675

g $667D Pheenix Colours
@ $667D label=Pheenix_Colour_01
D $667D Used by the routine at #R$75B7.
B $667D,$01
@ $667E label=Pheenix_Colour_02
B $667E,$01

g $667F Alien Count
@ $667F label=AlienCount
D $667F The number of alien enemies "in-play" on the screen (not counting the
. mothership/ mothership alien which is handled separately).
B $667F,$01

g $6680
  $6680

g $668F Alien Index
@ $668F label=Alien_Index
W $668F,$02

g $6691
B $6691,$01

g $6692
B $6692,$01

g $6693 Shield Flag?
@ $6693 label=Flag_Shield
B $6693,$01

g $6694 Shield Timer
@ $6694 label=ShieldTimer
D $6694 Set and handled by the routine at #R$6E1B.
B $6694,$01

g $6695 Bullet Rate Limiter?
@ $6695 label=Bullet_RateLimiter
B $6695,$01

g $6696 State: Fire Button
@ $6696 label=Fire_ButtonState
B $6696,$01

g $6697 Table: Bullet Position
@ $6697 label=Table_BulletPosition
W $6697,$02
L $6697,$02,$03

g $669E Table: Bullet Data
@ $669E label=Table_BulletData
B $669E,$01

g $66A3 Explosion: Frame
@ $66A3 label=Explosion_Frame
B $66A3,$01

g $66A4 Collision Flag
@ $66A4 label=Flag_Collision
B $66A4,$01

g $66A5 Explosion: Flash Counter
@ $66A5 label=Explosion_FlashCounter
B $66A5,$01

g $66A6 Bullet Index
@ $66A6 label=BulletIndex
B $66A6,$01

g $66A7
W $66A7,$02
L $66A7,$02,$06

g $66B9

g $66BA

g $66C3

g $66C4

g $66D3

g $66D4 Mothership Animation Counter
@ $66D4 label=MothershipAnimationCounter
D $66D4 Used by the routine at #R$6A23.
B $66D4,$01

g $66D5 Table: Alien Explosions
@ $66D5 label=Table_AlienExplosions
N $66D5 Explosion slot: #N($01+(#PC-$66D5)/$03).
B $66D5,$01 Active flag.
W $66D6,$02 Position.
L $66D5,$03,$06

g $66E7

g $66ED Player Attribute Buffer Position
@ $66ED label=PlayerAttributeBufferPosition
W $66ED,$02

g $66EF Flag: Extra Life
@ $66EF label=Flag_ExtraLife
D $66EF Indicates whether an extra life should be awarded or not.
B $66EF,$01

g $66F0 Player Lives
@ $66F0 label=Player_Lives
B $66F0,$01 Life counter.

g $66F1 Phase?
@ $66F1 label=Phase
D $66F1 Maybe not directly the phase number, but when it's #N$04 it draws the
. mothership.
B $66F1,$01

g $66F2 Flag: Title Screen Start
@ $66F2 label=Flag_TitleScreenStart
D $66F2 Indicates the start state while the title screen is showing.
B $66F2,$01

g $66F3 Flag: Demo Mode Active?
@ $66F3 label=Flag_ActiveDemoMode
B $66F3,$01

g $66F4 Demo Mode Movement
@ $66F4 label=Movement_DemoMode
B $66F4,$01

g $66F5 Flag: Player Lost All Lives?
@ $66F5 label=Flag_GameOver
B $66F5,$01

g $66F6 Control Method
@ $66F6 label=ControlMethod
D $66F6 #TABLE(default,centre,centre)
. { =h Byte | =h Method }
. { #N$00 | Keyboard }
. { #N$01 | AGF joystick }
. { #N$02 | Kempston joystick }
. TABLE#
B $66F6,$01

c $66F7 Convert Screen Address To Attribute Buffer Address
@ $66F7 label=ConvertScreenToAttributeBufferAddress
  $66F7,$01 #REGa=#REGd.
  $66F8,$02,b$01 Keep only bits 3-4.
  $66FA,$06 Shift #REGa right three positions (with carry).
  $6700,$02 #REGa+=#N$58.
  $6702,$01 #REGd=#REGa.
  $6703,$01 Return.

c $6704 Convert Attribute Address To Screen Buffer Address
@ $6704 label=ConvertAttributeToScreenBufferAddress
D $6704 Converts an attribute buffer address to its corresponding screen buffer
. address.
R $6704 HL Attribute buffer address
R $6704 O:HL Screen buffer address
  $6704,$01 Copy the screen address high byte to #REGa.
  $6705,$02 Subtract #N$58 (start of attribute area offset).
  $6707,$03 Multiply by #N$08.
  $670A,$02 Add #N$40 to set the base attribute area.
  $670C,$01 Update the high byte of the address.
  $670D,$01 Return.

c $670E Generate Random Number
@ $670E label=GenerateRandomNumber
R $670E O:A The random number
  $670E,$02 Stash #REGhl and #REGbc on the stack.
  $6710,$03 #REGhl=*#R$65DB.
  $6713,$01 Fetch a byte from *#REGhl and store it in #REGb.
  $6714,$01 Increment the seed pointer by one.
  $6715,$04 Keep #REGh within #N$00-#N$38.
  $6719,$01 Copy the random byte into #REGa.
  $671A,$03 Write the updated seed back to *#R$65DB.
  $671D,$02 Restore #REGbc and #REGhl from the stack.
  $671F,$01 Return.

c $6720 Clear Screen
@ $6720 label=ClearScreen
  $6720,$0D Clear #N$1B00 bytes of screen and attribute buffer memory by
. setting all the bytes to #N$00.
  $672D,$01 Return.

c $672E Clear Play-Area
@ $672E label=ClearPlayArea
  $672E,$0D Clear #N$02E0 bytes of the attribute buffer from #N$5820 to
. #N$5AFF.
  $673B,$0C Clear #N$1000 bytes of the screen buffer from #N$4800 to #N$57FF.
  $6747,$06 Point #REGhl to screen buffer position #N$4020 and #REGde to screen
. buffer position #N$4021.
  $674D,$02 Set a counter in #REGb for #N$07 character rows.
@ $674F label=ClearPlayArea_RowLoop
  $674F,$01 Save the row counter on the stack.
  $6750,$02 Set a counter in #REGb for #N$08 pixel lines.
@ $6752 label=ClearPlayArea_LineLoop
  $6752,$03 Stash the row counter and screen position pointers on the stack.
  $6755,$06 Clear #N$1F bytes across the line.
  $675B,$02 Restore the screen position pointers.
  $675D,$02 Move down one pixel line in the screen buffer.
  $675F,$03 Restore the line counter and loop back to #R$6752
. until all #N$08 lines are cleared.
  $6762,$09 Move to the next character row by resetting #REGh and #REGd to #N$40,
. then adding #N$20 to both #REGl and #REGe.
  $676B,$03 Restore the row counter and loop back to #R$674F
. until all #N$07 rows are cleared.
  $676E,$01 Return.

c $676F Print String
@ $676F label=Configurable_PrintString
R $676F B String length
R $676F C Attribute value of string
R $676F DE Screen buffer address
R $676F HL Pointer to string data
  $676F,$04 #REGix=#R$6253(#N$6153).
  $6773,$02 Jump to #R$677F.

@ $6775 label=SpectrumFont_PrintString
  $6775,$04 #HTML(#REGix=<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html">#N$3C00</a>.)
  $6779,$02 Jump to #R$677F.

@ $677B label=CustomFont_PrintString
  $677B,$04 #REGix=#R$6253(#N$6153).
@ $677F label=PrintString
  $677F,$05 Stash #REGde, #REGbc, #REGbc, #REGde and #REGhl on the stack.
  $6784,$03 Store the offset for the UDG data look-up in #REGhl.
  $6787,$03 Multiply #REGhl by #N$08.
  $678A,$03 #REGbc=#REGix (using the stack).
  $678D,$01 Add #REGbc to #REGhl.
  $678E,$02 Set a counter in #REGb for #N$08 rows.
@ $6790 label=PrintString_Loop
  $6790,$02 Copy one row of graphics data to the screen buffer.
  $6792,$01 Move to the next byte of graphics data.
  $6793,$01 Move down one pixel row.
  $6794,$02 Decrease the row counter by one and loop back to #R$6790 until counter is zero.
  $6796,$02 Restore #REGhl and #REGde from the stack.
  $6798,$01 Increment #REGde by one.
  $6799,$01 Increment #REGhl by one.
  $679A,$01 Restore #REGbc from the stack.
  $679B,$02 Decrease counter by one and loop back to #R$6781 until counter is zero.
  $679D,$01 Decrease #REGde by one.
  $679E,$03 Call #R$66F7.
  $67A1,$01 Restore #REGbc from the stack.
  $67A2,$01 Fetch the attribute colour.
@ $67A3 label=ColourPrintString_Loop
  $67A3,$01 Write #REGa to the attribute buffer.
  $67A4,$01 Move backwards one attribute block.
  $67A5,$02 Decrease counter by one and loop back to #R$67A3 until counter is zero.
  $67A7,$01 Restore #REGde from the stack.
  $67A8,$01 Return.

c $67A9 Print Score
@ $67A9 label=PrintScore
  $67A9,$03 Set the screen buffer address to #N$4000.
  $67AC,$03 Point #REGhl to #R$6514.
  $67AF,$03 Set the string length to #N$06 characters and the attribute byte to
. #INK$07.
  $67B2,$03 Call #R$676F.
  $67B5,$01 Return.

c $67B6 Handler: Score
@ $67B6 label=Handler_Score
  $67B6,$06 Jump to #R$67C3 if *#R$66F3 is not active.
N $67BC Demo mode is active, so just reset the score.
  $67BC,$03 #REGde=#R$6528.
  $67BF,$02 #REGb=#N$00.
  $67C1,$02 Jump to #R$67DD.
@ $67C3 label=AddToScore
  $67C3,$03 Point #REGhl at #R$6514(#N$6519) (the current score).
  $67C6,$03 Point #REGde at #R$6528(#N$652E) (the points to add).
  $67C9,$02 Set a counter in #REGb for #N$06 score digits.
@ $67CB label=AddToScore_Loop
  $67CB,$02 Fetch the points digit and add it to the corresponding score digit.
  $67CD,$02 Convert the value from ASCII by subtracing #N$30.
  $67CF,$04 Jump to #R$67D8 if #REGa is less than #N$3A.
  $67D3,$02 #REGa-=#N$0A.
  $67D5,$01 Decrease #REGhl by one.
  $67D6,$01 Increment *#REGhl by one.
  $67D7,$01 Increment #REGhl by one.
@ $67D8 label=AddToScore_Store
  $67D8,$01 Write #REGa to *#REGhl.
  $67D9,$01 Decrease #REGde by one.
  $67DA,$01 Decrease #REGhl by one.
  $67DB,$02 Decrease counter by one and loop back to #R$67CB until counter is zero.
@ $67DD label=Reset_ScoreBuffer
  $67DD,$02 Copy the score buffer pointer to #REGhl (using the stack).
  $67DF,$01 Increment the score buffer destination pointer by one.
  $67E0,$02 Set a counter in #REGc for #N$06 score digits.
  $67E2,$02 Write #N$30 ("#CHR$30") to the score buffer.
  $67E4,$02 Copy #N$30 ("#CHR$30") across the remaining five score buffer
. digits.
N $67E6 Check if the score is at least "10,000".
  $67E6,$06 Return if *#R$6514(#N$6515) is not equal to #N$31 ("#CHR$31").
  $67EC,$06 Return if #R$66EF says that no extra life should be awarded.
N $67F2 Award an extra life to the player.
  $67F2,$01 Reset #R$66EF as an extra life has been "awarded".
  $67F3,$01 Move to the lives counter at #R$66F0.
  $67F4,$01 Award one extra life.
  $67F5,$01 Return.

c $67F6 Print Header
@ $67F6 label=PrintHeader
D $67F6 #PUSHS #UDGTABLE {
.   #SIM(start=$67F6,stop=$681B)#SCR$02{$00,$00,$200,$10}(header)
. } TABLE# #POPS
  $67F6,$03 Call #R$67A9.
N $67F9 Prints "#FONT#(:(#STR($651A,$03,$0B)))$6253,attr=$06(high-score)".
  $67F9,$01 Set the print attribute to #INK$06.
  $67FA,$02 Set #REGb for printing #N$0B characters.
  $67FC,$02 Update the screen buffer printing position to #N$4012.
  $67FE,$03 Call #R$676F.
N $6801 Prints "#FONT#(:(#STR($6525,$03,$03)))$6253,attr=$44(header-level)".
  $6801,$03 Set #REGb for printing #N$03 characters and the print attribute to
. #COLOUR$44.
  $6804,$02 Update the screen buffer printing position to #N$401D.
  $6806,$03 Call #R$676F.
  $6809,$03 Call #R$681C.
N $680C Colour the lives icons.
  $680C,$03 #REGhl=#N$5806 (attribute buffer location).
  $680F,$03 #REGde=#N$5807 (attribute buffer location).
  $6812,$02 Set a counter in #REGc for #N$0B characters.
  $6814,$02 Write #COLOUR$42 to the attribute buffer.
  $6816,$02 Copy the attribute byte across the rest of the lives icons.
  $6818,$03 Call #R$672E.
  $681B,$01 Return.

c $681C Print Lives
@ $681C label=PrintLives
  $681C,$03 Set the screen buffer position to #N$4008 (where the life icons
. start being displayed).
  $681F,$05 Load the number of lives from *#R$66F0, subtract one and store the
. result in #REGc.
  $6824,$02 Set a counter in #REGb for #N$05 icon positions.
@ $6826 label=PrintLives_Loop
  $6826,$01 Decrease the lives counter by one.
  $6827,$02 Stash the loop counters and screen buffer position on the stack.
  $6829,$05 Jump to #R$6833 if the position should show a life icon.
  $682E,$03 Point #REGhl to the blank mask graphic at #R$613D.
  $6831,$02 Jump to #R$6836.
N $6833 Print a "life" icon.
@ $6833 label=PrintLifeIcon
N $6833 #UDG($6026,$42)
  $6833,$03 #REGhl=#R$6026.
@ $6836 label=PrintLives_DrawIcon
  $6836,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $6838 label=PrintLives_LineLoop
  $6838,$02 Copy the UDG data to the screen buffer.
  $683A,$01 Move to the next UDG graphic data byte.
  $683B,$01 Move down one pixel line in the screen buffer.
  $683C,$02 Decrease the line counter by one and loop back to #R$6838 until all
. #N$08 lines of the UDG character have been drawn.
  $683E,$01 Restore the original screen buffer position from the stack.
  $683F,$02 Move right two character blocks, ready for printing the next life
. icon.
  $6841,$01 Restore the lives counter from the stack.
  $6842,$02 Decrease the lives counter by one and loop back to #R$6826 until
. all the remaining lives have an icon displayed in the header.
  $6844,$01 Return.

c $6845 Handler: 2x2 Mask
@ $6845 label=Handler_Mask
D $6845 Handler for a 2x2 mask for removing "Eggsplosions".
R $6845 DE Attribute buffer destination
  $6845,$03 #REGhl=#R$613D.
  $6848,$04 Set #REGix to target #INK$02 attributes with a #INK$00 replacement
. attribute.
  $684C,$02 Jump to #R$685A.

c $684E Handler: Eggsplosion Left
@ $684E label=Handler_EggsplosionLeft
D $684E Handler for the left half of the Eggsplosion.
N $684E #CLS$00 #SIM(start=$684E,stop=$688F,de=$5890)#SCR$02(screen-eggsplosion-left)
R $684E DE Attribute buffer destination
  $684E,$03 #REGhl=#R$606E.
  $6851,$02 Jump to #R$6856.

c $6853 Handler: Eggsplosion Right
@ $6853 label=Handler_EggsplosionRight
D $6853 Handler for the right half of the Eggsplosion.
N $6853 #CLS$00 #SIM(start=$6853,stop=$688F,de=$5890)#SCR$02(screen-eggsplosion-right)
R $6853 DE Attribute buffer destination
  $6853,$03 #REGhl=#R$608E.
N $6856 Common handler for both left and right shell parts.
@ $6856 label=Handler_Eggsplosion
  $6856,$04 Set #REGix to target #INK$00 attributes with a #INK$02 replacement
. attribute.
@ $685A label=Handler_Eggsplosion_Draw
  $685A,$01 Stash the attribute buffer pointer on the stack.
  $685B,$01 Exchange the #REGde and #REGhl registers.
  $685C,$02 Set a counter in #REGb for #N$02 rows.
@ $685E label=Handler_Eggsplosion_RowLoop
  $685E,$02 Stash the row counter and attribute pointer on the stack.
  $6860,$02 Set a counter in #REGb for #N$02 columns.
@ $6862 label=Handler_Eggsplosion_ColumnLoop
  $6862,$01 Stash the column counter on the stack.
  $6863,$03 Check if the attribute at this attribute buffer position matches
. the target colour (the low byte of #REGix).
  $6866,$01 Stash #REGhl on the stack.
  $6867,$02 Jump to #R$6879 if #REGa is not equal to the low byte of #REGix.
  $6869,$02 #REGa=the high byte of #REGix.
  $686B,$01 Write #REGa to *#REGhl.
  $686C,$03 Call #R$6704.
  $686F,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $6871 label=Handler_Eggsplosion_LineLoop
  $6871,$02 Copy the UDG data to the screen buffer.
  $6873,$01 Move down one pixel line in the screen buffer.
  $6874,$01 Move to the next UDG graphic data byte.
  $6875,$02 Decrease the line counter by one and loop back to #R$6871 until all
. #N$08 lines of the UDG character have been drawn.
  $6877,$02 Jump to #R$6880.
@ $6879 label=Handler_Eggsplosion_SkipDraw
  $6879,$07 #REGde+=#N($0008,$04,$04).
@ $6880 label=Handler_Eggsplosion_NextColumn
  $6880,$01 Restore #REGhl from the stack.
  $6881,$01 Increment #REGhl by one.
  $6882,$01 Restore #REGbc from the stack.
  $6883,$02 Decrease counter by one and loop back to #R$6862 until counter is zero.
  $6885,$01 Restore #REGhl from the stack.
  $6886,$05 #REGhl+=#N($0020,$04,$04) (with carry).
  $688B,$01 Restore #REGbc from the stack.
  $688C,$02 Decrease counter by one and loop back to #R$685E until counter is zero.
  $688E,$01 Restore #REGde from the stack.
  $688F,$01 Return.

c $6890 Difficulty Delay?
@ $6890 label=DifficultyDelay
N $6890 Level #N$05 is the mothership level so run at full speed.
  $6890,$06 Return if *#R$6527 is equal to #N$35 (ASCII "#CHR$35").
  $6896,$01 Stash #REGbc on the stack.
N $6897 Loop #N$08*#N$0100 times.
  $6897,$03 #REGbc=#N($0008,$04,$04).
@ $689A label=DifficultyDelay_Loop
  $689A,$02 Decrease the inner loop counter by one and loop back to #R$689A
. until this counter is zero.
  $689C,$01 Decrease the outer loop counter by one.
  $689D,$02 Jump to #R$689A until the outer loop counter is zero.
  $689F,$01 Restore #REGbc from the stack.
  $68A0,$01 Return.

c $68A1 Print Asterisk
@ $68A1 label=Print_Asterisk
  $68A1,$04 Stash #REGaf, #REGbc, #REGde and #REGhl on the stack.
  $68A5,$03 Call #R$6704.
N $68A8 Point to an asterisk in the ZX Spectrum font UDG data.
  $68A8,$03 #HTML(#REGde=<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html#3D50">CHARSET+#N$50</a>.)
  $68AB,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $68AD,$02 Copy the UDG data to the screen buffer.
  $68AF,$01 Move down one pixel line in the screen buffer.
  $68B0,$01 Move to the next UDG graphic data byte.
  $68B1,$02 Decrease the line counter by one and loop back to #R$6962 until all
. #N$08 lines of the UDG character have been drawn.
  $68B3,$04 Restore #REGhl, #REGde, #REGbc and #REGaf from the stack.
  $68B7,$01 Return.

c $68B8 Transition Effect
@ $68B8 label=TransitionEffect
D $68B8 #PUSHS #UDGTABLE {
.   #CLS$43#SIM(start=$68B8,stop=$6910)#SCR$02(asterisk)
. } TABLE# #POPS
  $68B8,$02 #REGb=#N$02.
  $68BA,$01 Stash #REGbc on the stack.
  $68BB,$03 #REGde=#N$0109.
  $68BE,$03 #REGhl=#N$596B (attribute buffer location).
  $68C1,$03 Compare #REGb with #N$01.
  $68C4,$02 #REGa=#INK$00.
  $68C6,$02 Jump to #R$68D3 if #REGb was equal to #N$01.
  $68C8,$03 #REGa=*#R$66F1.
  $68CB,$02 #REGa+=#N$03.
  $68CD,$04 Jump to #R$68D3 if #REGa is not equal to #N$07.
  $68D1,$02 #REGa=#COLOUR$43.
  $68D3,$02 #REGb=#N$0C.
  $68D5,$01 Stash #REGbc on the stack.
  $68D6,$01 #REGb=#REGe.
  $68D7,$01 Write #REGa to *#REGhl.
  $68D8,$03 Call #R$68A1.
  $68DB,$01 Increment #REGhl by one.
  $68DC,$02 Decrease counter by one and loop back to #R$68D7 until counter is zero.
  $68DE,$01 #REGb=#REGd.
  $68DF,$01 Stash #REGbc on the stack.
  $68E0,$01 Write #REGa to *#REGhl.
  $68E1,$03 Call #R$68A1.
  $68E4,$04 #REGhl+=#N($0020,$04,$04).
  $68E8,$01 Restore #REGbc from the stack.
  $68E9,$02 Decrease counter by one and loop back to #R$68DF until counter is zero.
  $68EB,$01 #REGb=#REGe.
  $68EC,$01 Write #REGa to *#REGhl.
  $68ED,$03 Call #R$68A1.
  $68F0,$01 Decrease #REGhl by one.
  $68F1,$02 Decrease counter by one and loop back to #R$68EC until counter is zero.
  $68F3,$01 #REGb=#REGd.
  $68F4,$01 Stash #REGbc on the stack.
  $68F5,$01 Write #REGa to *#REGhl.
  $68F6,$03 Call #R$68A1.
  $68F9,$06 #REGhl-=#N($0020,$04,$04).
  $68FF,$01 Restore #REGbc from the stack.
  $6900,$02 Decrease counter by one and loop back to #R$68F4 until counter is zero.
  $6902,$02 #REGc=#N$21.
  $6904,$02 #REGhl-=#REGbc.
  $6906,$02 Increment #REGe by two.
  $6908,$02 Increment #REGd by two.
  $690A,$01 Stash #REGaf on the stack.
  $690B,$03 #REGbc=#N($000A,$04,$04).
  $690E,$02 Decrease counter by one and loop back to #R$690E until counter is zero.
  $6910,$01 Decrease #REGc by one.
  $6911,$02 Jump to #R$690E if #REGc is not equal to #REGa.
  $6913,$02 Restore #REGaf and #REGbc from the stack.
  $6915,$02 Decrease counter by one and loop back to #R$68D5 until counter is zero.
  $6917,$03 #REGbc=#N($0032,$04,$04).
  $691A,$02 Decrease counter by one and loop back to #R$691A until counter is zero.
  $691C,$01 Decrease #REGc by one.
  $691D,$02 Jump to #R$691A until #REGc is zero.
  $691F,$01 Restore #REGbc from the stack.
  $6920,$02 Decrease counter by one and loop back to #R$68BA until counter is zero.
  $6922,$03 Call #R$6720.
  $6925,$01 Return.

c $6926 Handler: Ship Explosion
@ $6926 label=Handler_ShipExplosion
D $6926 Handles the ship explosion animation, including the flashing attribute
. effect and cycling through the explosion sprite frames.
R $6926 HL Attribute buffer address of the explosion
  $6926,$01 Stash #REGbc on the stack.
N $6927 Calculate a flashing attribute for the explosion. The PAPER colour from
. the flash counter is used as the INK colour to create a visual effect. The
. bits are manipulated to move PAPER bits 3-5 to INK positions 0-2, and bit 6
. (BRIGHT) is set.
  $6927,$03 #REGa=*#R$66A5.
  $692A,$01 Decrease #REGa by one.
  $692B,$02,b$01 Flip bits 0-7.
  $692D,$02,b$01 Keep only bits 3-5.
  $692F,$06 Shift the PAPER bits to the INK bits.
  $6935,$02 Set bit 6 (e.g. add #EVAL($40,$02,$08)) to set this attribute as
. BRIGHT.
  $6937,$01 Store the result in #REGb.
N $6938 Check if this is the second frame of the explosion animation to decide
. whether to use the calculated flashing attribute or a plain one.
  $6938,$02 #REGa=the low byte of #REGix.
  $693A,$04 Jump to #R$6942 if #REGa is equal to #N$02.
  $693E,$02 #REGa=#N$40.
  $6940,$02 Jump to #R$6943.
@ $6942 label=Handler_ShipExplosion_SetAttribute
  $6942,$01 Load #REGa with the attribute byte from #REGb.
@ $6943 label=Handler_ShipExplosion_Draw
  $6943,$01 Write the attribute byte to *#REGhl.
  $6944,$03 Call #R$6704.
  $6947,$01 Stash the screen buffer address on the stack.
N $6948 Calculate the sprite data address for the current explosion frame. Each
. frame is #N$08 bytes long, so multiply the frame number by #N$08 and add it
. to the base address.
  $6948,$06 #REGhl=*#R$66A3.
  $694E,$03 Multiply #REGhl by #N$08.
  $6951,$04 #REGhl+=#R$61A3.
  $6955,$01 Switch the result into #REGde (#REGhl is discarded).
  $6956,$01 Restore the screen buffer address into #REGhl from the stack.
N $6957 Advance to the next explosion frame. If the frame counter reaches #N$03,
. reset it to #N$00 to loop the animation.
  $6957,$01 Increment #REGa by one.
  $6958,$04 Jump to #R$695D if #REGa is not equal to #N$03.
  $695C,$01 Point to frame #N$00.
@ $695D label=Handler_ShipExplosion_SetFrame
  $695D,$03 Write the frame number to *#R$66A3.
  $6960,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $6962 label=Handler_ShipExplosion_LineLoop
  $6962,$02 Copy the UDG data to the screen buffer.
  $6964,$01 Move down one pixel line in the screen buffer.
  $6965,$01 Move to the next UDG graphic data byte.
  $6966,$02 Decrease the line counter by one and loop back to #R$6962 until all
. #N$08 lines of the UDG character have been drawn.
  $6968,$01 Restore #REGbc from the stack.
  $6969,$01 Return.

c $696A Draw Alien Mothership
@ $696A label=Draw_AlienMothership
D $696A #PUSHS #CLS($05) #SIM(start=$67F6,stop=$6818) #UDGTABLE {
.   #SIM(start=$696A,stop=$6A22)#SCR$02(mothership)
. } TABLE# #POPS
N $696A Print the top of the mast.
N $696A #PUSHS #CLS($05)
. #UDGTABLE {
.   #SIM(start=$696A,stop=$6976)#SCR$01(mothership-step-01)
. } TABLE#
  $696A,$0C Call #R$677B using #R$6538; printing #N$02 characters in #INK$05 at
. #N({sim[DE]}).
N $6976 Realign #REGde and print the bottom of the mast.
N $6976 #UDGTABLE {
.   #SIM(start=$6976,stop=$697D)#SCR$01(mothership-step-02)
. } TABLE#
  $6976,$07 Call #R$677B using #R$653A; printing #N$02 characters in #INK$05 at
. #N({sim[DE]}).
N $697D Realign #REGde and start printing the top lefthand corner of the ship.
N $697D #UDGTABLE {
.   #SIM(start=$697D,stop=$6985)#SCR$01(mothership-step-03)
. } TABLE#
  $697D,$08 Call #R$677B using #R$653C; printing #N$02 characters in #INK$06 at
. #N({sim[DE]}).
N $6985 Realign #REGde and print the top strip of the ship.
N $6985 #UDGTABLE {
.   #SIM(start=$6985,stop=$698D)#SCR$01(mothership-step-04)
. } TABLE#
  $6985,$08 Call #R$677B using #R$653E; printing #N$08 characters in
. #COLOUR$32 at #N({sim[DE]}).
N $698D Realign #REGde and print the top righthand corner of the ship.
N $698D #UDGTABLE {
.   #SIM(start=$698D,stop=$6995)#SCR$01(mothership-step-05)
. } TABLE#
  $698D,$08 Call #R$677B using #R$6546; printing #N$02 characters in #INK$06 at
. #N({sim[DE]}).
N $6995 Realign #REGde and print the lefthand corner of the next strip.
N $6995 #UDGTABLE {
.   #SIM(start=$6995,stop=$699B)#SCR$01(mothership-step-06)
. } TABLE#
  $6995,$06 Call #R$677B using #R$6548; printing #N$01 character in #INK$06 at
. #N({sim[DE]}).
N $699B Move right one block and print the next body strip of the ship.
N $699B #UDGTABLE {
.   #SIM(start=$699B,stop=$69A2)#SCR$01(mothership-step-07)
. } TABLE#
  $699B,$07 Call #R$6775 using #R$6549; printing #N$0C characters in #COLOUR$31
.  at #N({sim[DE]}).
N $69A2 Realign #REGde and print the righthand corner of this strip.
N $69A2 #UDGTABLE {
.   #SIM(start=$69A2,stop=$69AA)#SCR$01(mothership-step-08)
. } TABLE#
  $69A2,$08 Call #R$677B using #R$6555; printing #N$01 character in #INK$06 at
. #N({sim[DE]}).
N $69AA Realign #REGde and print the lefthand corner of the next strip.
N $69AA #UDGTABLE {
.   #SIM(start=$69AA,stop=$69B1)#SCR$01(mothership-step-09)
. } TABLE#
  $69AA,$07 Call #R$677B using #R$6556; printing #N$01 character in #INK$06 at
. #N({sim[DE]}).
N $69B1 Move right one block and print the next body strip of the ship.
N $69B1 #UDGTABLE {
.   #SIM(start=$69B1,stop=$69B8)#SCR$01(mothership-step-10)
. } TABLE#
  $69B1,$07 Call #R$677B using #R$6557; printing #N$0E characters in #COLOUR$31
. at #N({sim[DE]}).
N $69B8 Realign #REGde and print the righthand corner of this strip.
N $69B8 #UDGTABLE {
.   #SIM(start=$69B8,stop=$69C0)#SCR$01(mothership-step-11)
. } TABLE#
  $69B8,$08 Call #R$677B using #R$6565; printing #N$01 character in #INK$06 at
. #N({sim[DE]}).
N $69C0 Realign #REGde and start printing the next strip.
N $69C0 #UDGTABLE {
.   #SIM(start=$69C0,stop=$69C8)#SCR$01(mothership-step-12)
. } TABLE#
  $69C0,$08 Call #R$677B using #R$6566; printing #N$12 characters in #COLOUR$0F at
. #N({sim[DE]}).
N $69C8 Realign #REGde and start printing the hull.
N $69C8 #UDGTABLE {
.   #SIM(start=$69C8,stop=$69D0)#SCR$01(mothership-step-13)
. } TABLE#
  $69C8,$08 Call #R$677B using #R$6578; printing #N$01 character in #INK$02 at
. #N({sim[DE]}).
N $69D0 Realign #REGde and print the next section of the hull.
N $69D0 #UDGTABLE {
.   #SIM(start=$69D0,stop=$69D6)#SCR$01(mothership-step-14)
. } TABLE#
  $69D0,$06 Call #R$677B using #R$6579; printing #N$01 character in #INK$02 at
. #N({sim[DE]}).
N $69D6 Realign #REGde and print the next section of the hull.
N $69D6 #UDGTABLE {
.   #SIM(start=$69D6,stop=$69DD)#SCR$01(mothership-step-15)
. } TABLE#
  $69D6,$07 Call #R$677B using #R$657A; printing #N$02 characters in #INK$02 at
. #N({sim[DE]}).
N $69DD Realign #REGde and print the bottom of the hull.
N $69DD #UDGTABLE {
.   #SIM(start=$69DD,stop=$69E4)#SCR$01(mothership-step-16)
. } TABLE#
  $69DD,$07 Call #R$677B using #R$657C; printing #N$0A characters in #INK$02 at
. #N({sim[DE]}).
N $69E4 Realign #REGde and print the next section of the hull.
N $69E4 #UDGTABLE {
.   #SIM(start=$69E4,stop=$69EB)#SCR$01(mothership-step-17)
. } TABLE#
  $69E4,$07 Call #R$677B using #R$6586; printing #N$02 characters in #INK$02 at
. #N({sim[DE]}).
N $69EB Realign #REGde and print the next section of the hull.
N $69EB #UDGTABLE {
.   #SIM(start=$69EB,stop=$69F1)#SCR$01(mothership-step-18)
. } TABLE#
  $69EB,$06 Call #R$677B using #R$6588; printing #N$01 character in #INK$02 at
. #N({sim[DE]}).
N $69F1 Realign #REGde and print the last section of the hull.
N $69F1 #UDGTABLE {
.   #SIM(start=$69F1,stop=$69F7)#SCR$01(mothership-step-19)
. } TABLE#
  $69F1,$06 Call #R$677B using #R$6589; printing #N$01 character in #INK$02 at
. #N({sim[DE]}).
N $69F7 Cut out the "door" where the mothership alien will be drawn.
N $69F7 #UDGTABLE {
.   #SIM(start=$69F7,stop=$6A03)#SCR$01(mothership-step-20)
. } TABLE#
  $69F7,$06 Write #COLOUR$04 / #COLOUR$04 to *#N$58EF in the attribute buffer.
  $69FD,$06 Write #COLOUR$42 / #COLOUR$42 to *#N$590F in the attribute buffer.
N $6A03 Colour in the hull.
N $6A03 #UDGTABLE {
.   #SIM(start=$6A03,stop=$6A10)#SCR$01(mothership-step-21)
. } TABLE#
  $6A03,$02 #REGa=#COLOUR$10.
  $6A05,$0B Copy #REGa (#INK$02) across #N$10 attribute blocks starting from
. #N$5948.
N $6A10 #UDGTABLE {
.   #SIM(start=$6A10,stop=$6A19)#SCR$01(mothership-step-22)
. } TABLE#
  $6A10,$09 Realign the attribute buffer pointer to #N$5969 and copy
. #REGa (#INK$02) across #N$0E attribute blocks.
N $6A19 #UDGTABLE {
.   #SIM(start=$6A19,stop=$6A22)#SCR$01(mothership-step-23)
. } TABLE# #POPS
  $6A19,$09 Realign the attribute buffer pointer to #N$598A and copy #REGa
. (#INK$02) across #N$0C attribute blocks.
  $6A22,$01 Return.

c $6A23 Handler: Mothership
@ $6A23 label=Handler_Mothership
N $6A23 Prints the top part of the alien mothership:
. #UDGTABLE { #UDGS$02,$01(mothership-05)(
.   #UDG($6153+$08*(#PEEK(#PC+$x)),$32)(*udg)
.   udg
. ) } TABLE#
  $6A23,$03 #REGde=#N$40CF (screen buffer location).
  $6A26,$01 Stash #REGde on the stack.
  $6A27,$03 #REGhl=#R$6541.
  $6A2A,$03 Set to print #N$02 characters in #COLOUR$32.
  $6A2D,$03 Call #R$677B.
  $6A30,$01 Restore #REGhl from the stack.
  $6A31,$03 #REGa=*#R$66D4.
  $6A34,$01 Stash #REGaf on the stack.
  $6A35,$02 Shift #REGa right (with carry).
  $6A37,$02,b$01 Keep only bits 0-2.
  $6A39,$02,b$01 Flip bits 0-2.
  $6A3B,$01 #REGa+=#REGh.
  $6A3C,$01 #REGh=#REGa.
  $6A3D,$02 Write #N$03 to *#REGhl.
  $6A3F,$01 Increment #REGhl by one.
  $6A40,$02 Write #N$C0 to *#REGhl.
  $6A42,$01 Restore #REGaf from the stack.
  $6A43,$02,b$01 Keep only bits 0-1.
  $6A45,$02 Jump to #R$6A69 if #REGhl is not equal to #N$00.
  $6A47,$03 #REGhl=#N$4837 (screen buffer location).
  $6A4A,$03 #REGde=#N$4838 (screen buffer location).
  $6A4D,$02 #REGb=#N$08.
  $6A4F,$01 Stash #REGbc on the stack.
  $6A50,$01 #REGa=*#REGde.
  $6A51,$02 Stash #REGhl and #REGde on the stack.
  $6A53,$03 #REGbc=#N($0011,$04,$04).
  $6A56,$02 LDDR.
  $6A58,$01 Write #REGa to *#REGde.
  $6A59,$02 Restore #REGde and #REGhl from the stack.
  $6A5B,$01 Increment #REGh by one.
  $6A5C,$01 Increment #REGd by one.
  $6A5D,$01 Restore #REGbc from the stack.
  $6A5E,$02 Decrease counter by one and loop back to #R$6A4F until counter is zero.
  $6A60,$02 #REGd=#N$59.
  $6A62,$01 #REGh=#REGd.
  $6A63,$02 #REGc=#N$11.
  $6A65,$01 #REGa=*#REGde.
  $6A66,$02 LDDR.
  $6A68,$01 Write #REGa to *#REGde.
N $6A69 Update mothership animation counter.
@ $6A69 label=Handler_Mothership_UpdateCounter
  $6A69,$03 #REGhl=#R$66D4.
  $6A6C,$01 Fetch the counter and store it in #REGa.
  $6A6D,$01 Increment *#R$66D4 by one.
M $6A6E,$04 Only animate the alien every 16th frame (when bits 0-3 are all
. zero) else jump to #R$6A99.
  $6A6E,$02,b$01 Keep only bits 0-3.
  $6A70,$02 Jump to #R$6A99 unless the result is zero.
N $6A72 Draw the mothership alien in one of its two frames. Note; it is a 2x2
. sprite.
N $6A72 This is the 16th frame, now toggle between the two frames of the alien
. sprite.
  $6A72,$02 Test bit 4 of the counter.
  $6A74,$03 #REGhl=#R$5FD4.
  $6A77,$02 Jump to #R$6A7C if bit 4 isn't set.
  $6A79,$03 #REGhl=#R$5FF4.
@ $6A7C label=Handler_Mothership_DrawAlien
  $6A7C,$03 #REGde=#N$40EF (screen buffer location).
  $6A7F,$02 Set a counter in #REGb for #N$02 rows.
@ $6A81 label=Handler_Mothership_RowLoop
  $6A81,$01 Stash the row counter on the stack.
  $6A82,$02 Set a counter in #REGb for #N$02 columns.
@ $6A84 label=Handler_Mothership_ColumnLoop
  $6A84,$02 Stash the column counter and screen buffer pointer on the stack.
  $6A86,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $6A88 label=Handler_Mothership_LineLoop
  $6A88,$02 Copy the UDG data to the screen buffer.
  $6A8A,$01 Move down one pixel line in the screen buffer.
  $6A8B,$01 Move to the next UDG graphic data byte.
  $6A8C,$02 Decrease the line counter by one and loop back to #R$6A88 until all
. #N$08 lines of the UDG character have been drawn.
  $6A8E,$01 Restore the original screen buffer pointer from the stack.
  $6A8F,$01 Move right one character block.
  $6A90,$01 Restore the column counter from the stack.
  $6A91,$02 Decrease the column counter by one and loop back to #R$6A84 until
. both UDGs have been drawn in this row.
  $6A93,$03 #REGde=#N$480F (screen buffer location).
  $6A96,$01 Restore the row counter from the stack.
  $6A97,$02 Decrease the row counter by one and loop back to #R$6A81 until both
. rows have finished being drawn and the alien is complete.
@ $6A99 label=Handler_Mothership_ProcessBullets
  $6A99,$05 Return if *#R$6695 is not zero.
  $6A9E,$03 #REGhl=#N($0003,$04,$04).
  $6AA1,$01 Stash #REGhl on the stack.
  $6AA2,$03 #REGix=#REGhl (using the stack).
  $6AA5,$05 Multiply #REGhl by #N$02 and add #R$66BA.
  $6AAA,$01 Stash #REGhl on the stack.
  $6AAB,$01 #REGe=*#REGhl.
  $6AAC,$01 Increment #REGhl by one.
  $6AAD,$01 #REGd=*#REGhl.
  $6AAE,$01 #REGa=#REGd.
  $6AAF,$01 Exchange the #REGde and #REGhl registers.
  $6AB0,$03 Jump to #R$6AC9 if #REGa is not zero.
  $6AB3,$03 Call #R$670E.
  $6AB6,$02,b$01 Keep only bits 0-3.
  $6AB8,$03 Jump to #R$6AC0 if #REGa is not zero.
  $6ABB,$03 #REGhl=#N$594F (attribute buffer location).
  $6ABE,$02 Jump to #R$6AF2.

  $6AC0,$04 Jump to #R$6B25 if #REGa is not equal to #N$03.
  $6AC4,$03 #REGhl=#N$5950 (attribute buffer location).
  $6AC7,$02 Jump to #R$6AF2.

  $6AC9,$01 #REGa=*#REGhl.
  $6ACA,$02,b$01 Keep only bits 0-2, 6.
  $6ACC,$04 Jump to #R$6AE0 if #REGa is not equal to #N$06.
  $6AD0,$01 #REGa=*#REGhl.
  $6AD1,$02,b$01 Keep only bits 3-7.
  $6AD3,$01 Write #REGa to *#REGhl.
  $6AD4,$01 Stash #REGhl on the stack.
  $6AD5,$03 Call #R$6704.
  $6AD8,$02 #REGb=#N$08.
  $6ADA,$02 Write #N$00 to *#REGhl.
  $6ADC,$01 Increment #REGh by one.
  $6ADD,$02 Decrease counter by one and loop back to #R$6ADB until counter is zero.
  $6ADF,$01 Restore #REGhl from the stack.
  $6AE0,$04 #REGhl+=#N($0020,$04,$04).
  $6AE4,$01 Stash #REGhl on the stack.
  $6AE5,$03 #REGbc=#N$5AFF (attribute buffer location).
  $6AE8,$03 #REGhl-=#REGbc.
  $6AEB,$01 Restore #REGhl from the stack.
  $6AEC,$02 Jump to #R$6AF2 if #REGh is less than #REGa.
  $6AEE,$02 #REGh=#N$00.
  $6AF0,$02 Jump to #R$6B25.

@ $6AF2 label=Mothership_Bullet_Collision
  $6AF2,$05 Jump to #R$6B25 if *#REGhl is equal to #INK$02.
  $6AF7,$04 Jump to #R$6B05 if *#REGhl is not equal to #COLOUR$46.
  $6AFB,$06 Jump to #R$6AEE if *#R$6693 is active.
  $6B01,$02 Write #INK$06 to *#REGhl.
  $6B03,$02 Jump to #R$6B0D.

  $6B05,$02,b$01 Keep only bits 0-2.
  $6B07,$02 Jump to #R$6AEE if #REGa is not equal to #REGa.
  $6B09,$01 #REGa=*#REGhl.
  $6B0A,$02 #REGa+=#N$06.
  $6B0C,$01 Write #REGa to *#REGhl.
  $6B0D,$01 Stash #REGhl on the stack.
  $6B0E,$03 Call #R$6704.
  $6B11,$01 Exchange the #REGde and #REGhl registers.
  $6B12,$03 #REGbc=#R$6026.
  $6B15,$03 #REGhl=#REGix (using the stack).
  $6B18,$03 Multiply #REGhl by #N$08.
  $6B1B,$01 #REGhl+=#REGbc.
  $6B1C,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $6B1E,$02 Copy the UDG data to the screen buffer.
  $6B20,$01 Move down one pixel line in the screen buffer.
  $6B21,$01 Move to the next UDG graphic data byte.
  $6B22,$02 Decrease the line counter by one and loop back to #R$6B1E until all
. #N$08 lines of the UDG character have been drawn.
  $6B24,$01 Restore the attribute position from the stack.
@ $6B25 label=Handler_Mothership_SaveBulletPosition
  $6B25,$01 Exchange the #REGde and #REGhl registers.
  $6B26,$01 Restore the bullet position table from the stack.
  $6B27,$04 Save the current bullet position to the table.
  $6B2B,$01 Restore the bullet index from the stack.
  $6B2C,$01 Decrease the bullet index by one.
  $6B2D,$03 Jump back to #R$6AA1 until there are no more bullets left to
. process.
  $6B30,$01 Return.

c $6B31 Fill Screen With UDG
@ $6B31 label=FillScreenWithUDG
D $6B31 #PUSHS #CLS($45)#SIM(start=$7323,stop=$6B35)
. #UDGTABLE(default,centre,centre) { =h Loop Index | =h Screen Output }
.   #FOR$01,$03(x,{ #Nx | #SIM(start=$6B35,stop=$6B4A)#SCR$01(fill-x) })
. TABLE# #POPS
R $6B31 DE Pointer to UDG graphic data
  $6B31,$03 Point #REGhl to the start of the screen buffer (#N$4000).
  $6B34,$01 #REGb=#REGl.
N $6B35 Draw one character block.
@ $6B35 label=FillScreenWithUDG_Loop
  $6B35,$03 Stash the position counter, screen address and graphic pointer on
. the stack.
  $6B38,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $6B3A label=FillScreenWithUDG_LineLoop
  $6B3A,$02 Copy the UDG data to the screen buffer.
  $6B3C,$01 Move down one pixel line in the screen buffer.
  $6B3D,$01 Move to the next UDG graphic data byte.
  $6B3E,$02 Decrease the line counter by one and loop back to #R$6B3A until all
. #N$08 lines of the UDG character have been drawn.
N $6B40 Move to the next character position in the row.
  $6B40,$02 Restore the graphic pointer and original screen address from the
. stack.
  $6B42,$01 Move right one character block.
  $6B43,$01 Restore the position counter from the stack.
  $6B44,$02 Decrease the position counter by one and loop back to #R$6B35 until
. the current screen third is filled with the sprite.
N $6B46 Move to the next screen third.
  $6B46,$04 Add #N$07 to #REGh to move down to the next screen third.
  $6B4A,$04 Jump back to #R$6B35 until #REGhl reaches the attribute buffer at
. #N$5800.
  $6B4E,$01 Return.

c $6B4F Print Control Menu
@ $6B4F label=Print_ControlMenu
D $6B4F #PUSHS #UDGTABLE {
.   #SIM(start=$6B4F,stop=$6B75)#SCR$02(menu)
. } TABLE# #POPS
E $6B4F Continue on to #R$6B99.
  $6B4F,$03 Call #R$6720.
N $6B52 Print "Select Joystick Or Keys".
  $6B52,$0C Call #R$676F using #R$64D1; printing #N$17 characters in #INK06.
N $6B5E Print "K - Kempston Stick".
  $6B5E,$09 Call #R$6775 using #R$64E8; printing #N$12 characters in
. #COLOUR$43.
N $6B67 Print "A - AGF Stick".
  $6B67,$07 Call #R$6775 using #R$64FA; printing #N$0D characters.
N $6B6E Print "B - Keyboard".
  $6B6E,$07 Call #R$6775 using #R$6507; printing #N$0C characters.
N $6B75 Has the player selected to use a Kempston joystick?
@ $6B75 label=ControlMenu_Input_Kempston
  $6B75,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$BF | ENTER | L | K | J | H }
. TABLE#
  $6B79,$04 Jump to #R$6B81 if "K" wasn't pressed.
  $6B7D,$02 Set #REGa to Kempston joystick controls (#N$02).
  $6B7F,$02 Jump to #R$6B96.
N $6B81 Has the player selected to use an AGF joystick?
@ $6B81 label=ControlMenu_Input_AGF
  $6B81,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FD | A | S | D | F | G }
. TABLE#
  $6B85,$04 Jump to #R$6B8D if "A" wasn't pressed.
  $6B89,$02 Set #REGa to AGF joystick controls (#N$01).
  $6B8B,$02 Jump to #R$6B96.
N $6B8D Has the player selected to use the keyboard?
@ $6B8D label=ControlMenu_Input_Keyboard
  $6B8D,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$7F | SPACE | FULL-STOP | M | N | B }
. TABLE#
  $6B91,$04 Jump back to #R$6B75 if "B" wasn't pressed.
  $6B95,$01 Set #REGa to keyboard controls (#N$00).
@ $6B96 label=SetControlMethod
  $6B96,$03 Write #REGa to *#R$66F6.

c $6B99 Print Instructions Menu
@ $6B99 label=Print_InstructionsMenu
D $6B99 #PUSHS #UDGTABLE {
.   #SIM(start=$6B99,stop=$6BD8)#SCR$02(instructions)
. } TABLE# #POPS
  $6B99,$03 Call #R$6720.
  $6B9C,$06 Jump to #R$6BCC if *#R$66F6 is a joystick method.
N $6BA2 The player has selected to use the keyboard, so remind them what the
. keys are.
N $6BA2 Print "Instructions".
  $6BA2,$0C Call #R$676F using #R$6476; printing #N$0C characters in #INK06.
N $6BAE Print "Left".
  $6BAE,$09 Call #R$676F using #R$6482; printing #N$14 characters in
. #COLOUR$43.
N $6BB7 Print "Right".
  $6BB7,$07 Call #R$676F using #R$6496; printing #N$0B characters.
N $6BBE Print "Fire".
  $6BBE,$07 Call #R$676F using #R$64A1; printing #N$0F characters.
N $6BC5 Print "Barrier".
  $6BC5,$07 Call #R$676F using #R$64B0; printing #N$0F characters.
N $6BCC Print "Select Level".
@ $6BCC label=Input_SelectLevel
  $6BCC,$0C Call #R$676F using #R$64BF; printing #N$12 characters in #INK07.
N $6BD8 Read keyboard input to select level 1-5.
@ $6BD8 label=Input_SelectLevel_Loop
  $6BD8,$01 Disable interrupts.
  $6BD9,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $6BDD,$02,b$01 Flip the bits.
  $6BDF,$02,b$01 Keep only bits 0-4 (the key states).
  $6BE1,$02 Jump to #R$6BD8 if no keys were pressed.
  $6BE3,$02 Start a count in #REGc starting at #N$31 (ASCII "#CHR$31").
  $6BE5,$04 Jump to #R$6BFD if bit 0 of #REGa was set (key "1" pressed).
  $6BE9,$01 Increment #REGc by one (ASCII "#CHR$32").
  $6BEA,$04 Jump to #R$6BFD if bit 1 of #REGa was set (key "2" pressed).
  $6BEE,$01 Increment #REGc by one (ASCII "#CHR$33").
  $6BEF,$04 Jump to #R$6BFD if bit 2 of #REGa was set (key "3" pressed).
  $6BF3,$01 Increment #REGc by one (ASCII "#CHR$34").
  $6BF4,$04 Jump to #R$6BFD if bit 3 of #REGa was set (key "4" pressed).
  $6BF8,$01 Increment #REGc by one (ASCII "#CHR$35").
  $6BF9,$04 Jump to #R$6BD8 if bit 4 of #REGa was set (key "5" pressed).
@ $6BFD label=Input_SelectLevel_Store
  $6BFD,$04 Write #REGc to *#R$6527.
  $6C01,$0B Convert the ASCII digit to a numeric value by, subtracting #N$30,
. multiply by #N$02, and subtracting the result from #N$0A, e.g.
. #TABLE(default,centre,centre)
. { =h ASCII | =h Byte | =h Result }
. #FOR$31,$35(x,{ "#CHRx" | #Nx | #EVAL($0A-((x-$30)*$02)) })
. TABLE#
.
. Write the result to *#R$6897(#N$6898).
  $6C0C,$01 Return.

b $6C0D

g $6C13 Table: Music Data
@ $6C13 label=Table_MusicData
D $6C13 See #R$74A4.
.
. #HTML(#AUDIO(intro.wav)(#INCLUDE(Intro)))
B $6C13,$03
L $6C13,$03,$2E

c $6C9D Check Collision
@ $6C9D label=CheckCollision
  $6C9D,$05 Return if #R$6693 is active.
  $6CA2,$03 Load the player attribute position from #R$66ED.
  $6CA5,$02 Set a counter in #REGb for #N$02 rows to check.
@ $6CA7 label=CheckCollision_RowLoop
  $6CA7,$02 Stash the row counter and attribute position on the stack.
  $6CA9,$02 Set a counter in #REGb for #N$03 columns to check.
@ $6CAB label=CheckCollision_ColumnLoop
  $6CAB,$01 Load the attribute at this position.
  $6CAC,$03 Skip this position if the attribute is #COLOUR$00 (empty space).
  $6CAF,$04 Skip this position if the attribute is #COLOUR$46 (player ship).
  $6CB3,$04 Skip this position if the attribute is #COLOUR$07 (white/
. background).
N $6CB7 See #POKE#immunity(Immunity).
N $6CB7 Collision detected - trigger player death.
  $6CB7,$05 Set #R$66A4 to #N$01.
  $6CBC,$02 Discard the saved positions from the stack.
  $6CBE,$01 Return.
N $6CBF Move to the next attribute.
@ $6CBF label=CheckCollision_NextColumn
  $6CBF,$01 Move to the next attribute position (right one column).
  $6CC0,$02 Loop back to #R$6CAB until all #N$03 columns are checked.
  $6CC2,$01 Restore the starting attribute position for this row.
  $6CC3,$02 Move down one row (set bit 5 of #REGl = add #N$20).
  $6CC5,$03 Restore the row counter and loop back to #R$6CA7 until both rows
. are checked.
  $6CC8,$01 Return.

c $6CC9 Draw Ship
@ $6CC9 label=DrawShip
D $6CC9 #PUSHS #POKES$66F3,$00;$74EF,$00;$74F0,$00;$74F1,$00
. #CLS($05) #UDGTABLE {
.   #SIM(start=$72C9,stop=$6FDB)#SCR$02(ship)
. } TABLE# #POPS
  $6CC9,$03 Point #REGhl to the ship graphic: #R$604E.
  $6CCC,$03 Set the screen buffer location #N$50CF.
  $6CCF,$02 Set a counter in #REGb for #N$02 rows.
@ $6CD1 label=DrawShip_RowLoop
  $6CD1,$01 Stash the row counter on the stack.
  $6CD2,$02 And a counter in #REGc for #N$02 columns.
@ $6CD4 label=DrawShip_ColumnLoop
  $6CD4,$02 Stash the column counter and the screen position on the stack.
  $6CD6,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $6CD8 label=DrawShip_LineLoop
  $6CD8,$02 Copy the UDG data to the screen buffer.
  $6CDA,$01 Move to the next UDG graphic data byte.
  $6CDB,$01 Move down one pixel line in the screen buffer.
  $6CDC,$02 Decrease the line counter by one and loop back to #R$6CD8 until all
. #N$08 lines of the UDG character have been drawn.
  $6CDE,$01 Restore the starting screen position from the stack.
  $6CDF,$01 Increment #REGde by one.
  $6CE0,$01 Restore the column counter from the stack.
  $6CE1,$02 Decrease the column counter by one and loop back to #R$6CD4 until
. both columns have been drawn to the screen buffer.
  $6CE3,$03 Update the screen buffer pointer in #REGde to #N$50EF.
  $6CE6,$01 Restore the row counter from the stack.
  $6CE7,$02 Decrease the row counter by one and loop back to #R$6CD1 until both
. rows have been drawn to the screen buffer.
  $6CE9,$02 #REGl=#N$CE.
  $6CEB,$03 Jump to #R$6F93.

c $6CEE Handler: Player Death/ Game Over
@ $6CEE label=Handler_PlayerDeathGameOver
  $6CEE,$08 Jump to #R$6DCF if *#R$66A4 is zero.
  $6CF6,$06 Jump to #R$6D00 if *#R$66A5 is not equal to #N$40.
  $6CFC,$03 Write #N$02 ("explosion complete") to *#R$66A4.
  $6CFF,$01 Return.
N $6D00 Handles the "Game Over" state.
@ $6D00 label=GameOver
  $6D00,$07 Jump to #R$7030 if *#R$6695 is not zero.
  $6D07,$07 Jump to #R$6D29 if *#R$66F0 is not equal to #N$01.
  $6D0E,$06 Jump to #R$6D29 if *#R$66F3 is active.
  $6D14,$01 Stash #REGhl on the stack.
N $6D15 Prints #FONT#(:(#STR($646E,$03,$04)))$3D00,attr=$45(game)
  $6D15,$03 #REGhl=#R$646E.
  $6D18,$03 #REGde=#N$48CB (screen buffer location).
  $6D1B,$03 Set to print #N$04 characters in #COLOUR$45.
  $6D1E,$03 Call #R$676F.
N $6D21 Prints #FONT#(:(#STR($6472,$03,$04)))$3D00,attr=$45(over)
  $6D21,$02 Update the screen buffer address.
  $6D23,$02 Set to print #N$04 characters.
  $6D25,$03 Call #R$676F.
  $6D28,$01 Restore #REGhl from the stack.
N $6D29 Animate the explosion effect.
@ $6D29 label=GameOver_Explosion
  $6D29,$01 #REGa=*#REGhl.
  $6D2A,$02,b$01 Keep only bits 0-2.
  $6D2C,$04 Jump to #R$6D31 if bit 3 of *#REGhl is set.
  $6D30,$01 Increment #REGa by one.
@ $6D31 label=GameOver_SkipIncrement
  $6D31,$02 Increment the explosion counter by two.
  $6D33,$01 Copy the attribute value to #REGc.
  $6D34,$02 #REGb=#N$00.
  $6D36,$04 #REGix=#N$0002.
@ $6D3A label=GameOver_ExplosionLoop
  $6D3A,$01 Stash the colour counter on the stack.
  $6D3B,$03 #REGhl=*#R$66ED.
  $6D3E,$04 #REGhl+=#N($0021,$04,$04).
  $6D42,$01 Write #REGd to *#REGhl.
  $6D43,$01 Stash #REGhl on the stack.
  $6D44,$01 #REGa=#REGl.
  $6D45,$02,b$01 Keep only bits 0-4.
  $6D47,$01 #REGa-=#REGc.
  $6D48,$01 Stash #REGaf on the stack.
  $6D49,$03 #REGhl-=#REGbc.
  $6D4C,$01 Restore #REGaf from the stack.
  $6D4D,$03 Call #R$6926 if #REGa is greater than #N$00.
  $6D50,$01 Restore #REGhl from the stack.
  $6D51,$01 Stash #REGhl on the stack.
  $6D52,$01 #REGa=#REGl.
  $6D53,$02,b$01 Keep only bits 0-4.
  $6D55,$01 #REGa+=#REGc.
  $6D56,$02 Compare #REGa with #N$20.
  $6D58,$01 Stash #REGaf on the stack.
  $6D59,$01 #REGhl+=#REGbc.
  $6D5A,$01 Restore #REGaf from the stack.
  $6D5B,$03 Call #R$6926 if #REGa is less than #N$20.
  $6D5E,$01 Restore #REGhl from the stack.
  $6D5F,$01 Stash #REGhl on the stack.
  $6D60,$01 #REGb=#REGc.
  $6D61,$06 #REGhl-=#N($0020,$04,$04) (with carry).
  $6D67,$02 Decrease counter by one and loop back to #R$6D64 until counter is zero.
  $6D69,$03 Call #R$6926.
  $6D6C,$01 Restore #REGhl from the stack.
  $6D6D,$01 #REGa=#REGc.
  $6D6E,$02 #REGa-=#N$02.
  $6D70,$01 #REGb=#REGa.
  $6D71,$02 Jump to #R$6D8A if #REGa is less than #REGa.
  $6D73,$02 Jump to #R$6D8A if #REGa is zero.
  $6D75,$01 Stash #REGhl on the stack.
  $6D76,$03 #REGde=#N($0021,$04,$04).
  $6D79,$01 #REGa=#REGl.
  $6D7A,$02,b$01 Keep only bits 0-4.
  $6D7C,$02 #REGa+=#N$02.
  $6D7E,$01 #REGa-=#REGc.
  $6D7F,$01 Stash #REGaf on the stack.
  $6D80,$03 #REGhl-=#REGde (with carry).
  $6D83,$02 Decrease counter by one and loop back to #R$6D80 until counter is zero.
  $6D85,$01 Restore #REGaf from the stack.
  $6D86,$03 Call #R$6926 if #REGa is greater than #N$00.
  $6D89,$01 Restore #REGhl from the stack.
  $6D8A,$01 #REGa=#REGc.
  $6D8B,$02 #REGa-=#N$02.
  $6D8D,$01 #REGb=#REGa.
  $6D8E,$02 Jump to #R$6DA4 if #REGa is less than #REGa.
  $6D90,$02 Jump to #R$6DA4 if #REGa is zero.
  $6D92,$03 #REGde=#N($001F,$04,$04).
  $6D95,$01 #REGa=#REGl.
  $6D96,$01 Merge the bits from #REGe.
  $6D97,$01 #REGa+=#REGc.
  $6D98,$02 Compare #REGa with #N$22.
  $6D9A,$01 Stash #REGaf on the stack.
  $6D9B,$03 #REGhl-=#REGde (with carry).
  $6D9E,$02 Decrease counter by one and loop back to #R$6D9B until counter is zero.
  $6DA0,$01 Restore #REGaf from the stack.
  $6DA1,$03 Call #R$6926 if #REGa is less than #N$00.
  $6DA4,$01 Restore #REGbc from the stack.
  $6DA5,$01 Increment #REGc by one.
  $6DA6,$02
  $6DA8,$02 Jump to #R$6D3A if ?? is not equal to #N$00.
  $6DAA,$07 Jump to #R$7030 if *#R$66F3 is not active.
  $6DB1,$03 #REGa=*#R$66A5.
  $6DB4,$02,b$01 Keep only bits 0-1.
  $6DB6,$03 Jump to #R$7030 if the result is not equal to zero.
  $6DB9,$02 Set sound loop counter to #N$08.
@ $6DBB label=GameOver_SoundLoop
  $6DBB,$01 #REGa=#REGb.
  $6DBC,$02 #REGa+=#N$19.
  $6DBE,$02,b$01 Keep only bits 3-4.
  $6DC0,$01 Disable interrupts.
  $6DC1,$02 Set border to the colour held by #REGa.
  $6DC3,$01 Stash #REGbc on the stack.
@ $6DC4 label=GameOver_SoundDelay
  $6DC4,$02 Decrease the delay loop counter by one and loop back to #R$6DC4
. until the counter is zero.
  $6DC6,$01 Restore #REGbc from the stack.
  $6DC7,$02 Decrease counter by one and loop back to #R$6DBB until counter is zero.
  $6DC9,$03 Turn the speaker off.
  $6DCC,$03 Jump to #R$7030.

c $6DCF Handler: Shield
@ $6DCF label=Handler_Shield
E $6DCF Continue on to #R$6EF8.
  $6DCF,$03 Call #R$6C9D.
  $6DD2,$03 #REGa=*#R$66ED.
  $6DD5,$01 Stash the player position on the stack.
  $6DD6,$07 Jump to #R$6DE8 if *#R$6694 isn't active.
N $6DDD The players shield is active, so decrease the shield timer.
  $6DDD,$01 Decrease *#R$6694 by one.
N $6DDE Check if the timer has "wrapped around" to #N$FF i.e. finished counting
. down.
  $6DDE,$04 Jump to #R$6E20 if bit 7 of *#R$6694 is set.
  $6DE2,$04 Write #N$00 ("inactive") to *#R$6693.
  $6DE6,$02 Jump to #R$6E20.
N $6DE8 Check for shield activation player inputs.
N $6DE8 Start by checking if the game is running in demo mode or not?
@ $6DE8 label=Shield_CheckDemoMode
  $6DE8,$06 Jump to #R$6DF6 if *#R$66F3 is not active.
N $6DEE Demo mode is active, so use a random number to decide whether to
. activate the shield or not.
  $6DEE,$03 Call #R$670E.
  $6DF1,$03 Jump to #R$6E1B if the generated random number is zero.
  $6DF4,$02 Jump to #R$6E20.
N $6DF6 Check if the control method is the Kempston joystick?
@ $6DF6 label=Shield_CheckKempston
  $6DF6,$07 Jump to #R$6E05 if *#R$66F6 is not the Kempston joystick.
N $6DFD The control method is Kempston joystick, so test for "down" being
. pressed.
  $6DFD,$02 #REGa=read from the Kempston joystick port.
  $6DFF,$02,b$01 Keep only bit 2 ("down").
  $6E01,$02 Jump to #R$6E1B if "down" is being pressed.
M $6DFF,$04 Jump to #R$6E1B if "down" (bit 2) is being pressed.
  $6E03,$02 Jump to #R$6E20.
N $6E05 Check if the control method is the AGF joystick?
@ $6E05 label=Shield_CheckAGF
  $6E05,$04 Jump to #R$6E13 if *#R$66F6 is not the AGF joystick.
N $6E09 The control method is the AGF joystick, so test for "down" being
. pressed.
  $6E09,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $6E0D,$04 Jump to #R$6E1B if "down" ("4") was pressed.
  $6E11,$02 Jump to #R$6E20.
N $6E13 Else, the only control option left is the keyboard.
@ $6E13 label=Shield_CheckKeyboard
  $6E13,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$BF | ENTER | L | K | J | H }
. TABLE#
  $6E17,$02,b$01 Keep only bit 0.
M $6E17,$04 Jump to #R$6E20 if "ENTER" isn't being pressed.
N $6E1B Activate the shield.
@ $6E1B label=Shield_ActivateShield
  $6E1B,$02 Write #N$FF to *#R$6694.
  $6E1D,$03 Write #N$01 to *#R$6693 to activate it.
N $6E20 Play a sound when the shield is active (but not in demo mode).
@ $6E20 label=PlayShieldSound
  $6E20,$07 Jump to #R$6EF8 if *#R$6693 is not active.
  $6E27,$06 Jump to #R$6E40 if *#R$66F3 is active.
N $6E2D Play an iteration of the shield sound effect.
N $6E2D #HTML(#AUDIO(shield.wav)(#INCLUDE(Shield)))
  $6E2D,$03 #REGa=*#R$6694.
  $6E30,$02,b$01 Keep only bits 0-2.
  $6E32,$02 Multiply by #N$04.
  $6E34,$03 #REGhl=#N($00DE,$04,$04).
  $6E37,$01 #REGd=#REGh.
  $6E38,$01 #REGe=#REGa.
  $6E39,$01 #REGhl+=#REGde.
M $6E30,$0A Calculate the sound pitch: #N($00DE,$04,$04) + ((*#R$6694 & #N$07) × #N$04).
  $6E3A,$02 Set the duration in #REGe to #N$04.
  $6E3C,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $6E3F,$01 Disable interrupts.
N $6E40 Draw shield graphic.
@ $6E40 label=DrawShield
  $6E40,$03 #REGhl=*#R$66ED.
  $6E43,$02 #REGh=#N$52.
  $6E45,$02 #REGb=#N$02.
  $6E47,$03 #REGa=*#R$66A6.
  $6E4A,$01 Stash #REGaf on the stack.
  $6E4B,$01 Set the bits from #REGa.
  $6E4C,$03 #REGde=#N($0000,$04,$04).
  $6E4F,$02 Jump to #R$6E62 if #REGhl is not equal to #REGa.
  $6E51,$07 Jump to #R$6E62 if bit 2 of *#R$6694 is not set.
  $6E58,$03 #REGde=#N($0136,$04,$04).
  $6E5B,$05 Jump to #R$6E62 if #REGb is not equal to #N$01.
  $6E60,$02 #REGd=#N$80.
  $6E62,$04 Write #REGde to *#R$6E87.
  $6E66,$04 Write #REGde to *#R$6E9A.
  $6E6A,$01 Restore #REGaf from the stack.
  $6E6B,$01 Increment #REGa by one.
  $6E6C,$01 Stash #REGbc on the stack.
  $6E6D,$01 #REGb=#REGa.
  $6E6E,$01 Stash #REGhl on the stack.
  $6E6F,$03 #REGhl=#R$6E85(#N$6E86).
  $6E72,$03 #REGa=*#R$6694.
  $6E75,$02 Test bit 2 of #REGa.
  $6E77,$02 #REGa=#N$7E.
  $6E79,$02 Jump to #R$6E7D if #REGa is equal to #N$7E.
  $6E7B,$02 #REGa+=#N$40.
  $6E7D,$02 #REGa+=#N$08.
  $6E7F,$02 Decrease counter by one and loop back to #R$6E7D until counter is zero.
  $6E81,$01 Write #REGa to *#REGhl.
  $6E82,$01 Restore #REGhl from the stack.
  $6E83,$02 #REGb=#N$06.
  $6E85,$02 Set bit 0 of *#REGhl.
  $6E87,$02 Write #N$01 to *#REGhl.
  $6E89,$01 Increment #REGh by one.
  $6E8A,$02 Decrease counter by one and loop back to #R$6E85 until counter is zero.
  $6E8C,$03 #REGa=*#R$6E85(#N$6E86).
  $6E8F,$03 Write #REGa to *#R$6E98(#N$6E99).
  $6E92,$02 Set bit 5 of #REGl.
  $6E94,$02 #REGh=#N$50.
  $6E96,$02 #REGb=#N$08.
  $6E98,$02 Set bit 0 of *#REGhl.
  $6E9A,$02 Write #N$01 to *#REGhl.
  $6E9C,$01 Increment #REGh by one.
  $6E9D,$02 Decrease counter by one and loop back to #R$6E98 until counter is zero.
  $6E9F,$03 #REGhl=*#R$66ED.
  $6EA2,$02 #REGh=#N$52.
  $6EA4,$02 Increment #REGl by two.
  $6EA6,$01 Restore #REGbc from the stack.
  $6EA7,$03 #REGa=*#R$66A6.
  $6EAA,$01 Stash #REGaf on the stack.
  $6EAB,$02 #REGa-=#N$07.
  $6EAD,$02 Decrease counter by one and loop back to #R$6E4B until counter is zero.
  $6EAF,$01 Restore #REGaf from the stack.
  $6EB0,$03 #REGa=*#R$6694.
  $6EB3,$02 Test bit 2 of #REGa.
  $6EB5,$03 #REGhl=#R$6014.
  $6EB8,$02 Jump to #R$6EBD if #REGl is equal to #N$52.
  $6EBA,$03 #REGhl=#R$601D.
  $6EBD,$03 #REGde=#R$617B.
  $6EC0,$02 #REGc=#N$09.
  $6EC2,$02 LDIR.
  $6EC4,$06 Jump to #R$6EE1 if *#R$66A6 is zero.
  $6ECA,$01 #REGb=*#R$66A6.
  $6ECB,$01 Stash #REGbc on the stack.
  $6ECC,$03 #REGhl=#R$617B.
  $6ECF,$02 #REGb=#N$09.
  $6ED1,$02 Shift *#REGhl left (with carry).
  $6ED3,$01 Increment #REGhl by one.
  $6ED4,$02 Test bit 7 of *#REGhl.
  $6ED6,$01 Decrease #REGhl by one.
  $6ED7,$02 Jump to #R$6EDB if #REGhl is equal to #REGa.
  $6ED9,$02 Set bit 0 of *#REGhl.
  $6EDB,$01 Increment #REGhl by one.
  $6EDC,$02 Decrease counter by one and loop back to #R$6ED1 until counter is zero.
  $6EDE,$01 Restore #REGbc from the stack.
  $6EDF,$02 Decrease counter by one and loop back to #R$6ECB until counter is zero.
  $6EE1,$04 #REGde=*#R$66ED.
  $6EE5,$02 #REGd=#N$50.
  $6EE7,$03 #REGhl=#R$617B.
  $6EEA,$02 Set counter in #REGb for #N$03 pixel rows.
@ $6EEC label=DrawPlayersShip_Loop
  $6EEC,$02 Stash the row counter and position on the stack.
  $6EEE,$03 #REGbc=#N($0003,$04,$04).
  $6EF1,$02 LDIR.
  $6EF3,$01 Restore #REGde from the stack.
  $6EF4,$01 Increment #REGd by one.
  $6EF5,$01 Restore #REGbc from the stack.
  $6EF6,$02 Decrease counter by one and loop back to #R$6EEC until counter is zero.

c $6EF8 Handler: Ship Movement
@ $6EF8 label=Handler_ShipMovement
  $6EF8,$02 Set #REGh to #N$50 (screen buffer base).
  $6EFA,$06 Jump to #R$6F05 if *#R$66F3 is active.
  $6F00,$03 #REGa=*#R$66F4.
  $6F03,$02 Jump to #R$6F37.
N $6F05 Check if the control method is the Kempston joystick?
@ $6F05 label=ShipMovement_CheckKempston
  $6F05,$01 Disable interrupts.
  $6F06,$07 Jump to #R$6F1C if *#R$66F6 is not the Kempston joystick.
N $6F06 The control method is Kempston joystick, so test for "left" or "right"
. being pressed.
  $6F0D,$02 #REGa=read from the Kempston joystick port.
  $6F0F,$02,b$01 Keep only bits 0-1 ("right" and "left").
  $6F11,$04 Jump to #R$6F43 if "left" is being pressed.
  $6F15,$05 Jump to #R$6FDD if "right" is being pressed.
  $6F1A,$02 Jump to #R$6F40.
N $6F1C Check if the control method is the AGF joystick?
@ $6F1C label=ShipMovement_CheckAGF
  $6F1C,$04 Jump to #R$6F33 if *#R$66F6 is not the AGF joystick.
N $6F20 The control method is the AGF joystick, so test for "left" being
. pressed.
  $6F20,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$F7 | 1 | 2 | 3 | 4 | 5 }
. TABLE#
  $6F24,$04 Jump to #R$6F43 if "left" ("5") is being pressed.
N $6F28 Now test for "right" being pressed.
  $6F28,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $6F2C,$05 Jump to #R$6FDD if "right" ("8") is being pressed.
  $6F31,$02 Jump to #R$6F40.
N $6F33 Else, the only control option left is the keyboard.
@ $6F33 label=ShipMovement_CheckKeyboard
  $6F33,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FE | SHIFT | Z | X | C | V }
. TABLE#
N $6F37 The demo mode handler also lands here, and just checks the bits of the
. given random number rather than actual key presses.
@ $6F37 label=Ship_DemoMovement
  $6F37,$04 Jump to #R$6F43 if "SHIFT" is being pressed.
  $6F3B,$05 Jump to #R$6FDD if "Z" is being pressed.
N $6F40 Handle when there's been no movement.
@ $6F40 label=Ship_NoMovement
  $6F40,$01 Restore the player position from the stack.
  $6F41,$02 Jump to #R$6F93.

c $6F43 Handler: Move Ship Left
@ $6F43 label=Handler_MoveShip_Left
E $6F43 Continue on to #R$6F93.
  $6F43,$01 Restore the player position from the stack.
  $6F44,$04 Jump to #R$6F52 if #REGa is not equal to #N$C0.
  $6F48,$07 Jump to #R$6F93 if *#R$66A6 is equal to #N$03.
  $6F4F,$04 #REGl=*#R$66ED.
  $6F53,$02 #REGb=#N$02.
  $6F55,$02 Stash #REGbc and #REGhl on the stack.
  $6F57,$02 #REGb=#N$08.
  $6F59,$02 Stash #REGbc and #REGhl on the stack.
  $6F5B,$02 #REGb=#N$03.
  $6F5D,$02 Shift *#REGhl left (with carry).
  $6F5F,$01 Increment #REGhl by one.
  $6F60,$02 Test bit 7 of *#REGhl.
  $6F62,$01 Decrease #REGhl by one.
  $6F63,$02 Jump to #R$6F67 if #REGhl is equal to #N$03.
  $6F65,$02 Set bit 0 of *#REGhl.
  $6F67,$01 Increment #REGhl by one.
  $6F68,$02 Decrease counter by one and loop back to #R$6F5D until counter is zero.
  $6F6A,$01 Decrease #REGhl by one.
  $6F6B,$02 Reset bit 0 of *#REGhl.
  $6F6D,$01 Restore #REGhl from the stack.
  $6F6E,$01 Increment #REGh by one.
  $6F6F,$01 Restore #REGbc from the stack.
  $6F70,$02 Decrease counter by one and loop back to #R$6F59 until counter is zero.
  $6F72,$01 Restore #REGhl from the stack.
  $6F73,$02 Set bit 5 of #REGl.
  $6F75,$01 Restore #REGbc from the stack.
  $6F76,$02 Decrease counter by one and loop back to #R$6F55 until counter is zero.
  $6F78,$07 Jump to #R$6F82 if *#R$66A6 is equal to #N$07.
  $6F7F,$01 Increment #REGa by one.
  $6F80,$02 Jump to #R$6F83.
  $6F82,$01 #REGa=#N$00.
  $6F83,$03 Write #REGa to *#R$66A6.
  $6F86,$01 Set the bits from #REGa.
  $6F87,$03 #REGa=*#R$66ED.
  $6F8A,$02 Jump to #R$6F8D if #REGa is not equal to #REGa.
  $6F8C,$01 Decrease #REGa by one.
  $6F8D,$03 Write #REGa to *#R$66ED.
  $6F90,$03 Call #R$6C9D.

c $6F93 Handler: Update Ship Attributes
@ $6F93 label=Handler_UpdateShipPosition
  $6F93,$07 Jump to #R$7030 if *#R$66A4 is not zero.
  $6F9A,$03 #REGhl=*#R$66ED.
  $6F9D,$06 Jump to #R$6FAE if *#R$6693 is zero.
  $6FA3,$07 Jump to #R$6FAE if bit 2 of *#R$6694 is not set.
  $6FAA,$02 #REGa=#N$07.
  $6FAC,$02 Jump to #R$6FB0.
  $6FAE,$02 #REGa=#COLOUR$46.
  $6FB0,$02 #REGb=#N$02.
  $6FB2,$02 Stash #REGbc and #REGhl on the stack.
  $6FB4,$01 Decrease #REGl by one.
  $6FB5,$01 Stash #REGaf on the stack.
  $6FB6,$04 Jump to #R$6FBE if #REGa is equal to #COLOUR$46.
  $6FBA,$04 Jump to #R$6FC0 if #REGa is not equal to #INK$07.
  $6FBE,$02 Write #N$00 to *#REGhl.
  $6FC0,$01 Restore #REGaf from the stack.
  $6FC1,$01 Increment #REGl by one.
  $6FC2,$02 #REGb=#N$03.
  $6FC4,$01 Write #REGa to *#REGhl.
  $6FC5,$01 Increment #REGhl by one.
  $6FC6,$02 Decrease counter by one and loop back to #R$6FC4 until counter is zero.
  $6FC8,$01 Stash #REGaf on the stack.
  $6FC9,$05 Jump to #R$6FD2 if *#REGhl is equal to #COLOUR$46.
  $6FCE,$04 Jump to #R$6FD4 if *#REGhl is not equal to #INK$07.
  $6FD2,$02 Write #N$00 to *#REGhl.
  $6FD4,$02 Restore #REGaf and #REGhl from the stack.
  $6FD6,$02 Set bit 5 of #REGl.
  $6FD8,$01 Restore #REGbc from the stack.
  $6FD9,$02 Decrease counter by one and loop back to #R$6FB2 until counter is zero.
  $6FDB,$02 Jump to #R$7030.

c $6FDD Handler: Move Ship Right
@ $6FDD label=Handler_MoveShip_Right
  $6FDD,$01 Restore the player position from the stack.
  $6FDE,$02 Compare the player position with #N$DD.
  $6FE0,$03 #REGa=*#R$66A6.
  $6FE3,$02 Jump to #R$6FE8 if the player position is not equal to #N$DD.
  $6FE5,$03 Jump to #R$6F93 if *#R$66A6 is zero.
  $6FE8,$01 Set the bits from #REGa.
  $6FE9,$02 Jump to #R$6FEE if #REGa is equal to #REGa.
  $6FEB,$01 Decrease #REGa by one.
  $6FEC,$02 Jump to #R$6FF0.
  $6FEE,$02 #REGa=#N$07.
  $6FF0,$03 Write #REGa to *#R$66A6.
  $6FF3,$02 Compare #REGa with #N$07.
  $6FF5,$03 #REGa=*#R$66ED.
  $6FF8,$02 Jump to #R$6FFE if #REGa is not equal to #N$07.
  $6FFA,$01 Increment #REGa by one.
  $6FFB,$03 Write #REGa to *#R$66ED.
  $6FFE,$01 Stash #REGaf on the stack.
  $6FFF,$02 #REGa+=#N$02.
  $7001,$01 #REGl=#REGa.
  $7002,$02 #REGb=#N$02.
  $7004,$02 Stash #REGbc and #REGhl on the stack.
  $7006,$02 #REGb=#N$08.
  $7008,$02 Stash #REGbc and #REGhl on the stack.
  $700A,$02 #REGb=#N$03.
  $700C,$02 Shift *#REGhl right.
  $700E,$01 Decrease #REGhl by one.
  $700F,$02 Test bit 0 of *#REGhl.
  $7011,$02 Reset bit 0 of *#REGhl.
  $7013,$01 Increment #REGhl by one.
  $7014,$02 Jump to #R$7018 if #REGhl is equal to #N$03.
  $7016,$02 Set bit 7 of *#REGhl.
  $7018,$01 Decrease #REGhl by one.
  $7019,$02 Decrease counter by one and loop back to #R$700C until counter is zero.
  $701B,$01 Increment #REGhl by one.
  $701C,$02 Reset bit 7 of *#REGhl.
  $701E,$01 Restore #REGhl from the stack.
  $701F,$01 Increment #REGh by one.
  $7020,$01 Restore #REGbc from the stack.
  $7021,$02 Decrease counter by one and loop back to #R$7008 until counter is zero.
  $7023,$01 Restore #REGhl from the stack.
  $7024,$02 Set bit 5 of #REGl.
  $7026,$01 Restore #REGbc from the stack.
  $7027,$02 Decrease counter by one and loop back to #R$7004 until counter is zero.
  $7029,$01 Restore #REGaf from the stack.
  $702A,$03 Call #R$6C9D.
  $702D,$03 Jump to #R$6F93.

c $7030 Handler: Player Bullets
@ $7030 label=Handler_PlayerBullets
  $7030,$03 #REGhl=#R$6695.
  $7033,$05 Jump to #R$703A if *#R$6695 is not equal to #N$03.
N $7038 Reset #R$6695 back to #N$00 (#N$FF+#N$01) to start the counter again.
  $7038,$02 Write #N$FF to *#R$6695.
N $703A Increment the counter.
@ $703A label=PlayerBullets_UpdateLimiter
  $703A,$01 Increment *#R$6695 by one.
N $703B Start processing the bullets.
  $703B,$03 #REGhl=#R$6697.
N $703E Modified by the code at #R$741E.
  $703E,$02 #HTML(Set a counter in #REGb for <em>nn</em> bullet(s).)
@ $7040 label=PlayerBullets_Loop
  $7040,$02 Stash the bullet data pointer and bullet counter on the stack.
  $7042,$03 Load the bullet position into #REGde.
  $7045,$05 Jump to #R$70E7 if the bullet is active.
N $704A Check if the player can fire a new bullet.
  $704A,$0E Jump to #R$714E if either *#R$66A4 or *#R$6693 are active.
N $7058 Load the previous fire button state into #REGc (used for a debounce
. check at #R$708D).
  $7058,$04 #REGc=*#R$6696.
N $705C Check if the game is running in demo mode.
  $705C,$06 Jump to #R$7069 if *#R$66F3 is not active.
N $7062 The game is in demo mode, so generate random firing action.
  $7062,$03 Call #R$670E.
  $7065,$02,b$01 Keep only bits 0-3.
M $7062,$04 Generate a random number between #N$00-#N$0F.
  $7067,$02 Jump to #R$7085.
N $7069 The game is not in demo mode, so read the player fire button input.
@ $7069 label=PlayerBullets_ReadInput
  $7069,$01 Disable interrupts.
N $706A Check if the control method is the Kempston joystick?
  $706A,$07 Jump to #R$7077 if *#R$66F6 is not the Kempston joystick.
N $7071 The control method is Kempston joystick, so test the fire button.
  $7071,$02 #REGa=read from the Kempston joystick port.
  $7073,$02,b$01 Keep only bit 4 (the fire button input).
  $7075,$02 Jump to #R$708A.
N $7077 Check if the control method is the AGF joystick?
@ $7077 label=PlayerBullets_AGF
  $7077,$04 Jump to #R$707F if *#R$66F6 is not the AGF joystick.
  $707B,$02 #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $707D,$02 Jump to #R$7081.
N $707F Else, the only control option left is the keyboard.
@ $707F label=PlayerBullets_Keyboard
  $707F,$02 #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$7F | SPACE | FULL-STOP | M | N | B }
. TABLE#
@ $7081 label=PlayerBullets_ReadKeyboard
  $7081,$02 Read from the keyboard.
  $7083,$02,b$01 Keep only bit 0 (the fire button input).
@ $7085 label=PlayerBullets_ProcessInput
  $7085,$02 Set #REGa to #N$10 (the fire button was pressed).
  $7087,$02 Jump to #R$708A if the fire button was pressed.
  $7089,$01 Set #REGa to #N$00 (the fire button wasn't pressed).
@ $708A label=PlayerBullets_StoreInput
  $708A,$03 Write the current fire button state to *#R$6696.
N $708D Is the fire button state unchanged since the last time this routine
. ran?
  $708D,$04 Jump to #R$714E if the current fire button state matches the
. previous fire button state.
  $7091,$04 Also jump to #R$714E if the fire button wasn't pressed.
N $7095 Skip playing the firing sound if this is the demo mode.
  $7095,$06 Jump to #R$70B8 if *#R$66F3 is active.
  $709B,$01 Stash the bullet position on the stack.
N $709C #HTML(#AUDIO(bullets.wav)(#INCLUDE(Bullets)))
  $709C,$02 Set a counter in #REGb for #N$16 sound iterations.
  $709E,$03 Set the initial sound pitch to #N($0052,$04,$04).
@ $70A1 label=PlayerBullets_SoundLoop
  $70A1,$02 Stash the sound counter and pitch on the stack.
  $70A3,$05 Enable the speaker (bit 4) and disable interrupts.
  $70A8,$03 Set the sound duration to #N($0001,$04,$04).
  $70AB,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $70AE,$01 Disable interrupts.
  $70AF,$01 Restore the pitch value from the stack.
  $70B0,$04 Increment the pitch by four.
  $70B4,$01 Restore the sound counter from the stack.
  $70B5,$02 Decrease the sound counter by one and loop back to #R$70A1 until
. the counter is zero.
  $70B7,$01 Restore the bullet position from the stack.
N $70B8 Check if the bullet spawning position is clear in the attribute buffer.
@ $70B8 label=PlayerBullets_CheckSpawn
  $70B8,$06 Set #REGl to *#R$66ED-#N$1F to calculate the bullet spawn position.
  $70BE,$02 Set #REGh to #N$5A as the bullets always spawn on the same row.
  $70C0,$05 Jump to #R$714E if the attribute at this position isn't #INK$00
. (i.e. it is occupied).
N $70C5 The bullet position isn't already occupied, so colour this attribute
. block.
  $70C5,$02 Write #COLOUR$47 to the bullet attribute buffer position.
  $70C7,$03 Call #R$6704.
  $70CA,$02 Set bit 2 of #REGh.
  $70CC,$01 Stash #REGhl on the stack.
  $70CD,$03 #REGa=*#R$66A6.
  $70D0,$01 Set the bits from #REGa.
  $70D1,$01 #REGb=#REGa.
  $70D2,$02 #REGa=#N$01.
  $70D4,$02 Jump to #R$70DA if #REGhl is equal to #REGa.
@ $70D6 label=PlayerBullets_FindSlot_Loop
  $70D6,$02 Shift #REGa left (with carry).
  $70D8,$02 Decrease counter by one and loop back to #R$70D6 until counter is zero.
@ $70DA label=PlayerBullets_Store
  $70DA,$02 Restore #REGde and #REGbc from the stack.
  $70DC,$02 Stash #REGbc and #REGde on the stack.
  $70DE,$03 #REGhl=#R$669E.
@ $70E1 label=PlayerBullets_FindSlot
  $70E1,$01 Increment #REGhl by one.
  $70E2,$02 Decrease counter by one and loop back to #R$70E1 until counter is zero.
  $70E4,$01 Write #REGa to *#REGhl.
  $70E5,$02 Jump to #R$7147.
N $70E7 Update active bullet position.
@ $70E7 label=PlayerBullets_UpdateActive
  $70E7,$03 #REGhl=#R$669E.
  $70EA,$01 Restore the bullet counter from the stack.
  $70EB,$01 But also stash the bullet counter back on the stack.
@ $70EC label=LocateBulletData_Loop
  $70EC,$01 Advance to the next bullet data slot.
  $70ED,$02 Decrease the bullet counter by one and loop back to #R$70EC until
. the current bullet slot is found.
  $70EF,$01 Load the bullet state into #REGa.
  $70F0,$02 Stash the bullet state and bullet position on the stack.
  $70F2,$03 Call #R$66F7.
  $70F5,$03 Fetch the current attribute applied to the bullet, check if it is:
. #COLOUR$47?
  $70F8,$01 Restore the bullet position from the stack.
  $70F9,$02 Jump to #R$7134 if the bullet has hit something, i.e. is no longer
. #COLOUR$47.
  $70FB,$04 Jump to #R$710C if bit 2 of #REGd is not set.
N $70FF Clear the old bullet position and draw it at a new position.
  $70FF,$01 Restore #REGaf from the stack.
  $7100,$02 Reset bit 2 of #REGd.
  $7102,$01 Stash #REGde on the stack.
  $7103,$02 Set a counter in #REGb for #N$04 pixel lines.
@ $7105 label=PlayerBullets_EraseLoop
  $7105,$01 Write #REGa to *#REGde.
  $7106,$01 Move down one pixel line in the screen buffer.
  $7107,$02 Decrease the line counter by one and loop back to #R$7105 until all
. #N$04 lines of the bullet have been erased.
  $7109,$01 Set #REGa to #N$00 as we're clearing the bullet graphic.
  $710A,$02 Jump to #R$7147.
N $710C Clear the old bullet from the screen.
@ $710C label=PlayerBullets_ClearOld
  $710C,$02 Set a counter in #REGb for #N$04 pixel lines.
  $710E,$01 Set #REGa to #N$00 as we're clearing the bullet graphic.
@ $710F label=PlayerBullets_ClearLoop
  $710F,$01 Write the empty data to the screen buffer.
  $7110,$01 Move down one pixel line in the screen buffer.
  $7111,$02 Decrease the line counter by one and loop back to #R$710F until all
. #N$04 lines of the bullet have been erased.
  $7113,$03 Call #R$66F7.
  $7116,$01 Exchange the #REGde and #REGhl registers.
  $7117,$02 Write #N$00 to *#REGhl.
  $7119,$05 Jump to #R$712B if #REGh is not equal to #N$58.
  $711E,$01 #REGa=#REGl.
  $711F,$02,b$01 Keep only bits 5-7.
  $7121,$04 Jump to #R$712B if #REGa is not equal to #N$20.
  $7125,$01 Restore the bullet state from the stack.
  $7126,$03 Set the bullet position to #N($0000,$04,$04) (inactive).
  $7129,$02 Jump to #R$714E.
N $712B Draw the bullet in the new position.
@ $712B label=PlayerBullets_MoveUp
  $712B,$05 Move up one row in the attribute buffer (subtract #N$20).
  $7130,$04 Jump to #R$713D if the new position is "clear" (i.e. the bullet
. hasn't hit anything/ there's no attribute applied at this attribute buffer
. location).
N $7134 The bullet has hit something so handle the collision.
@ $7134 label=PlayerBullets_Collision
  $7134,$03 Call #R$7159.
  $7137,$01 Restore the bullet state from the stack.
  $7138,$03 Set the bullet position to #N($0000,$04,$04) (inactive).
  $713B,$02 Jump to #R$714E.

@ $713D label=PlayerBullets_SetNewPosition
  $713D,$02 Mark the new position with the attribute #COLOUR$47.
  $713F,$03 Call #R$6704.
  $7142,$01 Exchange the #REGde and #REGhl registers.
  $7143,$02 Set bit 2 of #REGd.
  $7145,$01 Restore the bullet state from the stack.
  $7146,$01 Stash the new bullet position on the stack.
N $7147 Draw the bullet graphic.
@ $7147 label=PlayerBullets_DrawNew
  $7147,$02 Set a counter in #REGb for #N$04 pixel lines.
@ $7149 label=PlayerBullets_DrawLoop
  $7149,$01 Write #REGa to *#REGde.
  $714A,$01 Move down one pixel line in the screen buffer.
  $714B,$02 Decrease the line counter by one and loop back to #R$7149 until all
. #N$04 lines of the bullet have been drawn.
  $714D,$01 Restore the original bullet position from the stack.
N $714E Housekeeping; move onto the next bullet.
@ $714E label=PlayerBullets_NextBullet
  $714E,$02 Restore the bullet counter and bullet data pointer from the stack.
  $7150,$04 Store the bullet position back to the data table.
  $7154,$01 Decrease the bullet counter by one.
  $7155,$03 Jump to #R$7040 until all of the bullets have been processed.
  $7158,$01 Return.

c $7159
  $7159,$03 #REGa=*#R$66F1.
  $715C,$02,b$01 Keep only bit 1.
  $715E,$02 Jump to #R$7176 if the result is not zero.
M $7159,$07 Jump to #R$7176 if this *#R$66F1 is either #N$02 or #N$03.
  $7160,$04 #REGde=*#R$667D.
  $7164,$04 Jump to #R$7176 if *#REGhl is not equal to #REGd.
  $7168,$01 Increment #REGhl by one.
  $7169,$01 #REGa=*#REGhl.
  $716A,$01 Decrease #REGhl by one.
  $716B,$03 Jump to #R$717F if #REGa is equal to #REGe.
  $716E,$01 Decrease #REGhl by one.
  $716F,$01 #REGa=*#REGhl.
  $7170,$01 Decrease #REGhl by one.
  $7171,$03 Jump to #R$717F if #REGa is equal to #REGe.
  $7174,$02 Increment #REGhl by two.
  $7176,$05 Jump to #R$71BE if *#REGhl is not equal to #N$06.
  $717B,$01 Decrease #REGhl by one.
  $717C,$03 #REGhl-=#REGbc.
  $717F,$01 Stash #REGhl on the stack.
  $7180,$03 Call #R$6704.
  $7183,$01 Exchange the #REGde and #REGhl registers.
  $7184,$03 #REGhl=#R$65DD.
  $7187,$03 #REGa=*#R$66F1.
  $718A,$02,b$01 Keep only bits 1-2.
  $718C,$02 #REGb=#N$08.
  $718E,$02 Jump to #R$7192 if #REGhl is not equal to #REGa.
  $7190,$02 #REGb=#N$0F.
  $7192,$04 Jump to #R$719C if *#REGhl is equal to #REGe.
  $7196,$02 Increment #REGhl by two.
  $7198,$02 Decrease counter by one and loop back to #R$7192 until counter is zero.
  $719A,$01 Restore #REGhl from the stack.
  $719B,$01 Return.

  $719C,$01 Increment #REGhl by one.
  $719D,$01 Stash #REGde on the stack.
  $719E,$01 #REGd=*#REGhl.
  $719F,$02 Reset bit 7 of #REGd.
  $71A1,$01 #REGa=#REGd.
  $71A2,$01 Restore #REGde from the stack.
  $71A3,$03 Jump to #R$71A8 if #REGa is equal to #REGd.
  $71A6,$02 Jump to #R$7197.

  $71A8,$02 Write #N$00 to *#REGhl.
  $71AA,$01 Restore #REGde from the stack.

N $71AB Locate an empty explosion slot.
N $71AB Noting that ... this doesn't check for an "end" so has the potential to
. overwrite data!
  $71AB,$03 #REGhl=#R$66D5.
  $71AE,$04 Jump to #R$71B7 if the active flag of this slot is marked as
. inactive.
  $71B2,$03 Move to the next set of explosion data.
  $71B5,$02 Jump back to #R$71AE.
N $71B7 Activate this explosion slot.
@ $71B7 label=ActivateExplosion
  $71B7,$02 Activate this explosion slot.
  $71B9,$04 Write the position held by #REGde to the explosion slot data.
  $71BD,$01 Return.

  $71BE,$07 Jump to #R$71EC if bit 1 of *#R$66F1 is not set.
  $71C5,$01 #REGa=*#REGhl.
  $71C6,$04 Jump to #R$71D1 if #REGa is equal to #N$43.
  $71CA,$04 Jump to #R$71D1 if #REGa is equal to #N$41.
  $71CE,$03 Return if #REGa is not equal to #N$05.
  $71D1,$05 Return if *#R$66F3 is active.
  $71D6,$02 #REGb=#N$18.
  $71D8,$03 #REGhl=#N($0122,$04,$04).
  $71DB,$02 Stash #REGbc and #REGhl on the stack.
  $71DD,$03 #REGde=#N($0001,$04,$04).
  $71E0,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $71E3,$01 Disable interrupts.
  $71E4,$01 Restore #REGhl from the stack.
  $71E5,$03 Increment #REGhl by three.
  $71E8,$01 Restore #REGbc from the stack.
  $71E9,$02 Decrease counter by one and loop back to #R$71DB until counter is zero.
  $71EB,$01 Return.

  $71EC,$03 Return if #REGa is not equal to #N$04.
  $71EF,$05 Jump to #R$71F8 if *#REGhl is not equal to #N$01.
  $71F4,$02 Write #N$40 to *#REGhl.
  $71F6,$02 Jump to #R$721E.
  $71F8,$04 Jump to #R$7200 if #REGa is not equal to #N$0F.
  $71FC,$02 Write #N$01 to *#REGhl.
  $71FE,$02 Jump to #R$7229.

c $7200
  $7200,$04 Jump to #R$7223 if #REGa is not equal to #N$02.
  $7204,$01 Stash #REGhl on the stack.
  $7205,$04 #REGl-=#N$20.
  $7209,$01 #REGa=*#REGhl.
  $720A,$04 Jump to #R$721B if #REGa is not equal to #N$10.
  $720E,$02 #REGh=#N$4D.
  $7210,$02 #REGb=#N$03.
  $7212,$03 #REGde=#R$61EF.
  $7215,$01 #REGa=*#REGde.
  $7216,$01 Write #REGa to *#REGhl.
  $7217,$01 Increment #REGh by one.
  $7218,$01 Decrease #REGde by one.
  $7219,$02 Decrease counter by one and loop back to #R$7215 until counter is zero.
  $721B,$01 Restore #REGhl from the stack.
  $721C,$02 Write #N$00 to *#REGhl.
  $721E,$03 #HTML(#REGde=<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html">#N$3D00</a>.)
  $7221,$02 Jump to #R$722C.

  $7223,$04 Jump to #R$7245 if #REGa is not equal to #N$10.
  $7227,$02 Write #N$02 to *#REGhl.
  $7229,$03 #REGde=#R$61EB.
  $722C,$02 #REGh=#N$48.
  $722E,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $7230,$02 Copy the UDG data to the screen buffer.
  $7232,$01 Move to the next UDG graphic data byte.
  $7233,$01 Move down one pixel line in the screen buffer.
  $7234,$02 Decrease the line counter by one and loop back to #R$7230 until all
. #N$08 lines of the UDG character have been drawn.
  $7236,$05 Write #N$35 to *#R$652E.
  $723B,$03 Call #R$67B6.
  $723E,$03 Call #R$67A9.
  $7241,$03 Call #R$681C.
  $7244,$01 Return.

  $7245,$03 Return if #REGa is not equal to #N$40.
  $7248,$02 Reset bit 5 of #REGl.
  $724A,$04 Return if *#REGhl is not equal to #N$42.
  $724E,$05 Write #N$01 to *#R$66D3.
  $7253,$01 Return.

c $7254
  $7254,$08 Jump to #R$730D if *#R$66A4 is not equal to #N$02.
  $725C,$07 Jump to #R$7277 if *#R$66F1 is not equal to #N$04.
  $7263,$03 #REGhl=#R$65DD.
  $7266,$02 #REGb=#N$08.
  $7268,$01 Stash #REGbc on the stack.
  $7269,$01 #REGe=*#REGhl.
  $726A,$01 Increment #REGhl by one.
  $726B,$01 #REGd=*#REGhl.
  $726C,$01 Increment #REGhl by one.
  $726D,$01 Stash #REGhl on the stack.
  $726E,$05 Call #R$7564 if bit 6 of #REGd is active.
  $7273,$02 Restore #REGhl and #REGbc from the stack.
  $7275,$02 Decrease counter by one and loop back to #R$7268 until counter is zero.
  $7277,$03 #REGhl=#R$6680.
  $727A,$03 #REGde=#R$6680(#N$6681).
  $727D,$03 #REGbc=#N($006C,$04,$04).
  $7280,$01 Write #REGb to *#REGhl.
  $7281,$02 LDIR.
  $7283,$03 #REGhl=#R$65DD.
  $7286,$03 #REGde=#R$65DD(#N$65DE).
  $7289,$01 Stash #REGhl on the stack.
  $728A,$02 #REGc=#N$1D.
  $728C,$01 Write #REGb to *#REGhl.
  $728D,$02 LDIR.
  $728F,$03 #REGhl=#R$6637.
  $7292,$06 Jump to #R$729D if *#R$66F1 is not zero.
  $7298,$03 #REGhl=#R$65FB.
  $729B,$02 Jump to #R$72AD.
  $729D,$04 Jump to #R$72A6 if #REGa is not equal to #N$01.
  $72A1,$03 #REGhl=#R$6619.
  $72A4,$02 Jump to #R$72AD.
  $72A6,$04 Jump to #R$72AD if #REGa is not equal to #N$04.
  $72AA,$03 #REGhl=#R$6647.
  $72AD,$01 Restore #REGde from the stack.
  $72AE,$03 #REGa=*#R$667F.
  $72B1,$01 Multiply #REGa by #N$02.
  $72B2,$02 Jump to #R$72B7 if #REGa is zero.
  $72B4,$01 #REGc=#REGa.
  $72B5,$02 LDIR.
  $72B7,$05 Write #N$CE to *#R$66ED.
  $72BC,$03 #REGhl=#R$66F0.
N $72BF See #POKE#infinite-lives(Infinite Lives).
  $72BF,$01 Decrease #R$66F0 by one.
  $72C0,$04 Jump to #R$72C9 if *#R$66F0 indicates the player still has lives
. left.
N $72C4 Player has lost all their lives, set the *#R$66F5 flag.
  $72C4,$04 Write #N$01 to *#R$66F5.
  $72C8,$01 Return.

c $72C9 Handler: Level Complete
@ $72C9 label=Handler_LevelComplete
E $72C9 Continue on to #R$730D.
N $72C9 Skip over anything fancy if the game is in demo mode.
  $72C9,$07 Jump to #R$740C if *#R$66F3 is active.
N $72D0 The alien mothership only appears in phase #N$04, so skip over all the
. clearing routine unless this is phase #N$04.
  $72D0,$0A If *#R$66F1 is not equal to #N$04 call #R$67F6 and then jump to
. #R$730A.
N $72DA Clear the mothership phase playfield.
  $72DA,$03 Call #R$681C.
  $72DD,$03 #REGhl=#N$5940 (attribute buffer location).
  $72E0,$02 Set a row counter in #REGc for #N$02 rows.
@ $72E2 label=ClearMothership_RowLoop
  $72E2,$02 Set a column counter in #REGb for #N$E0 columns.
@ $72E4 label=ClearMothership_Loop
  $72E4,$02 Stash the row, column counters and attribute buffer pointer on the
. stack.
  $72E6,$09 Jump to #R$7302 if the attribute byte being pointed to is either
. #COLOUR$02 (#N$02) or #COLOUR$10 (#N$10).
  $72EF,$02 Is the attribute byte being pointed to #COLOUR$16?
  $72F1,$02 Set #REGa to #INK$00 (#N$00).
  $72F3,$02 Jump to #R$72F7 if the attribute byte being pointed to is
. #COLOUR$16.
  $72F5,$02 Set #REGa to #COLOUR$10 (#N$10).
@ $72F7 label=ClearMothership_Write
  $72F7,$01 Write the attribute value in #REGa to the attribute buffer.
  $72F8,$03 Call #R$6704.
  $72FB,$01 Set #REGa to #N$00 (clearing/ empty value).
  $72FC,$02 Set a line counter in #REGb (#N$08 lines in a character block).
@ $72FE label=ClearMothership_ClearLine_Loop
  $72FE,$01 Write the empty data to the screen buffer pointer.
  $72FF,$01 Move down one pixel line in the screen buffer.
  $7300,$02 Decrease the line counter by one and loop back to #R$72FE until all
. #N$08 lines of the character block have been erased.
@ $7302 label=ClearMothership_Next
  $7302,$01 Restore the attribute buffer pointer from the stack.
  $7303,$01 Move to the next attribute byte.
  $7304,$01 Restore the row and column counters from the stack.
  $7305,$02 Decrease the column counter by one and loop back to #R$72E4 until
. all of the column blocks have been erased.
  $7307,$01 Decrease the row counter by one.
  $7308,$02 Jump back to #R$72E2 until all of the rows have been processed.
N $730A Redraw the players ship on the screen.
@ $730A label=LevelComplete_DrawShip
  $730A,$03 Call #R$6CC9.

c $730D Handler: Display Bonus
@ $730D label=Handler_DisplayBonus
  $730D,$06 Return if *#R$66A4 is equal to #N$01.
  $7313,$08 Jump to #R$7407 if *#R$66F1 is not equal to #N$04.
  $731B,$05 Return if *#R$66D3 is zero.

N $7320 #PUSHS #POKES$66F3,$00;$74EF,$00;$74F0,$00;$74F1,$00
. #SIM(start=$74A4,stop=$74B9) #UDGTABLE {
.   #SIM(start=$72C9,stop=$6FDB)
.   #SIM(start=$7320,stop=$737D)#SCR$01(fgkjfdg)
. } TABLE# #POPS
  $7320,$03 Call #R$6720.
  $7323,$03 #REGde=#R$61DB.
  $7326,$03 Call #R$6B31.
  $7329,$03 #REGde=#N$486E (screen buffer location).
  $732C,$03 #REGbc=#N$0445.
  $732F,$03 #REGhl=#R$652B.
  $7332,$03 #REGa=*#R$667F.
  $7335,$02 Shift #REGa right (with carry).
  $7337,$02 #REGa+=#N$34.
  $7339,$01 Write #REGa to *#REGhl.
  $733A,$03 Call #R$676F.
  $733D,$03 #REGhl=#R$652B.
  $7340,$02 #REGe=#N$8E.
  $7342,$02 #REGb=#N$04.
  $7344,$03 Call #R$676F.
  $7347,$02 #REGc=#N$04.
  $7349,$03 #REGhl=#N$4E6B (screen buffer location).
  $734C,$03 #REGde=#N$4F6B (screen buffer location).
  $734F,$02 #REGb=#N$08.
  $7351,$02 Stash #REGbc and #REGhl on the stack.
  $7353,$03 #REGbc=#N($000A,$04,$04).
  $7356,$02 LDIR.
  $7358,$01 Restore #REGde from the stack.
  $7359,$01 Stash #REGde on the stack.
  $735A,$01 Restore #REGhl from the stack.
  $735B,$01 Decrease #REGh by one.
  $735C,$01 Restore #REGbc from the stack.
  $735D,$02 Decrease counter by one and loop back to #R$7351 until counter is zero.
  $735F,$01 Decrease #REGc by one.
  $7360,$02 Jump to #R$7349 if #REGc is not equal to #N$08.
  $7362,$02 #REGc=#N$04.
  $7364,$03 #REGhl=#N$498B (screen buffer location).
  $7367,$03 #REGde=#N$488B (screen buffer location).
  $736A,$02 #REGb=#N$07.
  $736C,$02 Stash #REGbc and #REGhl on the stack.
  $736E,$03 #REGbc=#N($000A,$04,$04).
  $7371,$02 LDIR.
  $7373,$01 Restore #REGde from the stack.
  $7374,$01 Stash #REGde on the stack.
  $7375,$01 Restore #REGhl from the stack.
  $7376,$01 Increment #REGh by one.
  $7377,$01 Restore #REGbc from the stack.
  $7378,$02 Decrease counter by one and loop back to #R$736C until counter is zero.
  $737A,$01 Decrease #REGc by one.
  $737B,$02 Jump to #R$7364 if #REGc is not equal to #N$07.
  $737D,$03 Call #R$67B6.
  $7380,$04 #REGix=#N($0000,$04,$04).
  $7384,$02 #REGb=#N$10.
  $7386,$01 Stash #REGbc on the stack.
  $7387,$02 #REGb=#N$0B.
  $7389,$01 Stash #REGbc on the stack.
  $738A,$02 Stash #REGix on the stack.
  $738C,$03 #REGhl=#N$594A (attribute buffer location).
  $738F,$03 #REGde=#N($030B,$04,$04).
  $7392,$02 #REGa=#N$0C.
  $7394,$01 #REGa-=#REGb.
  $7395,$01 #REGb=#REGa.
  $7396,$01 Stash #REGbc on the stack.
  $7397,$02 #REGa=the low byte of #REGix.
  $7399,$02,b$01 Keep only bits 0-5.
  $739B,$01 #REGb=#REGe.
  $739C,$01 Write #REGa to *#REGhl.
  $739D,$01 Increment #REGhl by one.
  $739E,$02 Decrease counter by one and loop back to #R$739C until counter is zero.
  $73A0,$01 #REGb=#REGd.
  $73A1,$01 Stash #REGbc on the stack.
  $73A2,$01 Write #REGa to *#REGhl.
  $73A3,$04 #REGhl+=#N($0020,$04,$04).
  $73A7,$01 Restore #REGbc from the stack.
  $73A8,$02 Decrease counter by one and loop back to #R$73A1 until counter is zero.
  $73AA,$01 #REGb=#REGe.
  $73AB,$01 Write #REGa to *#REGhl.
  $73AC,$01 Decrease #REGhl by one.
  $73AD,$02 Decrease counter by one and loop back to #R$73AB until counter is zero.
  $73AF,$01 #REGb=#REGd.
  $73B0,$01 Stash #REGbc on the stack.
  $73B1,$01 Write #REGa to *#REGhl.
  $73B2,$05 #REGhl-=#N($0020,$04,$04).
  $73B7,$01 Restore #REGbc from the stack.
  $73B8,$02 Decrease counter by one and loop back to #R$73B0 until counter is zero.
  $73BA,$02 #REGc=#N$21.
  $73BC,$02 #REGhl-=#REGbc.
  $73BE,$02 Increment #REGe by two.
  $73C0,$02 Increment #REGd by two.
  $73C2,$02 Increment #REGix by one.
  $73C4,$01 Restore #REGbc from the stack.
  $73C5,$02 Decrease counter by one and loop back to #R$7396 until counter is zero.
  $73C7,$01 Restore #REGhl from the stack.
  $73C8,$01 Stash #REGhl on the stack.
  $73C9,$01 #REGa=#REGl.
  $73CA,$02,b$01 Keep only bits 0-3.
  $73CC,$01 #REGl=#REGa.
  $73CD,$01 #REGh=#REGb.
  $73CE,$06 Multiply #REGhl by #N$64.
  $73D4,$02 #REGb=#N$07.
  $73D6,$02 Stash #REGbc and #REGhl on the stack.
  $73D8,$03 #REGde=#N($0002,$04,$04).
  $73DB,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $73DE,$01 Disable interrupts.
  $73DF,$01 Restore #REGhl from the stack.
  $73E0,$04 #REGhl+=#N($0014,$04,$04).
  $73E4,$01 Restore #REGbc from the stack.
  $73E5,$02 Decrease counter by one and loop back to #R$73D6 until counter is zero.
  $73E7,$02 Restore #REGix from the stack.
  $73E9,$02 Decrease #REGix by one.
  $73EB,$01 Restore #REGbc from the stack.
  $73EC,$02 Decrease counter by one and loop back to #R$7389 until counter is zero.
  $73EE,$01 Restore #REGbc from the stack.
  $73EF,$02 Decrease counter by one and loop back to #R$7386 until counter is zero.
  $73F1,$03 Call #R$6720.
  $73F4,$03 #REGbc=#N($00C8,$04,$04).
  $73F7,$02 Decrease counter by one and loop back to #R$73F7 until counter is zero.
  $73F9,$01 Decrease #REGc by one.
  $73FA,$02 Jump to #R$73F7 if #REGc is not equal to #N$07.
  $73FC,$03 #REGhl=#R$6897(#N$6898).
  $73FF,$05 Jump to #R$740C if *#REGhl is less than #N$04.
  $7404,$01 Decrease *#REGhl by one.
  $7405,$02 Jump to #R$740C.

c $7407 New Level Check
@ $7407 label=Check_InitialiseLevel
E $7407 Else, continue on to #R$740C.
N $7407 Only initialise a new level when there are no more active aliens left
. on the screen.
  $7407,$05 Return if *#R$667F is not zero.

c $740C Initialise Level
@ $740C label=InitialiseLevel
  $740C,$03 #REGhl=#R$6680.
  $740F,$03 #REGde=#R$6680(#N$6681).
  $7412,$03 #REGbc=#N($006C,$04,$04).
  $7415,$01 Write #REGb to *#REGhl.
  $7416,$02 LDIR.
  $7418,$04 #REGa=*#R$66F1.
  $741C,$02 #REGa-=#N$04.
N $741E Self-modifying code; see #R$703E.
N $741E Point to the bullet count.
  $741E,$03 #REGde=#R$703E(#N$703F).
  $7421,$02 Jump to #R$742D if #REGa is not equal to #N$00.
  $7423,$01 Write #REGa to *#REGhl.
  $7424,$01 Increment #REGa by one.
  $7425,$01 Write #REGa to *#REGde.
  $7426,$01 Stash #REGhl on the stack.
  $7427,$03 Call #R$74A4.
  $742A,$01 Restore #REGhl from the stack.
  $742B,$02 Jump to #R$7431.

@ $742D label=NextPhase
  $742D,$01 Increment *#REGhl by one.
  $742E,$03 Write #N$04 to *#REGde.
  $7431,$01 #REGa=*#REGhl.
  $7432,$01 Stash #REGaf on the stack.
  $7433,$02,b$01 Keep only bits 1-2.
  $7435,$05 Set *#R$667F to #N$08 aliens.
  $743A,$02 Jump to #R$743E if *#REGhl is not equal to #N$04.
  $743C,$02 Set *#R$667F to #N$0F aliens.
@ $743E label=SetAlienWaveData
  $743E,$03 #REGhl=#R$6637.
  $7441,$01 Restore #REGaf from the stack.
  $7442,$03 Jump to #R$744A if *#REGhl is not equal to #REGa.
  $7445,$03 #REGhl=#R$65FB.
  $7448,$02 Jump to #R$745A.
  $744A,$04 Jump to #R$7453 if #REGa is not equal to #N$01.
  $744E,$03 #REGhl=#R$6619.
  $7451,$02 Jump to #R$745A.
  $7453,$04 Jump to #R$745A if #REGa is not equal to #N$04.
  $7457,$03 #REGhl=#R$6647.
@ $745A label=CopyWaveData
  $745A,$03 #REGde=#R$65DD.
  $745D,$05 #REGc=*#R$667F multiplied by #N$02.
  $7462,$02 LDIR.
N $7464 Is this phase #N$01?
  $7464,$07 Jump to #R$7470 if *#R$66F1 is not equal to #N$01.
N $746B Set the alien colouring for phase #N$01.
N $746B Set the bird alien colouring to produce.
. #UDGTABLE { #UDGS$03,$02(bird-01-green)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($60C6,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($43,1:$04,4:$06))(*udg)
.   udg
. ) } TABLE#
  $746B,$03 Set #REGb to #COLOUR$43, and #REGc to #INK$04.
  $746E,$02 Jump to #R$7485.
N $7470 Is this phase #N$02?
@ $7470 label=Initialise_Phase_02
  $7470,$04 Jump to #R$7479 if *#R$66F1 is not equal to #N$02.
N $7474 Set the alien colouring for phase #N$02.
N $7474 Set the Pheenix colouring to produce:
. #UDGTABLE { #UDGS$03,$02(pheenix-05-blue)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($619D,$617B),#PC+$08*$x))
.   #UDG({addr},#IF($y==0)($41,$06))(*udg)
.   udg
. ) } TABLE#
  $7474,$03 Set both #REGb and #REGc to #COLOUR$41.
  $7477,$02 Jump to #R$7485.
N $7479 Is this phase #N$03?
@ $7479 label=Initialise_Phase_03
  $7479,$04 Jump to #R$7482 if *#R$66F1 is not equal to #N$03.
N $747D Set the alien colouring for phase #N$03.
N $747D Set the Pheenix colouring to produce:
. #UDGTABLE { #UDGS$03,$02(pheenix-05-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($619D,$617B),#PC+$08*$x))
.   #UDG({addr},#IF($y==0)($43,$06))(*udg)
.   udg
. ) } TABLE#
  $747D,$03 Set both #REGb and #REGc to #COLOUR$43.
  $7480,$02 Jump to #R$7485.
N $7482 This is either phase #N$00 or #N$04. Set the bird alien colouring to
. produce:
. #UDGTABLE { #UDGS$03,$02(bird-01-magenta)(
.   #LET(addr=#IF($y==1)(#IF($x==1)($60C6,$617B),#PC+$08*$x))
.   #UDG({addr},#MAP($x+($y*$03))($06,1:$43,4:$06))(*udg)
.   udg
. ) } TABLE#
@ $7482 label=Initialise_Phase_Default
  $7482,$03 Set #REGb to #INK$06, and #REGc to #COLOUR$43.
N $7485 Set the alien colourings.
@ $7485 label=InitialiseLevel_SetColors
  $7485,$04 Write #REGb to *#R$667D and #REGc to *#R$667E.
N $7489 Set the players ship starting position.
  $7489,$05 Write #N$CE to *#R$66ED.
  $748E,$04 Stash *#R$66F1 on the stack.
N $7492 The #R$68B8 shouldn't play out for the first phase.
  $7492,$02,b$01 Keep only bits 1-2.
  $7494,$03 Call #R$68B8 if the result is not zero.
M $7492,$05 Call #R$68B8 if *#R$66F1 is either #N$02, #N$03 or #N$04.
  $7497,$03 Call #R$67F6.
N $749A The alien mothership is only shown in phase #N$04.
  $749A,$06 Call #R$696A if *#R$66F1 is #N$04.
  $74A0,$03 Call #R$6CC9.
  $74A3,$01 Return.

c $74A4 Game Intro
@ $74A4 label=GameIntro
D $74A4 Displays a randomly generated starfield and plays the "theme-tune" as a
. cute little game intro cutscene animation.
N $74A4 The routine runs through #N$2E loops and draws two stars on the top row
. for each iteration, one "large" and one small. Each iteration also bumps down
. the previously drawn stars - and does keep going even after the screen is
. full.
.
. Phoenix, the arcade game this is based on also has a similar intro animation.
N $74A4 Note; the example output below is run using the actual game code and so
. is randomly generated and hence won't match the real game exactly (given the
. random nature of how it's generated).
.
. Here is an example of the animation frames:
. #PUSHS #CLS$05 #POKES$74EF,$00;$74F0,$00;$74F1,$00 #UDGTABLE
.  #FOR$00,$0A""y"
.   { #FOR$00,$03(x,=h Frame #N(x+y*$04), | ) }
.   { #FOR$00,$03(x,#SIM(start=$74B9,stop=$7555)#SCR$01(game-intro-#EVAL(x+y*$04)*), | ) }
.  ""
.  { #FOR$2C,$2E(x,=h Frame #Nx, | ) }
.  { #FOR$2C,$2E(x,#SIM(start=$74B9,stop=$7555)#SCR$01(game-intro-x*), | ) }
. TABLE# #POPS
N $74A4 Which create the following animation:
. #UDGTABLE { #UDGARRAY#(#ANIMATE$10,$2E(game-intro)) } TABLE#
  $74A4,$03 Call #R$6720.
N $74A7 Don't bother with the animation if this is the demo mode.
  $74A7,$05 Return if *#R$66F3 is active.
N $74AC Set the attribute buffer to all cyan.
  $74AC,$0D Copy #INK$05 to #N$0300 bytes starting from #N$5800 in the
. attribute buffer.
  $74B9,$03 #REGhl=#R$6C13.
  $74BC,$02 Set a counter in #REGb for #N$2E stars to draw.
@ $74BE label=GameIntro_StarLoop
  $74BE,$05 Jump to #R$74E3 if #REGb is greater than or equal to #N$2D.
N $74C3 Check if the control method is the Kempston joystick?
  $74C3,$07 Jump to #R$74D3 if *#R$66F6 is not the Kempston joystick.
N $74CA The control method is Kempston joystick, so test the fire button.
  $74CA,$02 #REGa=read from the Kempston joystick port.
M $74CC,$05 Jump to #R$7558 if the fire button was pressed.
  $74CC,$02,b$01 Keep only bit 4.
  $74CE,$03 Jump to #R$7558 if bit 4 was set.
  $74D1,$02 Jump to #R$74E3.
N $74D3 Check if the control method is the AGF joystick?
@ $74D3 label=GameIntro_CheckAGF
  $74D3,$04 Jump to #R$74DB if *#R$66F6 is not the AGF joystick.
  $74D7,$02 #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $74D9,$02 Jump to #R$74DD.
N $74DB Else, the only control option left is the keyboard.
@ $74DB label=GameIntro_IsKeyboard
  $74DB,$02 #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$7F | SPACE | FULL-STOP | M | N | B }
. TABLE#
@ $74DD label=GameIntro_CheckFireButton
  $74DD,$02 Read from the keyboard.
  $74DF,$04 Jump to #R$7558 if the fire button was pressed.
@ $74E3 label=GameIntro_MusicLoop
  $74E3,$01 Stash the star counter on the stack.
  $74E4,$03 Fetch the pitch from the music data pointer.
  $74E7,$02 Fetch the duration from the music data pointer.
  $74E9,$02 #REGd=#N$01.
  $74EB,$01 Move the music data pointer to the next byte.
  $74EC,$01 Stash the music data pointer on the stack.
  $74ED,$02 #REGhl=#REGbc (using the stack).
  $74EF,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $74F2,$01 Disable interrupts.
  $74F3,$03 #REGhl=#N$57DF (screen buffer location).
  $74F6,$03 #REGde=#N$57FF (screen buffer location).
  $74F9,$02 #REGc=#N$03.
  $74FB,$02 #REGb=#N$08.
  $74FD,$03 Stash #REGbc, #REGhl and #REGde on the stack.
  $7500,$03 #REGbc=#N($00E0,$04,$04).
  $7503,$02 LDDR.
  $7505,$02 #REGc=#N$20.
  $7507,$02 #REGl=#N$FF.
  $7509,$05 Jump to #R$7513 if #REGh is less than #N$47.
  $750E,$03 Subtract #N$07 and store the result in #REGh.
  $7511,$02 LDDR.
  $7513,$02 Restore #REGde and #REGhl from the stack.
  $7515,$01 Decrease #REGd by one.
  $7516,$01 Decrease #REGh by one.
  $7517,$01 Restore #REGbc from the stack.
  $7518,$02 Decrease counter by one and loop back to #R$74FD until counter is zero.
  $751A,$01 Decrease #REGc by one.
  $751B,$02 Jump to #R$74FB until #REGc is zero.
  $751D,$02 #REGh=#N$40.
  $751F,$02 #REGb=#N$08.
  $7521,$01 Stash #REGbc on the stack.
  $7522,$03 #REGbc=#N($001F,$04,$04).
  $7525,$01 #REGd=#REGh.
  $7526,$01 #REGl=#REGb.
  $7527,$02 #REGe=#N$01.
  $7529,$01 Write #REGb to *#REGhl.
  $752A,$02 LDIR.
  $752C,$01 Increment #REGh by one.
  $752D,$01 Restore #REGbc from the stack.
  $752E,$02 Decrease counter by one and loop back to #R$7521 until counter is zero.
  $7530,$03 #REGhl=#R$61DB.
N $7533 Draw two stars; one large and one small.
  $7533,$02 Set a counter in #REGb for the number of types of stars to draw.
@ $7535 label=GameIntro_DrawStar_Loop
  $7535,$01 Stash the star type counter on the stack.
  $7536,$03 Call #R$670E.
  $7539,$02,b$01 Keep only bits 0-4.
  $753B,$06 Jump to #R$7536 if #REGh is equal to #N$02 or #REGa is equal to #N$1F.
  $7541,$01 #REGe=#REGa.
  $7542,$02 #REGd=#N$40.
  $7544,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $7546 label=GameIntro_DrawStar_LineLoop
  $7546,$02 Copy the UDG data to the screen buffer.
  $7548,$01 Move to the next UDG graphic data byte.
  $7549,$01 Move down one pixel line in the screen buffer.
  $754A,$02 Decrease the line counter by one and loop back to #R$7546 until all
. #N$08 lines of the UDG character have been drawn.
  $754C,$03 #REGhl=#R$624B.
  $754F,$01 Restore the star type counter from the stack.
  $7550,$02 Decrease star type counter by one and loop back to #R$7535 until
. both types of star have been drawn.
  $7552,$02 Restore the music data pointer and star counter from the stack.
  $7554,$01 Decrease the star counter by one.
  $7555,$03 Jump back to #R$74BE until all the stars have been drawn.
N $7558 The animation is finished.
@ $7558 label=GameIntro_Done
  $7558,$03 Call #R$6720.
  $755B,$03 Set a counter in #REGbc of #N($0000,$04,$04).
@ $755E label=GameIntro_Done_PauseLoop
  $755E,$02 Decrease the pause counter by one and loop back to #R$755E until
. the counter is zero.
  $7560,$01 Decrease #REGc by one.
  $7561,$02 Jump to #R$755E until #REGc is zero.
  $7563,$01 Return.

c $7564
  $7564,$03 Call #R$66F7.
  $7567,$01 Exchange the #REGde and #REGhl registers.
  $7568,$02 #REGe=#N$01.
  $756A,$02 #REGb=#N$03.
  $756C,$01 Stash #REGbc on the stack.
  $756D,$09 Jump to #R$7584 if *#REGhl is equal to #COLOUR$46 or #INK$07.
  $7576,$02 Write #N$00 to *#REGhl.
  $7578,$01 Stash #REGhl on the stack.
  $7579,$03 Call #R$6704.
  $757C,$02 #REGb=#N$08.
  $757E,$01 #REGa=#N$00.
  $757F,$01 Write #REGa to *#REGhl.
  $7580,$01 Increment #REGh by one.
  $7581,$02 Decrease counter by one and loop back to #R$757F until counter is zero.
  $7583,$01 Restore #REGhl from the stack.
  $7584,$01 Increment #REGhl by one.
  $7585,$01 Restore #REGbc from the stack.
  $7586,$02 Decrease counter by one and loop back to #R$756C until counter is zero.
  $7588,$03 Return if #REGe is zero.
  $758B,$02 #REGc=#N$1E.
  $758D,$01 #REGhl+=#REGbc.
  $758E,$01 Decrease #REGe by one.
  $758F,$01 Increment #REGb by one.
  $7590,$02 Jump to #R$756C.

t $7592 Messaging: Hi There!
@ $7592 label=Messaging_HiThere
  $7592,$07

c $7599 Game Entry Point
@ $7599 label=GameEntryPoint
  $7599,$01 Disable interrupts.
  $759A,$03 Jump to #R$759E (copy protection?)
  $759D,$01 Reset the machine (never reached in normal operation).
N $759E Run a copy protection timing check.
@ $759E label=GameEntryPoint_TimingCheck
  $759E,$08 #HTML(Add 
. <a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/5C78.html">FRAMES</a>
. to #N$EEBE.)
  $75A6,$03 If the if the result is zero, jump to #R$7C82.
N $75A9 The copy protection timing check failed ...
  $75A9,$04 Display the transition effect and reset the machine.

c $75AD Handler: Bird Alien
@ $75AD label=Handler_BirdAlien_01
  $75AD,$03 #REGhl=#R$60AE.
  $75B0,$02 Jump to #R$75DA.
@ $75B2 label=Handler_BirdAlien_02
  $75B2,$03 #REGhl=#R$60CD.
  $75B5,$02 Jump to #R$75DA.

c $75B7 Handler: Pheenix
@ $75B7 label=Handler_Pheenix_01
D $75B7 This is a fairly dogmatic sprite drawing routine, and hopefully this
. will explain why there are empty blocks seemingly randomly in the Pheenix
. sprite data.
.
. This routine always assumes the Pheenix sprite data looks like this:
. #TABLE { X | X | X } { | X | } TABLE#
. However the sprites aren't always in that format, sometimes they have a
. single row of #N$02 UDGs - so in order to use the same routine the sprites
. "share" empty UDGs, so although something is written, it's just all #N$00.
.
. Lastly, to conserve on space - some UDGs are less than #N$08 line bytes, they
. just share the bytes from the following sprite data. So some sprites end with
. empty bytes, and some start with empty bytes (which are shared between each).
R $75B7 DE Screen buffer sprite destination
N $75B7 Display frame #N$01 (the egg stage).
  $75B7,$03 #REGhl=#R$60E7.
  $75BA,$02 Jump to #R$75BF.
N $75BC Display frame #N$02 (the egg breaking apart).
@ $75BC label=Handler_Pheenix_02
  $75BC,$03 #REGhl=#R$60FF.
N $75BF Handler for single row sprites (as the second row is invisible).
@ $75BF label=Handler_Pheenix_SingleRow
  $75BF,$03 Set #REGbc to #INK$05 / #INK$05 (centre and righthand blocks of the
. top and only row).
  $75C2,$03 Write #INK$00 to the low byte of #REGix (the lefthand block of the
. top row - which is an empty block).
  $75C5,$02 Jump to #R$75E0.
N $75C7 Display frame #N$03 (the broken egg with a baby Pheenix).
@ $75C7 label=Handler_Pheenix_03
  $75C7,$03 #REGhl=#R$611F.
  $75CA,$02 Set #REGb to #INK$05 (righthand block of top row/ shell colour).
  $75CC,$04 #REGc=*#R$667D (the centre colour of the top row/ Pheenix body).
  $75D0,$02 Jump to #R$75DE.
N $75D2 Display frame #N$05 (Pheenix wings "up").
@ $75D2 label=Handler_Pheenix_05
  $75D2,$03 #REGhl=#R$6185.
  $75D5,$02 Jump to #R$75DA.
N $75D7 Display frame #N$04 (Pheenix wings "down").
@ $75D7 label=Handler_Pheenix_04
  $75D7,$03 #REGhl=#R$615B.
@ $75DA label=Handler_Pheenix_LoadColours
  $75DA,$04 Set #REGb to *#R$667D (righthand block of top row) and set #REGc to
. *#R$667E (middle block of top row).
@ $75DE label=Handler_Pheenix_SetColour
  $75DE,$02 Write #REGb to the low byte of #REGix which is used for colouring
. the lefthand block of the top row.
@ $75E0 label=Handler_Pheenix_Draw
  $75E0,$03 Stash the screen buffer destination, colour pair and screen buffer
. destination (again) on the stack.
N $75E3 All Pheenix sprites are #N$03 columns in the top row.
  $75E3,$02 Set a counter in #REGb for #N$03 columns.
@ $75E5 label=Handler_Pheenix_ColumnLoop
  $75E5,$02 Stash the column counter and screen buffer pointer on the stack.
N $75E7 Draw the UDG to the screen buffer.
  $75E7,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $75E9 label=Handler_Pheenix_LineLoop
  $75E9,$02 Copy the UDG data to the screen buffer.
  $75EB,$01 Move to the next UDG graphic data byte. 
  $75EC,$01 Move down one pixel line in the screen buffer.
  $75ED,$02 Decrease the line counter by one and loop back to #R$75E9 until all
. #N$08 lines of the UDG character have been drawn.
  $75EF,$01 Restore the original screen buffer location from the stack.
  $75F0,$01 Move right one character block.
  $75F1,$01 Restore the column counter from the stack.
  $75F2,$02 Decrease the column counter by one and loop back to #R$75E5 until
. all three columns of this row have been drawn.
  $75F4,$02 Restore the screen buffer destination and colour pair from the stack.
  $75F6,$01 Stash the UDG data pointer on the stack.
  $75F7,$03 Call #R$66F7.
  $75FA,$01 Exchange the #REGde and #REGhl registers.
N $75FB Colour the top row of the Pheenix sprite.
  $75FB,$03 Write the colour held by the low byte of #REGix to the attribute
. buffer pointer.
  $75FE,$01 Move right one attribute block.
  $75FF,$01 Write the colour held by #REGc to the attribute buffer pointer.
  $7600,$01 Move right one attribute block.
  $7601,$01 Write the colour held by #REGb to the attribute buffer pointer.
N $7602 Colour the bottom row of the Pheenix sprite (feet, or an empty block).
  $7602,$04 Move the attribute buffer pointer to the row below the current row
. and left one attribute block (by adding #N($001F,$04,$04)).
  $7606,$02 Write #INK$06 to the attribute buffer pointer.
  $7608,$03 Call #R$6704.
N $760B Now draw the bottom row (feet, or empty block).
  $760B,$01 Restore the UDG pointer from the stack.
N $760C Draw the UDG to the screen buffer.
  $760C,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $760E label=Handler_Pheenix_BottomRowLoop
  $760E,$02 Copy the UDG data to the screen buffer.
  $7610,$01 Move down one pixel line in the screen buffer.
  $7611,$01 Move to the next UDG graphic data byte. 
  $7612,$02 Decrease the line counter by one and loop back to #R$760E until all
. #N$08 lines of the UDG character have been drawn.
  $7614,$01 Restore the original screen buffer location from the stack.
  $7615,$01 Return.

c $7616 Handler: Aliens Movement/ Spawning
@ $7616 label=Handler_AliensMovement_Spawning
N $7616 Skip over drawing the alien mothership unless this is phase #N$04.
  $7616,$07 Jump to #R$7620 if *#R$66F1 is not equal to #N$04.
  $761D,$03 Call #R$6A23.
@ $7620 label=SkipHandler_Mothership
  $7620,$03 #REGde=#R$65DD.
  $7623,$03 #REGhl=*#R$668F.
  $7626,$06 Jump to #R$764C if *#R$6691 is not zero.
N $762C Check if all the aliens are spawned for the current wave.
  $762C,$03 #REGa=*#R$66F1.
  $762F,$02,b$01 Keep only bit 2.
  $7631,$02 Set the alien spawn limit to #N$07.
  $7633,$02 Jump to #R$7636 if *#R$66F1 is #N$04.
  $7635,$01 Double the alien spawn limit to #N$0E.
@ $7636 label=Aliens_CheckSpawnLimit
  $7636,$01 Stash the alien spawn limit on the stack.
  $7637,$01 Calculate the remaining aliens left to spawn.
  $7638,$01 Exchange the #REGaf register with the shadow #REGaf register.
  $7639,$01 Restore the alien spawn limit from the stack.
  $763A,$03 Jump to #R$764C if #REGa is not equal to #REGl.
  $763D,$01 Stash #REGhl on the stack.
  $763E,$03 #REGhl=#R$66C2.
  $7641,$01 Increment *#REGhl by one.
  $7642,$01 #REGa=*#REGhl.
  $7643,$02 #REGa-=#N$14.
  $7645,$01 Restore #REGhl from the stack.
  $7646,$02 Jump to #R$764C if *#REGhl is not equal to #REGl.
  $7648,$01 Increment #REGa by one.
  $7649,$03 Write #REGa to *#R$6691.
@ $764C label=Aliens_LoadWaveData
  $764C,$01 #REGhl+=#REGhl.
  $764D,$01 #REGhl+=#REGde.
  $764E,$01 Stash #REGhl on the stack.
  $764F,$01 #REGe=*#REGhl.
  $7650,$01 Increment #REGhl by one.
  $7651,$01 #REGd=*#REGhl.
  $7652,$04 Jump to #R$7662 if #REGd is not zero.
  $7656,$01 Exchange the shadow #REGaf register with the #REGaf register.
  $7657,$02 Jump to #R$765E if #REGhl is not equal to #REGa.
  $7659,$05 Write #N$01 to *#R$6691.
  $765E,$01 Restore #REGaf from the stack.
  $765F,$03 Jump to #R$7991.

  $7662,$01 Stash #REGde on the stack.
  $7663,$03 #REGa=*#R$66F1.
  $7666,$05 Jump to #R$76FD if bit 1 of #REGa is set.
  $766B,$02,b$01 Keep only bit 2.
  $766D,$02 Jump to #R$7676 if the result is zero.
  $766F,$07 Jump to #R$76FD if *#R$6691 is not zero.
  $7676,$07 #REGhl=*#R$668F+#R$66C4.
  $767D,$04 Jump to #R$76F3 if *#REGhl is not zero.
  $7681,$06 Jump to #R$7692 if *#R$6691 is zero.
  $7687,$03 Call #R$670E.
  $768A,$04 Jump to #R$76CB if #REGa is not equal to #N$D5.
  $768E,$02 Write #N$3C to *#REGhl.
  $7690,$02 Jump to #R$76EE.

  $7692,$03 #REGa=*#R$6695.
  $7695,$02,b$01 Keep only bit 0.
  $7697,$02 Jump to #R$769C if the result is not zero.
  $7699,$02 Restore #REGaf and #REGaf from the stack.
  $769B,$01 Return.

  $769C,$03 #REGbc=#R$6657.
  $769F,$06 Jump to #R$76AF if *#R$66F1 is zero.
  $76A5,$03 #REGbc=#R$6666.
  $76A8,$04 Jump to #R$76AF if #REGa is equal to #N$01.
  $76AC,$03 #REGbc=#R$6675.
  $76AF,$03 #REGhl=*#R$668F.
  $76B2,$01 #REGhl+=#REGbc.
  $76B3,$04 Jump to #R$76EE if *#REGhl is equal to #REGe.
  $76B7,$03 #REGhl=#R$668F.
  $76BA,$04 Jump to #R$76CA if *#REGhl is not zero.
  $76BE,$03 #REGa=*#R$66F1.
  $76C1,$02,b$01 Keep only bits 1-2.
  $76C3,$02 #REGa=#N$0F.
  $76C5,$02 Jump to #R$76C9 if #REGa is equal to #REGa.
  $76C7,$02 #REGa=#N$08.
  $76C9,$01 Write #REGa to *#REGhl.
  $76CA,$01 Decrease *#REGhl by one.
  $76CB,$03 Call #R$66F7.
  $76CE,$01 Exchange the #REGde and #REGhl registers.
  $76CF,$03 #REGbc=#N($0020,$04,$04).
  $76D2,$04 #REGa=*#R$66C3.
  $76D6,$01 #REGa=#REGl.
  $76D7,$02 Jump to #R$76E4 if *#R$66C3 is not zero.
  $76D9,$02,b$01 Keep only bits 0-4.
  $76DB,$03 Jump to #R$7800 if the result is not zero.
  $76DE,$01 Increment #REGa by one.
  $76DF,$03 Write #REGa to *#R$66C3.
  $76E2,$02 Jump to #R$76EE.

  $76E4,$02,b$01 Keep only bits 0-4.
  $76E6,$02 #REGa-=#N$1D.
  $76E8,$03 Jump to #R$781F if #REGa is not equal to #REGa.
  $76EB,$03 Write #REGa to *#R$66C3.
  $76EE,$02 Restore #REGaf and #REGaf from the stack.
  $76F0,$03 Jump to #R$799E.

  $76F3,$04 Jump to #R$76FC if #REGa is not equal to #N$01.
  $76F7,$05 Jump to #R$76FD if #REGd is not equal to #N$48.
  $76FC,$01 Decrease *#REGhl by one.
  $76FD,$03 #REGbc=#R$6680.
  $7700,$03 #REGhl=*#R$668F.
  $7703,$01 #REGhl+=#REGbc.
  $7704,$01 #REGa=*#REGhl.
  $7705,$01 Stash #REGaf on the stack.
  $7706,$06 Jump to #R$7782 if *#R$6691 is not zero.
  $770C,$01 Restore #REGaf from the stack.
  $770D,$02 Stash #REGhl and #REGaf on the stack.
  $770F,$01 #REGa=#REGe.
  $7710,$02,b$01 Keep only bits 0-4.
  $7712,$01 Stash #REGaf on the stack.
  $7713,$04 Jump to #R$7723 if #REGa is equal to #N$0A.
  $7717,$04 Jump to #R$7723 if #REGa is equal to #N$0D.
  $771B,$04 Jump to #R$7723 if #REGa is equal to #N$10.
  $771F,$04 Jump to #R$7728 if #REGa is not equal to #N$13.
  $7723,$05 Write #N$02 to *#R$6692.
  $7728,$02 Test bit 7 of #REGd.
  $772A,$02 Jump to #R$773B if #REGa is not equal to #N$02.
  $772C,$01 Restore #REGaf from the stack.
  $772D,$04 Jump to #R$7738 if #REGa is not equal to #N$1D.
  $7731,$02 Set bit 7 of #REGd.
  $7733,$01 Restore #REGaf from the stack.
  $7734,$01 Increment #REGa by one.
  $7735,$01 Stash #REGaf on the stack.
  $7736,$02 Jump to #R$7746.
  $7738,$01 Increment #REGde by one.
  $7739,$02 Jump to #R$7747.
  $773B,$01 Restore #REGaf from the stack.
  $773C,$03 Jump to #R$7746 if #REGa is not zero.
  $773F,$02 Reset bit 7 of #REGd.
  $7741,$01 Restore #REGaf from the stack.
  $7742,$01 Increment #REGa by one.
  $7743,$01 Stash #REGaf on the stack.
  $7744,$02 Jump to #R$7738.

  $7746,$01 Decrease #REGde by one.
  $7747,$02 Restore #REGaf and #REGhl from the stack.
  $7749,$01 Write #REGa to *#REGhl.
  $774A,$01 Restore #REGhl from the stack.
  $774B,$02 Stash #REGaf and #REGde on the stack.
  $774D,$01 Exchange the #REGde and #REGhl registers.
  $774E,$02 Reset bit 7 of #REGd.
  $7750,$03 Call #R$7564.
  $7753,$02 Restore #REGde and #REGaf from the stack.
  $7755,$01 Stash #REGde on the stack.
  $7756,$02 Reset bit 7 of #REGd.
  $7758,$04 Call #R$75B7 if #REGa is equal to #N$00.
  $775C,$05 Call #R$75BC if #REGa is equal to #N$01.
  $7761,$05 Call #R$75C7 if #REGa is equal to #N$02.
  $7766,$04 Jump to #R$777E if #REGa is not equal to #N$03.
  $776A,$05 Write #N$01 to *#R$6691.
  $776F,$03 Call #R$75D7.
  $7772,$03 #REGhl=#R$6680.
  $7775,$03 #REGde=#R$6680(#N$6681).
  $7778,$03 #REGbc=#N($000E,$04,$04).
  $777B,$01 Write #REGb to *#REGhl.
  $777C,$02 LDIR.
  $777E,$01 Restore #REGde from the stack.
  $777F,$03 Jump to #R$798D.

  $7782,$01 Restore #REGaf from the stack.
  $7783,$01 Stash #REGaf on the stack.
  $7784,$02,b$01 Keep only bits 4-7.
  $7786,$02 Jump to #R$7796 if the result is not zero.
  $7788,$01 Restore #REGaf from the stack.
  $7789,$03 Call #R$670E.
  $778C,$02 Shift #REGa right (with carry).
  $778E,$02 Shift #REGa right (with carry).
  $7790,$02,b$01 Keep only bits 0-2.
  $7792,$02 #REGa+=#N$80.
  $7794,$02 Jump to #R$7797.

  $7796,$01 Restore #REGaf from the stack.
  $7797,$02 #REGa-=#N$10.
  $7799,$01 Write #REGa to *#REGhl.
  $779A,$02,b$01 Keep only bits 0-2.
  $779C,$01 Stash #REGaf on the stack.
  $779D,$03 Call #R$66F7.
  $77A0,$01 Exchange the #REGde and #REGhl registers.
  $77A1,$03 #REGbc=#N($0020,$04,$04).
  $77A4,$02 Stash #REGhl and #REGbc on the stack.
  $77A6,$02 #REGb=#N$03.
  $77A8,$05 Jump to #R$77C4 if *#REGhl is equal to #COLOUR$46.
  $77AD,$04 Jump to #R$77C4 if *#REGhl is equal to #INK$07.
  $77B1,$01 Increment #REGhl by one.
  $77B2,$02 Decrease counter by one and loop back to #R$77A8 until counter is zero.
  $77B4,$02 Decrease #REGhl by two.
  $77B6,$01 Restore #REGbc from the stack.
  $77B7,$01 #REGhl+=#REGbc.
  $77B8,$05 Jump to #R$77C5 if *#REGhl is equal to #COLOUR$46.
  $77BD,$04 Jump to #R$77C5 if *#REGhl is equal to #INK$07.
  $77C1,$01 Restore #REGhl from the stack.
  $77C2,$02 Jump to #R$77DA.
  $77C4,$02 Restore #REGbc and #REGde from the stack.
  $77C6,$03 Call #R$71AB.
  $77C9,$03 #REGde=#R$65DD.
  $77CC,$03 #REGhl=*#R$668F.
  $77CF,$01 #REGhl+=#REGhl.
  $77D0,$01 #REGhl+=#REGde.
  $77D1,$01 Increment #REGhl by one.
  $77D2,$02 Write #N$00 to *#REGhl.
  $77D4,$03 Restore #REGaf, #REGaf and #REGaf from the stack.
  $77D7,$03 Jump to #R$799E.

  $77DA,$01 Restore #REGaf from the stack.
  $77DB,$02 Jump to #R$7855 if #REGhl is equal to #N$07.
  $77DD,$04 Jump to #R$781F if #REGa is equal to #N$07.
  $77E1,$04 Jump to #R$7800 if #REGa is equal to #N$06.
  $77E5,$05 Jump to #R$78C6 if #REGa is equal to #N$04.
  $77EA,$05 Jump to #R$78C6 if #REGa is equal to #N$02.
  $77EF,$03 #REGhl-=#REGbc.
  $77F2,$01 Stash #REGhl on the stack.
  $77F3,$02 #REGb=#N$03.
  $77F5,$04 Jump to #R$7844 if *#REGhl is not zero.
  $77F9,$01 Increment #REGhl by one.
  $77FA,$02 Decrease counter by one and loop back to #R$77F5 until counter is zero.
  $77FC,$01 Restore #REGhl from the stack.
  $77FD,$03 Jump to #R$7965.

  $7800,$01 #REGa=#REGl.
  $7801,$02,b$01 Keep only bits 0-4.
  $7803,$02 Jump to #R$7845 if #REGhl is equal to #REGa.
  $7805,$01 #REGhl+=#REGbc.
  $7806,$04 Jump to #R$7845 if *#REGhl is not zero.
  $780A,$01 Decrease #REGhl by one.
  $780B,$02 #REGhl-=#REGbc.
  $780D,$04 Jump to #R$781C if *#REGhl is zero.
  $7811,$06 Jump to #R$7845 if *#R$6693 is not zero.
  $7817,$05 Jump to #R$7845 if *#REGhl is not equal to #COLOUR$46.
  $781C,$03 Jump to #R$7965.

  $781F,$01 #REGa=#REGl.
  $7820,$02,b$01 Keep only bits 0-4.
  $7822,$04 Jump to #R$7845 if #REGa is equal to #N$1D.
  $7826,$01 Increment #REGhl by one.
  $7827,$01 Stash #REGhl on the stack.
  $7828,$01 Increment #REGhl by one.
  $7829,$01 #REGhl+=#REGbc.
  $782A,$04 Jump to #R$7844 if *#REGhl is not zero.
  $782E,$01 Increment #REGhl by one.
  $782F,$02 #REGhl-=#REGbc.
  $7831,$04 Jump to #R$7840 if *#REGhl is zero.
  $7835,$06 Jump to #R$7844 if *#R$6693 is not zero.
  $783B,$05 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $7840,$01 Restore #REGhl from the stack.
  $7841,$03 Jump to #R$7965.

  $7844,$03 Restore #REGaf, #REGaf and #REGaf from the stack.
  $7847,$03 #REGbc=#R$6680.
  $784A,$03 #REGhl=*#R$668F.
  $784D,$01 #REGhl+=#REGbc.
  $784E,$01 #REGa=*#REGhl.
  $784F,$02,b$01 Keep only bits 0-3.
  $7851,$01 Write #REGa to *#REGhl.
  $7852,$03 Jump to #R$7991.

  $7855,$01 #REGa=#REGl.
  $7856,$02,b$01 Keep only bits 5-7.
  $7858,$04 Jump to #R$7882 if #REGa is not equal to #N$C0.
  $785C,$05 Jump to #R$7882 if #REGh is not equal to #N$5A.
  $7861,$03 #REGa=*#R$66F1.
  $7864,$02,b$01 Keep only bit 1.
  $7866,$02 Jump to #R$7845 if #REGa is zero.
  $7868,$02 #REGh=#N$58.
  $786A,$04 #REGl-=#N$A0.
  $786E,$01 Stash #REGhl on the stack.
  $786F,$02 #REGb=#N$03.
  $7871,$04 Jump to #R$7844 if *#REGhl is not zero.
  $7875,$01 Increment #REGhl by one.
  $7876,$02 Decrease counter by one and loop back to #R$7871 until counter is zero.
  $7878,$02 #REGc=#N$20.
  $787A,$01 #REGhl+=#REGbc.
  $787B,$01 Decrease #REGhl by one.
  $787C,$04 Jump to #R$7844 if *#REGhl is not zero.
  $7880,$02 Jump to #R$78B5.

  $7882,$01 #REGhl+=#REGbc.
  $7883,$01 Stash #REGhl on the stack.
  $7884,$04 Jump to #R$7893 if *#REGhl is zero.
  $7888,$06 Jump to #R$7844 if *#R$6693 is not zero.
  $788E,$05 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $7893,$02 Increment #REGhl by two.
  $7895,$04 Jump to #R$78A4 if *#REGhl is zero.
  $7899,$06 Jump to #R$7844 if *#R$6693 is not zero.
  $789F,$05 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $78A4,$01 #REGhl+=#REGbc.
  $78A5,$01 Decrease #REGhl by one.
  $78A6,$04 Jump to #R$78B5 if *#REGhl is zero.
  $78AA,$06 Jump to #R$7844 if *#R$6693 is not zero.
  $78B0,$05 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $78B5,$01 Restore #REGhl from the stack.
  $78B6,$03 Call #R$6704.
  $78B9,$01 Restore #REGde from the stack.
  $78BA,$01 Stash #REGhl on the stack.
  $78BB,$02 Set bit 7 of #REGd.
  $78BD,$01 Stash #REGde on the stack.
  $78BE,$02 Reset bit 7 of #REGd.
  $78C0,$03 Call #R$7564.
  $78C3,$03 Jump to #R$7970.

  $78C6,$01 Stash #REGhl on the stack.
  $78C7,$01 #REGa=#REGl.
  $78C8,$02,b$01 Keep only bits 0-4.
  $78CA,$01 #REGl=#REGa.
  $78CB,$03 #REGa=*#R$66ED.
  $78CE,$01 Increment #REGa by one.
  $78CF,$02,b$01 Keep only bits 0-4.
  $78D1,$01 Compare #REGa with #REGl.
  $78D2,$01 Restore #REGhl from the stack.
  $78D3,$02 Jump to #R$7855 if #REGa is equal to #REGl.
  $78D5,$02 Jump to #R$7925 if #REGa is greater than or equal to #REGl.
  $78D7,$01 #REGa=#REGl.
  $78D8,$02,b$01 Keep only bits 0-4.
  $78DA,$03 Jump to #R$7855 if #REGa is equal to #REGl.
  $78DD,$01 #REGa=#REGl.
  $78DE,$02,b$01 Keep only bits 5-7.
  $78E0,$04 Jump to #R$78EA if #REGa is not equal to #N$C0.
  $78E4,$06 Jump to #R$7861 if #REGh is equal to #N$5A.
  $78EA,$01 #REGhl+=#REGbc.
  $78EB,$01 Decrease #REGhl by one.
  $78EC,$01 Stash #REGhl on the stack.
  $78ED,$04 Jump to #R$78FE if *#REGhl is zero.
  $78F1,$07 Jump to #R$7844 if *#R$6693 is not zero.
  $78F8,$06 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $78FE,$01 Increment #REGhl by one.
  $78FF,$04 Jump to #R$7910 if *#REGhl is zero.
  $7903,$07 Jump to #R$7844 if *#R$6693 is not zero.
  $790A,$06 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $7910,$01 #REGhl+=#REGbc.
  $7911,$04 Jump to #R$7922 if *#REGhl is zero.
  $7915,$07 Jump to #R$7844 if *#R$6693 is not zero.
  $791C,$06 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $7922,$01 Restore #REGhl from the stack.
  $7923,$02 Jump to #R$7965.

  $7925,$01 #REGa=#REGl.
  $7926,$02,b$01 Keep only bits 0-4.
  $7928,$05 Jump to #R$7855 if #REGa is equal to #N$1D.
  $792D,$01 #REGa=#REGl.
  $792E,$02,b$01 Keep only bits 5-7.
  $7930,$04 Jump to #R$793A if #REGa is not equal to #N$C0.
  $7934,$06 Jump to #R$7861 if #REGh is equal to #N$5A.
  $793A,$01 #REGhl+=#REGbc.
  $793B,$01 Increment #REGhl by one.
  $793C,$01 Stash #REGhl on the stack.
  $793D,$01 Increment #REGhl by one.
  $793E,$04 Jump to #R$794F if *#REGhl is zero.
  $7942,$07 Jump to #R$7844 if *#R$6693 is not zero.
  $7949,$06 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $794F,$01 Increment #REGhl by one.
  $7950,$04 Jump to #R$795E if *#REGhl is zero.
  $7954,$07 Jump to #R$7844 if *#R$6693 is not zero.
  $795B,$06 Jump to #R$7844 if *#REGhl is not equal to #COLOUR$46.
  $7961,$01 Decrease #REGhl by one.
  $7962,$01 #REGhl+=#REGbc.
  $7963,$02 Jump to #R$7911.

  $7965,$03 Call #R$6704.
  $7968,$01 Restore #REGde from the stack.
  $7969,$02 Stash #REGhl and #REGde on the stack.
  $796B,$02 Reset bit 7 of #REGd.
  $796D,$03 Call #R$7564.
  $7970,$01 Restore #REGde from the stack.
  $7971,$02 Test bit 7 of #REGd.
  $7973,$01 Restore #REGde from the stack.
  $7974,$03 #REGa=*#R$66F1.
  $7977,$02 Jump to #R$7983 if #REGhl is equal to #COLOUR$46.
  $7979,$02,b$01 Keep only bit 1.
  $797B,$03 Call #R$75D7 if #REGa is not equal to #COLOUR$46.
  $797E,$03 Call #R$75AD if #REGa is equal to #COLOUR$46.
  $7981,$02 Jump to #R$798D.

  $7983,$02,b$01 Keep only bit 1.
  $7985,$03 Call #R$75D2 if #REGa is not equal to #COLOUR$46.
  $7988,$03 Call #R$75B2 if #REGa is equal to #COLOUR$46.
  $798B,$02 Set bit 7 of #REGd.
  $798D,$01 Restore #REGhl from the stack.
  $798E,$01 Write #REGe to *#REGhl.
  $798F,$01 Increment #REGhl by one.
  $7990,$01 Write #REGd to *#REGhl.
  $7991,$06 Jump to #R$799E if *#R$6692 is zero.
  $7997,$01 Decrease #REGa by one.
  $7998,$03 Write #REGa to *#R$6692.
  $799B,$03 Jump to #R$7616.

  $799E,$03 #REGhl=#R$668F.
  $79A1,$03 #REGa=*#R$66F1.
  $79A4,$02,b$01 Keep only bits 1-2.
  $79A6,$02 #REGa=#N$07.
  $79A8,$02 Jump to #R$79AB if #REGa is not equal to #REGa.
  $79AA,$01 #REGa+=#REGa.
  $79AB,$03 Jump to #R$79B0 if #REGa is not equal to *#REGhl.
  $79AE,$02 Write #N$FF to *#REGhl.
  $79B0,$01 Increment *#REGhl by one.
  $79B1,$01 Return.

c $79B2 Handler: Alien Explosions
@ $79B2 label=Handler_AlienExplosions
  $79B2,$03 #REGa=*#R$6695.
  $79B5,$02,b$01 Keep only bit 0.
M $79B2,$06 Return if bit 0 of *#R$6695 is not set.
  $79B8,$03 #REGhl=#R$66D5.
  $79BB,$02 Set a counter in #REGb for checking #N$06 explosion slots.
@ $79BD label=AlienExplosions_Loop
  $79BD,$04 Jump to #R$79CA if this explosion slot is already active.
  $79C1,$01 Stash the explosion slot counter on the stack.
  $79C2,$02 Set a delay loop counter in #REGb of #N$C8 iterations.
@ $79C4 label=AlienExplosions_DelayLoop
  $79C4,$02 Decrease the delay loop counter by one and loop back to #R$79C4
. until the counter is zero.
  $79C6,$01 Restore the explosion slot counter from the stack.
  $79C7,$03 Jump to #R$7B5F.
N $79CA Process the active explosion.
@ $79CA label=AlienExplosions_IsActive
  $79CA,$03 Stash #REGaf, #REGbc and #REGhl on the stack.
N $79CD Play a sound when the explosion is active (but not in demo mode).
  $79CD,$06 Jump to #R$7A1F if *#R$66F3 is active.
N $79D3 Play the explosion sound effect based on the current phase.
  $79D3,$03 #REGa=*#R$66F1.
  $79D6,$02,b$01 Keep only bit 1.
  $79D8,$02 Jump to #R$79F8 if the result is zero.
M $79D3,$07 Jump to #R$79F8 if bit 1 of *#R$66F1 is not zero.
N $79DA Play explosion sound #N$01.
N $79DA #HTML(#AUDIO(explosion-01.wav)(#INCLUDE(Explosion01)))
  $79DA,$07 #REGde=*#REGhl*#N$08.
  $79E1,$04 #REGhl=#N($00F2,$04,$04)+#REGde.
  $79E5,$02 #REGb=#N$03.
@ $79E7 label=AlienExplosions_Sound_01
  $79E7,$02 Stash #REGbc and #REGhl on the stack.
  $79E9,$03 #REGde=#N($0002,$04,$04).
  $79EC,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $79EF,$01 Disable interrupts.
  $79F0,$01 Restore #REGhl from the stack.
  $79F1,$02 Increment #REGhl by two.
  $79F3,$01 Restore #REGbc from the stack.
  $79F4,$02 Decrease counter by one and loop back to #R$79E7 until counter is zero.
  $79F6,$02 Jump to #R$7A1F.
N $79F8 Play explosion sound #N$02.
@ $79F8 label=AlienExplosions_Sound_02
  $79F8,$05 Jump to #R$7A1F if the explosion type is not #N$01.
N $79FD #HTML(#AUDIO(explosion-02.wav)(#INCLUDE(Explosion02)))
  $79FD,$02 Set a counter in #REGb for #N$12 explosion sound loops.
  $79FF,$03 Set the initial pitch to #N($0064,$04,$04).
@ $7A02 label=AlienExplosions_Sound_02_Loop
  $7A02,$02 Stash the explosion sound loops counter and pitch on the stack.
  $7A04,$05 Calculate the delay counter: #N$64 - (#REGb × #N$02).
  $7A09,$02 Enable the speaker (bit 4).
  $7A0B,$01 Disable interrupts.
@ $7A0C label=AlienExplosions_Sound_02_DelayLoop
  $7A0C,$04 Decrease the delay counter by one and loop back to #R$7A0C until
. the delay counter is zero.
  $7A10,$03 Set the sound duration to #N($0001,$04,$04).
  $7A13,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $7A16,$01 Disable interrupts.
  $7A17,$01 Restore the pitch from the stack.
  $7A18,$04 Increase the pitch by #N($0008,$04,$04).
  $7A1C,$01 Restore the explosion sound loops counter from the stack.
  $7A1D,$02 Decrease the explosion sound loops counter by one and loop back to
. #R$7A02 until the explosion sound has finished playing.
N $7A1F Update the explosion position and check for scoring.
@ $7A1F label=AlienExplosions_UpdatePosition
  $7A1F,$03 Restore #REGhl, #REGbc and #REGaf from the stack.
  $7A22,$02 Stash #REGbc and #REGhl on the stack.
  $7A24,$01 Increment #REGhl by one.
  $7A25,$01 #REGe=*#REGhl.
  $7A26,$01 Increment #REGhl by one.
  $7A27,$01 #REGd=*#REGhl.
  $7A28,$01 #REGc=#REGa.
  $7A29,$03 #REGa=*#R$66F1.
  $7A2C,$02,b$01 Keep only bit 1.
  $7A2E,$01 #REGa=#REGc.
  $7A2F,$02 Jump to #R$7A99 if bit 1 of *#R$66F1 was set.
  $7A31,$04 Jump to #R$7A41 if #REGa is not equal to #N$01.
  $7A35,$02 Stash #REGde and #REGaf on the stack.
  $7A37,$01 Exchange the #REGde and #REGhl registers.
  $7A38,$03 Call #R$6704.
  $7A3B,$01 Exchange the #REGde and #REGhl registers.
  $7A3C,$03 Call #R$7564.
  $7A3F,$02 Restore #REGaf and #REGde from the stack.
  $7A41,$04 Jump to #R$7A61 if #REGa is not equal to #N$04.
  $7A45,$02 Stash #REGde and #REGaf on the stack.
  $7A47,$03 #REGhl=#R$652D.
  $7A4A,$02 Write #N$38 to *#REGhl.
  $7A4C,$05 Jump to #R$7A56 if #REGd is equal to #N$5A.
  $7A51,$02 Write #N$32 to *#REGhl.
  $7A53,$01 Increment #REGhl by one.
  $7A54,$02 Write #N$35 to *#REGhl.
  $7A56,$03 Call #R$67B6.
  $7A59,$03 Call #R$67A9.
  $7A5C,$03 Call #R$681C.
  $7A5F,$02 Restore #REGaf and #REGde from the stack.
  $7A61,$02 Compare #REGa with #N$07.
  $7A63,$03 #REGbc=#N$0344.
  $7A66,$02 Jump to #R$7A73 if #REGa is less than #N$07.
  $7A68,$03 #REGhl=#R$6535.
  $7A6B,$04 Jump to #R$7A82 if #REGa is less than #N$09.
  $7A6F,$02 #REGc=#N$03.
  $7A71,$02 Jump to #R$7A82.

  $7A73,$01 Increment #REGc by one.
  $7A74,$04 Jump to #R$7A7D if #REGa is less than #N$04.
  $7A78,$03 #REGhl=#R$6532.
  $7A7B,$02 Jump to #R$7A82.

  $7A7D,$02 #REGc=#N$47.
  $7A7F,$03 #REGhl=#R$652F.
  $7A82,$01 Stash #REGde on the stack.
  $7A83,$01 Exchange the #REGde and #REGhl registers.
  $7A84,$03 Call #R$6704.
  $7A87,$02 Stash #REGhl and #REGbc on the stack.
  $7A89,$06 #REGhl-=#N$50C0.
  $7A8F,$02 Restore #REGbc and #REGhl from the stack.
  $7A91,$01 Exchange the #REGde and #REGhl registers.
  $7A92,$03 Call #R$677B if #REGa is less than #N$00.
  $7A95,$01 Restore #REGde from the stack.
  $7A96,$03 Jump to #R$7B30.

  $7A99,$04 Jump to #R$7AAE if #REGa is not equal to #N$01.
  $7A9D,$02 Stash #REGde and #REGaf on the stack.
  $7A9F,$01 Exchange the #REGde and #REGhl registers.
  $7AA0,$03 Call #R$6704.
  $7AA3,$01 Exchange the #REGde and #REGhl registers.
  $7AA4,$03 Call #R$7564.
  $7AA7,$02 Restore #REGaf and #REGde from the stack.
  $7AA9,$01 Increment #REGde by one.
  $7AAA,$01 Write #REGa to *#REGde.
  $7AAB,$01 Decrease #REGde by one.
  $7AAC,$02 Jump to #R$7AEB.

  $7AAE,$04 Jump to #R$7AEB if #REGa is not equal to #N$02.
  $7AB2,$02 Stash #REGaf and #REGde on the stack.
  $7AB4,$03 #REGhl=#R$652C.
  $7AB7,$01 Stash #REGhl on the stack.
  $7AB8,$02 Write #N$31 to *#REGhl.
  $7ABA,$06 Jump to #R$7ACC if *#R$6691 is zero.
  $7AC0,$05 Jump to #R$7AC9 if #REGd is less than #N$59.
  $7AC5,$02 Write #N$32 to *#REGhl.
  $7AC7,$02 Jump to #R$7ACC if #REGa is equal to #N$59.
  $7AC9,$01 Increment #REGhl by one.
  $7ACA,$02 Write #N$35 to *#REGhl.
  $7ACC,$01 Exchange the #REGde and #REGhl registers.
  $7ACD,$03 Call #R$6704.
  $7AD0,$01 Stash #REGhl on the stack.
  $7AD1,$06 #REGhl-=#N$50C0.
  $7AD7,$01 Restore #REGhl from the stack.
  $7AD8,$01 Exchange the #REGde and #REGhl registers.
  $7AD9,$01 Restore #REGhl from the stack.
  $7ADA,$03 #REGbc=#N$0345.
  $7ADD,$03 Call #R$676F if #REGa is less than #N$00.
  $7AE0,$03 Call #R$67B6.
  $7AE3,$03 Call #R$67A9.
  $7AE6,$03 Call #R$681C.
  $7AE9,$02 Restore #REGde and #REGaf from the stack.
  $7AEB,$01 Stash #REGde on the stack.
  $7AEC,$01 #REGc=#REGa.
  $7AED,$01 #REGa=#REGe.
  $7AEE,$01 Increment #REGa by one.
  $7AEF,$02,b$01 Keep only bits 0-4.
  $7AF1,$01 #REGa-=#REGc.
  $7AF2,$02 Jump to #R$7B0C if #REGa is less than #REGa.
  $7AF4,$02 Stash #REGbc and #REGaf on the stack.
  $7AF6,$03 #REGe-=#REGc.
  $7AF9,$01 Increment #REGe by one.
  $7AFA,$03 Call #R$6845.
  $7AFD,$01 Decrease #REGe by one.
  $7AFE,$01 Restore #REGaf from the stack.
  $7AFF,$02 Jump to #R$7B0B until #REGe is zero.
  $7B01,$01 Restore #REGbc from the stack.
  $7B02,$01 Stash #REGbc on the stack.
  $7B03,$05 Jump to #R$7B0B if #REGc is equal to #N$10.
  $7B08,$03 Call #R$684E.
  $7B0B,$02 Restore #REGbc and #REGde from the stack.
  $7B0D,$01 Stash #REGde on the stack.
  $7B0E,$01 Increment #REGe by one.
  $7B0F,$01 #REGa=#REGe.
  $7B10,$02,b$01 Keep only bits 0-4.
  $7B12,$01 #REGa+=#REGc.
  $7B13,$04 Jump to #R$7B2F if #REGa is greater than or equal to #N$20.
  $7B17,$01 Stash #REGbc on the stack.
  $7B18,$02 Compare #REGa with #N$1F.
  $7B1A,$01 Stash #REGaf on the stack.
  $7B1B,$03 #REGe+=#REGc.
  $7B1E,$01 Decrease #REGde by one.
  $7B1F,$03 Call #R$6845.
  $7B22,$01 Increment #REGde by one.
  $7B23,$02 Restore #REGaf and #REGbc from the stack.
  $7B25,$02 Jump to #R$7B2F if ??? is zero.
  $7B27,$05 Jump to #R$7B2F if #REGc is equal to #N$10.
  $7B2C,$03 Call #R$6853.
  $7B2F,$02 Restore #REGde and #REGhl from the stack.
  $7B31,$01 Increment *#REGhl by one.
N $7B32 The number of frames the explosion persists for varies between the
. phases, presumably because some phases allow the ship to make "quick shots"
. and the number of slots may be at risk when the player can fire more rapidly.
  $7B32,$03 #REGa=*#R$66F1.
  $7B35,$02,b$01 Keep only bit 1.
  $7B37,$02 Set the frame limit in #REGa to #N$0B frames.
  $7B39,$02 Jump to #R$7B3D if bit 1 of *#R$66F1 was not set.
  $7B3B,$02 Set the frame limit in #REGa to #N$11 frames.
@ $7B3D label=AlienExplosions_CheckComplete
  $7B3D,$03 Jump to #R$7B5E if *#REGhl is not equal to the frame limit.
  $7B40,$02 Clear the current explosion slot (set to #N$00).
  $7B42,$01 Stash the explosion slot pointer on the stack.
  $7B43,$01 Exchange the #REGde and #REGhl registers.
  $7B44,$03 Call #R$6704.
  $7B47,$01 Stash #REGhl on the stack.
  $7B48,$06 #REGhl-=#N$50C0.
  $7B4E,$01 Restore #REGhl from the stack.
  $7B4F,$01 Exchange the #REGde and #REGhl registers.

N $7B50 Prints #STR($3F1B,$03,$03)
  $7B50,$03 #HTML(#REGhl=<a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html#3F1B">#N$3F1B</a>.)
  $7B53,$03 #REGbc=#N($0300,$04,$04).
  $7B56,$03 Call #R$6775 if ?? is less than #N$00.
  $7B59,$04 Decrease *#R$667F by one.
  $7B5D,$01 Restore the explosion slot pointer from the stack.
@ $7B5E label=AlienExplosions_Continue
  $7B5E,$01 Restore the explosion slot counter from the stack.
N $7B5F Move to the next explosion slot.
@ $7B5F label=AlienExplosions_NextSlot
  $7B5F,$03 Move the explosion slot pointer to the next explosion slot.
  $7B62,$01 Decrease the explosion slot counter by one.
  $7B63,$03 Jump back to #R$79BD until all explosion slots have been processed.
  $7B66,$01 Return.

c $7B67 Handler: Aliens
@ $7B67 label=Handler_Aliens
N $7B67 See #POKE#aliens-not-fire(Aliens Don't Fire).
  $7B67,$05 Return if *#R$6691 is zero.
  $7B6C,$05 Return if *#R$6695 is not zero.
  $7B71,$03 #REGhl=#R$66A7.
  $7B74,$02 #REGb=#N$06.
  $7B76,$02 Stash #REGbc and #REGhl on the stack.
  $7B78,$01 #REGe=*#REGhl.
  $7B79,$01 Increment #REGhl by one.
  $7B7A,$01 #REGd=*#REGhl.
  $7B7B,$05 Jump to #R$7C18 if #REGd is not zero.
  $7B80,$07 Jump to #R$7C76 if *#R$66A4 is not zero.
  $7B87,$01 Stash #REGhl on the stack.
  $7B88,$03 #REGhl=#R$66B9.
  $7B8B,$06 Jump to #R$7BA3 if *#R$66BA is not zero.
  $7B91,$03 #REGa=*#R$66F1.
  $7B94,$02,b$01 Keep only bits 1-2.
  $7B96,$02 #REGa=#N$1C.
  $7B98,$02 Jump to #R$7B9C if #REGhl is equal to #REGa.
  $7B9A,$02 #REGa=#N$0E.
  $7B9C,$03 Jump to #R$7BA1 if *#REGhl is not zero.
  $7B9F,$02 Write #N$FE to *#REGhl.
  $7BA1,$02 Increment *#REGhl by two.
  $7BA3,$01 #REGl=*#REGhl.
  $7BA4,$02 #REGh=#N$00.
  $7BA6,$04 #REGhl+=#R$65DD.
  $7BAA,$01 #REGe=*#REGhl.
  $7BAB,$01 Increment #REGhl by one.
  $7BAC,$01 #REGd=*#REGhl.
  $7BAD,$04 Jump to #R$7BB7 if #REGd is not zero.
  $7BB1,$03 #REGhl=#R$66BA.
  $7BB4,$01 Write #REGa to *#REGhl.
  $7BB5,$02 Jump to #R$7C15.
  $7BB7,$03 Call #R$66F7.
  $7BBA,$05 Jump to #R$7C15 if #REGd is equal to #N$58.
  $7BBF,$01 #REGa=#REGe.
  $7BC0,$02,b$01 Keep only bits 0-4.
  $7BC2,$01 #REGb=#REGa.
  $7BC3,$03 #REGa=*#R$66ED.
  $7BC6,$02,b$01 Keep only bits 0-4.
  $7BC8,$03 Jump to #R$7BD2 if #REGa is less than #REGb.
  $7BCB,$01 #REGa-=#REGb.
  $7BCC,$04 Jump to #R$7C15 if #REGa is greater than or equal to #N$08.
  $7BD0,$02 Jump to #R$7BD7.
  $7BD2,$01 #REGc=#REGa.
  $7BD3,$02 #REGa=#REGb-#REGc.
  $7BD5,$02 Jump to #R$7BCC.

  $7BD7,$04 #REGhl=#N($0041,$04,$04)+#REGde.
  $7BDB,$01 Stash #REGhl on the stack.
  $7BDC,$03 #REGde=#N$5AE0 (attribute buffer location).
  $7BDF,$06 Jump to #R$7BE7 if *#R$6693 is inactive.
  $7BE5,$02 #REGe=#N$C0.
  $7BE7,$02 #REGhl-=#REGde (with carry).
  $7BE9,$01 Restore #REGhl from the stack.
  $7BEA,$02 Jump to #R$7C15 if #REGa is greater than or equal to #REGa.
  $7BEC,$01 Stash #REGhl on the stack.
  $7BED,$03 #REGhl=#R$66BA.
  $7BF0,$01 Increment *#REGhl by one.
  $7BF1,$05 Jump to #R$7BF8 if *#REGhl is not equal to #N$04.
  $7BF6,$02 Write #N$00 to *#REGhl.
  $7BF8,$01 Increment #REGhl by one.
  $7BF9,$03 #REGa=*#R$66F1.
  $7BFC,$02,b$01 Keep only bit 1.
  $7BFE,$02 #REGa=#N$03.
  $7C00,$02 Jump to #R$7C0A if #REGhl is equal to #N$03.
  $7C02,$01 Increment *#REGhl by one.
  $7C03,$05 Jump to #R$7C0A if *#REGhl is not equal to #N$03.
  $7C08,$02 Write #N$00 to *#REGhl.
  $7C0A,$03 Multiply #REGa by #N$08.
  $7C0D,$02 Restore #REGhl and #REGde from the stack.
  $7C0F,$01 Increment #REGde by one.
  $7C10,$01 Write #REGa to *#REGde.
  $7C11,$02
  $7C13,$02 Jump to #R$7C41.
  $7C15,$01 Restore #REGaf from the stack.
  $7C16,$02 Jump to #R$7C50.
  $7C18,$01 Exchange the #REGde and #REGhl registers.
  $7C19,$05 Jump to #R$7C50 if *#REGhl is equal to #COLOUR$46.
  $7C1E,$04 Jump to #R$7C50 if *#REGhl is equal to #INK$07.
  $7C22,$02 Write #N$00 to *#REGhl.
  $7C24,$01 Increment #REGde by one.
  $7C25,$01 #REGa=*#REGde.
  $7C26,$02
  $7C28,$01 Stash #REGhl on the stack.
  $7C29,$03 Call #R$6704.
  $7C2C,$02 #REGb=#N$08.
  $7C2E,$01 #REGa=#N$00.
  $7C2F,$01 Write #REGa to *#REGhl.
  $7C30,$01 Increment #REGh by one.
  $7C31,$02 Decrease counter by one and loop back to #R$7C2F until counter is zero.
  $7C33,$01 Restore #REGhl from the stack.
  $7C34,$02 #REGc=#N$20.
  $7C36,$01 #REGhl+=#REGbc.
  $7C37,$01 Stash #REGhl on the stack.
  $7C38,$03 #REGbc=#N$5B00 (attribute buffer location).
  $7C3B,$03 #REGhl-=#REGbc.
  $7C3E,$01 Restore #REGhl from the stack.
  $7C3F,$02 Jump to #R$7C50 if #REGh is greater than or equal to #REGa.
  $7C41,$04 Jump to #R$7C54 if *#REGhl is zero.
  $7C45,$06 Jump to #R$7C50 if *#R$6693 is active.
  $7C4B,$05 Jump to #R$7C54 if *#REGhl is equal to #COLOUR$46.
  $7C50,$02 #REGd=#N$00.
  $7C52,$02 Jump to #R$7C76.

  $7C54,$03 #REGa=*#R$66F1.
  $7C57,$02,b$01 Keep only bit 1.
  $7C59,$02 #REGa=#N$45.
  $7C5B,$02 Jump to #R$7C5F if #REGa is equal to #N$45.
  $7C5D,$03 Write #N$06 to *#REGhl.
  $7C60,$01 Stash #REGhl on the stack.
  $7C61,$03 Call #R$6704.
  $7C64,$01 Exchange the #REGde and #REGhl registers.
  $7C65,$03 #REGhl=#R$602E.
  $7C68,$02
  $7C6A,$02 #REGb=#N$00.
  $7C6C,$01 #REGhl+=#REGbc.
  $7C6D,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $7C6F,$02 Copy the UDG data to the screen buffer.
  $7C71,$01 Move down one pixel line in the screen buffer.
  $7C72,$01 Move to the next UDG graphic data byte.
  $7C73,$02 Decrease the line counter by one and loop back to #R$7C6F until all
. #N$08 lines of the UDG character have been drawn.
  $7C75,$02 Restore #REGde and #REGhl from the stack.
  $7C77,$01 Write #REGe to *#REGhl.
  $7C78,$01 Increment #REGhl by one.
  $7C79,$01 Write #REGd to *#REGhl.
  $7C7A,$02 Increment #REGhl by two.
  $7C7C,$01 Restore #REGbc from the stack.
  $7C7D,$01 Decrease #REGb by one.
  $7C7E,$03 Jump to #R$7B76 if #REGb is not equal to #N$08.
  $7C81,$01 Return.

c $7C82 Title Screen
@ $7C82 label=TitleScreen
D $7C82 #PUSHS #UDGTABLE {
.   #SIM(start=$7C82,stop=$7D3D)
.   #FOR$01,$08||x|#SIM(start=$7D3F,stop=$7D68,bc=x)
.     #SCR$02(*title-screen-x)#PLOT(0,0,0)(title-screen-x)
.   ||
.   #UDGARRAY#(#ANIMATE$0A,$08(title-screen))
. } TABLE# #POPS
  $7C82,$01 Disable interrupts.
  $7C83,$03 Set border to #INK$00.
  $7C86,$03 #HTML(Write #INK$00 to *<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/5C48.html">BORDCR</a>.)
  $7C89,$03 Call #R$6720.
N $7C8C More copy protection/ copyright checks.
N $7C8C Checks "#STR($6435,$04,$16)" starts with an "#CHR$4D".
  $7C8C,$07 Jump to #R$7C98 if *#R$6435 is not equal to #N$4D (ASCII
. "#CHR$4D").
N $7C93 Checks "#STR($6456,$04,$08)" starts with an "#CHR$4D".
  $7C93,$05 Compare *#R$6456 with #N$4D (ASCII "#CHR$4D").
@ $7C98 label=RestartSpectum
  $7C98,$03 Restart the Spectrum if either string doesn't start with an
. "#CHR$4D".
N $7C9B Draw a MegaDodo!
N $7C9B #PUSHS #UDGTABLE {
.   #SIM(start=$7C82,stop=$7CC5)#SCR$02{$F0,$20,$20,$20}(megadodo-logo)
. } TABLE# #POPS
  $7C9B,$03 Set the screen buffer location #N$404F.
  $7C9E,$03 Point #REGde to the MegaDodo graphic: #R$61BB.
  $7CA1,$02 Set a counter in #REGb for #N$02 rows.
@ $7CA3 label=DrawMegaDodo_RowLoop
  $7CA3,$01 Stash the row counter on the stack.
  $7CA4,$02 And a counter in #REGc for #N$02 columns.
@ $7CA6 label=DrawMegaDodo_ColumnLoop
  $7CA6,$01 Stash the screen position on the stack.
  $7CA7,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $7CA9 label=DrawMegaDodo_LineLoop
  $7CA9,$02 Copy the UDG data to the screen buffer.
  $7CAB,$01 Move to the next UDG graphic data byte.
  $7CAC,$01 Move down one pixel line in the screen buffer.
  $7CAD,$02 Decrease the line counter by one and loop back to #R$7CA9 until all
. #N$08 lines of the UDG character have been drawn.
  $7CAF,$01 Restore the starting screen position from the stack.
  $7CB0,$01 Move right one character block.
  $7CB1,$01 Decrease the column counter by one.
  $7CB2,$02 Jump to back #R$7CA6 until the row has been populated.
  $7CB4,$02 Update the screen position.
  $7CB6,$01 Restore the row counter from the stack.
  $7CB7,$02 Decrease the row counter by one and loop back to #R$7CA3 until both
. rows have been drawn to the screen buffer.
N $7CB9 Colour the MegaDodo graphic.
  $7CB9,$02 Update #REGhl to the MegaDodo position in the attribute buffer.
  $7CBB,$05 Write #COLOUR$04 to the top two blocks.
  $7CC0,$02 Update the attribute buffer positioning.
  $7CC2,$03 Write the attribute to the bottom two blocks.
N $7CC5 Prints #FONT#(:(#STR($6435,$03,$09)))$6253,attr=$05(megadodo)
  $7CC5,$03 #REGhl=#R$6435.
  $7CC8,$03 #REGde=#N$40A7 (screen buffer location).
  $7CCB,$03 Set to print #N$09 characters in #INK$05.
  $7CCE,$03 Call #R$676F.
N $7CD1 Prints #FONT#(:(#STR($643E,$03,$08)))$6253,attr=$05(software)
  $7CD1,$02 Printing #N$08 characters.
  $7CD3,$02 Update the screen buffer address.
  $7CD5,$03 Call #R$676F.
N $7CD8 Prints #FONT#(:(#STR($642B,$03,$08)))$3D00,attr=$43(presents)
  $7CD8,$03 #REGhl=#R$642B.
  $7CDB,$03 #REGde=#N$40EC (screen buffer location).
  $7CDE,$03 Set to print #N$08 characters in #COLOUR$43.
  $7CE1,$03 Call #R$6775.
N $7CE4 Prints #FONT#(:(@#STR($6434,$03,$17)))$3D00,attr=$42(megadodo-software)
  $7CE4,$03 #REGde=#N$5023 (screen buffer location).
  $7CE7,$03 Set to print #N$18 characters in #COLOUR$42.
  $7CEA,$03 Call #R$6775.
N $7CED Prints #FONT#(:(#STR($644B,$03,$13)))$3D00,attr=$04(written-by)
  $7CED,$02 Update the screen buffer address.
  $7CEF,$03 Set to print #N$13 characters in #INK$04.
  $7CF2,$03 Call #R$6775.
N $7CF5 Prints #FONT#(:(#STR($645E,$03,$10)))$3D00,attr=$07(s-to-start)
  $7CF5,$02 Update the screen buffer address.
  $7CF7,$03 Set to print #N$10 characters in #INK$07.
  $7CFA,$03 Call #R$6775.
N $7CFD Colour the area where "PHEENIX" will be displayed.
  $7CFD,$0D Write #INK$06 to #N$0100 bytes from #N$5900 to #N$5A00 in the
. attribute buffer.
N $7D0A #PUSHS #UDGTABLE {
.   #SIM(start=$7C82,stop=$7C8C)#SIM(start=$7CFD,stop=$7D3D)#SCR$02{$00,$80,$1F0,$80}(pheenix)
. } TABLE# #POPS
N $7D0A Write "PHEENIX" using the box graphic.
  $7D0A,$02 Set a counter in #REGb for #N$51 boxes.
@ $7D0C label=DrawBox_Loop
  $7D0C,$01 Stash the box counter on the stack.
  $7D0D,$03 #REGde=#R$658A.
N $7D10 Calculate the current position byte.
N $7D10 This is the position table + the total bytes - the counter (which
. counts down from #N$51). Which just means, the table data is evaluated in
. order, from start-to-finish.
  $7D10,$07 #REGhl=#R$658A+(#N$51-#REGb).
N $7D17 Set the screen position to draw the box.
  $7D17,$01 #REGl=*#REGhl.
  $7D18,$02 #REGh=#N$48.
N $7D1A Now draw the box.
  $7D1A,$03 Point #REGde to the box graphic: #R$61E3.
  $7D1D,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
@ $7D1F label=DrawBox_LineLoop
  $7D1F,$02 Copy the UDG data to the screen buffer.
  $7D21,$01 Move to the next UDG graphic data byte..
  $7D22,$01 Move down one pixel line in the screen buffer.
  $7D23,$02 Decrease the line counter by one and loop back to #R$7D1F until all
. #N$08 lines of the UDG character have been drawn.
N $7D25 Check a few times for the player pressing "S" to start the game.
N $7D25 This has the effect of slowing the drawing down, so "PHEENIX" doesn't
. just appear instantly - rather it's drawn, one box at a time.
  $7D25,$03 Set a counter in #REGbc for #N($000A,$04,$04) loops.
@ $7D28 label=Input_StartGame_Loop
  $7D28,$03 Call #R$7E47.
  $7D2B,$02 Decrease the loop counter by one and loop back to #R$7D28 until the
. counter is zero.
  $7D2D,$01 Decrease #REGc by one.
  $7D2E,$02 Jump back to #R$7D28 until #REGc is zero.
  $7D30,$01 Restore the box counter from the stack.
  $7D31,$05 Evaluate #R$66F2...
  $7D36,$02 Write #N$00 to *#R$66F2.
  $7D38,$03 Jump to #R$7DD9 if the player has pressed "S" to start.
  $7D3B,$02 Decrease the box counter by one and loop back to #R$7D0C until all
. all the game name has been drawn out in boxes.
N $7D3D Flash the "PHEENIX" logo.
  $7D3D,$02 Set a counter in #REGb for #N$38 colour loops.
@ $7D3F label=PheenixLogoFlash_Loop
  $7D3F,$01 Stash the colour loop counter on the stack.
  $7D40,$04 Fetch the attribute for the first byte in the attribute buffer
. where the "PHEENIX" logo is displayed. Store this in #REGa.
  $7D44,$01 Increment the attribute byte by one.
  $7D45,$02,b$01 Keep only the INK bits (0-2).
  $7D47,$02 Jump to #R$7D4A if the result is not zero (checking for #INK$00).
N $7D49 Don't use INK: #INK$00...
  $7D49,$01 Increment #REGa containing the attribute byte by one - to #INK$01.
@ $7D4A label=PheenixLogoFlash_WriteAttributeByte
  $7D4A,$01 Write the attribute byte back to the attribute buffer.
  $7D4B,$08 Copy the attribute byte to the rest of the attribute buffer section
. containing the "PHEENIX" logo. This is #N($00FF,$04,$04) bytes, from #N$5901
. to #N$5A00.
N $7D53 Check a few times for the player pressing "S" to start the game.
  $7D53,$03 Set a counter in #REGbc for #N($0010,$04,$04) loops.
@ $7D56 label=Input_StartGameColourFlash_Loop
  $7D56,$03 Call #R$7E47.
  $7D59,$02 Decrease the loop counter by one and loop back to #R$7D56 until the
. counter is zero.
  $7D5B,$01 Decrease #REGc by one.
  $7D5C,$02 Jump to #R$7D56 until #REGc is zero.
  $7D5E,$01 Restore the colour loop counter from the stack.
  $7D5F,$05 Evaluate #R$66F2...
  $7D64,$02 Write #N$00 to *#R$66F2.
  $7D66,$02 Jump to #R$7DD9 if the player has pressed "S" to start.
  $7D68,$02 Decrease counter by one and loop back to #R$7D3F until counter is zero.
N $7D6A Start "Demo Mode".
  $7D6A,$04 Write #N$00 to *#R$66F5.
  $7D6E,$07 Write #N$01 to; #LIST { *#R$66F3 } { *#R$66EF } LIST#
  $7D75,$05 Write #N$04 to *#R$66F1.
  $7D7A,$04 Write #N$05 to *#R$66F0.
N $7D7E Set the level text in the header.
  $7D7E,$05 Write #N$32 (ASCII "#CHR$32") to *#R$6527.
  $7D83,$05 Write #N$06 to *#R$6897(#N$6898).
  $7D88,$03 Call #R$68B8.
  $7D8B,$03 Call #R$740C.
@ $7D8E label=Demo_Loop
  $7D8E,$01 Stash #REGbc on the stack.
  $7D8F,$01 #REGa=#REGb.
  $7D90,$02,b$01 Keep only bits 0-3.
  $7D92,$01 Stash #REGaf on the stack.
  $7D93,$01 #REGa=#REGb.
  $7D94,$01 RRCA.
  $7D95,$01 RRCA.
  $7D96,$02,b$01 Keep only bits 0-2.
  $7D98,$02 Jump to #R$7D9B if #REGa is not equal to #REGa.
  $7D9A,$01 Increment #REGa by one.
  $7D9B,$01 #REGc=#REGa.
  $7D9C,$02 Set #REGb to print #N$10 characters.
N $7D9E Prints #FONT#(:(#STR($645E,$03,$10)))$3D00,attr=$07(s-to-start)
  $7D9E,$03 #REGhl=#R$645E.
  $7DA1,$03 #REGde=#N$4027 (screen buffer location).
  $7DA4,$03 Call #R$6775.
  $7DA7,$01 Restore #REGaf from the stack.
  $7DA8,$02 Jump to #R$7DB0 if #REGa is not equal to #REGa.
  $7DAA,$06 Write a random number to *#R$66F4.
  $7DB0,$03 Call #R$6CEE.
  $7DB3,$03 Call #R$7616.
  $7DB6,$03 Call #R$7B67.
  $7DB9,$03 Call #R$79B2.
  $7DBC,$03 Call #R$7254.
  $7DBF,$03 Call #R$6890.
  $7DC2,$03 Call #R$7E47.
  $7DC5,$01 Restore #REGbc from the stack.
  $7DC6,$05 Evaluate #R$66F2...
  $7DCB,$02 Write #N$00 to *#R$66F2.
  $7DCD,$02 Jump to #R$7DD9 if the player has pressed "S" to start.
  $7DCF,$07 Jump to #R$7C82 if *#R$66F5 is not zero.
  $7DD6,$01 Increment #REGb by one.
  $7DD7,$02 Jump to #R$7D8E.

c $7DD9 Start Game
@ $7DD9 label=StartGame
N $7DD9 First collect the control method.
  $7DD9,$03 Call #R$6B4F.
N $7DDC This is a game the player started, so disable the demo mode and unset
. the game-over flag.
  $7DDC,$07 Write #N$00 to; #LIST { *#R$66F5 } { *#R$66F3 } LIST#
  $7DE3,$04 Write #N$01 to *#R$66EF.
  $7DE7,$05 Write #N$04 to *#R$66F1.
N $7DEC Set the players starting life count.
  $7DEC,$04 Write #N$05 to *#R$66F0.
  $7DF0,$03 Call #R$740C.
@ $7DF3 label=Game_Loop
  $7DF3,$03 Call #R$6CEE.
  $7DF6,$03 Call #R$7616.
  $7DF9,$03 Call #R$7B67.
  $7DFC,$03 Call #R$79B2.
  $7DFF,$03 Call #R$7254.
  $7E02,$03 Call #R$6890.
  $7E05,$06 Jump back to #R$7DF3 unless *#R$66F5 is active.
N $7E0B *#R$66F5 is active, start the "Game Over" process.
  $7E0B,$02 #REGd=#N$08.
  $7E0D,$03 #REGbc=#N($0000,$04,$04).
  $7E10,$02 Decrease counter by one and loop back to #R$7E10 until counter is zero.
  $7E12,$01 Decrease #REGc by one.
  $7E13,$02 Jump to #R$7E10 until #REGc is zero.
  $7E15,$01 Decrease #REGd by one.
  $7E16,$02 Jump to #R$7E0D if #REGd is not equal to #REGa.
  $7E18,$03 #REGhl=#R$6514.
  $7E1B,$03 #REGde=#R$651F.
  $7E1E,$02 #REGb=#N$06.
  $7E20,$02 Stash #REGhl and #REGde on the stack.
  $7E22,$04 Jump to #R$7E2A if *#REGde is equal to *#REGhl.
  $7E26,$02 Jump to #R$7E31 if *#REGde is less than *#REGhl.
  $7E28,$02 Jump to #R$7E2E.

  $7E2A,$01 Increment #REGde by one.
  $7E2B,$01 Increment #REGhl by one.
  $7E2C,$02 Decrease counter by one and loop back to #R$7E22 until counter is zero.
  $7E2E,$01 Restore #REGde from the stack.
  $7E2F,$02 Jump to #R$7E39.

  $7E31,$02 Restore #REGde and #REGhl from the stack.
  $7E33,$01 Stash #REGhl on the stack.
  $7E34,$03 #REGbc=#N($0006,$04,$04).
  $7E37,$02 LDIR.
  $7E39,$01 Restore #REGhl from the stack.
  $7E3A,$03 #REGde=#R$6514(#N$6515).
  $7E3D,$02 Write ASCII #N$30 ("#CHR$30") to *#REGhl.
  $7E3F,$03 #REGbc=#N($0005,$04,$04).
  $7E42,$02 LDIR.
  $7E44,$03 Jump to #R$7C82.

c $7E47 Input: "S" To Start
@ $7E47 label=Input_StartGame
  $7E47,$01 Disable interrupts.
  $7E48,$04 Read from the keyboard;
. #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$FD | A | S | D | F | G }
. TABLE#
  $7E4C,$04 Jump to #R$7E55 if "S" was pressed.
N $7E50 Switch the custom font to the game font.
  $7E50,$03 #REGhl=#R$6253(#N$6153).
  $7E53,$02 Jump to #R$7E5B.
@ $7E55 label=Input_StartGame_Start
  $7E55,$03 Return if "G" is being pressed.
N $7E58 Switch the custom font to the ZX Spectrum font.
  $7E58,$03 #HTML(#REGhl=<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html">#N$3C00</a>.)
@ $7E5B label=Input_StartGame_SetFont
  $7E5B,$03 Write #REGhl to #R$676F(#N$6771) (#R$676F).
N $7E5E Set the flag which will start the game.
  $7E5E,$05 Write #N$01 to #R$66F2.
  $7E63,$01 Return.

t $7E64 Messaging: Programs Wanted
@ $7E64 label=Messaging_ProgramsWanted

s $7EA5

u $FF18
