.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"


.global EventScript_lorelei_Start
EventScript_lorelei_Start:
	lock
	faceplayer
	setvar 0x8004 0x9
	setvar 0x8005 0x2
	special 0x174
	checkflag 0x4B8
	if 0x1 _goto EventScript_lorelei_Defeat
	special 0x0
	setvar 0x8004 0x9
	setvar 0x8005 0x0
	special 0x173
	setvar 0x8004 0x9
	setvar 0x8005 0x1
	special 0x173
	checkflag 0x82C
	if 0x0 _call EventScript_lorelei_Firstmatch
	checkflag 0x82C
	if 0x1 _call EventScript_lorelei_Rematch
	setflag 0x3
	setflag 0x5
	checkflag 0x82C
	if 0x0 _goto EventScript_lorelei_Firstbattle
	checkflag 0x82C
	if 0x1 _goto EventScript_lorelei_Rematchbattle
	end

EventScript_lorelei_Defeat:
	msgbox gText_lorelei_Postbattlemsg MSG_KEEPOPEN @"You@re better than I thought.\nGo ..."
	release
	end

EventScript_lorelei_Firstmatch:
	msgbox gText_lorelei_Firstmsg MSG_KEEPOPEN @"Welcome to the POK�MON LEAGUE.\pI ..."
	return

EventScript_lorelei_Rematch:
	msgbox gText_lorelei_Rematchmsg MSG_KEEPOPEN @"Welcome to the POK�MON LEAGUE.\pI,..."
	return

EventScript_lorelei_Firstbattle:
	setflag 0x915
	random 0x2
	compare 0x800D 0x0
	if 0x1 _goto EventScript_lorelei_Option1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_lorelei_Option2
	end

EventScript_lorelei_Option1:
	trainerbattle3 0x3 0x4D 0x0 gText_lorelei_Defeatmsg
	goto EventScript_lorelei_End
	end 

EventScript_lorelei_Option2:
	trainerbattle3 0x3 0x4E 0x0 gText_lorelei_Defeatmsg
	goto EventScript_lorelei_End
	end 

EventScript_lorelei_Rematchbattle:
	setflag 0x915
	random 0x3
	compare 0x800D 0x0
	if 0x1 _goto EventScript_lorelei_Option4
	compare 0x800D 0x1
	if 0x1 _goto EventScript_lorelei_Option5
	compare 0x800D 0x2
	if 0x1 _goto EventScript_lorelei_Option6
	end 

EventScript_lorelei_Option4:
	trainerbattle3 0x3 0x59 0x0 gText_lorelei_Defeatmsg
	goto EventScript_lorelei_End
	end

EventScript_lorelei_Option5:
	trainerbattle3 0x3 0x5A 0x0 gText_lorelei_Defeatmsg
	goto EventScript_lorelei_End
	end

EventScript_lorelei_Option6:
	trainerbattle3 0x3 0x5B 0x0 gText_lorelei_Defeatmsg
	goto EventScript_lorelei_End
	end

EventScript_lorelei_End:
	clearflag 0x5
	setflag 0x4B8
	call EventScript_lorelei_Moveshit
	msgbox gText_lorelei_Postbattlemsg MSG_KEEPOPEN @"You@re better than I thought.\nGo ..."
    msgbox gText_LetMeHeal MSG_YESNO 
    compare LASTRESULT NO 
    if equal _goto EndThis 
    special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	release
	end

EndThis:
    release 
    end 

EventScript_lorelei_Moveshit:
	applymovement 0x800F EventScript_lorelei_Movement
	waitmovement 0x0
	sound 0x8
	call EventScript_lorelei_Tiles
	special 0x8E
	setflag 0x4
	return

EventScript_lorelei_Tiles:
	setmaptile 0x6 0x1 0x28E 0x1
	setmaptile 0x6 0x2 0x296 0x0
	return

EventScript_lorelei_Movement:
.byte 0x1C
.byte 0x1C
.byte 0xFE

