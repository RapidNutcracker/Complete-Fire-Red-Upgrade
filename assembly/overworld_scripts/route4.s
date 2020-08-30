.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_givepoweruppunch_Start
EventScript_givepoweruppunch_Start:
	textcolor 0x0
	lock 
	faceplayer 
	checkflag 0x202
	if 0x1 _goto EventScript_givepoweruppunch_Done
	msgbox gText_givepoweruppunch_3 0x6
	msgbox gText_givepoweruppunch_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_givepoweruppunch_Take
	msgbox gText_givepoweruppunch_6 0x6
	release
	end

EventScript_givepoweruppunch_Take:
	msgbox gText_givepoweruppunch_5 0x6
	giveitem ITEM_TM101 0x1 MSG_OBTAIN
	setflag 0x202
	msgbox gText_givepoweruppunch_7 0x6
	release
	end

EventScript_givepoweruppunch_Done:
	msgbox gText_givepoweruppunch_7 0x6
	release
	end

.global EventScript_machobrace_Start
EventScript_machobrace_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x203
	if 0x1 _goto EventScript_machobrace_Done
	msgbox gText_machobrace_3 0x6
	giveitem ITEM_MACHO_BRACE 0x1 MSG_OBTAIN
	msgbox gText_machobrace_4 0x6
	setflag 0x203
	msgbox gText_machobrace_5 0x6
	release
	end

EventScript_machobrace_Done:
	msgbox gText_machobrace_4 0x6
	release
	end



