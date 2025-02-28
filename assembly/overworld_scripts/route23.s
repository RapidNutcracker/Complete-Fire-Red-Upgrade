.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ FLAG_HARDCORE_MODE, 0x1034
.equ AURA_SWAMP_STRING, 21
.equ VAR_BATTLE_AURAS, 0x5119 

.global EventScript_FinalBrendan_Fight
EventScript_FinalBrendan_Fight:
    applymovement 0xFF FaceUp
    waitmovement 0x0
    clearflag 0x200 
    showsprite 0xA
    textcolor 0x0
    msgbox gText_VRBrendanBattle_1 MSG_FACE 
    sound 0x15 
    applymovement 0xFF FaceDown 
    waitmovement 0x0
    applymovement 0xFF Surprised
    checksound
    waitmovement 0x0 
    applymovement 0xA BrendanComeUp 
    waitmovement 0x0
    msgbox gText_VRBrendanBattle_2 MSG_FACE 
    applymovement 0xA FaceDown 
    waitmovement 0x0
    msgbox gText_VRBrendanBattle_3 MSG_FACE 
    applymovement 0xA FaceUp
    waitmovement 0x0 
    msgbox gText_VRBrendanBattle_4 MSG_FACE 
    applymovement 0xA FaceDown 
    waitmovement 0x0 
    msgbox gText_VRBrendanBattle_5 MSG_FACE 
    applymovement 0xA FaceUp 
    waitmovement 0x0 
    msgbox gText_VRBrendanBattle_6 MSG_FACE 
    setflag 0x200 
    checkflag FLAG_HARDCORE_MODE
    if 0x1 _call SetSwamp
    trainerbattle3 0x3 0x1A 0x0 gText_VRBrendanLoss 
    pause 0x20 
    applymovement 0xA FaceDown 
    waitmovement 0x0
    msgbox gText_VRBrendanBattle_7 MSG_FACE 
    applymovement 0xA FaceUp
    waitmovement 0x0 
    msgbox gText_VRBrendanBattle_8 MSG_FACE 
    giveitem ITEM_DESTINY_KNOT 0x1 MSG_OBTAIN 
    msgbox gText_VRBrendanBattle_9 MSG_FACE  
    applymovement 0xA BrendanDown1
    waitmovement 0x0 
    pause 0x20 
    applymovement 0xA FaceUp 
    waitmovement 0x0 
    msgbox gText_VRBrendanBattle_10 MSG_FACE 
    applymovement 0xA BrendanLeave 
    waitmovement 0x0
    hidesprite 0xA
    setvar 0x5057 0x1
    setflag 0x991
    release
    end 

SetSwamp:
    setvar VAR_BATTLE_AURAS AURA_SWAMP_STRING
    return

FaceUp: 
    .byte 0x1
    .byte 0xFE 

BrendanComeUp:
    .byte 0x11
    .byte 0x11
    .byte 0x11
    .byte 0x11
    .byte 0x11
    .byte 0xFE 

BrendanDown1:
    .byte 0x10
    .byte 0xFE 

BrendanLeave:
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0xFE 

FaceDown:
    .byte 0x0
    .byte 0xFE

Surprised:
    .byte 0x62
    .byte 0xFE


.global EventScript_nurse_Start
EventScript_nurse_Start:
	lock
	faceplayer
	msgbox gText_nurse_1 0x6
	special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	msgbox gText_nurse_2 0x6
	release
	end


