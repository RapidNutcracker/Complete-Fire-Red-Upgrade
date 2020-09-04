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
