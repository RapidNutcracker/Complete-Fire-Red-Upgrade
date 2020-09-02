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
    special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT
	msgbox gText_EVSubtracter_NowHas 0x6
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
    msgbox gText_EvChecker_5 0x6
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
