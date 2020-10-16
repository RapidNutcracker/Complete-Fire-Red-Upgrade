.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_snorlaxencounter_Start
.global EventScript_snorlaxencounter_Start2

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

EventScript_snorlaxencounter_Start:
	lock
	checkflag 0x23D
	if 0x0 _goto EventScript_snorlaxencounter_Depslumber
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_snorlaxencounter_End
	special 0x188
	msgbox gText_snorlaxencounter_Pokeflute MSG_YESNO @"Want to use the Pok� Flute?"
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_snorlaxencounter_End
	call EventScript_snorlaxencounter_Playflute
	setwildbattle 0x8F 0x2D ITEM_LEFTOVERS
	checksound
	cry 0x8F 0x2
	pause 0x28
	waitcry
	setflag 0x54
	setflag 0x807
	setflag 0x253
	dowildbattle
	clearflag 0x807
	special2 LASTRESULT 0xB4
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_snorlaxencounter_Hugeyawn
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_snorlaxencounter_Hugeyawn
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_snorlaxencounter_Hugeyawn
	release
	end

EventScript_snorlaxencounter_Start2:
	lock
	checkflag 0x23D
	if 0x0 _goto EventScript_snorlaxencounter_Depslumber
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_snorlaxencounter_End
	special 0x188
	msgbox gText_snorlaxencounter_Pokeflute MSG_YESNO @"Want to use the Pok� Flute?"
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_snorlaxencounter_End
	call EventScript_snorlaxencounter_Playflute2
	setwildbattle 0x8F 0x2D ITEM_LEFTOVERS
	checksound
	cry 0x8F 0x2
	pause 0x28
	waitcry
	setflag 0x80
	setflag 0x807
	setflag 0x253
	dowildbattle
	clearflag 0x807
	special2 LASTRESULT 0xB4
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_snorlaxencounter_Hugeyawn
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_snorlaxencounter_Hugeyawn
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_snorlaxencounter_Hugeyawn
	release
	end


	@---------------
EventScript_snorlaxencounter_Depslumber:
	msgbox gText_snorlaxencounter_ComfySlumber MSG_KEEPOPEN
	release
	end

	@---------------
EventScript_snorlaxencounter_End:
	release
	end

	@---------------
EventScript_snorlaxencounter_Playflute:
	preparemsg gText_snorlaxencounter_playflute
	waitmsg
	fanfare 0x152
	waitfanfare
	closeonkeypress
	pause 0x2
	applymovement LASTTALKED Jump
	waitmovement 0x0 
	msgbox gText_snorlaxencounter_Wokeup MSG_KEEPOPEN @"Snorlax woke up!\pIt attacked in a..."
	return

EventScript_snorlaxencounter_Playflute2:
	preparemsg gText_snorlaxencounter_playflute
	waitmsg
	fanfare 0x152
	waitfanfare
	closeonkeypress
	pause 0x2
	applymovement LASTTALKED Jump2
	waitmovement 0x0 
	@ checksound 
	msgbox gText_snorlaxencounter_Wokeup MSG_KEEPOPEN @"Snorlax woke up!\pIt attacked in a..."
	return

Jump:
	.byte face_player
	.byte jump_onspot_up
	.byte end_m 

Jump2: 
	.byte face_player
	.byte jump_onspot_right
	.byte end_m 

EventScript_snorlaxencounter_Hugeyawn:
	msgbox gText_snorlaxencounter_CalmedDown MSG_KEEPOPEN @"Snorlax calmed down.\nIt gave a hu..."
	release
	end
