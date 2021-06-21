.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.equ FLAG_HARDCORE_MODE, 0x1034
.equ VAR_BATTLE_AURAS, 0x5119
.equ AURA_CANT_HAZARD_CONTROL_STRING, 8
.equ FLAG_MINIMAL_GRINDING_MODE, 0x1032

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
    giveitem ITEM_RARE_CANDY 0x30 MSG_OBTAIN 
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
    showsprite 0x9
	applymovement 0x9 EventScript_aidoranberry_Aid
	waitmovement 0x0
    sound 0x15
	applymovement 0x9 EventScript_aidoranberry_Aid2
    waitmovement 0x0
    checksound 
	textcolor 0x00
	msgbox gText_aidoranberry_1 0x6
	applymovement 0x9 EventScript_aidoranberry_Aid3
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
	giveitem 0x8B 0xA MSG_OBTAIN
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x1 _call GiveRepels
	checkflag FLAG_HARDCORE_MODE
	if 0x1 _call HardcoreAsk
AidLeave:
	msgbox gText_aidoranberry_4 0x6
	applymovement 0x9 EventScript_aidoranberry_Aid4
	waitmovement 0x0
	setvar 0x4012 0x1
	hidesprite 0x9
	setflag 0x200
	release
	end

GiveRepels:
	giveitem ITEM_MAX_REPEL 0x64 MSG_OBTAIN
	msgbox gText_aidoranberry_carepackage MSG_NORMAL
AskAidPassword:
	msgbox gText_aidoranberry_ifyouwant MSG_NORMAL
	special 0x12C
	waitstate
	loadpointer 0x0 gText_ToxicString
	special 0x12D
	compare LASTRESULT 0x0
	if equal _goto GiveCarePackage
NoThatsNotItAid:
	msgbox gText_aidoranberry_carepackageNo MSG_YESNO
	compare LASTRESULT YES
	if 0x1 _goto AskAidPassword
	goto AidLeave
	end

HardcoreAsk:
	msgbox gText_aidoranberry_3_2 MSG_NORMAL
	giveitem ITEM_ABILITY_CAPSULE 0x5 MSG_OBTAIN
	return

GiveCarePackage:
	msgbox gText_aidoranberry_NiceHere MSG_NORMAL
	giveitem ITEM_QUICK_BALL 0xA MSG_OBTAIN
	giveitem ITEM_SHED_SHELL 0xC MSG_OBTAIN
	giveitem ITEM_SHARP_BEAK 0xC MSG_OBTAIN
	giveitem ITEM_BLACK_GLASSES 0xC MSG_OBTAIN
	giveitem ITEM_NEVER_MELT_ICE 0xC MSG_OBTAIN
	giveitem ITEM_POISON_BARB 0xC MSG_OBTAIN
	giveitem ITEM_MENTAL_HERB 0xC MSG_OBTAIN
	giveitem ITEM_BIG_MUSHROOM 0xC MSG_OBTAIN
	giveitem ITEM_PIXIE_PLATE 0xC MSG_OBTAIN
	giveitem ITEM_SILVER_POWDER 0xC MSG_OBTAIN
	giveitem ITEM_TWISTED_SPOON 0xC MSG_OBTAIN
	giveitem ITEM_MIRACLE_SEED 0xC MSG_OBTAIN
	giveitem ITEM_LIGHT_BALL 0xC MSG_OBTAIN
	giveitem ITEM_BOTTLE_CAP 0xC MSG_OBTAIN
	giveitem ITEM_RED_SHARD 0x20 MSG_OBTAIN
	giveitem ITEM_ASPEAR_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_CHILAN_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_PECHA_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_PASSHO_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_CHARTI_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_YACHE_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_PAYAPA_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_RINDO_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_OCCA_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_COBA_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_KEBIA_BERRY 0xC MSG_OBTAIN
	setflag 0x103F
	return

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

