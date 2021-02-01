.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_rockslide_Start
EventScript_rockslide_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x1006
	if 0x1 _goto EventScript_rockslide_Done
	msgbox gText_rockslide_3 0x6
	msgbox gText_rockslide_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_rockslide_Take
	msgbox gText_rockslide_6 0x6
	release
	end

EventScript_rockslide_Take:
	msgbox gText_rockslide_5 0x6
	giveitem ITEM_TM80 0x1 MSG_OBTAIN
	setflag 0x1006
	msgbox gText_rockslide_7 0x6
	release
	end

EventScript_rockslide_Done:
	msgbox gText_rockslide_7 0x6
	release
	end

.global EventScript_morty_Start
EventScript_morty_Start:
	lock
	faceplayer
	checkflag 0x1003
	if 0x1 _goto EventScript_morty_Done
	msgbox gText_morty_1 0x6
	msgbox gText_morty_3 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_morty_Battle
	msgbox gText_morty_4 0x6
	release
	end

EventScript_morty_Battle:
	setflag 0x915
	setflag 0x90E
	msgbox gText_morty_5 0x6
	special 0x0
    setflag 0x90E
	trainerbattle3 0x3 0x34 0x0 gText_morty_Defeat
	msgbox gText_morty_6 0x6
	giveitem 0x13E 0x1 MSG_OBTAIN
	msgbox gText_morty_8 0x6
	giveitem 0xB8 0x1 MSG_OBTAIN
	msgbox gText_morty_9 0x6
	setflag 0x1003
	release
	end

EventScript_morty_Done:
	lock
	faceplayer
	checkitem ITEM_MEGA_RING 0x1
	compare 0x800D 0x1
	if 0x4 _goto EventScript_morty_Givemega
	msgbox gText_morty_9 0x6
	release
	end


EventScript_morty_Givemega:
	lock
	faceplayer
	checkflag 0x1004
	if 0x1 _goto EventScript_morty_Donedone
	msgbox gText_morty_10 0x6
	bufferfirstpokemon 0x00
	msgbox gText_morty_11 0x6
	setvar 0x8003 0x0 @From party
	setvar 0x8004 0x0 @1
	special2 LASTRESULT 0xD
	buffernumber 0x0 LASTRESULT @Buffer happiness to [buffer1]
	compare LASTRESULT 255
	if 0x1 _goto EventScript_morty_MaxedHappiness
	msgbox gText_morty_13 0x6
	release
	end

EventScript_morty_MaxedHappiness:
	msgbox gText_morty_12 0x6
	giveitem ITEM_GENGARITE 0x1 MSG_OBTAIN
	setflag 0x1004
	release
	end

EventScript_morty_Donedone:
	lock
	faceplayer
	@ checkitem ITEM_TRI_PASS 0x1 
	@ compare 0x800D 0x1
	@ if 0x4 _goto EventScript_Morty_Rematch
	goto EventScript_mortyEndDone

EventScript_mortyEndDone:
	msgbox gText_morty_9 0x6
	release
	end

EventScript_Morty_Rematch:
	checkflag 0x101D
	if 0x1 _goto EventScript_mortyEndDone
	msgbox gText_morty_Rematch_1 MSG_YESNO
	compare LASTRESULT NO
	if equal _goto EventScript_morty_rematchreject
	msgbox gText_morty_Rematch_2 MSG_NORMAL
	trainerbattle3 0x3 0x1C 0x0 gText_morty_Defeat
	msgbox gText_morty_Rematch_3 MSG_NORMAL
	giveitem ITEM_GHOSTIUM_Z 0x1 MSG_OBTAIN
	msgbox gText_morty_Rematch_4 MSG_NORMAL 
	setflag 0x101D 
	release
	end


EventScript_morty_rematchreject:
	msgbox gText_morty_4 0x6
	release
	end

.global EventScript_amarowak_Start
EventScript_amarowak_Start:
	lockall
	textcolor 0x2
	msgbox gText_amarowak_Begone MSG_KEEPOPEN @"Be gone[.]\nIntruders[.]"
	checkitem 0x167 0x1
	compare 0x800D 0x1
	if 0x0 _goto EventScript_amarowak_Moveup
	setflag 0x90B
	setflag 0x90C
	setvar 0x8000 0x9B @sets moveset to bonemerang, shadow bone, fire punch, thunderpunch
	setvar 0x8001 0x25F
	setvar 0x8002 0x7
	setvar 0x8003 0x9
	setvar 0x5002 0x43 @raises speed by 4 stages
	setflag 0x915
	wildbattle SPECIES_MAROWAK_A 0x32 ITEM_THICK_CLUB @level 50 alolan marowak with thick club
	special2 LASTRESULT 0xB4
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_amarowak_Thespirit
	clearflag 0x915
	applymovement 0xFF EventScript_amarowak_Move
	waitmovement 0x0
	releaseall
	end

EventScript_amarowak_Moveup:
	applymovement 0xFF EventScript_amarowak_Move
	waitmovement 0x0
	releaseall
	end

EventScript_amarowak_Thespirit:
	clearflag 0x915
	preparemsg gText_amarowak_Ghostwas @"The ghost was the restless spirit\..."
	waitmsg
	checksound
	cry 0x69 0x0
	waitkeypress
	waitcry
	msgbox gText_amarowak_Calmdown MSG_KEEPOPEN @"The mother@s spirit was calmed.\pI..."
	setvar 0x4059 0x1
	releaseall
	end

EventScript_amarowak_Move:
.byte 0x11
.byte 0xFE


.global EventScript_AudinoSlayer
EventScript_AudinoSlayer:
	lock
	faceplayer
	showmoney 0x0 0x0 0x0
	msgbox gText_AudinoSlayer_1 MSG_YESNO
	compare LASTRESULT NO
	if equal _goto AudinoReject
	checkmoney 0x2710 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoneyAudino
	sound 0x58 
    msgbox gText_AudniSlayer_Wait MSG_KEEPOPEN
    removemoney 0x2710 0x00
    updatemoney 0x00 0x00 0x00
    checksound
	closeonkeypress
	msgbox gText_AudinoSlayer_2 MSG_NORMAL
	setflag 0x90E
	trainerbattle3 0x3 0x1B 0x0 gText_AudinoSlayer_Defeat
	msgbox gText_AudinoSlayer_5 MSG_NORMAL
	release
	end

AudinoReject:
	msgbox gText_AudinoSlayer_3 MSG_NORMAL
	hidemoney 0x0 0x0 
	release
	end

NotEnoughMoneyAudino:
	msgbox gText_AudinoSlayer_4 MSG_NORMAL
	hidemoney 0x0 0x0 
	release
	end
