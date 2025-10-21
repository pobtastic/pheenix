; Copyright Megadodo Software 1983, 2025 ArcadeGeek LTD.
; NOTE: Disassembly is Work-In-Progress.
; Label naming is loosely based on Action_ActionName_SubAction e.g. Print_HighScore_Loop.

> $4000 @rom
> $4000 @start
> $4000 @expand=#DEF(#POKE #LINK:Pokes)
> $4000 @expand=#DEF(#ANIMATE(delay,count=$50)(name=$a)*$name-1,$delay;#FOR$02,$count||x|$name-x|;||($name-animation))
> $4000 @set-handle-unsupported-macros=1
b $4000 Loading Screen
D $4000 #UDGTABLE { =h Pheenix Loading Screen. } { #SCR$02(loading) } UDGTABLE#
@ $4000 label=Loading
  $4000,$1800,$20 Pixels.
  $5800,$0300,$20 Attributes.

b $5B00

c $5C00

b $5FD4 Graphics: Mothership Alien
@ $5FD4 label=Graphics_MothershipAlien_01
N $5FD4 Frame #N$01:
N $5FD4 #UDGS$02,$02(mothership-alien-01)(
.   #UDG(#PC+$08*($02*$y+$x),#MAP($y)($44,1:$42))(*udg)
.   udg
. )
  $5FD4,$08,b$01 #UDG(#PC)
L $5FD4,$08,$04,$02
@ $5FF4 label=Graphics_MothershipAlien_02
N $5FF4 Frame #N$02:
N $5FF4 #UDGS$02,$02(mothership-alien-02)(
.   #UDG(#PC+$08*($02*$y+$x),#MAP($y)($44,1:$42))(*udg)
.   udg
. )
  $5FF4,$08,b$01 #UDG(#PC)
L $5FF4,$08,$04,$02

b $6014

b $6026 Graphics: Lives Icon
@ $6026 label=Graphics_LivesIcon
  $6026,$08,b$01 #UDG(#PC,$42)

b $602E
  $602E,$08,b$01 #UDG(#PC)
L $602E,$08,$04,$02

b $604E Graphics: Ship
@ $604E label=Graphics_Ship
N $604E #UDGS$02,$02(ship)(
.   #UDG(#PC+$08*($02*$y+$x),$46)(*udg)
.   udg
. )
  $604E,$08,b$01 #UDG(#PC)
L $604E,$08,$04,$02

b $606E
  $606E,$08,b$01 #UDG(#PC)
L $606E,$08,$0B,$02

b $60CD
  $60CD
  $60E7
@ $613D label=Mask_LivesIcon
  $613D,$08,b$01 #UDG(#PC)
  $6153
  $6185
  $61A3

b $61BB Graphics: MegaDodo Logo
@ $61BB label=Graphics_MegaDodo
N $61BB #UDGS$02,$02(megadodo)(
.   #UDG(#PC+$08*($02*$y+$x),$04)(*udg)
.   udg
. )
  $61BB,$08,b$01 #UDG(#PC)
L $61BB,$08,$04,$02

b $61DB Graphics: Large Star
@ $61DB label=Graphics_StarLarge
  $61DB,$08,b$01 #UDG(#PC,$05)

b $61E3 Graphics: Box
@ $61E3 label=Graphics_Box
  $61E3,$08,b$01 #UDG(#PC)

b $61EB
  $61EB,$08,b$01 #UDG(#PC)
L $61EB,$08,$0C,$02

b $624B Graphics: Small Star
@ $624B label=Graphics_StarSmall
  $624B,$08,b$01 #UDG(#PC,$05)

b $6253
  $6253,$08,b$01 #UDG(#PC)
L $6253,$08,$40,$02

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
  $646E,$08 #FONT#(:(#STR(#PC,$04,$08)))$6253,attr=$06(game-over)

t $6476 Messaging: Instructions
@ $6476 label=Messaging_Instructions
  $6476,$0C #FONT#(:(#STR(#PC,$04,$0C)))$6253,attr=$06(instructions)
@ $6482 label=Messaging_Left
  $6482,$14 #FONT#(:(#STR(#PC,$04,$14)))$6253,attr=$43(left)
@ $6496 label=Messaging_Right
  $6496,$0B #FONT#(:(#STR(#PC,$04,$0B)))$6253,attr=$43(right)
@ $64A1 label=Messaging_Fire
  $64A1,$0F #FONT#(:(#STR(#PC,$04,$0F)))$6253,attr=$43(fire)
@ $64B0 label=Messaging_Barrier
  $64B0,$0F #FONT#(:(#STR(#PC,$04,$0F)))$6253,attr=$43(barrier)
@ $64BF label=Messaging_Level
  $64BF,$12 #FONT#(:(#STR(#PC,$04,$12)))$6253,attr=$07(level)

t $64D1 Messaging: "Select Joystick Or Keys"
@ $64D1 label=Messaging_SelectJoystickOrKeys
  $64D1,$17 #FONT#(:(#STR(#PC,$04,$17)))$6253,attr=$06(joystick-or-keys)
