.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Saffron_Nerd
EventScript_Saffron_Nerd:
    lock
    faceplayer
    msgbox gText_Saffron_Nerd MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood
    checkitem ITEM_BOTTLE_CAP 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHave
    setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto NahImGood
    callasm SetChosenMonHiddenAbility + 1
    compare LASTRESULT 0x0 
    if equal _goto DontHaveHidden
    msgbox gText_Saffron_NerdGiveItem MSG_FACE
    msgbox gText_Saffron_NerdAfter MSG_FACE
    removeitem 0x1AA 0x1
    release
    end

NahImGood:
    release
    end

YouDontHave:
    msgbox gText_Saffron_NerdReject MSG_FACE
    release
    end

DontHaveHidden: 
    msgbox gText_SaffronNerd_NoHidden MSG_FACE 
    release 
    end 

.global EventScript_Saffron_Nerd2
EventScript_Saffron_Nerd2:
    lock
    faceplayer
    msgbox gText_Saffron_Nerd2 MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood
    setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto NahImGoood
    callasm SwitchChosenMonAbility + 1
    compare LASTRESULT 0x1
    if equal _goto ItsHidden
    compare LASTRESULT 0x2 
    if equal _goto NoDiff
    msgbox gText_Saffron_NerdAfter MSG_FACE
    release
    end

NahImGoood:
    release
    end

ItsHidden:
    msgbox gText_Saffron_Nerd2_Hidden MSG_FACE 
    release 
    end 

NoDiff:
    msgbox gText_SaffronNerd2_NoDiff MSG_FACE 
    release 
    end

.global EventScript_Saffron_Test
EventScript_Saffron_Test:
    lock
    faceplayer 
    giveitem 0x1AA 0x1 MSG_OBTAIN 
    release 
    end 

.global EventScript_SilphCo_TeamAlert
EventScript_SilphCo_TeamAlert:
    lock 
    applymovement 0xFF StopInPlace
    msgbox gText_SilphCo_TeamAlert1 MSG_NORMAL
    special 0x0 
    setvar 0x5060 0x1 
    release 
    end 

StopInPlace:
    .byte look_down
    .byte end_m

.global EventScript_Saffron_ManyTutors
EventScript_Saffron_ManyTutors:    
    lock
    faceplayer 
    msgbox gText_Saffron_ManyTutors1 MSG_YESNO 
    compare LASTRESULT YES 
    if 0x0 _goto RegCancel 
    showmoney 0x35 0x00 0x00
    goto FirstList 
    release 
    end 

FirstList: 
    setvar 0x8006 0x0
    loadpointer 0x0 gText_HydroPump
    special 0x25 
    setvar 0x8006 0x1 
    loadpointer 0x0 gText_DrillRun
    special 0x25 
    setvar 0x8006 0x2
    loadpointer 0x0 gText_BlazeKick
    special 0x25
    setvar 0x8006 0x3
    loadpointer 0x0 gText_PSplit 
    special 0x25 
    setvar 0x8006 0x4 
    loadpointer 0x0 gText_ZenHeadbutt
    special 0x25
    setvar 0x8006 0x5
    loadpointer 0x0 gText_WeatherBall 
    special 0x25
    setvar 0x8006 0x6
    loadpointer 0x0 gText_ViewMore 
    special 0x25 
    preparemsg gText_Saffron_ManyTutors6
    waitmsg
    multichoice 0x0 0x0 0x25 0x0 
    compare LASTRESULT 0x0
    if 0x1 _goto HydroPump
    compare LASTRESULT 0x1
    if 0x1 _goto DrillRun
    compare LASTRESULT 0x2
    if 0x1 _goto BlazeKick
    compare LASTRESULT 0x3 
    if 0x1 _goto PainSplit
    compare LASTRESULT 0x4
    if 0x1 _goto ZenButt
    compare LASTRESULT 0x5 
    if 0x1 _goto WeatherBall
    compare LASTRESULT 0x6
    if 0x1 _goto SecondList
    hidemoney 0x35 0x00 
    msgbox gText_Saffron_ManyTutors5 MSG_FACE 
    release 
    end 

