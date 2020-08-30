.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_bugsy_Start
EventScript_bugsy_Start:
	lock
	textcolor 0x00
	msgbox gText_bugsy_1 0x4
	applymovement 0xE EventScript_bugsy_Look
	waitmovement 0x0
	msgbox gText_bugsy_2 0x6
	msgbox gText_bugsy_3 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_bugsy_Battle
	msgbox gText_bugsy_4 0x6
	release
	end

EventScript_bugsy_Battle:
	setflag 0x915
	msgbox gText_bugsy_5 0x6
	trainerbattle3 0x3 0x2F 0x0 gText_bugsy_Defeat
	msgbox gText_bugsy_6 0x6
	giveitem ITEM_TM89 0x1 MSG_OBTAIN
	msgbox gText_bugsy_7 0x6
	giveitem 0x08 0x5 MSG_OBTAIN
	msgbox gText_bugsy_8 0x6
	fadescreen 0x1
	hidesprite 0xE
	sound 0x9
	checksound
	fadescreen 0x0
	setflag 0x931
	release
	end


EventScript_bugsy_Look:
.byte 0x4A
.byte 0xFE


EventScript_flamecharge_Start:
	hidesprite 0x9
	giveitem 0x9E 0x1 MSG_FIND
	setflag 0x937
	release
	end

