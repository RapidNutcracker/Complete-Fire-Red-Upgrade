.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ FLAG_HARDCORE_MODE, 0x1034
.equ VAR_BATTLE_AURAS, 0x5119
.equ VAR_BATTLE_TAILWIND_STRING, 5
.equ FLAG_MINIMAL_GRINDING_MODE, 0x1032

.global EventScript_Fuschia_OakAid
EventScript_Fuschia_OakAid:
    checkflag 0x999 
    if 0x1 _goto AidDone
	msgbox gText_Fuschia_OakAid1 MSG_FACE 
    giveitem ITEM_TOXIC_ORB 0x1 MSG_OBTAIN 
    giveitem ITEM_FLAME_ORB 0x1 MSG_OBTAIN 
    setflag 0x999
    goto AidDone
	end

AidDone:
    msgbox gText_Fuschia_OakAid2 MSG_FACE 
    release 
    end 

.global EventScript_Fuschia_NastyPlot
EventScript_Fuschia_NastyPlot:
    @ checkflag 0x99F
    @ if 0x1 _goto AlreadyTaught
    lock
    faceplayer 
	msgbox gText_Fuschia_NastyPlot1 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto Cancel
    setvar 0x8005 0x4C
    special 0x18D
    waitstate
    compare LASTRESULT 0x0
    if 0x1 _goto Cancel
    msgbox gText_Fuschia_NastyPlot2 MSG_FACE 
    @ setflag 0x99F
    release 
	end

Cancel:
    msgbox gText_Fuschia_NastyPlot3 MSG_FACE 
    release 
    end 

.global EventScript_Fuschia_EggTutor
EventScript_Fuschia_EggTutor:
    lock
    faceplayer
    textcolor 0x0
    checkitem ITEM_HEART_SCALE 0x1
    compare 0x800D 0x1
    if 0x0 _goto NeedScale
    msgbox gText_Fuschia_Egg2 MSG_YESNO
    compare LASTRESULT 0x0
    if 0x1 _goto Cancel1
    msgbox gText_Fuschia_Egg3 MSG_NORMAL
    call Teach
    msgbox gText_Fuschia_EggWhichMove MSG_NORMAL
    call TeachMoves
    removeitem ITEM_HEART_SCALE 0x1
    textcolor 0x3
    msgbox gText_FuschiaHandOver MSG_NORMAL
    msgbox gText_Fuschia_Egg4 MSG_NORMAL
    clearflag 0x917
    release
    end

NeedScale:
    msgbox gText_Fuschia_Egg1 MSG_NORMAL
    release
    end

Teach:
    setflag 0x917
    special 0xDB
    waitstate
    compare 0x8004 0x6
    if 0x4 _goto Cancel1
    special 0x148 @check if its an egg
    compare LASTRESULT 0x1
    if 0x1 _goto CancelNo3
    compare 0x8005 0x0
    if 0x1 _goto CancelNo
    return

TeachMoves:
    special 0xE0
    waitstate
    compare 0x8004 0x0
    if 0x1 _goto Cancel1
    return

Cancel1:
    clearflag 0x917
    msgbox gText_Fuschia_EggNo MSG_NORMAL
    release
    end

CancelNo:
    clearflag 0x917
    msgbox gText_Fuschia_EggNo2 MSG_NORMAL
    release
    end

CancelNo3:
    clearflag 0x917
    msgbox gText_Fuschia_EggNo3 MSG_NORMAL
    release
    end


.global EventScript_Fuschia_DoubleBattle
EventScript_Fuschia_DoubleBattle:
    lock
    faceplayer 
    checkflag 0x910
    if 0x1 _goto TurnOff
    msgbox gText_FuschiaDouble1 MSG_YESNO 
    compare LASTRESULT 0x1
    if NO _goto CancelThis
    setflag 0x910
    msgbox gText_FuschiaDouble2 MSG_NORMAL
	@ msgbox gText_FuschiaDoubleOof MSG_FACE 
    release 
    end 

TurnOff:
    msgbox gText_FuschiaDouble3 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto CancelThis
    clearflag 0x910
    msgbox gText_FuschiaDouble4 MSG_NORMAL 
    release 
    end 

CancelThis:
    msgbox gText_FuschiaDouble5 MSG_NORMAL 
    release 
    end 

.global EventScript_substitute_Start
EventScript_substitute_Start:
	textcolor 0x0
    lock 
    faceplayer 
	checkflag 0x2C8
	if 0x1 _goto EventScript_substitute_Done
	msgbox gText_substitute_3 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_substitute_Take
	msgbox gText_substitute_6 0x6
	release
	end

EventScript_substitute_Take:
	msgbox gText_substitute_4 0x6
	giveitem ITEM_TM90 0x1 MSG_OBTAIN
	setflag 0x2C8
	msgbox gText_substitute_5 0x6
	release
	end

EventScript_substitute_Done:
	msgbox gText_substitute_5 0x6
	release
	end