SecondList:
    setvar 0x8006 0x0
    loadpointer 0x0 gText_AirSlash
    special 0x25 
    setvar 0x8006 0x1 
    loadpointer 0x0 gText_Hex
    special 0x25 
    setvar 0x8006 0x2
    loadpointer 0x0 gText_MysticalFire
    special 0x25
    setvar 0x8006 0x3
    loadpointer 0x0 gText_SeedBomb
    special 0x25 
    setvar 0x8006 0x4 
    loadpointer 0x0 gText_LeafBlade
    special 0x25
    setvar 0x8006 0x5
    loadpointer 0x0 gText_KnockOff
    special 0x25
    setvar 0x8006 0x6
    loadpointer 0x0 gText_Back 
    special 0x25 
    preparemsg gText_Saffron_ManyTutors8
    waitmsg
    multichoice 0x0 0x0 0x25 0x0 
    compare LASTRESULT 0x0
    if 0x1 _goto AirSlash
    compare LASTRESULT 0x1
    if 0x1 _goto Hex
    compare LASTRESULT 0x2
    if 0x1 _goto MysticFire
    compare LASTRESULT 0x3 
    if 0x1 _goto SeedBomb
    compare LASTRESULT 0x4
    if 0x1 _goto LeafBlade
    compare LASTRESULT 0x5
    if 0x1 _goto KnockOff
    compare LASTRESULT 0x6 
    if 0x1 _goto FirstList
    goto FirstList 
    end 

HydroPump: 
    setvar 0x8005 0x7B
    goto EndScript
    end 

DrillRun: 
    setvar 0x8005 0x23
    goto EndScript
    end 

BlazeKick:
    setvar 0x8005 0x68
    goto EndScript
    end 

PainSplit:
    setvar 0x8005 0x1B
    goto EndScript
    end 

ZenButt:
    setvar 0x8005 0x1F
    goto EndScript 
    end 

WeatherBall:
    setvar 0x8005 0x65
    goto EndScript 
    end 

AirSlash:
    setvar 0x8005 0x66
    goto EndScript 
    end 

Hex: 
    setvar 0x8005 0x64
    goto EndScript 
    end 

MysticFire: 
    setvar 0x8005 0x70
    goto EndScript 
    end 

SeedBomb:
    setvar 0x8005 0x20
    goto EndScript 
    end 

LeafBlade:
    setvar 0x8005 0x6E
    goto EndScript 
    end 

KnockOff:
    setvar 0x8005 0x35
    goto EndScript 
    end 

EndScript:
    checkmoney 0x1D4C 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
    msgbox gText_Saffron_ManyTutors7 MSG_NORMAL 
    hidemoney 0x35 0x00 
    special 0x18D 
    waitstate 
    compare LASTRESULT 0x0 
    if 0x1 _goto RegCancel
    showmoney 0x35 0x00
    msgbox gText_Saffron_ManyTutors4 MSG_NORMAL 
    sound 0x58
    removemoney 0x1D4C 0x00
    updatemoney 0x35 0x00 0x00
    checksound 
    hidemoney 0x35 0x00
    msgbox gText_Saffron_ManyTutors3 MSG_NORMAL 
    release 
    end 

NotEnoughMoney:
    msgbox gText_Saffron_ManyTutors2 MSG_NORMAL 
    hidemoney 0x35 0x00
    release 
    end 

CancelDis:
    hidemoney 0x35 0x00
    msgbox gText_Saffron_ManyTutors5 MSG_FACE 
    release 
    end 

RegCancel:
    msgbox gText_Saffron_ManyTutors5 MSG_FACE 
    release 
    end 

