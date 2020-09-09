.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_poweranklet_Start
EventScript_poweranklet_Start:
	textcolor 0x0
	checkflag 0x971
	if 0x1 _goto EventScript_poweranklet_Done
	msgbox gText_poweranklet_3 0x6
	giveitem ITEM_POWER_ANKLET 0x1 MSG_OBTAIN
	setflag 0x971
	release
	end

EventScript_poweranklet_Done:
	msgbox gText_poweranklet_6 0x6
	release
	end

.global EventScript_powerlens_Start
EventScript_powerlens_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x972
	if 0x1 _goto EventScript_powerlens_Done
	msgbox gText_powerlens_3 0x6
	giveitem ITEM_POWER_LENS 0x1 MSG_OBTAIN
	setflag 0x972
	release
	end

EventScript_powerlens_Done:
	msgbox gText_powerlens_6 0x6
	release
	end

.global EventScript_powerbracer_Start
EventScript_powerbracer_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x973
	if 0x1 _goto EventScript_powerbracer_Done
	msgbox gText_powerbracer_3 0x6
	giveitem ITEM_POWER_BRACER 0x1 MSG_OBTAIN
	setflag 0x973
	release
	end

EventScript_powerbracer_Done:
	msgbox gText_powerbracer_6 0x6
	release
	end

.global EventScript_powerweight_Start
EventScript_powerweight_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x970
	if 0x1 _goto EventScript_powerweight_Done
	msgbox gText_powerweight_3 0x6
	giveitem ITEM_POWER_WEIGHT 0x1 MSG_OBTAIN
	setflag 0x970
	release
	end

EventScript_powerweight_Done:
	msgbox gText_powerweight_6 0x6
	release
	end

.global EventScript_powerband_Start
EventScript_powerband_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x974
	if 0x1 _goto EventScript_powerband_Done
	msgbox gText_powerband_3 0x6
	giveitem ITEM_POWER_BAND 0x1 MSG_OBTAIN
	setflag 0x974
	release
	end

EventScript_powerband_Done:
	msgbox gText_powerband_6 0x6
	release
	end
