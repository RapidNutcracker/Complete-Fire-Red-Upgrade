.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_TwoIsland_SteelBeam
EventScript_TwoIsland_SteelBeam:
    lock
    faceplayer 
	msgbox gText_TwoIsland_SteelBeam1 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto Cancel
    setvar 0x8005 0x88
    special 0x18D
    waitstate
    compare LASTRESULT 0x0
    if 0x1 _goto Cancel
    msgbox gText_TwoIsland_SteelBeam2 MSG_FACE 
    release 
	end

Cancel:
    msgbox gText_TwoIsland_SteelBeam3 MSG_FACE 
    release 
    end 

.global EventScript_TwoIsland_Whitney
EventScript_TwoIsland_Whitney:
    lock
    checkflag 0x1020
    if 0x1 _goto WhitneyRematchDone
    checkflag 0x101E
    if 0x1 _goto IntroDoneWhitney 
    msgbox gText_TwoIsland_Whitney1 MSG_NORMAL
    applymovement 0x1 FacePlayer
    waitmovement 0x0
    msgbox gText_TwoIsland_WhitneyDot MSG_KEEPOPEN
    pause 0x4
    sound 0x15
    applymovement 0x1 Surprised
    waitmovement 0x0
    checksound
    msgbox gText_TwoIsland_Whitney2 MSG_YESNO
    compare LASTRESULT YES
    if equal _call YesDialogue 
    compare LASTRESULT NO
    if equal _call NoDialogue 
    setflag 0x101E 
    goto IntroDoneWhitney

YesDialogue:
    msgbox gText_TwoIsland_WhitneyYes MSG_NORMAL
    return

NoDialogue: 
    msgbox gText_TwoIsland_WhitneyNo MSG_NORMAL
    return

IntroDoneWhitney:
    faceplayer
    msgbox gText_TwoIsland_Whitney3 MSG_KEEPOPEN
    pause 0x4 
    msgbox gText_TwoIsland_Whitney3_2 MSG_NORMAL 
    checkitem ITEM_BIG_NUGGET 0x1 
	compare 0x800D 0x1
	if 0x4 _goto EventScript_TwoIslandWhitney_GiveItem
    release
    end

FacePlayer:
    .byte face_player
    .byte end_m

Surprised:
    .byte exclaim
    .byte end_m

EventScript_TwoIslandWhitney_GiveItem:
    checkflag 0x101F
    if 0x1 _goto WhitneyStartRematch
    sound 0x15
    applymovement 0x1 Surprised
    waitmovement 0x0
    checksound
    msgbox gText_TwoIslandWhitney4 MSG_NORMAL
    msgbox gText_TwoIslandWhitneyGive MSG_YESNO
    compare LASTRESULT NO
    if equal _goto Disappointment
    removeitem ITEM_BIG_NUGGET 0x1
    setflag 0x101F
    goto WhitneyStartRematch

WhitneyStartRematch:
    msgbox gText_TwoIslandWhitney6 MSG_YESNO
    compare LASTRESULT NO
    if equal _goto AnotherTime
    msgbox gText_TwoIslandWhitney8 MSG_NORMAL
    special 0x0
    setflag 0x90E
    trainerbattle3 0x3 0x4C 0x0 gText_Whitney2_Defeat
    msgbox gText_TwoIslandWhitney9 MSG_NORMAL
    giveitem ITEM_NORMALIUM_Z 0x1 MSG_OBTAIN
    msgbox gText_TwoIslandWhitney10 MSG_NORMAL
    setflag 0x1020
    release
    end

WhitneyRematchDone:
    msgbox gText_TwoIslandWhitney11 MSG_NORMAL
    releaseall
    end

Disappointment:
    msgbox gText_TwoIslandWhitney5 MSG_NORMAL @it was silly of me to get my hopes up
    release
    end

AnotherTime:
    msgbox gText_TwoIslandWhitney7 MSG_NORMAL
    release
    end

.global EventScript_OfficerJenny_Jail
EventScript_OfficerJenny_Jail:
    lock
    faceplayer
    checkitem ITEM_POWDER_JAR 0x1 
    compare 0x800D 0x1
	if 0x4 _goto EventScript_OfficerJennyGivenItem
    msgbox gText_OfficerJenny_1 MSG_KEEPOPEN
    sound 0x15
    applymovement 0x4 Surprised
    waitmovement 0x0
    pause 0x5
    closeonkeypress
    msgbox gText_OfficerJenny_2 MSG_YESNO
    compare LASTRESULT NO
    if equal _call CantFoolMe
    msgbox gText_OfficerJenny_2_2 MSG_NORMAL
    msgbox gText_OfficerJenny_3 MSG_NORMAL
    goto StartOfAsk
    end

CantFoolMe:
    msgbox gText_OfficerJenny_CantFool MSG_NORMAL
    return

RepeatAsk:
    msgbox gText_OfficerJenny_Cmon MSG_NORMAL
    goto StartOfAsk
    end

StartOfAsk:
    msgbox gText_OfficerJenny_3_2 MSG_YESNO
    compare LASTRESULT NO
    if equal _goto RepeatAsk
    msgbox gText_OfficerJenny_3_3 MSG_NORMAL
    giveitem ITEM_POWDER_JAR 0x1 MSG_OBTAIN
    msgbox gText_OfficerJenny_4 MSG_NORMAL
    release
    end

EventScript_OfficerJennyGivenItem:
    msgbox gText_OfficerJenny_4 MSG_NORMAL
    release
    end

.global EventScript_TwoIslandJail_NPC
EventScript_TwoIslandJail_NPC:
    lock
    faceplayer
    msgbox gText_TwoIslandJail_NPC_1 MSG_KEEPOPEN
    pause 0x3
    closeonkeypress 
    msgbox gText_TwoIslandJail_NPC_2 MSG_FACE
    release
    end

.global EventScript_TwoIslandJail_Sign
EventScript_TwoIslandJail_Sign:
    lock
    msgbox gText_TwoIslandJail_Sign MSG_SIGN
    release
    end

.global EventScript_TwoIslandPC_NPC
EventScript_TwoIslandPC_NPC:
    lock
    msgbox gText_TwoIslandPC_NPC_1 MSG_FACE
    applymovement 0x800F LookDown
    waitmovement 0x0
    release
    end

LookDown:
    .byte look_down
    .byte end_m
