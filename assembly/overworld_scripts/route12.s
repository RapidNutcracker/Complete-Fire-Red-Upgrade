.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_checkerikasabrina2_Start
EventScript_checkerikasabrina2_Start:
	checkflag 0x823
	if 0x0 _goto EventScript_checkerikasabrina2_Goback
	checkflag 0x825
	if 0x0 _goto EventScript_checkerikasabrina2_Goback
	release
	end

EventScript_checkerikasabrina2_Goback:
	textcolor 0x02
	applymovement 0xFF EventScript_checkerikasabrina2_Stop
	waitmovement 0x0
	msgbox gText_checkerikasabrina_1 0x6
	applymovement 0xFF EventScript_checkerikasabrina2_Playermoveback
	waitmovement 0x0
	release
	end

EventScript_checkerikasabrina2_Stop:
.byte 0x4
.byte 0xFE

EventScript_checkerikasabrina2_Playermoveback:
.byte 0x11
.byte 0xFE

.global EventScript_sharpedonite_Start
EventScript_sharpedonite_Start:
	lock
	faceplayer
	checkflag 0x98C
	if 0x1 _goto EventScript_sharpedonite_Default
	msgbox gText_sharpedonite_1 0x6
	goto EventScript_sharpedonite_Reg
	release
	end

EventScript_sharpedonite_Reg:
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_sharpedonite_Cancel
	special 0x7C @puts the selected mon in party into buffer
	msgbox gText_sharpedonite_4 0x6
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x14B
	if 0x1 _goto EventScript_sharpedonite_Sharpedo
	msgbox gText_sharpedonite_2 0x6
	release
	end

EventScript_sharpedonite_Sharpedo:
	msgbox gText_sharpedonite_5 0x6
	sound 0x15
	applymovement 0x1 EventScript_sharpedonite_Exclamation
	checksound
	msgbox gText_sharpedonite_6 0x6
	giveitem ITEM_SHARPEDONITE 0x1 MSG_OBTAIN
	setflag 0x98C
	release
	end

EventScript_sharpedonite_Default:
	msgbox gText_sharpedonite_3 0x6
	release
	end

EventScript_sharpedonite_Cancel:
	release
	end

EventScript_sharpedonite_Exclamation:
.byte 0x62
.byte 0xFE