.global EventScript_bruno_Start
EventScript_bruno_Start:
	lock
	faceplayer
	setvar 0x8004 0xA
	setvar 0x8005 0x2
	special 0x174
	checkflag 0x4B9
	if 0x1 _goto EventScript_bruno_Postdefeat
	setvar 0x8004 0xA
	setvar 0x8005 0x0
	special 0x173
	setvar 0x8004 0xA
	setvar 0x8005 0x1
	special 0x173
	msgbox gText_bruno_Prebattlemsg MSG_KEEPOPEN
	setflag 0x3
	setflag 0x5
	checkflag 0x82C
	if 0x0 _goto EventScript_bruno_Firstbattle
	checkflag 0x82C
	if 0x1 _goto EventScript_bruno_Rematch
	end


	@---------------
EventScript_bruno_Postdefeat:
	msgbox gText_bruno_Postdefeatmsg MSG_KEEPOPEN @"My job is done.\nGo face your next..."
	closeonkeypress
	compare PLAYERFACING 0x2
	if 0x1 _call EventScript_bruno_2
	compare PLAYERFACING 0x1
	if 0x1 _call EventScript_bruno_1
	compare PLAYERFACING 0x3
	if 0x1 _call EventScript_bruno_3
	compare PLAYERFACING 0x4
	if 0x1 _call EventScript_bruno_3
	release
	end

EventScript_bruno_Firstbattle:
	setflag 0x915
	random 0x2
	compare 0x800D 0x0
	if 0x1 _goto EventScript_bruno_Option1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_bruno_Option2
	end

EventScript_bruno_Option1:
	trainerbattle3 0x3 0x50 0x0 gText_bruno_Defeatmsg
	goto EventScript_bruno_End
	end

EventScript_bruno_Option2:
	trainerbattle3 0x3 0x51 0x0 gText_bruno_Defeatmsg
	goto EventScript_bruno_End
	end

EventScript_bruno_Rematch:
	setflag 0x915
	random 0x3
	compare 0x800D 0x0
	if 0x1 _goto EventScript_bruno_Option4
	compare 0x800D 0x1
	if 0x1 _goto EventScript_bruno_Option5
	compare 0x800D 0x2
	if 0x1 _goto EventScript_bruno_Option6
	end

EventScript_bruno_Option4:
	trainerbattle3 0x3 0x1E 0x0 gText_bruno_Defeatmsg
	goto EventScript_bruno_End
	end

EventScript_bruno_Option5:
	trainerbattle3 0x3 0x1F 0x0 gText_bruno_Defeatmsg
	goto EventScript_bruno_End
	end

EventScript_bruno_Option6:
	trainerbattle3 0x3 0x20 0x0 gText_bruno_Defeatmsg
	goto EventScript_bruno_End
	end

	@---------------
EventScript_bruno_End:
	clearflag 0x5
	setflag 0x4B9
	call EventScript_bruno_Moveshit
	msgbox gText_bruno_Postdefeatmsg MSG_KEEPOPEN @"My job is done.\nGo face your next..."
	closeonkeypress
    msgbox gText_LetMeHeal MSG_YESNO 
    compare LASTRESULT NO 
    if equal _goto EndThis 
    special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	compare PLAYERFACING 0x2
	if 0x1 _call EventScript_bruno_2
	compare PLAYERFACING 0x1
	if 0x1 _call EventScript_bruno_1
	compare PLAYERFACING 0x3
	if 0x1 _call EventScript_bruno_3
	compare PLAYERFACING 0x4
	if 0x1 _call EventScript_bruno_3
	release
	end

	@---------------
EventScript_bruno_2:
	applymovement 0x1 EventScript_bruno_Move2
	waitmovement 0x0
	return

	@---------------
EventScript_bruno_1:
	applymovement 0x1 EventScript_bruno_Move1
	waitmovement 0x0
	return

	@---------------
EventScript_bruno_3:
	applymovement 0x1 EventScript_bruno_Move3
	waitmovement 0x0
	return

	@---------------
EventScript_bruno_Moveshit:
	applymovement 0x800F EventScript_bruno_Delay
	waitmovement 0x0
	sound 0x8
	call EventScript_bruno_Tileshit
	special 0x8E
	setflag 0x4
	return

	@---------------