.global EventScript_brendanbattleleftsetup
EventScript_brendanbattleleftsetup:
	applymovement 0xFF WalkRightB 
    waitmovement 0x0 
    goto EventScript_brendanbattleleft_Start
    end 

WalkRightB:
    .byte walk_right
    .byte end_m

.global EventScript_brendanbattleleft_Start
EventScript_brendanbattleleft_Start:
	clearflag 0x200
	showsprite 0x0D
	applymovement 0xFF EventScript_brendanbattleleft_Up
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
	giveitem ITEM_EXP_SHARE 0x1 MSG_OBTAIN
	giveitem ITEM_VS_SEEKER 0x1 MSG_OBTAIN
	setflag 0x906
	msgbox gText_brendanbattleleft_6 0x6
	applymovement 0x0D EventScript_brendanbattleleft_Comedown
	waitmovement 0x0
	setvar 0x4013 0x1
	hidesprite 0x0D
	release
	end

EventScript_brendanbattleleft_Lookaround:
    .byte walk_down
    .byte walk_down
    .byte 0x13
    .byte 0x12
    .byte 0x12
    .byte 0x13
    .byte 0xFE

EventScript_brendanbattleleft_Up:
    .byte look_up
    .byte 0xFE

EventScript_brendanExclamation:
    .byte look_up
    .byte 0x62
    .byte end_m 

EventScript_brendanbattleleft_Comeup:
    .byte walk_down
    .byte walk_down
    .byte walk_down
    .byte 0xFE

EventScript_brendanbattleleft_Comedown:
    .byte walk_right
    .byte walk_down
    .byte walk_down
    .byte walk_down
    .byte walk_down
    .byte walk_down
	.byte walk_down
	.byte walk_down
    .byte 0xFE

.global EventScript_Virizion_OW
EventScript_Virizion_OW:
    lock
    faceplayer
    cry SPECIES_VIRIZION 0x2
    preparemsg gText_virizion_1
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_VIRIZION 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x992
    fadescreen 0x0
    release
    end

Moveback2:
    release 
    end

.global EventScript_brendantoceruleancave_Start
EventScript_brendantoceruleancave_Start:
	checkflag 0x826
	if 0x0 _goto EventScript_brendantoceruleancave_Done @ only trigger this level script if we obtained blaine@s badge
	setvar 0x5050 0x0
	goto EventScript_brendantoceruleancave_Beginning
	end


.global EventScript_brendantoceruleanbottom_Start
EventScript_brendantoceruleanbottom_Start:
	checkflag 0x826
	if 0x0 _goto EventScript_brendantoceruleancave_Done @ only trigger this level script if we obtained blaine@s badge
	setvar 0x5050 0x1
	goto EventScript_brendantoceruleancave_Beginning
	end

EventScript_brendantoceruleancave_Beginning:
	clearflag 0x200
	showsprite 0xA
	lockall
	msgbox gText_brendantoceruleancave_1 0x6
	sound 0x15
	applymovement 0xFF EventScript_brendantoceruleancave_Look
	checksound
	waitmovement 0x0
	applymovement 0xFF EventScript_brendantoceruleancave_Look2
	waitmovement 0x0
	compare 0x5050 0x0
	if 0x1 _call EventScript_brendantoceruleancave_Top
	compare 0x5050 0x1
	if 0x1 _call EventScript_brendantoceruleancave_Bottom
	msgbox gText_brendantoceruleancave_2 0x6
	msgbox gText_brendantoceruleancave_3 0x6
	special 0x0
	fadescreen 0x1
	sound 0x1
	checksound
	fadescreen 0x0
	setflag 0x977
	setflag 0x979 @this clears the guy guarding cerulean cave
	setflag 0x200
	msgbox gText_brendantoceruleancave_4 0x6
	setvar 0x5048 0x1
	warp 0x1 0x48 0x0 0x0 0x0
	end

EventScript_brendantoceruleancave_Done:
	release
	end