@ $64E8 label=Messaging_KempstonJoystick
  $64E8,$12 #FONT#(:(#STR(#PC,$04,$12)))$6253,attr=$06(kempston-joystick)
@ $64FA label=Messaging_AGFJoystick
  $64FA,$0D #FONT#(:(#STR(#PC,$04,$0D)))$6253,attr=$06(agf-joystick)
@ $6507 label=Messaging_Keyboard
  $6507,$0C #FONT#(:(#STR(#PC,$04,$0C)))$6253,attr=$06(keyboard)

t $6514 Messaging: Header
@ $6514 label=Messaging_Score
  $6514,$06 #FONT#(:(#STR($6514,$04,$06)))$6253,attr=$06(player-score)
@ $651A label=Messaging_Header_HighScore
  $651A,$05 #FONT#(:(#STR($651A,$04,$0B)))$6253,attr=$06(high-score)
N $651F This isn't separate, it's part of the above.
@ $651F label=Messaging_HighScore
  $651F,$06 #FONT#(:(#STR($651F,$04,$06)))$6253,attr=$06(player-high-score)
@ $6525 label=Messaging_Header_Level
  $6525,$02 #FONT#(:(#STR($6525,$04,$03)))$6253,attr=$44(level-in-game)
N $6527 This isn't separate, it's part of the above.
@ $6527 label=Messaging_Header_LevelNumber
  $6527,$01 #FONT#(:(#STR($6527,$04,$01)))$6253,attr=$44(level-number)

g $6528 Score Buffer
@ $6528 label=ScoreBuffer
B $6528,$06,$01

g $6538 Table: Mothership UDGs
@ $6538 label=Table_MothershipUDGs
B $6538,$02
B $653A,$02
B $653C,$02
B $653E,$03
T $6541,$02

g $658A Table: "PHEENIX" Logo Position Data
@ $658A label=Table_PheenixLogoPositionData
B $658A,$01 Screen buffer address #N(#PC-$658A): #N($4800+#PEEK(#PC)).
L $658A,$01,$51

g $65DB

w $65DD
  $65FB

g $6619

g $6637

g $667D

g $6680
  $6680

g $6691

g $6695

g $66A7

g $66B9

g $66D5

g $667F

g $6693

g $6695

g $6696

g $66A3
B $66A3,$01

g $66A4
B $66A4,$01

g $66A5
B $66A5,$01

g $66A6

g $66BA

g $66D4

g $66ED
W $66ED,$02

g $66EF Flag: Extra Life
@ $66EF label=Flag_ExtraLife
D $66EF Indicates whether an extra life should be awarded or not.
B $66EF,$01

g $66F0 Player Lives
@ $66F0 label=Player_Lives
B $66F0,$02,$01 Life counter.

g $66F2 Flag: Title Screen Start
@ $66F2 label=Flag_TitleScreenStart
D $66F2 Indicates the start state while the title screen is showing.
B $66F2,$01

g $66F3 Flag: Demo Mode Active?
@ $66F3 label=Flag_ActiveDemoMode
B $66F3,$01

g $66F4

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

c $670E
  $670E,$02 Stash #REGhl and #REGbc on the stack.
  $6710,$03 #REGhl=*#R$65DB.
  $6713,$01 #REGb=*#REGhl.
  $6714,$01 Increment #REGhl by one.
  $6715,$02 #REGa=#N$38.
  $6717,$01 Merge the bits from #REGh.
  $6718,$01 #REGh=#REGa.
  $6719,$01 #REGa=#REGb.
  $671A,$03 Write #REGhl to *#R$65DB.
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
  $675D,$02 Move down one pixel line.
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
N $67F9 Prints "#FONT#(:(#STR($651A,$04,$0B)))$6253,attr=$06(high-score)".
  $67F9,$01 Set the print attribute to #INK$06.
  $67FA,$02 Set #REGb for printing #N$0B characters.
  $67FC,$02 Update the screen buffer printing position to #N$4012.
  $67FE,$03 Call #R$676F.
N $6801 Prints "#FONT#(:(#STR($6525,$04,$03)))$6253,attr=$44(header-level)".
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

c $6845
N $6845 #PUSHS #UDGTABLE { #CLS($47)#SIM(start=$6845,stop=$688F,de=$4000)#SCR$02(dh) } TABLE# #POPS
  $6845,$03 #REGhl=#R$613D.
  $6848,$04 #REGix=#N($0002,$04,$04).
  $684C,$02 Jump to #R$685A.

c $684E
N $684E #PUSHS #UDGTABLE { #CLS($07)#SIM(start=$684E,stop=$688F,de=$4480)#SCR$02(dgdfdgdh) } TABLE# #POPS
  $684E,$03 #REGhl=#R$606E.
  $6851,$02 Jump to #R$6856.