.global EventScript_liquidation_Start
EventScript_liquidation_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x957
	if 0x1 _goto EventScript_liquidation_Cost
	msgbox gText_liquidation_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_liquidation_Cancel
	msgbox gText_liquidation_3 0x6
	setvar 0x8005 0x27
	call EventScript_liquidation_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_liquidation_Cancel
	setflag 0x957
	msgbox gText_liquidation_4 0x6
	release
	end


EventScript_liquidation_Teach:
	special 0x18D
	waitstate
	return

EventScript_liquidation_Cost:
	showmoney 0x00 0x00 0x00
	msgbox gText_liquidation_1 0x6
	msgbox gText_liquidation_2 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_liquidation_Cancelhide
	checkmoney 0x1D4C 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_liquidation_Nomoney
	msgbox gText_liquidation_3 0x6
	hidemoney 0x00 0x00
	setvar 0x8005 0x27
	call EventScript_liquidation_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_liquidation_Cancel
	showmoney 0x00 0x00 0x00
	msgbox gText_liquidation_Wait 0x6
	removemoney 0x1D4C 0x00
    updatemoney 0x00 0x00 0x00
	sound 0x58
	msgbox gText_liquidation_4 0x6
	hidemoney 0x00 0x00
	checksound
	release
	end

EventScript_liquidation_Cancel:
	msgbox gText_liquidation_No 0x6
	release
	end

EventScript_liquidation_Cancelhide:
	hidemoney 0x00 0x00
	msgbox gText_liquidation_No 0x6
	release
	end

EventScript_liquidation_Nomoney:
	msgbox gText_liquidation_Poor 0x6
	hidemoney 0x00 0x00
	release
	end

.global EventScript_EVSubtracter_Start
EventScript_EVSubtracter_Start:
	lock
	faceplayer
	textcolor 0x0
	msgbox gText_EVSubtracter_Msg 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_MinusEVs
	goto EventScript_EVSubtracter_Cancel
	end

EventScript_EVSubtracter_MinusEVs:
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_EVSubtracter_Cancel
	special 0x7C @puts the selected mon in party into buffer
	goto EventScript_EVSubtracter_CheckEVs

EventScript_EVSubtracter_CheckEVs:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_EVSubtracter_HP
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_EVSubtracter_Attack
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_EVSubtracter_Defense
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_EVSubtracter_SpA
	special 0x25
	setvar 0x8006 0x4 @fifth item
	loadpointer 0x0 gText_EVSubtracter_SpDef
	special 0x25
	setvar 0x8006 0x5 @sixth item
	loadpointer 0x0 gText_EVSubtracter_Speed
	special 0x25
	preparemsg gText_EVSubtracter_1
	waitmsg
	multichoice 0x0 0x0 0x24 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EVSubtracter_ReduceHP
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_ReduceAttack
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_EVSubtracter_ReduceDef
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_EVSubtracter_ReduceSpA
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_EVSubtracter_ReduceSpD
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_EVSubtracter_ReduceSpeed
	goto EventScript_EVSubtracter_MinusEVs @means they pressed B, goto previous screen
	end

EventScript_EVSubtracter_Cancel:
	msgbox gText_EVSubtracter_2 0x6
	release
	end


EventScript_EVSubtracter_ReduceHP:
	setvar 0x8005 0x0
	msgbox gText_EVSubtracter_HP 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceAttack:
	setvar 0x8005 0x1
	msgbox gText_EVSubtracter_Attack 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceDef:
	setvar 0x8005 0x2
	msgbox gText_EVSubtracter_Defense 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceSpA:
	setvar 0x8005 0x4
	msgbox gText_EVSubtracter_SpA 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceSpD:
	setvar 0x8005 0x5
	msgbox gText_EVSubtracter_SpDef 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceSpeed:
	setvar 0x8005 0x3
	msgbox gText_EVSubtracter_Speed 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_Statmultichoice:
	call EventScript_EVSubtracter_Checkstat0
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_EVSubtracter_Ten
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_EVSubtracter_Fifty
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_EVSubtracter_Hundred
	special 0x25
    setvar 0x8006 0x3 
    loadpointer 0x0 gText_EVSubtracter_All
    special 0x25 
	preparemsg gText_EVSubtracter_Reduceby
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EVSubtracter_Reduce10
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_Reduce50
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_EVSubtracter_Reduce100
    compare LASTRESULT 0x3
	if 0x1 _goto EventScript_EVSubtracter_ReduceAll
	goto EventScript_EVSubtracter_CheckEVs @means they pressed B, go back to previous screen
	end