EventScript_brendantoceruleancave_Top:
	applymovement 0xA EventScript_brendantoceruleancave_Meetu
	waitmovement 0x0
	return

EventScript_brendantoceruleancave_Bottom:
	applymovement 0xA EventScript_brendantoceruleancave_Meetu2
	waitmovement 0x0
	return

EventScript_brendantoceruleancave_Meetu:
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0xFE

EventScript_brendantoceruleancave_Meetu2:
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0x1D
.byte 0xFE

EventScript_brendantoceruleancave_Look:
.byte 0x62
.byte 0xFE

EventScript_brendantoceruleancave_Look2:
.byte 0x1
.byte 0xFE

.global EventScript_giovannicheck_Start
EventScript_giovannicheck_Start:
	checkflag 0x826 @dont trigger if we havent got blaines badge yet
	if 0x0 _goto EventScript_giovannicheck_Done
	checkflag 0x982 
	if 0x1 _goto EventScript_giovannicheck_Done
	applymovement 0xFF EventScript_giovannicheck_Stop
	waitmovement 0x0
	msgbox gText_giovannicheck_1 0x6
	applymovement 0xFF EventScript_giovannicheck_Goback
	waitmovement 0x0
	release
	end

EventScript_giovannicheck_Done:
	release
	end

EventScript_giovannicheck_Stop:
	.byte look_left 
	.byte 0xFE

EventScript_giovannicheck_Goback:
	.byte walk_right 
	.byte 0xFE

.global EventScript_claire_Start
EventScript_claire_Start:
	lock
	faceplayer
	checkflag 0x827
	if 0x1 _goto EventScript_claire_Defeated
    goto EventScript_claire_Option1
	release
	end

EventScript_claire_Option1:
	msgbox gText_claire_EncounterText MSG_NORMAL
	checkflag FLAG_HARDCORE_MODE
	if 0x1 _call CheckFairy
	special 0x0
	trainerbattle3 0x3 0x4A 0x0 gText_claire_DefeatText 
	goto EventScript_claire_WonPointer
	release
	end

CheckFairy:
	msgbox gText_Clair_FairyOnly MSG_NORMAL
	callasm CheckIfCanBattleClair
	compare LASTRESULT 0x1
	if 0x0 _goto DoesntFollowTheRules
	msgbox gText_ClairFairyGood MSG_NORMAL
	setvar VAR_BATTLE_AURAS AURA_CANT_HAZARD_CONTROL_STRING
	return

DoesntFollowTheRules:
	msgbox gText_Clair_TeamNotFit MSG_NORMAL
	release
	end

EventScript_claire_Defeated:
	lock
	faceplayer
	msgbox gText_claire_Perfectpokemon 0x6
	setvar 0x8005 0x80
	special 0x18D
	waitstate
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_claire_Cancel
	msgbox gText_claire_Afterteaching 0x6
	release
	end

EventScript_claire_WonPointer:
	msgbox gText_claire_TMInfomsg 0x6
	giveitem ITEM_TM59 0x1 MSG_OBTAIN @dragon pulse
	setflag 0x827
	setvar 0x4054 0x3 @this triggers gary event
	msgbox gText_claire_Givetm 0x6
	giveitem ITEM_DURALUDONITE 0x1 MSG_OBTAIN @altarianite
	msgbox gText_claire_Altarianite 0x6
	msgbox gText_claire_Helloagain 0x6
	msgbox gText_claire_Perfectpokemon 0x6
	release
	end

EventScript_claire_Cancel:
	msgbox gText_claire_No 0x6
	release
	end

.global EventScript_roamerbottom_Start
EventScript_roamerbottom_Start:
	checkflag 0x827
	if 0x0 _goto EventScript_roamer_Done @ only trigger this script if we have clairs badge
	applymovement 0xFF EventScript_roamerbottom_Goup
	waitmovement 0x0
	goto EventScript_roamer_Start
	end