c $6853
N $6853 #PUSHS #UDGTABLE { #CLS($47)#SIM(start=$6853,stop=$688F,de=$4000)#SCR$02(dgfgdh) } TABLE# #POPS
  $6853,$03 #REGhl=#R$608E.
  $6856,$04 #REGix=#N($0200,$04,$04).
  $685A,$01 Stash #REGde on the stack.
  $685B,$01 Exchange the #REGde and #REGhl registers.
  $685C,$02 #REGb=#N$02.
  $685E,$02 Stash #REGbc and #REGhl on the stack.
  $6860,$02 #REGb=#N$02.
  $6862,$01 Stash #REGbc on the stack.
  $6863,$01 #REGa=*#REGhl.
  $6864,$02 Compare #REGa with the low byte of #REGix.
  $6866,$01 Stash #REGhl on the stack.
  $6867,$02 Jump to #R$6879 if ?? is not equal to #N$00.
  $6869,$02 #REGa=the high byte of #REGix.
  $686B,$01 Write #REGa to *#REGhl.
  $686C,$03 Call #R$6704.
  $686F,$02 #REGb=#N$08.
  $6871,$01 #REGa=*#REGde.
  $6872,$01 Write #REGa to *#REGhl.
  $6873,$01 Increment #REGh by one.
  $6874,$01 Increment #REGde by one.
  $6875,$02 Decrease counter by one and loop back to #R$6871 until counter is zero.
  $6877,$02 Jump to #R$6880.
  $6879,$03 #REGhl=#N($0008,$04,$04).
  $687C,$01 Set flags.
  $687D,$02 #REGhl+=#REGde (with carry).
  $687F,$01 Exchange the #REGde and #REGhl registers.
  $6880,$01 Restore #REGhl from the stack.
  $6881,$01 Increment #REGhl by one.
  $6882,$01 Restore #REGbc from the stack.
  $6883,$02 Decrease counter by one and loop back to #R$6862 until counter is zero.
  $6885,$01 Restore #REGhl from the stack.
  $6886,$02 #REGc=#N$20.
  $6888,$01 Set flags.
  $6889,$02 #REGhl+=#REGbc (with carry).
  $688B,$01 Restore #REGbc from the stack.
  $688C,$02 Decrease counter by one and loop back to #R$685E until counter is zero.
  $688E,$01 Restore #REGde from the stack.
  $688F,$01 Return.

c $6890
  $6890,$06 Return if *#R$6527 is equal to #N$35 (ASCII "#CHR$35").
  $6896,$01 Stash #REGbc on the stack.
  $6897,$03 #REGbc=#N($0008,$04,$04).
  $689A,$02 Decrease counter by one and loop back to #R$689A until counter is zero.
  $689C,$01 Decrease #REGc by one.
  $689D,$02 Jump to #R$689A until #REGc is zero.
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

c $6926
  $6926,$01 Stash #REGbc on the stack.
  $6927,$03 #REGa=*#R$66A5.
  $692A,$01 Decrease #REGa by one.
  $692B,$02,b$01 Flip bits 0-7.
  $692D,$02,b$01 Keep only bits 3-5.
  $692F,$06 Shift #REGa right (with carry).
  $6935,$02 #REGa+=#N$40.
  $6937,$01 #REGb=#REGa.
  $6938,$02
  $693A,$02 Compare #REGa with #N$02.
  $693C,$02 Jump to #R$6942 if #REGa is equal to #N$02.
  $693E,$02 #REGa=#N$40.
  $6940,$02 Jump to #R$6943.

  $6942,$01 #REGa=#REGb.
  $6943,$01 Write #REGa to *#REGhl.
  $6944,$03 Call #R$6704.
  $6947,$01 Stash #REGhl on the stack.
  $6948,$03 #REGa=*#R$66A3.
  $694B,$02 #REGh=#N$00.
  $694D,$01 #REGl=#REGa.
  $694E,$03 Multiply #REGhl by #N$08.
  $6951,$04 #REGhl+=#R$61A3.
  $6955,$01 Exchange the #REGde and #REGhl registers.
  $6956,$01 Restore #REGhl from the stack.
  $6957,$01 Increment #REGa by one.
  $6958,$04 Jump to #R$695D if #REGa is not equal to #N$03.
  $695C,$01 #REGa=#N$00.
  $695D,$03 Write #REGa to *#R$66A3.
  $6960,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $6962,$02 Copy the UDG data to the screen buffer.
  $6964,$01 Move down one pixel line in the screen buffer.
  $6965,$01 Move to the next UDG graphic data byte.
  $6966,$02 Decrease the line counter by one and loop back to #R$6962 until all
. #N$08 lines of the UDG character have been drawn.
  $6968,$01 Restore #REGbc from the stack.
  $6969,$01 Return.

