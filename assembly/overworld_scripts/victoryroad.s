.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ VAR_GMOLTRES_DAILY, 0x5116

.global EventScript_closecombat_Start
EventScript_closecombat_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x987 @flag here
	if 0x1 _goto EventScript_closecombat_Cost
	msgbox gText_closecombat_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancel
	msgbox gText_closecombat_3 0x6
	setvar 0x8005 0x78 @change here
	call EventScript_closecombat_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancel
	setflag 0x987 @flag here
	msgbox gText_closecombat_4 0x6
	release
	end

EventScript_closecombat_Teach:
	special 0x18D
	waitstate
	return

EventScript_closecombat_Cost:
	showmoney 0x00 0x00 0x00
	msgbox gText_closecombat_1 0x6
	msgbox gText_closecombat_2 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancelhide
	checkmoney 0x2710 0x00 @money here
	compare 0x800D 0x1
	if 0x0 _goto EventScript_closecombat_Nomoney
	msgbox gText_closecombat_3 0x6
	hidemoney 0x00 0x00
	setvar 0x8005 0x78 @change this
	call EventScript_closecombat_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancel
	showmoney 0x00 0x00 0x00
	msgbox gText_closecombat_Wait 0x6
	removemoney 0x2710 0x00 @money here
	sound 0x58
	updatemoney 0x00 0x00 0x00
	msgbox gText_closecombat_4 0x6
	checksound
	hidemoney 0x0 0x0
	release
	end

EventScript_closecombat_Cancel:
	msgbox gText_closecombat_No 0x6
	release
	end

EventScript_closecombat_Cancelhide:
	hidemoney 0x00 0x00
	msgbox gText_closecombat_No 0x6
	release
	end

EventScript_closecombat_Nomoney:
	msgbox gText_closecombat_Poor 0x6
	hidemoney 0x00 0x00
	release
	end

.global gMapScripts_PkmnLeague
gMapScripts_PkmnLeague:
    mapscript MAP_SCRIPT_ON_TRANSITION MapEntryScript_PkmnLeague
    .byte MAP_SCRIPT_TERMIN

MapEntryScript_PkmnLeague:
	sethealingplace 0xA
    checkflag 0x82C
    if 0x1 _call MoveShit
    end 

MoveShit: 
    movesprite2 0x4 0x4 0x2 
    return 

.global EventScript_PokemonLeagueChick
EventScript_PokemonLeagueChick:
	checkflag 0x82C
	if 0x1 _goto DoneWGame
	msgbox gText_ShitsHard1 MSG_FACE 
	release 
	end 

DoneWGame:
	msgbox gText_ShitsHard2 MSG_FACE 
	release 
	end 

Moveback2:
    release 
    end

.global EventScript_VictoryRoad_Moltres
EventScript_VictoryRoad_Moltres:
    lock
    faceplayer
    cry 0x92 0x2
    preparemsg gText_VictoryRoad_Moltres1 
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle 0x92 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x99B
	setvar 0x8000 VAR_GMOLTRES_DAILY
    setvar 0x8001 0x0
    special 0xA1
    fadescreen 0x0
    release
    end

.global EventScript_VictoryRoad_GalarMoltres
EventScript_VictoryRoad_GalarMoltres:
    lock
    faceplayer
    cry 0x92 0x2
    preparemsg gText_PowerPlant_Zapdos1 
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_ZAPDOS_G 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x102A
	setflag 0x102B
    fadescreen 0x0
    release
    end

.global gMapScripts_VictoryRoad
gMapScripts_VictoryRoad:
    mapscript MAP_SCRIPT_ON_TRANSITION HideGMoltresIfNotReady
    .byte MAP_SCRIPT_TERMIN

HideGMoltresIfNotReady:
	checkflag 0x99B
	if 0x0 _goto HideGMoltres
	checkflag 0x102B
	if 0x1 _goto HideGMoltres
	setvar 0x8000 VAR_GMOLTRES_DAILY
    setvar 0x8001 0x0
    special2 LASTRESULT 0xA0
    compare LASTRESULT 0x0 
    if equal _goto HideGMoltres
	clearflag 0x102A
	showsprite 0x10
	end 

HideGMoltres:
	hidesprite 0x10
	setflag 0x102A
	end
	