.global EventScript_roamertop_Start
EventScript_roamertop_Start:
	checkflag 0x827
	if 0x0 _goto EventScript_roamer_Done  @ only trigger this script if we have clairs badge
	applymovement 0xFF EventScript_roamertop_Godown
	waitmovement 0x0
	goto EventScript_roamer_Start
	end

EventScript_roamertop_Godown:
.byte 0xC
.byte 0xFE


EventScript_roamerbottom_Goup:
.byte 0xD
.byte 0xFE


.global EventScript_roamer_Start
EventScript_roamer_Start:
	checkflag 0x827
	if 0x0 _goto EventScript_roamer_Done @ only trigger this script if we have clairs badge
	goto EventScript_roamer_Beginning
	end

EventScript_roamer_Beginning:
	clearflag 0x200
	showsprite 0xB
	lockall
	msgbox gText_roamer_1 0x6
	sound 0x15
	applymovement 0xFF EventScript_roamer_Look
	checksound
	waitmovement 0x0
	applymovement 0xB EventScript_roamer_Meetu
	waitmovement 0x0
	msgbox gText_roamer_2 0x6
	msgbox gText_roamer_3 0x6
	setvar 0x8000 0xF3 @Raikou roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x0 @Cannot roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0xF4 @Entei roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x0 @Cannot roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0xF5 @Suicune roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x1 @Can roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x197 @Latias roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x1 @Can roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x198 @Latios roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x1 @Can roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x2BA @Landorus roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x1 @Can roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x2B7 @Thundurus roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x1 @Can roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x2B6 @Tornadus roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x1 @Can roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x223 @Victini roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x0 @Cant roam on water
	special 0x129 @Create roaming Pokemon
	setvar 0x8000 0x2BD @Meloetta roam
	setvar 0x8001 60 @Level 60
	setvar 0x8002 0x1 @Can roam on land
	setvar 0x8003 0x0 @Cant roam on water
	special 0x129 @Create roaming Pokemon
	msgbox gText_roamer_4 0x6
	setvar 0x5056 0x1
	applymovement 0xB EventScript_roamer_Leave
	waitmovement 0x0
	hidesprite 0xB
	setflag 0x200
	release
	end

EventScript_roamer_Done:
	release
	end

EventScript_roamer_Meetu:
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0x12
.byte 0xFE


EventScript_roamer_Leave:
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0x13
.byte 0xFE

EventScript_roamer_Look:
.byte 0x3
.byte 0x62
.byte 0xFE

.global EventScript_ViridianForestGirlTip
EventScript_ViridianForestGirlTip:
	msgbox gText_Viridian_GirlTip MSG_FACE 
	release 
	end 

.global EventScript_MinimalGrindingCandy
EventScript_MinimalGrindingCandy:
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x0 _goto NoThatsNotIt
	lock
	faceplayer
	msgbox gText_viridian_doyoucheat MSG_YESNO
	compare LASTRESULT YES
	if 0x0 _goto NoThatsNotIt
	checkflag 0x1040
	if 0x1 _goto GiveCandy
	special 0x12C
	waitstate
	loadpointer 0x0 gText_CheatString
	special 0x12D
	compare LASTRESULT 0x0
	if equal _goto SetRareFlag
	goto NoThatsNotIt
	release
	end

NoThatsNotIt:
	applymovement 0x800F StayFace
	msgbox gText_viridian_cheatiswrong MSG_FACE
	waitmovement 0x0
	release
	end

StayFace:
	.byte face_player
	.byte end_m

SetRareFlag:
	setflag 0x1040
	goto GiveCandy
	end

