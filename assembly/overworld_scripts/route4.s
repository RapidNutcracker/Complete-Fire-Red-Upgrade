.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_givepoweruppunch_Start
EventScript_givepoweruppunch_Start:
	textcolor 0x0
	lock 
	faceplayer 
	checkflag 0x202
	if 0x1 _goto EventScript_givepoweruppunch_Done
	msgbox gText_givepoweruppunch_3 0x6
	msgbox gText_givepoweruppunch_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_givepoweruppunch_Take
	msgbox gText_givepoweruppunch_6 0x6
	release
	end

EventScript_givepoweruppunch_Take:
	msgbox gText_givepoweruppunch_5 0x6
	giveitem ITEM_TM101 0x1 MSG_OBTAIN
	setflag 0x202
	msgbox gText_givepoweruppunch_7 0x6
	release
	end

EventScript_givepoweruppunch_Done:
	msgbox gText_givepoweruppunch_7 0x6
	release
	end

.global EventScript_machobrace_Start
EventScript_machobrace_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x203
	if 0x1 _goto EventScript_machobrace_Done
	msgbox gText_machobrace_3 0x6
	giveitem ITEM_MACHO_BRACE 0x1 MSG_OBTAIN
	msgbox gText_machobrace_4 0x6
	setflag 0x203
	msgbox gText_machobrace_5 0x6
	release
	end

EventScript_machobrace_Done:
	msgbox gText_machobrace_4 0x6
	release
	end

.global gMapScripts_Route4
gMapScripts_Route4:
    mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_Route4
    mapscript MAP_SCRIPT_ON_TRANSITION MapEntryScript_Route4
    .byte MAP_SCRIPT_TERMIN

LevelScripts_Route4:
    levelscript 0x5054, 1, EventScript_postgiovannilevelscript_Start
    .hword MAP_SCRIPT_TERMIN

MapEntryScript_Route4:
	release 
	end 

.global EventScript_postgiovannilevelscript_Start
EventScript_postgiovannilevelscript_Start:
	lockall
	msgbox gText_postgiovannilevelscript_1 0x6
	applymovement 0xA EventScript_postgiovannilevelscript_Lookleft @A is giovanni
	pause 0x10
	applymovement 0xA EventScript_postgiovannilevelscript_Lookright
	pause 0x10
	applymovement 0xA EventScript_postgiovannilevelscript_Lookleft
	waitmovement 0x0
	sound 0x15
	applymovement 0xA EventScript_postgiovannilevelscript_Surprised
	checksound
	waitmovement 0x0
	applymovement 0xFF EventScript_postgiovannilevelscript_Lookright
	waitmovement 0x0
	applymovement 0xA EventScript_postgiovannilevelscript_Lookleft
	applymovement 0x9 EventScript_postgiovannilevelscript_Lookleft
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_Suchpower 0x6
	applymovement 0xA EventScript_postgiovannilevelscript_Lookright
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_3 0x6
	applymovement 0xA EventScript_postgiovannilevelscript_Walkleft
	applymovement 0xA EventScript_postgiovannilevelscript_Movealilleft
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_4 0x6
	applymovement 0xA EventScript_postgiovannilevelscript_Lookright
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_5 0x6
	msgbox gText_postgiovannilevelscript_6 0x6
	applymovement 0xA EventScript_postgiovannilevelscript_Lookleft
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_7 0x6
	giveitem ITEM_MEWTWONITE_Y 0x1 MSG_OBTAIN
	applymovement 0xA EventScript_postgiovannilevelscript_Lookright
	applymovement 0xA EventScript_postgiovannilevelscript_Movealilright
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_8 0x6
	sound 0xA
	applymovement 0x9 EventScript_postgiovannilevelscript_Jump @A is Archer 8 is Ariana
	applymovement 0xB EventScript_postgiovannilevelscript_Jump
	checksound
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_9 0x6
	applymovement 0x9 EventScript_postgiovannilevelscript_Walkleft2
	waitmovement 0x0
	applymovement 0xB EventScript_postgiovannilevelscript_Walkleft2
	waitmovement 0x0
	applymovement 0xB EventScript_postgiovannilevelscript_Walkleft
	waitmovement 0x0
	applymovement 0xB EventScript_postgiovannilevelscript_Down1
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_10 0x6
	applymovement 0x9 EventScript_postgiovannilevelscript_Rightlookback
	waitmovement 0x0
	applymovement 0xB EventScript_postgiovannilevelscript_Uplookback
	waitmovement 0x0
	applymovement 0xA EventScript_postgiovannilevelscript_Walkleft
	waitmovement 0x0
	applymovement 0xA EventScript_postgiovannilevelscript_Lookdown
	waitmovement 0x0
	msgbox gText_postgiovannilevelscript_11 0x6
	msgbox gText_postgiovannilevelscript_12 0x6
	applymovement 0xA EventScript_postgiovannilevelscript_Leave
	applymovement 0x9 EventScript_postgiovannilevelscript_Leave
	applymovement 0xB EventScript_postgiovannilevelscript_Leave
	waitmovement 0x0
	hidesprite 0xA
	hidesprite 0x9
	hidesprite 0xB
	setflag 0x920
	setflag 0x976
	setflag 0x977
	setflag 0x200 
	setvar 0x5054 0x2
	end

EventScript_postgiovannilevelscript_Lookleft:
.byte 0x2
.byte 0xFE

EventScript_postgiovannilevelscript_Lookright:
.byte 0x3
.byte 0xFE

EventScript_postgiovannilevelscript_Lookup:
.byte 0x1

EventScript_postgiovannilevelscript_Lookdown:
.byte 0x0
.byte 0xFE

EventScript_postgiovannilevelscript_Surprised:
.byte 0x62
.byte 0xFE

EventScript_postgiovannilevelscript_Walkleft:
.byte 0x12
.byte 0xFE

EventScript_postgiovannilevelscript_Movealilleft:
.byte 0x23
.byte 0xFE

EventScript_postgiovannilevelscript_Movealilright:
.byte 0x24
.byte 0xFE

EventScript_postgiovannilevelscript_Walkleft2:
.byte 0x12
.byte 0x12
.byte 0xFE

EventScript_postgiovannilevelscript_Rightlookback:
.byte 0x13
.byte 0x4A
.byte 0xFE

EventScript_postgiovannilevelscript_Uplookback:
.byte 0x11
.byte 0x4A
.byte 0xFE

EventScript_postgiovannilevelscript_Down1:
.byte 0x10
.byte 0xFE


EventScript_postgiovannilevelscript_Jump:
.byte 0x54
.byte 0xFE

EventScript_postgiovannilevelscript_Leave:
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0xFE



