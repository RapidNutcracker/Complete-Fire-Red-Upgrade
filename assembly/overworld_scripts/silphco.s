.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_silphcoelevatorthatworks_Start
EventScript_silphcoelevatorthatworks_Start:
	lockall
	setvar 0x8006 0x0
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor2
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor3
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor4
	special 0x25
	setvar 0x8006 0x4
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor5
	special 0x25
	setvar 0x8006 0x5
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor6
	special 0x25
	preparemsg 0x81A535C @"Which floor do you want?"
	waitmsg
	multichoice 0x0 0x0 0x24 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Firstfloor
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Secondfloor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Thirdfloor
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Fourthfloor
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Fifthfloor
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Sixthfloor
	releaseall
	end

EventScript_silphcoelevatorthatworks_End:
	releaseall
	end

EventScript_silphcoelevatorthatworks_Firstfloor:
	setdynamicwarp 0x1 0x2F 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Secondfloor:
	setdynamicwarp 0x1 0x30 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Thirdfloor:
	setdynamicwarp 0x1 0x31 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Fourthfloor:
	setdynamicwarp 0x1 0x32 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Fifthfloor:
	setdynamicwarp 0x1 0x33 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Sixthfloor:
	setdynamicwarp 0x1 0x34 0xFF 0x14 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Elevatorshit:
	special 0x111 @does elevator shit i think?
	waitstate
	return

.global EventScript_silphcoelevatorthatworks2_Start
EventScript_silphcoelevatorthatworks2_Start:
	lockall
	setvar 0x8006 0x0
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor7
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor8
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor9
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor10
	special 0x25
	setvar 0x8006 0x4
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor11
	special 0x25
	preparemsg 0x81A535C @"Which floor do you want?"
	waitmsg
	multichoice 0x0 0x0 0x23 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Seventhfloor
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Eighthfloor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Ninthfloor
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Tenthfloor
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Eleventhfloor
	releaseall
	end

EventScript_silphcoelevatorthatworks2_End:
	releaseall
	end

EventScript_silphcoelevatorthatworks2_Seventhfloor:
	setdynamicwarp 0x1 0x35 0xFF 0x17 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Eighthfloor:
	setdynamicwarp 0x1 0x36 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Ninthfloor:
	setdynamicwarp 0x1 0x37 0xFF 0x18 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Tenthfloor:
	setdynamicwarp 0x1 0x38 0xFF 0xD 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Eleventhfloor:
	setdynamicwarp 0x1 0x39 0xFF 0xD 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Elevatorshit:
	special 0x111 @does elevator shit i think?
	waitstate
	return

.global EventScript_SilphCo_Twave
EventScript_SilphCo_Twave:
	checkflag 0x2C8
    lock
    faceplayer 
	if 0x1 _goto EventScript_twave_Done
	msgbox gText_twave_3 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_twave_Take
	msgbox gText_twave_6 0x6
	release
	end

EventScript_twave_Take:
	msgbox gText_twave_4 0x6
	giveitem ITEM_TM73 0x1 MSG_OBTAIN
	setflag 0x2C8
	msgbox gText_twave_5 0x6
	release
	end

EventScript_twave_Done:
	msgbox gText_twave_5 0x6
	release
	end

.global EventScript_silphcotop_Start
EventScript_silphcotop_Start:
	setvar 0x5040 0x1
	goto EventScript_silphcoteambattle_Script
	end

.global EventScript_silphcoteambattle_Start
EventScript_silphcoteambattle_Start:
	setvar 0x5040 0x0 @middle tile
	goto EventScript_silphcoteambattle_Script
	end

