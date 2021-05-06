.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ FLAG_MINIMAL_GRINDING_MODE, 0x1032

.global EventScript_powerbelt_Start
EventScript_powerbelt_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x975
	if 0x1 _goto EventScript_powerbelt_Done
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x1 _goto EventScript_powerbelt_nugget
	msgbox gText_powerbelt_3 0x6
	giveitem ITEM_POWER_BELT 0x1 MSG_OBTAIN
	setflag 0x975
	release
	end

EventScript_powerbelt_nugget:
	msgbox gText_powerbelt_3_Nugget MSG_FACE
	sound 0xB3
	applymovement 0x800F QuestionMark
	waitmovement 0x0
	checksound
	msgbox gText_powerbelt_3_Nugget_2 MSG_FACE
	giveitem ITEM_BIG_NUGGET 0x1 MSG_OBTAIN
	msgbox gText_powerbelt_3_Nugget_3 MSG_FACE
	setflag 0x975
	release
	end

QuestionMark:
	.byte say_question
	.byte end_m

EventScript_powerbelt_Done:
	msgbox gText_powerbelt_6 0x6
	release
	end