EventScript_EVSubtracter_Reduce10:
	setvar 0x8006 0x010A @subtracting 10
	special 0xF
	msgbox gText_EVSubtracter_By10 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_Reduce50:
	setvar 0x8006 0x0132
	special 0xF
	msgbox gText_EVSubtracter_By50 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_Reduce100:
	setvar 0x8006 0x164
	special 0xF
	msgbox gText_EVSubtracter_By100 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_ReduceAll:
	setvar 0x8006 0x1FC
	special 0xF
	msgbox gText_EVSubtracter_ByAll 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_Checkstat0:
	special2 LASTRESULT 0x7
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EVSubtracter_Noeffect
	special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT
	msgbox gText_EVSubtracter_Currently 0x6
	return

EventScript_EVSubtracter_Noeffect:
	msgbox gText_EVSubtracter_None 0x6
	goto EventScript_EVSubtracter_CheckEVs
	end

EventScript_EVSubtracter_Doanother:
	msgbox gText_EVSubtracter_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_MinusEVs
	goto EventScript_EVSubtracter_Cancel
	end

.global EventScript_EvChecker_Start
EventScript_EvChecker_Start:
	lock
	faceplayer
	textcolor 0x0
	msgbox gText_EvChecker_Msg 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EvChecker_CheckEVs
	goto EventScript_EvChecker_Cancel
	end

EventScript_EvChecker_CheckEVs:
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_EvChecker_Cancel
	special 0x7C @puts the selected mon in party into buffer
	msgbox gText_EvChecker_1 0x6
	setvar 0x8005 0x0
	special2 LASTRESULT 0x7
	buffernumber 0x0 LASTRESULT @hp evs in buffer 1
	setvar 0x8005 0x1
	special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT @atk evs in buffer 2
	setvar 0x8005 0x2
	special2 LASTRESULT 0x7
	buffernumber 0x2 LASTRESULT @def evs in buffer 3
	msgbox gText_EvChecker_3 0x6
	setvar 0x8005 0x3
	special2 LASTRESULT 0x7
	buffernumber 0x2 LASTRESULT @speed evs in buffer 1
	setvar 0x8005 0x4
	special2 LASTRESULT 0x7
	buffernumber 0x0 LASTRESULT @spa evs in buffer 2
	setvar 0x8005 0x5
	special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT @spdef evs in buffer 3
    msgbox gText_EvChecker_5 0x6
	msgbox gText_EvChecker_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EvChecker_CheckEVs
	goto EventScript_EvChecker_Cancel
	end

EventScript_EvChecker_Cancel:
	msgbox gText_EvChecker_2 0x6
	release
	end


.global EventScript_chuck_Start
EventScript_chuck_Start:
	lock
	faceplayer
	checkflag 0x950
	if 0x1 _goto EventScript_chuck_Done
	msgbox gText_chuck_1 0x6
	goto EventScript_chuck_Battle
	end

EventScript_chuck_Battle:
	setflag 0x915
	setflag 0x90E
	trainerbattle3 0x3 0x13D 0x0 gText_chuck_Defeat
	msgbox gText_chuck_6 0x6
	giveitem ITEM_TM60 0x1 MSG_OBTAIN
	msgbox gText_chuck_8 0x6
	giveitem ITEM_FOCUS_SASH 0x1 MSG_OBTAIN
	msgbox gText_chuck_Take 0x6
	setflag 0x950
	setvar 0x4081 0x1 @stop the script tiles
	release
	end