GiveCandy:
	applymovement 0x800F StayFace
	msgbox gText_viridian_youcheat MSG_NORMAL
	giveitem ITEM_RARE_CANDY 0x64 MSG_OBTAIN
	giveitem ITEM_RARE_CANDY 0x64 MSG_OBTAIN
	giveitem ITEM_RARE_CANDY 0x64 MSG_OBTAIN
	giveitem ITEM_RARE_CANDY 0x64 MSG_OBTAIN
	giveitem ITEM_POMEG_BERRY 0x64 MSG_OBTAIN
	waitmovement 0x0
	release 
	end

.global EventScript_oldmanrescript_Start
EventScript_oldmanrescript_Start:
	lock
	faceplayer
	checkflag 0x820
	if 0x1 _goto EventScript_oldmanrescript_HadMyCoffee
	compare 0x4051 0x2
	if 0x4 _goto EventScript_oldmanrescript_HadMyCoffee2
	compare 0x4051 0x1
	if 0x1 _goto EventScript_oldmanrescript_Option3
	compare 0x4051 0x0
	if 0x1 _goto EventScript_oldmanrescript_Forbid
	end

.global EventScript_oldmanrescript_Tileleft
EventScript_oldmanrescript_Tileleft:
	lockall
	textcolor 0x0
	applymovement 0x4 EventScript_oldmanrescript_FaceLeft
	waitmovement 0x0
	applymovement 0xFF EventScript_oldmanrescript_FaceRight
	waitmovement 0x0
	call EventScript_oldmanrescript_Option3Stuff
	release
	end

.global EventScript_oldmanrescript_Tileright
EventScript_oldmanrescript_Tileright:
	lockall
	textcolor 0x0
	applymovement 0x4 EventScript_oldmanrescript_FaceRight
	waitmovement 0x0
	applymovement 0xFF EventScript_oldmanrescript_FaceLeft
	waitmovement 0x0
	call EventScript_oldmanrescript_Option3Stuff
	release
	end


	@---------------
EventScript_oldmanrescript_HadMyCoffee:
	msgbox gText_oldmanrescript_HadMyCoffeTxt MSG_YESNO @"Well, now, I@ve had my coffee, and..."
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_oldmanrescript_TooBusy
	msgbox gText_oldmanrescript_GrandsonShowTxt MSG_KEEPOPEN @"Wahaha!\nIt@s my grandson on the s..."
	release
	end

	@---------------
EventScript_oldmanrescript_HadMyCoffee2:
	msgbox gText_oldmanrescript_GetGoingTxt MSG_KEEPOPEN @"Well, now, I@ve had my coffee, and..."
	release
	end

	@---------------
EventScript_oldmanrescript_Option3:
	call EventScript_oldmanrescript_Option3Stuff
	release
	end

	@---------------
EventScript_oldmanrescript_Forbid:
	msgbox gText_oldmanrescript_PrivatePropertyTxt MSG_KEEPOPEN @"I absolutely forbid you from\ngoin..."
	closeonkeypress
	release
	end

	@---------------
EventScript_oldmanrescript_TooBusy:
	msgbox gText_oldmanrescript_TooBusyTxt MSG_KEEPOPEN @"Hm[.] You@re too busy to not even\..."
	release
	end

EventScript_oldmanrescript_Option3Stuff:
	msgbox gText_oldmanrescript_CoffeeTextToo MSG_KEEPOPEN @"Well, now, I@ve had my coffee, and..."
	closeonkeypress
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_oldmanrescript_End
	lock
	faceplayer
	msgbox gText_oldmanrescript_EducationRight MSG_KEEPOPEN @"There! Now tell me, that was\neduc..."
	setvar 0x4051 0x2
	giveitem 0x16E 0x1 MSG_OBTAIN
	msgbox gText_oldmanrescript_WatchThat MSG_KEEPOPEN @"If there@s something you don@t\nun..."
	return

	@---------------
EventScript_oldmanrescript_End:
	release
	end


EventScript_oldmanrescript_FaceLeft:
.byte 0x2F
.byte 0xFE

EventScript_oldmanrescript_FaceRight:
.byte 0x30
.byte 0xFE