c $696A
D $696A #PUSHS #UDGTABLE {
.   #SIM(start=$696A,stop=$6A22)#SCR$02(test)
. } TABLE# #POPS
  $696A,$0C Call #R$677B using #R$6538; printing #N$02 characters in #INK$05.
  $6976,$07 Call #R$677B using #R$653A; printing #N$02 characters in #INK$05.
  $697D,$08 Call #R$677B using #R$653C; printing #N$02 characters in #INK$06.
  $6985,$08 Call #R$677B using #R$653E; printing #N$08 characters in #COLOUR$32.
  $698D,$02 #REGe=#N$D4.
  $698F,$03 #REGbc=#N$0206.
  $6992,$03 Call #R$677B.
  $6995,$02 #REGe=#N$E9.
  $6997,$01 Increment #REGb by one.
  $6998,$03 Call #R$677B.
  $699B,$01 Increment #REGe by one.
  $699C,$03 #REGbc=#N$0C31.
  $699F,$03 Call #R$6775.
  $69A2,$02 #REGe=#N$F6.
  $69A4,$03 #REGbc=#N$0106.
  $69A7,$03 Call #R$677B.
  $69AA,$03 #REGde=#N$4808 (screen buffer location).
  $69AD,$01 Increment #REGb by one.
  $69AE,$03 Call #R$677B.
  $69B1,$01 Increment #REGe by one.
  $69B2,$03 #REGbc=#N$0E31.
  $69B5,$03 Call #R$677B.
  $69B8,$02 #REGe=#N$17.
  $69BA,$03 #REGbc=#N$0106.
  $69BD,$03 Call #R$677B.
  $69C0,$02 #REGe=#N$27.
  $69C2,$03 #REGbc=#N$120F.
  $69C5,$03 Call #R$677B.
  $69C8,$02 #REGe=#N$47.
  $69CA,$03 #REGbc=#N$0102.
  $69CD,$03 Call #R$677B.
  $69D0,$01 Increment #REGb by one.
  $69D1,$02 #REGe=#N$68.
  $69D3,$03 Call #R$677B.
  $69D6,$02 #REGe=#N$89.
  $69D8,$02 #REGb=#N$02.
  $69DA,$03 Call #R$677B.
  $69DD,$02 #REGe=#N$AB.
  $69DF,$02 #REGb=#N$0A.
  $69E1,$03 Call #R$677B.
  $69E4,$02 #REGe=#N$95.
  $69E6,$02 #REGb=#N$02.
  $69E8,$03 Call #R$677B.
  $69EB,$02 #REGe=#N$77.
  $69ED,$01 Increment #REGb by one.
  $69EE,$03 Call #R$677B.
  $69F1,$02 #REGe=#N$58.
  $69F3,$01 Increment #REGb by one.
  $69F4,$03 Call #R$677B.
  $69F7,$06 Write #N$0404 to *#N$58EF (attribute buffer location).
  $69FD,$06 Write #N$4242 to *#N$590F (attribute buffer location).
  $6A03,$02 #REGa=#COLOUR$10.
  $6A05,$03 #REGhl=#N$5948 (attribute buffer location).
  $6A08,$03 #REGde=#N$5949 (attribute buffer location).
  $6A0B,$01 Write #REGa to *#REGhl.
  $6A0C,$02 #REGc=#N$0F.
  $6A0E,$02 LDIR.
  $6A10,$02 #REGl=#N$69.
  $6A12,$02 #REGe=#N$6A.
  $6A14,$01 Write #REGa to *#REGhl.
  $6A15,$02 #REGc=#N$0D.
  $6A17,$02 LDIR.
  $6A19,$02 #REGl=#N$8A.
  $6A1B,$02 #REGe=#N$8B.
  $6A1D,$01 Write #REGa to *#REGhl.
  $6A1E,$02 #REGc=#N$0B.
  $6A20,$02 LDIR.
  $6A22,$01 Return.

c $6A23
  $6A23,$03 #REGde=#N$40CF (screen buffer location).
  $6A26,$01 Stash #REGde on the stack.
  $6A27,$03 #REGhl=#R$6541.
  $6A2A,$03 #REGbc=#N$0232.
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
  $6A69,$03 #REGhl=#R$66D4.
  $6A6C,$01 #REGa=*#REGhl.
  $6A6D,$01 Increment *#REGhl by one.
  $6A6E,$02,b$01 Keep only bits 0-3.
  $6A70,$02 Jump to #R$6A99 if *#REGhl is not equal to #N$11.
  $6A72,$02 Test bit 4 of *#REGhl.
  $6A74,$03 #REGhl=#R$5FD4.
  $6A77,$02 Jump to #R$6A7C if *#REGhl is equal to #N$11.
  $6A79,$03 #REGhl=#R$5FF4.
  $6A7C,$03 #REGde=#N$40EF (screen buffer location).
  $6A7F,$02 #REGb=#N$02.
  $6A81,$01 Stash #REGbc on the stack.
  $6A82,$02 #REGb=#N$02.
  $6A84,$02 Stash #REGbc and #REGde on the stack.
  $6A86,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $6A88,$02 Copy the UDG data to the screen buffer.
  $6A8A,$01 Move down one pixel line in the screen buffer.
  $6A8B,$01 Move to the next UDG graphic data byte.
  $6A8C,$02 Decrease the line counter by one and loop back to #R$6A88 until all