.global EventScript_brendanfuschia_Start
EventScript_brendanfuschia_Start:
	clearflag 0x200
	opendoor 0x18 0x5
	waitdooranim 
	showsprite 0x11
	applymovement 0xFF EventScript_brendanfuschia_Movedown
	waitmovement 0x0
	applymovement 0xFF EventScript_brendanfuschia_Lookup
	waitmovement 0x0
	applymovement 0x11 EventScript_brendanfuschia_Movedown
	waitmovement 0x0
	closedoor 0x18 0x5
	waitdooranim
	textcolor 0x00
	msgbox gText_brendanfuschia_1 0x6
	setflag 0x200
    setflag 0x90E 
	trainerbattle3 0x3 0x39 0x0 gText_brendanfuschia_Defeat
	msgbox gText_brendanfuschia_2 0x6
	giveitem ITEM_HM06 0x1 MSG_OBTAIN @Rock smash 
	msgbox gText_brendanfuschia_3 0x6
	setvar 0x5043 0x1
	applymovement 0x11 EventScript_brendanfuschia_Movedown2
	waitmovement 0x0
	hidesprite 0x11
	setflag 0x200
	release
	end

EventScript_brendanfuschia_Movedown:
.byte 0x10
.byte 0xFE

EventScript_brendanfuschia_Lookup:
.byte 0x1
.byte 0xFE

EventScript_brendanfuschia_Movedown2:
.byte 0x12
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0x10
.byte 0xFE

.global EventScript_nursegivemedicine_Start
EventScript_nursegivemedicine_Start:
	lock
	faceplayer
	checkitem ITEM_MEDICINE 0x1 @check if player has medicine
	compare 0x800D 0x1
	if 0x4 _goto EventScript_nursegivemedicine_Thankyou
	msgbox gText_nursegivemedicine_3 0x6
	checkflag 0x947
	if 0x1 _goto EventScript_nursegivemedicine_Better
	checkflag 0x945
	if 0x1 _goto EventScript_nursegivemedicine_Givemedicine
	setflag 0x944
	release
	end

EventScript_nursegivemedicine_Givemedicine:
	msgbox gText_nursegivemedicine_4 0x6
	giveitem ITEM_MEDICINE 0x1 MSG_OBTAIN
	msgbox gText_nursegivemedicine_5 0x6
	release
	end

EventScript_nursegivemedicine_Thankyou:
	msgbox gText_nursegivemedicine_5 0x6
	release
	end

EventScript_nursegivemedicine_Better:
	msgbox gText_nursegivemedicine_6 0x6
	release
	end

.global EventScript_earthpower_start
EventScript_earthpower_start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x986
	if 0x1 _goto EventScript_earthpowerstart2
	msgbox gText_earthpower MSG_YESNO @"Make foes shudder with the\nforce ..."
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_earthpower_NahNoHide
	msgbox gText_earthpower_Which MSG_NORMAL @"Which Pok�mon should I teach\nEart..."
	setvar 0x8005 0x2F
	call teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_earthpower_NahNoHide
	setflag 0x986
	msgbox gText_earthpower_gogetem MSG_NORMAL @"Go get em bud."
	release
	end

EventScript_earthpowerstart2:
	showmoney 0x0 0x0 0x0
	msgbox gText_earthpower MSG_FACE @"Make foes shudder with the\nforce ..."
	msgbox gText_earthpower_Cost MSG_YESNO @"It@ll cost [$]10000 now."
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_earthpower_No
	checkmoney 0x2710 0x0
	compare LASTRESULT 0x1
	if 0x0 _goto EventScript_earthpower_NoMoney
	msgbox gText_earthpower_Which MSG_NORMAL @"Which Pok�mon should I teach\nEart..."
	hidemoney 0x0 0x0
	setvar 0x8005 0x2F
	call teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_earthpower_NahNoHide
	showmoney 0x0 0x0 0x0
	msgbox gText_earthpower_dot MSG_NORMAL @"[.]"
	removemoney 0x2710 0x0
	sound 0x58
	updatemoney 0x0 0x0 0x0
	msgbox gText_earthpower_gogetem MSG_NORMAL @"Go get em bud."
	checksound
	hidemoney 0x0 0x0
	release
	end

EventScript_earthpower_NahNoHide:
	msgbox gText_earthpower_essential MSG_NORMAL @"No?\pIt@s an essential move."
	release
	end

	@---------------
teach:
	special 0x18D
	waitstate
	return

	@---------------
EventScript_earthpower_No:
	hidemoney 0x0 0x0
	msgbox gText_earthpower_essential MSG_NORMAL @"No?\pIt@s an essential move."
	release
	end

	@---------------
EventScript_earthpower_NoMoney:
	msgbox gText_earthpower_notenough MSG_NORMAL @"[.]You don@t have enough money."
	hidemoney 0x0 0x0
	release
	end

.global EventScript_koga_Start
EventScript_koga_Start:
	lock
	faceplayer
	checkflag 0x824
	if 0x1 _goto EventScript_koga_Defeated
	setflag 0x915
	special 0x0
	checkflag FLAG_HARDCORE_MODE
	if 0x1 _call SetTailwind
	trainerbattle1 0x1 0x1A2 0x0 gText_koga_EncounterText gText_koga_DefeatText EventScript_koga_WonPointer
	release
	end

