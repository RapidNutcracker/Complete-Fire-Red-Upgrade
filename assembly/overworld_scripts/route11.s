.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_secondbrendanmiddle_Start
EventScript_secondbrendanmiddle_Start:
	setvar 0x4016 0x1
	goto EventScript_secondbrendantop_Script
	end


.global EventScript_secondbrendanbottom_Start
EventScript_secondbrendanbottom_Start:
	setvar 0x4016 0x2
	goto EventScript_secondbrendantop_Script
	end

.global EventScript_secondbrendantop_Start
EventScript_secondbrendantop_Start:
	setvar 0x4016 0x0
	goto EventScript_secondbrendantop_Script
	end

EventScript_secondbrendantop_Script:
	applymovement 0xFF EventScript_secondbrendantop_Stop
	waitmovement 0x0
	clearflag 0x200
	showsprite 0x0E
	sound 0x9
	applymovement 0x0E EventScript_secondbrendantop_Lookaround
	waitmovement 0x0
	checksound
	sound 0x15
	applymovement 0x0E EventScript_secondbrendantop_Comeup
	checksound
	compare 0x4016 0x0
	if 0x1 _goto EventScript_secondbrendantop_Top
	compare 0x4016 0x1
	if 0x1 _goto EventScript_secondbrendantop_Middle
	compare 0x4016 0x2
	if 0x1 _goto EventScript_secondbrendantop_Bottom
	end

EventScript_secondbrendantop_Top:
	applymovement 0x0E EventScript_secondbrendantop_Comeuptop
	waitmovement 0x0
	call EventScript_secondbrendantop_Battle
	goto EventScript_secondbrendantop_Topleave
	end

EventScript_secondbrendantop_Middle:
	applymovement 0x0E EventScript_secondbrendantop_Comeupmiddle
	waitmovement 0x0
	call EventScript_secondbrendantop_Battle
	goto EventScript_secondbrendantop_Middleleave
	end

EventScript_secondbrendantop_Bottom:
	applymovement 0x0E EventScript_secondbrendantop_Comeupbottom
	waitmovement 0x0
	call EventScript_secondbrendantop_Battle
	goto EventScript_secondbrendantop_Bottomleave
	end

EventScript_secondbrendantop_Battle:
	msgbox gText_secondbrendantop_2 0x6
	setflag 0x200
	special 0x0
	setflag 0x90E
	trainerbattle3 0x3 0x32 0x0 gText_secondbrendantop_Defeat
	msgbox gText_secondbrendantop_4 0x6
	giveitem 0xC5 0x2 MSG_OBTAIN
	msgbox gText_secondbrendantop_6 0x6
	return

EventScript_secondbrendantop_Topleave:
	applymovement 0x0E EventScript_secondbrendantop_Comedowntop
	waitmovement 0x0
	setvar 0x4015 0x1
	hidesprite 0x0E
	release
	end

EventScript_secondbrendantop_Middleleave:
	applymovement 0x0E EventScript_secondbrendantop_Comedowntop
	waitmovement 0x0
	setvar 0x4015 0x1
	hidesprite 0x0E
	release
	end

EventScript_secondbrendantop_Bottomleave:
	applymovement 0x0E EventScript_secondbrendantop_Comedownbottom
	waitmovement 0x0
	setvar 0x4015 0x1
	hidesprite 0x0E
	release
	end

EventScript_secondbrendantop_Stop:
.byte 0x3
.byte 0xFE

EventScript_secondbrendantop_Lookaround:
.byte 0xC
.byte 0xFE

EventScript_secondbrendantop_Comeup:
.byte 0x62
.byte 0x2
.byte 0xFE

EventScript_secondbrendantop_Comeuptop:
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE

EventScript_secondbrendantop_Comeupmiddle:
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE

EventScript_secondbrendantop_Comeupbottom:
.byte 0x10
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE

EventScript_secondbrendantop_Comedowntop:
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE

EventScript_secondbrendantop_Comedownbottom:
.byte 0x11
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE


.global EventScript_whitney_Start
EventScript_whitney_Start:
	lockall
	msgbox gText_whitney_1 0x6
	applymovement 0xF EventScript_whitney_Look
	waitmovement 0x0
	lock
	msgbox gText_whitney_2 0x6
	lock
	msgbox gText_whitney_3 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_whitney_Battle
	msgbox gText_whitney_4 0x6
	releaseall
	end

EventScript_whitney_Battle:
	setflag 0x915
	setflag 0x90E
	msgbox gText_whitney_5 0x6
	special 0x0
	trainerbattle3 0x3 0x31 0x0 gText_whitney_Defeat
	msgbox gText_whitney_6 0x6
	giveitem ITEM_MOOMOO_MILK 0x8 MSG_OBTAIN
	clearflag 0x915
	msgbox gText_whitney_7 0x6
	giveitem ITEM_EVIOLITE 0x1 MSG_OBTAIN
	msgbox gText_whitney_8 0x6
	fadescreen 0x1
	hidesprite 0xF
	sound 0x9
	checksound
	fadescreen 0x0
	setflag 0x933
	release
	end


EventScript_whitney_Look:
.byte 0x4A
.byte 0xFE

.global EventScript_itemfinder_Start 
EventScript_itemfinder_Start:
	lockall
	faceplayer
	textcolor 0x0
	checkflag 0x938
	if 0x1 _goto EventScript_itemfinder_Done
	msgbox gText_itemfinder_3 0x6
	giveitem 0x105 0x1 MSG_OBTAIN
	msgbox gText_itemfinder_4 MSG_FACE 
	setflag 0x938
	release
	end

EventScript_itemfinder_Done:
	msgbox gText_itemfinder_4 MSG_FACE
	release
	end

.global EventScript_Guard_EVTraining
EventScript_Guard_EVTraining:
	lock
	faceplayer
	msgbox gText_Guard_Evtraining MSG_FACE
	release
	end
	
.global EventScript_Route11_FireStone
EventScript_Route11_FireStone:
  	hidesprite 0x800F
    giveitem ITEM_FIRE_STONE 0x1 MSG_FIND
    setflag 0x1039
    release
    end
	