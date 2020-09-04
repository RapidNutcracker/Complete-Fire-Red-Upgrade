.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_aideverstone_Start
EventScript_aideverstone_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x1005
	if 0x1 _goto EventScript_aideverstone_Done
	msgbox gText_aideverstone_Msg 0x6
	giveitem ITEM_EVERSTONE 0x1 MSG_OBTAIN
	faceplayer
	msgbox gText_aideverstone_1 0x6
	setflag 0x1005 
	release
	end

EventScript_aideverstone_Done:
	msgbox gText_aideverstone_1 MSG_FACE 
	release
	end