. #N$08 lines of the UDG character have been drawn.
  $6A8E,$01 Restore #REGde from the stack.
  $6A8F,$01 Increment #REGde by one.
  $6A90,$01 Restore #REGbc from the stack.
  $6A91,$02 Decrease counter by one and loop back to #R$6A84 until counter is zero.
  $6A93,$03 #REGde=#N$480F (screen buffer location).
  $6A96,$01 Restore #REGbc from the stack.
  $6A97,$02 Decrease counter by one and loop back to #R$6A81 until counter is zero.
  $6A99,$05 Return if *#R$6695 is not zero.
  $6A9E,$03 #REGhl=#N($0003,$04,$04).
  $6AA1,$01 Stash #REGhl on the stack.
  $6AA2,$03 #REGix=#REGhl (using the stack).
  $6AA5,$03 #REGbc=#R$66BA.
  $6AA8,$01 #REGhl+=#REGhl.
  $6AA9,$01 #REGhl+=#REGbc.
  $6AAA,$01 Stash #REGhl on the stack.
  $6AAB,$01 #REGe=*#REGhl.
  $6AAC,$01 Increment #REGhl by one.
  $6AAD,$01 #REGd=*#REGhl.
  $6AAE,$01 #REGa=#REGd.
  $6AAF,$01 Exchange the #REGde and #REGhl registers.
  $6AB0,$03 Jump to #R$6AC9 if #REGa is not zero.
  $6AB3,$03 Call #R$670E.
  $6AB6,$02,b$01 Keep only bits 0-3.
  $6AB8,$01 Set the bits from #REGa.
  $6AB9,$02 Jump to #R$6AC0 if #REGhl is not equal to #REGa.
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

  $6AF2,$05 Jump to #R$6B25 if *#REGhl is equal to #N$02.
  $6AF7,$04 Jump to #R$6B05 if *#REGhl is not equal to #N$46.
  $6AFB,$06 Jump to #R$6AEE if *#R$6693 is not zero.
  $6B01,$02 Write #N$06 to *#REGhl.
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
  $6B24,$01 Restore #REGhl from the stack.
  $6B25,$01 Exchange the #REGde and #REGhl registers.
  $6B26,$01 Restore #REGhl from the stack.
  $6B27,$01 Write #REGe to *#REGhl.
  $6B28,$01 Increment #REGhl by one.
  $6B29,$01 Write #REGd to *#REGhl.
  $6B2A,$01 Increment #REGhl by one.
  $6B2B,$01 Restore #REGhl from the stack.
  $6B2C,$01 Decrease #REGl by one.
  $6B2D,$03 Jump to #R$6AA1 if #REGl is not equal to #REGa.
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

c $6C9D
  $6C9D,$05 Return if *#R$6693 is not zero.
  $6CA2,$03 #REGhl=*#R$66ED.
  $6CA5,$02 #REGb=#N$02.
  $6CA7,$02 Stash #REGbc and #REGhl on the stack.
  $6CA9,$02 #REGb=#N$03.
  $6CAB,$01 #REGa=*#REGhl.
  $6CAC,$03 Jump to #R$6CBF if #REGa is zero.
  $6CAF,$04 Jump to #R$6CBF if #REGa is equal to #N$46.
  $6CB3,$04 Jump to #R$6CBF if #REGa is equal to #N$07.
N $6CB7 See #POKE#immunity(Immunity).
  $6CB7,$05 Write #N$01 to *#R$66A4.
  $6CBC,$02 Restore #REGaf and #REGaf from the stack.
  $6CBE,$01 Return.

  $6CBF,$01 Increment #REGhl by one.
  $6CC0,$02 Decrease counter by one and loop back to #R$6CAB until counter is zero.
  $6CC2,$01 Restore #REGhl from the stack.
  $6CC3,$02 Set bit 5 of #REGl.
  $6CC5,$01 Restore #REGbc from the stack.
  $6CC6,$02 Decrease counter by one and loop back to #R$6CA7 until counter is zero.
  $6CC8,$01 Return.

c $6CC9 Draw Ship
@ $6CC9 label=DrawShip
D $6CC9 #PUSHS #POKES$66F3,$00;$74EF,$00;$74F0,$00;$74F1,$00
. #SIM(start=$74A4,stop=$74B9) #UDGTABLE {
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

c $6CEE
  $6CEE,$03 #REGhl=#R$66A4.
  $6CF1,$01 #REGa=*#REGhl.
  $6CF2,$04 Jump to #R$6DCF if #REGa is zero.
  $6CF6,$01 Increment #REGhl by one.
  $6CF7,$01 #REGa=*#REGhl.
  $6CF8,$04 Jump to #R$6D00 if #REGa is not equal to #N$40.
  $6CFC,$01 Decrease #REGhl by one.
  $6CFD,$02 Write #N$02 to *#REGhl.
  $6CFF,$01 Return.

@ $6D00 label=GameOver
  $6D00,$07 Jump to #R$7030 if *#R$6695 is not zero.
  $6D07,$07 Jump to #R$6D29 if *#R$66F0 is not equal to #N$01.
  $6D0E,$06 Jump to #R$6D29 if *#R$66F3 is set.
  $6D14,$01 Stash #REGhl on the stack.
N $6D15 Prints #FONT#(:(#STR($646E,$04,$04)))$3D00,attr=$45(game)
  $6D15,$03 #REGhl=#R$646E.
  $6D18,$03 #REGde=#N$48CB (screen buffer location).
  $6D1B,$03 Set to print #N$04 characters in #COLOUR$45.
  $6D1E,$03 Call #R$676F.