EventScript_silphcoteambattle_Script:
	msgbox gText_silphcoteambattle_1 0x6
	clearflag 0x200
	showsprite 0x9
	applymovement 0xFF EventScript_silphcoteambattle_Facedown
	applymovement 0x8 EventScript_silphcoteambattle_Moveup
	applymovement 0x7 EventScript_silphcoteambattle_Moveup
	waitmovement 0x0
	applymovement 0x7 EventScript_silphcoteambattle_Step
	waitmovement 0x0
	msgbox gText_silphcoteambattle_2 0x6
	applymovement 0x8 EventScript_silphcoteambattle_Faceleft @7 is archer on left, 8 is ariana on right
	waitmovement 0x0
	msgbox gText_silphcoteambattle_3 0x6
	msgbox gText_silphcoteambattle_4 0x6
	sound 0xA
	applymovement 0x7 EventScript_silphcoteambattle_Faceright
	waitmovement 0x0
	checksound
	msgbox gText_silphcoteambattle_5 0x6
	applymovement 0x8 EventScript_silphcoteambattle_Faceup
	waitmovement 0x0
	msgbox gText_silphcoteambattle_6 0x6
	applymovement 0x7 EventScript_silphcoteambattle_Faceup
	waitmovement 0x0
	msgbox gText_silphcoteambattle_7 0x6
	sound 0xB3
	applymovement 0x7 EventScript_silphcoteambattle_Question
	applymovement 0x8 EventScript_silphcoteambattle_Question
	waitmovement 0x0
	checksound
	compare 0x5040 0x0
	if 0x1 _call EventScript_silphcoteambattle_Middle
	compare 0x5040 0x1
	if 0x1 _call EventScript_silphcoteambattle_Right
	msgbox gText_silphcoteambattle_8 0x6
	applymovement 0x9 EventScript_silphcoteambattle_Faceplayer
	waitmovement 0x0
	compare 0x5040 0x0
	if 0x1 _call EventScript_silphcoteambattle_Scrfaceright
	compare 0x5040 0x1
	if 0x1 _call EventScript_silphcoteambattle_Scrfaceleft
	msgbox gText_silphcoteambattle_9 0x6
	applymovement 0xFF EventScript_silphcoteambattle_Facedown
	applymovement 0x9 EventScript_silphcoteambattle_Facedown
	waitmovement 0x0
	msgbox gText_silphcoteambattle_10 0x6
	setflag 0x908 @tag battle in CFRU engine
	setflag 0x909 @two opponents
	setvar 0x5011 0x37 @setting up trainer id for brendan
	setvar 0x5012 0x2 @setting trainer backsprite for brendan
	setvar 0x5010 0x36 @trainer id for second opponent ariana
	loadpointer 0x0 gText_silphcoteambattle_ArianaDefeat @load text for arianas defeat
	special 0xAC
	setflag 0x200
	setflag 0x915
	trainerbattle3 0x3 0x35 0x0 gText_silphcoteambattle_ArcherDefeatText @First opponents text
	msgbox gText_silphcoteambattle_11 0x6
	applymovement 0x7 EventScript_silphcoteambattle_Playerright
	waitmovement 0x0
	msgbox gText_silphcoteambattle_12 0x6
	applymovement 0x7 EventScript_silphcoteambattle_Faceup
	waitmovement 0x0
	msgbox gText_silphcoteambattle_13 0x6
	fadescreen 0x1
	hidesprite 0x7
	hidesprite 0x8
	sound 0x9
	checksound
	fadescreen 0x0
	compare 0x5040 0x0
	if 0x1 _call EventScript_silphcoteambattle_Scrfaceright
	compare 0x5040 0x1
	if 0x1 _call EventScript_silphcoteambattle_Scrfaceleft
	applymovement 0x9 EventScript_silphcoteambattle_Faceplayer
	waitmovement 0x0
	msgbox gText_silphcoteambattle_14 0x6
	sound 0x65
	msgbox gText_silphcoteambattle_15 0x6
	checksound
	sound 0x15
	applymovement 0x9 EventScript_silphcoteambattle_Exclamation
	checksound
	msgbox gText_silphcoteambattle_16 0x6
	special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	msgbox gText_silphcoteambattle_17 0x6
	givepokemon 0x115 0x5 0xCD 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_silphcoteambattle_Treecko 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_silphcoteambattle_18 0x6
	applymovement 0x9 EventScript_silphcoteambattle_Goup
	waitmovement 0x0
	hidesprite 0x9
	sound 0x27
	checksound
	setflag 0x200
	setvar 0x5041 0x1
	setflag 0x955
	release
	end

EventScript_silphcoteambattle_Middle:
	applymovement 0x9 EventScript_silphcoteambattle_Comedown
	waitmovement 0x0
	return

EventScript_silphcoteambattle_Right:
	applymovement 0x9 EventScript_silphcoteambattle_Comedownright
	waitmovement 0x0
	return

EventScript_silphcoteambattle_Scrfaceright:
	applymovement 0xFF EventScript_silphcoteambattle_Playerright
	waitmovement 0x0
	return

EventScript_silphcoteambattle_Scrfaceleft:
	applymovement 0xFF EventScript_silphcoteambattle_Faceleft
	waitmovement 0x0
	return

EventScript_silphcoteambattle_Moveup:
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0x11
.byte 0xFE

EventScript_silphcoteambattle_Step:
.byte 0x26
.byte 0x26
.byte 0xFE

EventScript_silphcoteambattle_Faceleft:
.byte 0x2
.byte 0xFE

EventScript_silphcoteambattle_Faceright:
.byte 0x7
.byte 0x55
.byte 0xFE

EventScript_silphcoteambattle_Faceup:
.byte 0x1
.byte 0xFE

EventScript_silphcoteambattle_Question:
.byte 0x63
.byte 0xFE

EventScript_silphcoteambattle_Comedown:
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x20
.byte 0x1D
.byte 0xFE

EventScript_silphcoteambattle_Comedownright:
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0xFE

EventScript_silphcoteambattle_Faceplayer:
.byte 0x4A
.byte 0xFE

EventScript_silphcoteambattle_Playerright:
.byte 0x7
.byte 0xFE

EventScript_silphcoteambattle_Facedown:
.byte 0x0
.byte 0xFE

EventScript_silphcoteambattle_Goup:
.byte 0x1E
.byte 0x1E
.byte 0x1E
.byte 0x1E
.byte 0x1E
.byte 0x1E
.byte 0xFE

EventScript_silphcoteambattle_Exclamation:
.byte 0x62
.byte 0xFE
