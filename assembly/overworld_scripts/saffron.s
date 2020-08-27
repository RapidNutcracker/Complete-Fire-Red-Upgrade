.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_Saffron_Nerd
EventScript_Saffron_Nerd:
    lock
    faceplayer
    msgbox gText_Saffron_Nerd MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood
    checkitem 0x1AA 0x1
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
    loadpointer 0x0 gText_Back 
    special 0x25 
    preparemsg gText_Saffron_ManyTutors8
    waitmsg
    multichoice 0x0 0x0 0x24 0x0 
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