EventScript_bruno_Tileshit:
	setmaptile 0x6 0x1 0x28E 0x1
	setmaptile 0x6 0x2 0x296 0x0
	return


	@---------
	@ Strings
	@---------




	@-----------
	@ Movements
	@-----------
EventScript_bruno_Move2:
.byte 0x30
.byte 0xFE

EventScript_bruno_Move1:
.byte 0x2F
.byte 0xFE

EventScript_bruno_Move3:
.byte 0x2D
.byte 0xFE

EventScript_bruno_Delay:
.byte 0x1C
.byte 0x1C
.byte 0xFE

.global EventScript_agatha_Start
EventScript_agatha_Start:
	lock
	faceplayer
	setvar 0x8004 0xB
	setvar 0x8005 0x2
	special 0x174
	checkflag 0x4BA
	if 0x1 _goto EventScript_agatha_Afterdefeat
	setvar 0x8004 0xB
	setvar 0x8005 0x0
	special 0x173
	setvar 0x8004 0xB
	setvar 0x8005 0x4
	special 0x173
	setvar 0x8004 0x0
	setvar 0x8005 0x4
	special 0x173
	msgbox gText_agatha_Prebattlemsg 0x6
	setflag 0x3
	setflag 0x5
	checkflag 0x844
	if 0x0 _goto EventScript_agatha_Firstbattle
	checkflag 0x844
	if 0x1 _goto EventScript_agatha_Rematch
	end

	@---------------
EventScript_agatha_Afterdefeat:
	msgbox gText_agatha_Postdefeatmsg MSG_KEEPOPEN @"You win!\pI see what the old duff ..."
	release
	end

	@---------------
EventScript_agatha_Firstbattle:
	setflag 0x915
	random 0x2
	compare 0x800D 0x0
	if 0x1 _goto EventScript_agatha_Option1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_agatha_Option2
	end

EventScript_agatha_Option1:
	trainerbattle3 0x3 0x53 0x0 gText_agatha_Defeatmsg
	goto EventScript_agatha_End
	end

EventScript_agatha_Option2:
	trainerbattle3 0x3 0x54 0x0 gText_agatha_Defeatmsg
	goto EventScript_agatha_End
	end

	@---------------
EventScript_agatha_Rematch:
	setflag 0x915
	random 0x3
	compare 0x800D 0x0
	if 0x1 _goto EventScript_agatha_Option4
	compare 0x800D 0x1
	if 0x1 _goto EventScript_agatha_Option5
	compare 0x800D 0x2
	if 0x1 _goto EventScript_agatha_Option6
	end

EventScript_agatha_Option4:
	trainerbattle3 0x3 0x21 0x0 gText_agatha_Defeatmsg
	goto EventScript_agatha_End
	end

EventScript_agatha_Option5:
	trainerbattle3 0x3 0x22 0x0 gText_agatha_Defeatmsg
	goto EventScript_agatha_End
	end

EventScript_agatha_Option6:
	trainerbattle3 0x3 0x23 0x0 gText_agatha_Defeatmsg
	goto EventScript_agatha_End
	end

	@---------------
EventScript_agatha_End:
	clearflag 0x5
	setflag 0x4BA
	call EventScript_agatha_Endstuff
	msgbox gText_agatha_Postdefeatmsg MSG_KEEPOPEN @"You win!\pI see what the old duff ..."
    msgbox gText_LetMeHeal MSG_YESNO 
    compare LASTRESULT NO 
    if equal _goto EndThis 
    special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	release
	end

	@---------------
EventScript_agatha_Endstuff:
	applymovement 0x800F EventScript_agatha_Delay
	waitmovement 0x0
	sound 0x8
	call EventScript_agatha_Tileshit
	special 0x8E
	setflag 0x4
	return

	@---------------
EventScript_agatha_Tileshit:
	setmaptile 0x6 0x1 0x28E 0x1
	setmaptile 0x6 0x2 0x296 0x0
	return

EventScript_agatha_Delay:
.byte 0x1C
.byte 0x1C
.byte 0xFE