N $6D21 Prints #FONT#(:(#STR($6472,$04,$04)))$3D00,attr=$45(over)
  $6D21,$02 Update the screen buffer address.
  $6D23,$02 Set to print #N$04 characters.
  $6D25,$03 Call #R$676F.

  $6FAE,$02 #REGa=#COLOUR$46.

c $7069
  $7069,$01 Disable interrupts.
N $706A Check if the control method is the Kempson joystick?
  $706A,$07 Jump to #R$7077 if *#R$66F6 is not the Kempston joystick.
N $7071 The control method is Kempston joystick, so test the fire button.
  $7071,$02 #REGa=read from the Kempston joystick port.
  $7073,$02,b$01 Keep only bit 4 (the fire button input).
  $7075,$02 Jump to #R$708A.
N $7077 Check if the control method is the AGF joystick?
@ $7077 label=Player_Input_AGF
  $7077,$04 Jump to #R$707F if *#R$66F6 is not the AGF joystick.
  $707B,$02 #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$EF | 0 | 9 | 8 | 7 | 6 }
. TABLE#
  $707D,$02 Jump to #R$7081.
N $707F Else, the only control option left is the keyboard.
@ $707F label=Player_Input_Keyboard
  $707F,$02 #TABLE(default,centre,centre,centre,centre,centre,centre)
. { =h,r2 Port Number | =h,c5 Bit }
. { =h 0 | =h 1 | =h 2 | =h 3 | =h 4 }
. { #N$7F | SPACE | FULL-STOP | M | N | B }
. TABLE#
  $7081,$02 Read from the keyboard.
  $7083,$02,b$01 Keep only bit 0.
  $7085,$02 #REGa=#N$10.
  $7087,$02 Jump to #R$708A if ?? is equal to #N$10.
  $7089,$01 #REGa=#N$00.
  $708A,$03 Write #REGa to *#R$6696.
  $708D,$04 Jump to #R$714E if #REGa is equal to #REGc.
  $7091,$04 Jump to #R$714E if #REGa is zero.
  $7095,$06 Jump to #R$70B8 if *#R$66F3 is set.
  $709B,$01 Stash #REGde on the stack.
  $709C,$02 #REGb=#N$16.
  $709E,$03 #REGhl=#N($0052,$04,$04).
  $70A1,$02 Stash #REGbc and #REGhl on the stack.
  $70A3,$02 #REGa=#COLOUR$10.
  $70A5,$01 Disable interrupts.
  $70A6,$02 Set border to the colour held by #REGa.
  $70A8,$03 #REGde=#N($0001,$04,$04).
  $70AB,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $70AE,$01 Disable interrupts.
  $70AF,$01 Restore #REGhl from the stack.
  $70B0,$04 Increment #REGhl by four.
  $70B4,$01 Restore #REGbc from the stack.
  $70B5,$02 Decrease counter by one and loop back to #R$70A1 until counter is zero.
  $70B7,$01 Restore #REGde from the stack.
  $70B8,$06 #REGl=*#R$66ED-#N$1F.
  $70BE,$02 #REGh=#N$5A.
  $70C0,$05 Jump to #R$714E if *#REGhl is not zero.
  $70C5,$02 Write #COLOUR$47 to *#REGhl.
  $70C7,$03 Call #R$6704.
  $70CA,$02 Set bit 2 of #REGh.
  $70CC,$01 Stash #REGhl on the stack.
  $70CD,$03 #REGa=*#R$66A6.
  $70D0,$01 Set the bits from #REGa.
  $70D1,$01 #REGb=#REGa.
  $70D2,$02 #REGa=#N$01.
  $70D4,$02 Jump to #R$70DA if #REGhl is equal to #REGa.
  $70D6,$02 Shift #REGa left (with carry).
  $70D8,$02 Decrease counter by one and loop back to #R$70D6 until counter is zero.
  $70DA,$02 Restore #REGde and #REGbc from the stack.
  $70DC,$02 Stash #REGbc and #REGde on the stack.
  $70DE,$03 #REGhl=#R$669E.
  $70E1,$01 Increment #REGhl by one.
  $70E2,$02 Decrease counter by one and loop back to #R$70E1 until counter is zero.
  $70E4,$01 Write #REGa to *#REGhl.
  $70E5,$02 Jump to #R$7147.

c $70E7

c $7200

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
  $726E,$05 Call #R$7564 if bit 6 of #REGd is set.
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

c $72C9

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

c $74A4 Game Intro
@ $74A4 label=GameIntro
D $74A4 #PUSHS #POKES$74EF,$00;$74F0,$00;$74F1,$00 #UDGTABLE {
.   #CLS$05#SIM(start=$74B9,stop=$7558)#SCR$02(level-01)
. } TABLE# #POPS
  $74A4,$03 Call #R$6720.
N $74A7 Don't bother with the animation if this is the demo mode.
  $74A7,$05 Return if *#R$66F3 is set.
N $74AC Set the attribute buffer to all cyan.
  $74AC,$0D Copy #INK$05 to #N$0300 bytes starting from #N$5800 in the
