.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_powerbelt_Start
EventScript_powerbelt_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x975
	if 0x1 _goto EventScript_powerbelt_Done
	msgbox gText_powerbelt_3 0x6
	giveitem ITEM_POWER_BELT 0x1 MSG_OBTAIN
	setflag 0x975
	release
	end

EventScript_powerbelt_Done:
	msgbox gText_powerbelt_6 0x6
	release
	end