SetTailwind:
	setvar VAR_BATTLE_AURAS VAR_BATTLE_TAILWIND_STRING
	return

EventScript_koga_Defeated:
	lock
	faceplayer
	checkflag 0x964
	if 0x1 _goto EventScript_koga_Done
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x1 _goto MinGrindingModePerfectPkmn
	msgbox gText_koga_Perfectpokemon 0x6
	bufferfirstpokemon 0x00
	msgbox gText_koga_Thepokemon 0x6
	setvar 0x8003 0x0 @From party
	setvar 0x8004 0x0 @1st Pok�mon
	setvar 0x8005 0x3 @check speed EVs
	special2 LASTRESULT 0x7
	buffernumber 0x0 LASTRESULT @Buffer speed EVs to [buffer1]
	compare LASTRESULT 150
	if 0x4 _goto EventScript_koga_Veryfast
	msgbox gText_koga_Notquite 0x6
	release
	end

MinGrindingModePerfectPkmn:
	msgbox gText_koga_PerfectpokemonMinimal 0x6
	bufferfirstpokemon 0x00
	msgbox gText_koga_Thepokemon 0x6
	setvar 0x8003 0x0 @From party
	setvar 0x8004 0x0 @1st Pok�mon
	callasm CheckIfKogaApproves + 1
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_koga_Veryfast
	msgbox gText_koga_Notquite 0x6
	release
	end

EventScript_koga_WonPointer:
	msgbox gText_koga_TMInfomsg 0x6
	giveitem ITEM_TM36 0x1 MSG_OBTAIN @sludge bomb
	settrainerflag 0x126
	settrainerflag 0x127
	settrainerflag 0x120
	settrainerflag 0x121
	settrainerflag 0x124
	settrainerflag 0x125
	setflag 0x824
	clearflag 0x915
	msgbox gText_koga_Givetm 0x6
	msgbox gText_koga_Helloagain 0x6
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x1 _goto WonPointerMinGrindingMode 
	msgbox gText_koga_Perfectpokemon 0x6
	release
	end

WonPointerMinGrindingMode:
	msgbox gText_koga_PerfectpokemonMinimal 0x6
	release
	end

EventScript_koga_Done:
	msgbox gText_koga_Donemsg 0x6
	release
	end

EventScript_koga_Veryfast:
	msgbox gText_koga_Perfect 0x6
	giveitem ITEM_TOXTRICITITE 0x1 MSG_OBTAIN 
	msgbox gText_koga_Charmmsg 0x6
	giveitem ITEM_LIFE_ORB 0x1 MSG_OBTAIN @Life Orb
	setflag 0x964
	release
	end

.global EventScript_Fuschia_SandacondaBattle
EventScript_Fuschia_SandacondaBattle:
	checkflag 0x102F
	if 0x1 _goto SandacondaDone
	lock
	faceplayer
	applymovement 0x800F FacePlayer
	waitmovement 0x0
	msgbox gText_Fuschia_Sandaconda1 MSG_YESNO 
	compare LASTRESULT NO
	if equal _goto SandacondaReject
	msgbox gText_Fuschia_Sandaconda2 MSG_FACE
	setflag 0x90E
	trainerbattle3 0x3 0xF 0x0 gText_Fuschia_SandacondaDefeat
	applymovement 0x800F FacePlayer
	waitmovement 0x0
	msgbox gText_Fuschia_Sandaconda3 MSG_FACE
	giveitem ITEM_SANDACONDITE 0x1 MSG_OBTAIN
	msgbox gText_Fuschia_Sandaconda4 MSG_FACE
	giveitem ITEM_POWER_HERB 0x1 MSG_OBTAIN
	faceplayer 
	setflag 0x102F
	goto SandacondaDone
	end

SandacondaDone:
	msgbox gText_Fuschia_Sandaconda5 MSG_FACE
	release
	end

SandacondaReject:
	msgbox gText_Fuschia_SandacondaReject MSG_FACE
	release
	end

FacePlayer:
	.byte face_player
	.byte end_m

EventScript_Hardcoremode_CheckifDoneRematches:
	checkflag FLAG_HARDCORE_MODE
	if 0x1 _goto CheckIfRematchesDone
	goto SetVarCheck
	end

SetVarCheck: 
	setvar 0x511A 0x1
	release
	end

CheckIfRematchesDone:
	checkflag 0x959 @Pewter 
	if 0x0 _goto Closed
	checkflag 0x932 @Cerulean
	if 0x0 _goto Closed
	checkflag 0x934 @Vermilion
	if 0x0 _goto Closed
	goto SetVarCheck
	end

Closed:
	applymovement 0xFF FaceForward
	waitmovement 0x0 
	msgbox gText_Fuschia_Closed MSG_SIGN
	applymovement 0xFF GoBackward
	waitmovement 0x0
	release
	end

FaceForward:
	.byte look_up
	.byte end_m

GoBackward: 
	.byte walk_down
	.byte end_m
