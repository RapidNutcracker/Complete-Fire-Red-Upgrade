.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_MtEmber_MistyExplode
EventScript_MtEmber_MistyExplode:
    lock
    faceplayer 
    checkflag 0x2C3
	if 0x1 _goto EventScript_mistyexplode_Done
	msgbox gText_mistyexplode_3 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_mistyexplode_Take
	msgbox gText_mistyexplode_6 0x6
	release
	end

EventScript_mistyexplode_Take:
	msgbox gText_mistyexplode_4 0x6
	giveitem ITEM_TM112 0x1 MSG_OBTAIN
	setflag 0x2C3
	msgbox gText_mistyexplode_5 0x6
	release
	end

EventScript_mistyexplode_Done:
	msgbox gText_mistyexplode_5 0x6
	release
	end

.global EventScript_mtembergrunt1_Start
EventScript_mtembergrunt1_Start:
	trainerbattle0 0x0 0x255 0x0 gText_mtember_grunt1_1 gText_mtember_grunt1_2
	msgbox gText_mtember_grunt1_3 0x6
	end

.global EventScript_mtembergrunt2_Start
EventScript_mtembergrunt2_Start:
	trainerbattle0 0x0 0x250 0x0 gText_mtember_grunt2_1 gText_mtember_grunt2_2
	msgbox gText_mtember_grunt2_3 0x6
	end

.global EventScript_mtembergrunt3_Start
EventScript_mtembergrunt3_Start:
	trainerbattle0 0x0 0x253 0x0 gText_mtember_grunt3_1 gText_mtember_grunt3_2
	msgbox gText_mtember_grunt3_3 0x6
	end

.global EventScript_MtEmber_Courtney
EventScript_MtEmber_Courtney:
    lock
    msgbox gText_mtember_courtney_1 MSG_NORMAL
    msgbox gText_mtember_courtney_22 MSG_KEEPOPEN
    pause 0x4
    closeonkeypress
    sound 0x15
    applymovement 0x15 FacePlayer
    waitmovement 0x0
    checksound
    msgbox gText_mtember_courtney_2 MSG_NORMAL
    special 0x0
    setflag 0x90E
    trainerbattle3 0x3 0x29 0x0 gText_MtEmber_CourtneyLoss
    msgbox gText_mtember_courtney_3 MSG_NORMAL
    applymovement 0x15 FaceUp
    waitmovement 0x0
    pause 0x3
    fadescreen 0x1
    hidesprite 0x15
    sound 0x9
    checksound
    fadescreen 0x0
    setflag 0x93E
    special 0x0 
    release
    end
    
FacePlayer:
    .byte face_player
    .byte exclaim
    .byte end_m

FaceUp:
    .byte look_up
    .byte end_m

.global EventScript_MtEmber_Maxie_Fight_Right
EventScript_MtEmber_Maxie_Fight_Right:
    lock
    applymovement 0xFF WalkLeft
    waitmovement 0x0
    goto EventScript_MtEmber_Maxie_Fight
    end

.global EventScript_MtEmber_Maxie_Fight
EventScript_MtEmber_Maxie_Fight:
    lock
    msgbox gText_mtember_maxie_1 MSG_NORMAL
    applymovement 0x7 CourtneyInPlace @6 is maxie 7 is courtney
    waitmovement 0x0
    msgbox gText_mtember_maxie_2 MSG_NORMAL
    applymovement 0x6 FaceLeft
    waitmovement 0x0
    msgbox gText_mtember_maxie_3 MSG_NORMAL
    applymovement 0x7 CourtneyInPlace
    waitmovement 0x0
    msgbox gText_mtember_maxie_4 MSG_NORMAL
    sound 0xA
    applymovement 0x6 JumpInPlace 
    waitmovement 0x0
    checksound 
    msgbox gText_mtember_maxie_5 MSG_NORMAL
    applymovement 0x6 FaceUp
    waitmovement 0x0
    msgbox gText_mtember_maxie_6 MSG_NORMAL
    applymovement 0x6 FaceLeft
    waitmovement 0x0
    msgbox gText_mtember_maxie_7 MSG_KEEPOPEN
    pause 0x4
    closeonkeypress
    applymovement 0x6 FacePlayer
    waitmovement 0x0 
    pause 0x3
    sound 0xB3
    applymovement 0x6 QuestionMark
    waitmovement 0x0
    checksound
    msgbox gText_mtember_maxie_8 MSG_NORMAL
    msgbox gText_mtember_maxie_9 MSG_KEEPOPEN
    pause 0x2
    closeonkeypress
    msgbox gText_mtember_maxie_10 MSG_NORMAL
    special 0x0
    setflag 0x90E
    trainerbattle3 0x3 0x2A 0x0 gText_MtEmber_MaxieLoss
    msgbox gText_mtember_maxie_11 MSG_NORMAL
    fadescreen 0x1
    hidesprite 0x6 
    sound 0x9
    checksound
    fadescreen 0x0
    setflag 0x93F
    applymovement 0x7 ComeToYou
    waitmovement 0x0
    msgbox gText_mtember_maxie_12 MSG_NORMAL
    giveitem ITEM_FIRIUM_Z 0x1 MSG_OBTAIN
    msgbox gText_mtember_maxie_13 MSG_NORMAL
    fadescreen 0x1
    hidesprite 0x7
    sound 0x9
    checksound
    fadescreen 0x0
    setvar 0x510B 0x1
    release
    end

CourtneyInPlace:
    .byte walk_right_onspot
    .byte walk_right_onspot
    .byte end_m

FaceLeft:
    .byte look_left
    .byte end_m

JumpInPlace:
    .byte jump_onspot_left
    .byte end_m

QuestionMark:
    .byte say_question
    .byte end_m

ComeToYou:
    .byte walk_down
    .byte walk_right
    .byte face_player 
    .byte end_m

WalkLeft:
    .byte walk_left
    .byte look_up
    .byte end_m

EndThis:
    release 
    end

.global EventScript_MtEmber_MoltresG
EventScript_MtEmber_MoltresG:
    lock
    faceplayer
    cry 0x92 0x2
    preparemsg gText_VictoryRoad_Moltres1 
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_MOLTRES_G 0x5A 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto EndThis
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x2BD
    fadescreen 0x0
    release
    end