.global EventScript_lance_Start
EventScript_lance_Start:
	lock
	faceplayer
	setvar 0x8004 0xC
	setvar 0x8005 0x2
	special 0x174
	checkflag 0x4BB
	if 0x1 _goto EventScript_lance_Postdefeat
	setvar 0x8004 0xC
	setvar 0x8005 0x0
	special 0x173
	setvar 0x8004 0xC
	setvar 0x8005 0x1
	special 0x173
	checkflag 0x82C
	if 0x0 _call EventScript_lance_Prebattle
	checkflag 0x82C
	if 0x1 _call EventScript_lance_Prebattle2
	setflag 0x3
	setflag 0x5
	checkflag 0x82C
	if 0x0 _goto EventScript_lance_Firstbattle
	checkflag 0x82C
	if 0x1 _goto EventScript_lance_Rematch
	end

	@---------------
EventScript_lance_Postdefeat:
	msgbox gText_lance_Postdefeatmsg MSG_KEEPOPEN @"I still can@t believe my dragons\n..."
	release
	end

	@---------------
EventScript_lance_Prebattle:
	msgbox gText_lance_Prebattlemsg MSG_KEEPOPEN @"Ah! I@ve heard about you,\n[player..."
	return

	@---------------
EventScript_lance_Prebattle2:
	msgbox gText_lance_Prebattlemsg2 MSG_KEEPOPEN @"Ah!\nSo, you@ve returned, [player]..."
	return

	@---------------
EventScript_lance_Firstbattle:
	setflag 0x915
	random 0x2
	compare 0x800D 0x0
	if 0x1 _goto EventScript_lance_Option1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_lance_Option2
	end

EventScript_lance_Option1:
	trainerbattle3 0x3 0x56 0x0 gText_lance_Defeatmsg
	goto EventScript_lance_End
	end

EventScript_lance_Option2:
	trainerbattle3 0x3 0x57 0x0 gText_lance_Defeatmsg
	goto EventScript_lance_End
	end

	@---------------
EventScript_lance_Rematch:
	setflag 0x915
	random 0x3
	compare 0x800D 0x0
	if 0x1 _goto EventScript_lance_Option4
	compare 0x800D 0x1
	if 0x1 _goto EventScript_lance_Option5
	compare 0x800D 0x2
	if 0x1 _goto EventScript_lance_Option6
	end

EventScript_lance_Option4:
	trainerbattle3 0x3 0x24 0x0 gText_lance_Defeatmsg
	goto EventScript_lance_End
	end

EventScript_lance_Option5:
	trainerbattle3 0x3 0x25 0x0 gText_lance_Defeatmsg
	goto EventScript_lance_End
	end

EventScript_lance_Option6:
	trainerbattle3 0x3 0x26 0x0 gText_lance_Defeatmsg
	goto EventScript_lance_End
	end


	@---------------
EventScript_lance_End:
	clearflag 0x5
	setvar 0x8004 0x0
	special 0xAA
	setflag 0x4BB
	call EventScript_lance_Tileshit
	msgbox gText_lance_Postdefeatmsg MSG_KEEPOPEN @"I still can@t believe my dragons\n..."
	closeonkeypress
    msgbox gText_LetMeHeal MSG_YESNO 
    compare LASTRESULT NO 
    if equal _goto EndThis 
    special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	release
	end

	@---------------
EventScript_lance_Tileshit:
	applymovement 0x800F EventScript_lance_Delay
	waitmovement 0x0
	sound 0x8
	setmaptile 0x6 0x4 0x28E 0x1
	setmaptile 0x6 0x5 0x296 0x0
	special 0x8E
	setflag 0x4
	return

EventScript_lance_Delay:
.byte 0x1C
.byte 0x1C
.byte 0xFE


.global EventScript_E4nurse_Start
EventScript_E4nurse_Start:
	lock
	faceplayer
	special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	msgbox gText_E4nurse_1 0x6 
	release
	end

.global EventScript_E4LanceInfo_Start
EventScript_E4LanceInfo_Start:
	setvar 0x8004 0xC
	setvar 0x8005 0x5
	special 0x173
	msgbox gText_E4LanceInfo MSG_FACE 
	release 
	end 