. attribute buffer.
  $74B9,$03 #REGhl=#R$6C13.
  $74BC,$02 Set a counter in #REGb for #N$2E stars to draw.
@ $74BE label=GameIntro_StarLoop
  $74BE,$05 Jump to #R$74E3 if #REGb is greater than or equal to #N$2D.
N $74C3 Check if the control method is the Kempson joystick?
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
  $756D,$09 Jump to #R$7584 if *#REGhl is equal to #N$46 or #N$07.
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

c $75AD
  $75AD,$03 #REGhl=#R$60AE.
  $75B0,$02 Jump to #R$75DA.

c $75B2
  $75B2,$03 #REGhl=#R$60CD.
  $75B5,$02 Jump to #R$75DA.

c $75B7
  $75B7,$03 #REGhl=#R$60E7.
  $75BA,$02 Jump to #R$75BF.

c $75BC
E $75BC Continue on to #R$75BF.
  $75BC,$03 #REGhl=#R$60FF.

c $75BF
  $75BF,$03 #REGbc=#N($0505,$04,$04).
  $75C2,$01 #REGa=#N$00.
  $75C3,$02 Write #REGa to the low byte of #REGix.
  $75C5,$02 Jump to #R$75E0.

  $75C7,$03 #REGhl=#R$611F.
  $75CA,$02 #REGb=#N$05.
  $75CC,$04 #REGc=*#R$667D.
  $75D0,$02 Jump to #R$75DE.

  $75D2,$03 #REGhl=#R$6185.
  $75D5,$02 Jump to #R$75DA.

  $75D7,$03 #REGhl=#R$615B.
  $75DA,$04 #REGbc=*#R$667D.
  $75DE,$02 Write #REGb to the low byte of #REGix.
  $75E0,$03 Stash #REGde, #REGbc and #REGde on the stack.
  $75E3,$02 #REGb=#N$03.
  $75E5,$02 Stash #REGbc and #REGde on the stack.
  $75E7,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $75E9,$02 Copy the UDG data to the screen buffer.
  $75EB,$01 Move to the next UDG graphic data byte. 
  $75EC,$01 Move down one pixel line in the screen buffer.
  $75ED,$02 Decrease the line counter by one and loop back to #R$75E9 until all
. #N$08 lines of the UDG character have been drawn.
  $75EF,$01 Restore #REGde from the stack.
  $75F0,$01 Increment #REGde by one.
  $75F1,$01 Restore #REGbc from the stack.
  $75F2,$02 Decrease counter by one and loop back to #R$75E5 until counter is zero.
  $75F4,$02 Restore #REGde and #REGbc from the stack.
  $75F6,$01 Stash #REGhl on the stack.
  $75F7,$03 Call #R$66F7.
  $75FA,$01 Exchange the #REGde and #REGhl registers.
  $75FB,$02 #REGa=the low byte of #REGix.
  $75FD,$01 Write #REGa to *#REGhl.
  $75FE,$01 Increment #REGhl by one.
  $75FF,$01 Write #REGc to *#REGhl.
  $7600,$01 Increment #REGhl by one.
  $7601,$01 Write #REGb to *#REGhl.
  $7602,$04 #REGhl+=#N($001F,$04,$04).
  $7606,$02 Write #N$06 to *#REGhl.
  $7608,$03 Call #R$6704.
  $760B,$01 Restore #REGde from the stack.
  $760C,$02 Set a line counter in #REGb (#N$08 lines in a UDG).
  $760E,$02 Copy the UDG data to the screen buffer.
  $7610,$01 Move down one pixel line in the screen buffer.
  $7611,$01 Move to the next UDG graphic data byte. 
  $7612,$02 Decrease the line counter by one and loop back to #R$760E until all
. #N$08 lines of the UDG character have been drawn.
  $7614,$01 Restore #REGde from the stack.
  $7615,$01 Return.

c $7616

c $79B2
  $79B2,$03 #REGa=*#R$6695.
  $79B5,$02,b$01 Keep only bit 0.
  $79B7,$01 Return if ?? is equal to #N$00.
M $79B2,$06 Return if bit 0 of *#R$6695 is not set.
  $79B8,$03 #REGhl=#R$66D5.
  $79BB,$02 #REGb=#N$06.
  $79BD,$04 Jump to #R$79CA if *#REGhl is not zero.
  $79C1,$01 Stash #REGbc on the stack.
  $79C2,$02 #REGb=#N$C8.
  $79C4,$02 Decrease counter by one and loop back to #R$79C4 until counter is zero.
  $79C6,$01 Restore #REGbc from the stack.
  $79C7,$03 Jump to #R$7B5F.

  $79CA,$03 Stash #REGaf, #REGbc and #REGhl on the stack.
  $79CD,$06 Jump to #R$7A1F if *#R$66F3 is set.
  $79D3,$03 #REGa=*#R$66F1.
  $79D6,$02,b$01 Keep only bit 1.
  $79D8,$02 Jump to #R$79F8 if ?? is equal to #REGa.
