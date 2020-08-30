.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_MtMoon_MuscleBand
EventScript_MtMoon_MuscleBand:
    lock
    faceplayer 
    checkflag 0x997
    if 0x1 _goto Done
    msgbox gText_MtMoon_MuscleBand1 MSG_FACE 
    msgbox gText_MtMoon_MuscleBand2 MSG_FACE
    giveitem ITEM_MUSCLE_BAND 0x1 MSG_OBTAIN 
    setflag 0x997
    release
    end

Done:
    msgbox gText_MtMoon_MuscleBand1 MSG_FACE 
    release 
    end 

.global EventScript_adminmtmoonright
EventScript_adminmtmoonright:
    applymovement 0xFF PlayerMoveLeft
    waitmovement 0x0 
    goto EventScript_adminmtmoonleft_Start

PlayerMoveLeft:
	.byte walk_left 
	.byte end_m  

.global EventScript_adminmtmoonleft_Start
EventScript_adminmtmoonleft_Start:
	clearflag 0x200
	showsprite 0x0D
	textcolor 0x00
	applymovement 0xFF EventScript_adminmtmoonleft_Stop
	waitmovement 0x0
	msgbox gText_adminmtmoonleft_1 0x6
	sound 0xB3
	applymovement 0xFF EventScript_adminmtmoonleft_Question
	waitmovement 0x0
	checksound
	applymovement 0x0D EventScript_adminmtmoonleft_Comeup
	waitmovement 0x0
	applymovement 0xFF EventScript_adminmtmoonleft_Look
	waitmovement 0x0
	msgbox gText_adminmtmoonleft_2 0x6
	setflag 0x200
	trainerbattle3 0x3 0x2E 0x0 gText_adminmtmoonleft_Defeat
	msgbox gText_adminmtmoonleft_4 0x6
	applymovement 0x0d EventScript_adminmtmoonleft_Comedown
	waitmovement 0x0
	setvar 0x4014 0x1
	hidesprite 0x0D
	sound 0x9
	checksound
	setflag 0x201
	release
	end

EventScript_adminmtmoonleft_Comeup:
.byte 0x1F
.byte 0x1F
.byte 0x1F
.byte 0x1F
.byte 0x1F
.byte 0x1F
.byte 0x1F
.byte 0x1F
.byte 0x0
.byte 0xFE

EventScript_adminmtmoonleft_Comedown:
.byte 0x13
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x13
.byte 0xFE

EventScript_adminmtmoonleft_Question:
.byte 0x63
.byte 0xFE

EventScript_adminmtmoonleft_Look:
.byte 0x1
.byte 0xFE

EventScript_adminmtmoonleft_Stop:
.byte 0x0
.byte 0xFE
    