EventScript_chuck_Done:
	lock
	faceplayer
	checkitem ITEM_MEGA_RING 0x1
	compare 0x800D 0x1
	if 0x4 _goto EventScript_chuck_Givemega
	msgbox gText_chuck_9 0x6
	release
	end

EventScript_chuck_Givemega:
	lock
	faceplayer
	checkflag 0x951
	if 0x1 _goto EventScript_chuck_Donedone
	msgbox gText_chuck_10 0x6
	bufferfirstpokemon 0x00
	msgbox gText_chuck_11 0x6
	setvar 0x8003 0x0 @From party
	setvar 0x8004 0x0 @1st Pokemon
	setvar 0x8005 0x1
	special2 LASTRESULT 0x7
	buffernumber 0x0 LASTRESULT @Buffer attack EVs to [buffer1]
	compare LASTRESULT 150
	if 0x4 _goto EventScript_chuck_MaxedHappiness
	msgbox gText_chuck_13 0x6
	release
	end

EventScript_chuck_MaxedHappiness:
	msgbox gText_chuck_12 0x6
	giveitem ITEM_GALLADITE 0x1 MSG_OBTAIN
	msgbox gText_chuck_14 0x6
	giveitem ITEM_EXPERT_BELT 0x1 MSG_OBTAIN
	setflag 0x951
	release
	end

EventScript_chuck_Donedone:
	lock
	faceplayer
	msgbox gText_chuck_9 0x6
	release
	end

.global EventScript_clobbopus_Start
EventScript_clobbopus_Start:
	lock
	faceplayer
	checkflag 0x952
	if 0x1 _goto EventScript_clobbopus_Greedy
	showpokepic SPECIES_CLOBBOPUS 0x0A 0x03
	cry SPECIES_CLOBBOPUS 0x0
	waitcry
	msgbox gText_clobbopus_Uwant 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_clobbopus_Take
	hidepokepic
	release
	end

EventScript_clobbopus_Greedy:
	msgbox gText_clobbopus_Msggreedy 0x6
	release
	end

EventScript_clobbopus_Take:
	hidepokepic
	givepokemon SPECIES_CLOBBOPUS 0x23 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_clobbopus_Takemsg 0x4
	waitfanfare
	closeonkeypress
	hidesprite 0x7
	setflag 0x952
	setflag 0x954
	release
	end

.global EventScript_crabrawler_Start
EventScript_crabrawler_Start:
	lock
	faceplayer
	checkflag 0x952
	if 0x1 _goto EventScript_crabrawler_Greedy
	showpokepic SPECIES_CRABRAWLER 0x0A 0x03
	cry SPECIES_CRABRAWLER 0x0
	waitcry
	msgbox gText_crabrawler_Uwant 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_crabrawler_Take
	hidepokepic
	release
	end

EventScript_crabrawler_Greedy:
	msgbox gText_crabrawler_Msggreedy 0x6
	release
	end

EventScript_crabrawler_Take:
	hidepokepic
	givepokemon SPECIES_CRABRAWLER 0x23 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_crabrawler_Takemsg 0x4
	waitfanfare
	closeonkeypress
	hidesprite 0x6
	setflag 0x952
	setflag 0x953
	release
	end


.global EventScript_badjoke_Start
EventScript_badjoke_Start:
	lock
	faceplayer
	msgbox gText_badjoke_1 0x6
	release
	end

.global EventScript_sabrina_Start
EventScript_sabrina_Start:
	lock
	faceplayer
	checkflag 0x825
	if 0x1 _goto EventScript_sabrina_Defeated
	msgbox gText_sabrina_EncounterText MSG_YESNO
	setflag 0x915
	setflag 0x913 @set shiny 
	trainerbattle3 0x3 0x1A4 0x0  gText_sabrina_DefeatText 
	goto EventScript_sabrina_WonPointer
	release
	end

