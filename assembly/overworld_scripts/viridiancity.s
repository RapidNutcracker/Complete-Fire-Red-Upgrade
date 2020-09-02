.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Viridian_WiseGlasses
EventScript_Viridian_WiseGlasses:
    lock
    faceplayer 
    checkflag 0x996
    if 0x1 _goto Done
    msgbox gText_Viridian_WiseGlasses1 MSG_FACE 
    giveitem ITEM_WISE_GLASSES 0x1 MSG_OBTAIN 
    setflag 0x996
    release
    end

Done:
    msgbox gText_Viridian_WiseGlasses2 MSG_FACE 
    release 
    end 

.global EventScript_Viridian_GiveTestItem
EventScript_Viridian_GiveTestItem:
    lock
    faceplayer 
    giveitem 0x1AA 0x1 MSG_OBTAIN 
    giveitem 0x99 0x1 MSG_OBTAIN 
    giveitem 0x9A 0x1 MSG_OBTAIN 
    giveitem 0x9B 0x1 MSG_OBTAIN 
    release
    end

.global EventScript_aidoranberry_Right 
EventScript_aidoranberry_Right:
    applymovement 0xFF WalkLeft 
    waitmovement 0x0 
    goto EventScript_aidoranberry_Start
    end 

WalkLeft:
    .byte walk_right
    .byte end_m

.global EventScript_aidoranberry_Start
EventScript_aidoranberry_Start:
    applymovement 0xFF Stop 
    waitmovement 0x0 
    clearflag 0x200
    showsprite 0x08 
	applymovement 0x08 EventScript_aidoranberry_Aid
	waitmovement 0x0
    sound 0x15
	applymovement 0x08 EventScript_aidoranberry_Aid2
    waitmovement 0x0
    checksound 
	textcolor 0x00
	msgbox gText_aidoranberry_1 0x6
	applymovement 0x08 EventScript_aidoranberry_Aid3
	waitmovement 0x0
	applymovement 0xFF EventScript_aidoranberry_Move
	waitmovement 0x0
	msgbox gText_aidoranberry_2 0x6
    special 0x16F
	fanfare 0x13E
	msgbox gText_aidoranberry_Getnav 0x6
	waitfanfare
	setflag 0x91E
	msgbox gText_aidoranberry_3 0x6
	giveitem 0x8B 0x5 MSG_OBTAIN
	msgbox gText_aidoranberry_4 0x6
	applymovement 0x08 EventScript_aidoranberry_Aid4
	waitmovement 0x0
	setvar 0x4012 0x1
	hidesprite 0x08
	setflag 0x200
	release
	end

Stop:
    .byte look_up
    .byte end_m 

EventScript_aidoranberry_Aid:
    .byte 0x10
    .byte 0x10
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0xFE

EventScript_aidoranberry_Aid2:
    .byte 0x1
    .byte 0x62
    .byte 0xFE

EventScript_aidoranberry_Aid3:
    .byte 0x1E
    .byte 0x1E
    .byte 0x3
    .byte 0xFE

EventScript_aidoranberry_Move:
    .byte 0x2
    .byte 0xFE

EventScript_aidoranberry_Aid4:
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0xFE

EventScript_aidoranberry_Done:
	release
	end

.global EventScript_SetFlag
EventScript_SetFlag:
    setflag 0x200
    setvar 0x507E 0x1
    release 
    end 

.global EventScript_viridianforesttutor_Forestmovetutor
EventScript_viridianforesttutor_Forestmovetutor:
	lock
	faceplayer
	textcolor 0x0
	msgbox gText_viridianforesttutor_Forestmovetutor1 MSG_NORMAL 
	checkitem 0x8B 0x1
	compare LASTRESULT 0x1
	if 0x0 _goto EventScript_viridianforesttutor_Forestmovetutornothing
	lock
	faceplayer
	msgbox gText_viridianforesttutor_Forestmovetutor2 MSG_YESNO @"Oh! An Oran Berry! I can teach Bug..."
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_viridianforesttutor_Forestmovetutoraw
	lock
	faceplayer
	msgbox gText_viridianforesttutor_Forestmovetutor3 MSG_NORMAL 
	setvar 0x8005 0xD
	call EventScript_viridianforesttutor_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_viridianforesttutor_Forestmovetutoraw
	removeitem 0x8B 0x1
	cry 0xD 0x0
	lock
	faceplayer
	msgbox gText_viridianforesttutor_Forestmovetutor4 MSG_NORMAL @"My Weedle is pleased. Thanks!"
	waitcry 
	release
	end

EventScript_viridianforesttutor_Forestmovetutornothing:
	release
	end

EventScript_viridianforesttutor_Forestmovetutoraw:
	lock
	faceplayer
	msgbox gText_viridianforesttutor_Forestmovetutor5 MSG_NORMAL @"Aw okay[.]"
	release
	end

EventScript_viridianforesttutor_Teach:
	special 0x18D
	waitstate
	lock
	faceplayer
	return


.global EventScript_brendanbattleright_Start
EventScript_brendanbattleright_Start:
    applymovement 0xFF WalkLeftB 
    waitmovement 0x0 
    goto EventScript_brendanbattleleft_Start
    end 

WalkLeftB:
    .byte walk_left 
    .byte end_m

.global EventScript_brendanbattleleft_Start
EventScript_brendanbattleleft_Start:
	clearflag 0x200
	showsprite 0x0D
	applymovement 0xFF EventScript_brendanbattleleft_Down
	applymovement 0x0D EventScript_brendanbattleleft_Lookaround
	waitmovement 0x0
	textcolor 0x00
	msgbox gText_brendanbattleleft_1 0x6
    sound 0x15
    applymovement 0x0D EventScript_brendanExclamation
    waitmovement 0x0 
    checksound 
	applymovement 0x0D EventScript_brendanbattleleft_Comeup
	waitmovement 0x0
	msgbox gText_brendanbattleleft_2 0x6
	msgbox gText_brendanbattleleft_3 0x6
	setflag 0x200
	trainerbattle3 0x3 0x2C 0x0 gText_brendanbattleleft_Defeat
	msgbox gText_brendanbattleleft_4 0x6
	fanfare 0x13E
	msgbox gText_brendanbattleleft_5 0x6
	waitfanfare
	closeonkeypress
	setflag 0x906
	msgbox gText_brendanbattleleft_6 0x6
	applymovement 0x0D EventScript_brendanbattleleft_Comedown
	waitmovement 0x0
	setvar 0x4013 0x1
	hidesprite 0x0D
	setflag 0x200
	release
	end

EventScript_brendanbattleleft_Lookaround:
    .byte 0x11
    .byte 0x11
    .byte 0x13
    .byte 0x12
    .byte 0x12
    .byte 0x13
    .byte 0xFE

EventScript_brendanbattleleft_Down:
    .byte 0x0
    .byte 0xFE

EventScript_brendanExclamation:
    .byte look_up
    .byte 0x62
    .byte end_m 

EventScript_brendanbattleleft_Comeup:
    .byte 0x11
    .byte 0x11
    .byte 0x12
    .byte 0x11
    .byte 0xFE

EventScript_brendanbattleleft_Comedown:
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0x10
    .byte 0xFE
