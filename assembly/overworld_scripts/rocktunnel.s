.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_terrakion_Start
EventScript_terrakion_Start:
	sound 0xB3
	applymovement 0xFF EventScript_terrakion_Move
	waitmovement 0x0
	checksound
	msgbox gText_terrakion_1 0x6
	cry 0x2B4 0x0
	msgbox gText_terrakion_2 0x4
	waitcry
	closeonkeypress
	sound 0x15
	applymovement 0xFF EventScript_terrakion_Surprised
	waitmovement 0x0
	checksound
	playsong 0x156 0x0
	msgbox gText_terrakion_3 0x6
	msgbox gText_terrakion_4 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_terrakion_Cancelmusic
	wildbattle 0x2B4 0x32 0x00
	special2 LASTRESULT 0xB4
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_terrakion_Cancel
	setvar 0x5046 0x1
	release
	end

EventScript_terrakion_Cancel:
	applymovement 0xFF EventScript_terrakion_Moveback
	waitmovement 0x0
	release
	end

EventScript_terrakion_Cancelmusic:
	fadesong 0x120
	applymovement 0xFF EventScript_terrakion_Moveback
	waitmovement 0x0
	release
	end

EventScript_terrakion_Move:
.byte 0x3
.byte 0x63
.byte 0xFE

EventScript_terrakion_Surprised:
.byte 0x65
.byte 0xFE

EventScript_terrakion_Moveback:
.byte 0x12
.byte 0xFE

.global EventScript_terrakion_OW
EventScript_terrakion_OW:
    lock
    faceplayer
    cry SPECIES_TERRAKION 0x2
    preparemsg gText_terrakion_12
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_TERRAKION 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x1012
    fadescreen 0x0
    release
    end

Moveback2:
    release 
    end





