.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_startersmegastone_Start
EventScript_startersmegastone_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x96A
	if 0x1 _goto EventScript_startersmegastone_Everything
	checkflag 0x966
	if 0x0 _goto EventScript_startersmegastone_Reg
	checkflag 0x967
	if 0x0 _goto EventScript_startersmegastone_Reg
	checkflag 0x968
	if 0x0 _goto EventScript_startersmegastone_Reg
	checkflag 0x969
	if 0x0 _goto EventScript_startersmegastone_Reg
	checkflag 0x97A
	if 0x0 _goto EventScript_startersmegastone_Reg
	checkflag 0x97B
	if 0x0 _goto EventScript_startersmegastone_Reg
	msgbox gText_startersmegastone_7 0x6
	setflag 0x96A
	giveitem ITEM_LUCARIONITE 0x1 MSG_OBTAIN @if we got here, that means player got all mega stones for starters
	msgbox gText_startersmegastone_8 0x6 @give lucarionite
	release
	end

EventScript_startersmegastone_Reg:
	msgbox gText_startersmegastone_Msg 0x6
	faceplayer
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_startersmegastone_Cancel
	special 0x7C @puts the selected mon in party into buffer
	msgbox gText_startersmegastone_4 0x6
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_startersmegastone_Venusaur
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x6
	if 0x1 _goto EventScript_startersmegastone_Charizard
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x9
	if 0x1 _goto EventScript_startersmegastone_Blastoise
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x117
	if 0x1 _goto EventScript_startersmegastone_Sceptile
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x11A
	if 0x1 _goto EventScript_startersmegastone_Blaziken
	special2 LASTRESULT 0x18
	compare LASTRESULT 0x11D
	if 0x1 _goto EventScript_startersmegastone_Swampert
	msgbox gText_startersmegastone_5 0x6
	release
	end

EventScript_startersmegastone_Venusaur:
	checkflag 0x966
	if 0x1 _goto EventScript_startersmegastone_Done
	msgbox gText_startersmegastone_3 0x6
	giveitem ITEM_VENUSAURITE 0x1 MSG_OBTAIN
	setflag 0x966
	release
	end

EventScript_startersmegastone_Charizard:
	checkflag 0x967
	if 0x1 _goto EventScript_startersmegastone_Done
	msgbox gText_startersmegastone_3 0x6
	giveitem ITEM_CHARIZARDITE_Y 0x1 MSG_OBTAIN
	giveitem ITEM_CHARIZARDITE_X 0x1 MSG_OBTAIN
	setflag 0x967
	release
	end

EventScript_startersmegastone_Blastoise:
	checkflag 0x968
	if 0x1 _goto EventScript_startersmegastone_Done
	msgbox gText_startersmegastone_3 0x6
	giveitem ITEM_BLASTOISINITE 0x1 MSG_OBTAIN
	setflag 0x968
	release
	end

EventScript_startersmegastone_Sceptile:
	checkflag 0x969
	if 0x1 _goto EventScript_startersmegastone_Done
	msgbox gText_startersmegastone_3 0x6
	giveitem ITEM_SCEPTILITE 0x1 MSG_OBTAIN
	setflag 0x969
	release
	end

EventScript_startersmegastone_Swampert:
	checkflag 0x97A
	if 0x1 _goto EventScript_startersmegastone_Done
	msgbox gText_startersmegastone_3 0x6
	giveitem ITEM_SWAMPERTITE 0x1 MSG_OBTAIN
	setflag 0x97A
	release
	end

EventScript_startersmegastone_Blaziken:
	checkflag 0x97B
	if 0x1 _goto EventScript_startersmegastone_Done
	msgbox gText_startersmegastone_3 0x6
	giveitem ITEM_BLAZIKENITE 0x1 MSG_OBTAIN
	setflag 0x97B
	release
	end

EventScript_startersmegastone_Done:
	msgbox gText_startersmegastone_2 0x6
	release
	end

EventScript_startersmegastone_Cancel:
	msgbox gText_startersmegastone_6 0x6
	release
	end

EventScript_startersmegastone_Everything:
	msgbox gText_startersmegastone_Milked 0x6
	release
	end