.global EventScript_sabrina_Defeated
EventScript_sabrina_Defeated:
	lock
	faceplayer
	checkflag 0x958
	if 0x1 _goto EventScript_sabrina_Done
	msgbox gText_sabrina_Perfectpokemon 0x6
	bufferfirstpokemon 0x00
	msgbox gText_sabrina_Thepokemon 0x6
	setvar 0x8003 0x0 @From party
	setvar 0x8004 0x0 @1st 
	setvar 0x8005 0x0 @hp iv
	call EventScript_sabrina_Checkiv
	setvar 0x8005 0x1 @atk iv
	call EventScript_sabrina_Checkiv
	setvar 0x8005 0x2 @def iv
	call EventScript_sabrina_Checkiv
	setvar 0x8005 0x3 @speed iv
	call EventScript_sabrina_Checkiv
	setvar 0x8005 0x4 @special attack iv
	call EventScript_sabrina_Checkiv
	setvar 0x8005 0x5 @sp def iv
	call EventScript_sabrina_Checkiv
	msgbox gText_sabrina_Perfect 0x6
	giveitem ITEM_GARDEVOIRITE 0x1 MSG_OBTAIN
	msgbox gText_sabrina_Charmmsg 0x6
	giveitem ITEM_SHINY_CHARM 0x1 MSG_OBTAIN
	setflag 0x958
	release
	end

EventScript_sabrina_WonPointer:
	msgbox gText_sabrina_TMInfomsg 0x6
	giveitem ITEM_TM116 0x1 MSG_OBTAIN
	settrainerflag 0x118
	settrainerflag 0x119
	settrainerflag 0x11A
	settrainerflag 0x11B
	settrainerflag 0x1CE
	settrainerflag 0x1CF
	settrainerflag 0x1D0
	setflag 0x825
	setmaptile 0xA 0x14 0x293 0x0
	special 0x8E
	msgbox gText_sabrina_Givetm 0x6
	msgbox gText_sabrina_Helloagain 0x6
	msgbox gText_sabrina_Perfectpokemon 0x6
	release
	end

EventScript_sabrina_Done:
	msgbox gText_sabrina_Donemsg 0x6
	release
	end

EventScript_sabrina_Nah:
	msgbox gText_sabrina_Notquite 0x6
	release
	end

EventScript_sabrina_Checkiv:
	special2 LASTRESULT 0x8
	buffernumber 0x0 LASTRESULT @Buffer iv val to [buffer1]
	compare LASTRESULT 0x1F
	if 0x0 _goto EventScript_sabrina_Nah
	return

.global EventScript_megaring_Start
EventScript_megaring_Start:
	lockall
	textcolor 0x1
	clearflag 0x200
	showsprite 0x10
	msgbox gText_megaring_1 0x6
	sound 0xB3
	applymovement 0xFF EventScript_megaring_Question
	waitmovement 0x0
	checksound
	applymovement 0x10 EventScript_megaring_Come
	waitmovement 0x0
	applymovement 0xFF EventScript_megaring_Lookdown
	waitmovement 0x0
	msgbox gText_megaring_2 0x6
	giveitem ITEM_MEGA_RING 0x1 MSG_OBTAIN
	msgbox gText_megaring_3 0x6
	applymovement 0x10 EventScript_megaring_Comedown
	waitmovement 0x0
	hidesprite 0x10
	setflag 0x200
	setvar 0x5042 0x1
	release
	end

EventScript_megaring_Question:
.byte 0x63
.byte 0xFE


EventScript_megaring_Come:
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x11
.byte 0xFE

EventScript_megaring_Comedown:
.byte 0x10
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE


EventScript_megaring_Lookdown:
.byte 0x0
.byte 0xFE

.global EventScript_stopchuck_Start
EventScript_stopchuck_Start:
	lockall
	textcolor 0x0
	msgbox gText_stopchuck_1 0x6
	applymovement 0xFF EventScript_stopchuck_Movedown
	waitmovement 0x0
	releaseall
	end


EventScript_stopchuck_Movedown:
.byte 0x10
.byte 0xFE