M $79D3,$07 Jump to #R$79F8 if bit 1 of *#R$66F1 is not zero.
  $79DA,$07 #REGde=*#REGhl*#N$08.
  $79E1,$04 #REGhl=#N($00F2,$04,$04)+#REGde.
  $79E5,$02 #REGb=#N$03.
  $79E7,$02 Stash #REGbc and #REGhl on the stack.
  $79E9,$03 #REGde=#N($0002,$04,$04).
  $79EC,$03 #HTML(Call <a "noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/03B5.html">BEEPER</a>.)
  $79EF,$01 Disable interrupts.
  $79F0,$01 Restore #REGhl from the stack.
  $79F1,$02 Increment #REGhl by two.
  $79F3,$01 Restore #REGbc from the stack.
  $79F4,$02 Decrease counter by one and loop back to #R$79E7 until counter is zero.
  $79F6,$02 Jump to #R$7A1F.

c $7B67 Handler: Aliens
@ $7B67 label=Handler_Aliens
N $7B67 See #POKE#aliens-not-fire(Aliens Don't Fire).
  $7B67,$05 Return if *#R$6691 is zero.
  $7B6C,$05 Return if #REGa=*#R$6695 is not zero.
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
  $7BDF,$06 Jump to #R$7BE7 if *#R$6693 is zero.
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
  $7C19,$05 Jump to #R$7C50 if *#REGhl is equal to #N$46.
  $7C1E,$04 Jump to #R$7C50 if *#REGhl is equal to #N$07.
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
  $7C45,$06 Jump to #R$7C50 if *#R$6693 is not zero.
  $7C4B,$05 Jump to #R$7C54 if *#REGhl is equal to #N$46.
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
. } UDGTABLE# #POPS
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
N $7CC5 Prints #FONT#(:(#STR($6435,$04,$09)))$6253,attr=$05(megadodo)
  $7CC5,$03 #REGhl=#R$6435.
  $7CC8,$03 #REGde=#N$40A7 (screen buffer location).
  $7CCB,$03 Set to print #N$09 characters in #INK$05.
  $7CCE,$03 Call #R$676F.
N $7CD1 Prints #FONT#(:(#STR($643E,$04,$08)))$6253,attr=$05(software)
  $7CD1,$02 Printing #N$08 characters.
  $7CD3,$02 Update the screen buffer address.
  $7CD5,$03 Call #R$676F.
N $7CD8 Prints #FONT#(:(#STR($642B,$04,$08)))$3D00,attr=$43(presents)
  $7CD8,$03 #REGhl=#R$642B.
  $7CDB,$03 #REGde=#N$40EC (screen buffer location).
  $7CDE,$03 Set to print #N$08 characters in #COLOUR$43.
  $7CE1,$03 Call #R$6775.
N $7CE4 Prints #FONT#(:(@#STR($6434,$04,$17)))$3D00,attr=$42(megadodo-software)
  $7CE4,$03 #REGde=#N$5023 (screen buffer location).
  $7CE7,$03 Set to print #N$18 characters in #COLOUR$42.
  $7CEA,$03 Call #R$6775.
N $7CED Prints #FONT#(:(#STR($644B,$04,$13)))$3D00,attr=$04(written-by)
  $7CED,$02 Update the screen buffer address.
  $7CEF,$03 Set to print #N$13 characters in #INK$04.
  $7CF2,$03 Call #R$6775.
N $7CF5 Prints #FONT#(:(#STR($645E,$04,$10)))$3D00,attr=$07(s-to-start)
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
N $7D9E Prints #FONT#(:(#STR($645E,$04,$10)))$3D00,attr=$07(s-to-start)
  $7D9E,$03 #REGhl=#R$645E.
  $7DA1,$03 #REGde=#N$4027 (screen buffer location).
  $7DA4,$03 Call #R$6775.
  $7DA7,$01 Restore #REGaf from the stack.
  $7DA8,$02 Jump to #R$7DB0 if #REGa is not equal to #REGa.
  $7DAA,$03 Call #R$670E.
  $7DAD,$03 Write #REGa to *#R$66F4.
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
  $7DF3,$03 Call #R$6CEE.
  $7DF6,$03 Call #R$7616.
  $7DF9,$03 Call #R$7B67.
  $7DFC,$03 Call #R$79B2.
  $7DFF,$03 Call #R$7254.
  $7E02,$03 Call #R$6890.
  $7E05,$06 Jump to #R$7DF3 if *#R$66F5 is zero.
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
  $7E50,$03 #REGhl=#R$6153.
  $7E53,$02 Jump to #R$7E5B.
@ $7E55 label=Input_StartGame_Start
  $7E55,$03 Return if "G" is being pressed.
  $7E58,$03 #HTML(#REGhl=<a rel="noopener nofollow" href="https://skoolkit.ca/disassemblies/rom/hex/asm/3D00.html">#N$3C00</a>.)
@ $7E5B label=Input_StartGame_SetFont
  $7E5B,$03 Write #REGhl to #R$676F(#N$6771) (#R$676F).
  $7E5E,$05 Write #N$01 to #R$66F2.
  $7E63,$01 Return.

t $7E64 Messaging: Programs Wanted
@ $7E64 label=Messaging_ProgramsWanted

s $7EA5

u $FF18
