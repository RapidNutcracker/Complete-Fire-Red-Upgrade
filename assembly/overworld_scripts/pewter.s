.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ VAR_PRE_BATTLE_MUGSHOT_STYLE, 0x503A
.equ VAR_PRE_BATTLE_MUGSHOT_SPRITE, 0x503B 

.equ VAR_WEATHER, 0x5118
.equ FLAG_MINIMAL_GRINDING_MODE, 0x1032
.equ FLAG_HARDCORE_MODE, 0x1034
.equ VAR_BATTLE_AURAS, 0x5119
.equ AURA_SOLIDROCK_STRING, 4

.global EventScript_Pewter_GiveDmax 
EventScript_Pewter_GiveDmax:
    clearflag 0x200
    showsprite 0x8 
    applymovement 0xFF Stop 
    waitmovement 0x0
    msgbox gText_Pewter_GiveDmax1 MSG_NORMAL 
    applymovement 0x8 ComeToYou 
    waitmovement 0x0 
    applymovement 0xFF Look
    waitmovement 0x0
    msgbox gText_Pewter_GiveDmax2 MSG_NORMAL 
    msgbox gText_Pewter_GiveDmax3 MSG_NORMAL 
    giveitem ITEM_DYNAMAX_BAND 0x1 MSG_OBTAIN 
    setflag 0x200
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x1 _call PostBrockCarePackage
    msgbox gText_Pewter_GiveDynamaxEnd MSG_NORMAL
    applymovement 0x8 GoLeave 
    waitmovement 0x0 
    hidesprite 0x8
    setvar 0x506A 0x1 
    release 
    end 

PostBrockCarePackage:
	msgbox gText_Pewter_PostBrockCarePackage MSG_YESNO
	compare LASTRESULT YES
	if equal _call PostBrockGive
	return

PostBrockGive:
	giveitem ITEM_CHERI_BERRY 0xA MSG_OBTAIN
	giveitem ITEM_MOON_STONE 0xA MSG_OBTAIN
	return

Stop:
    .byte look_right 
    .byte end_m

ComeToYou:
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte end_m 

Look:
    .byte look_left
    .byte end_m 

GoLeave:
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte end_m 

GoUp:
    .byte walk_up 
    .byte end_m

.global EventScript_Route3_PostSallyCare
EventScript_Route3_PostSallyCare:
	msgbox gText_route3carepackage MSG_FACE
	checkflag 0x103F 
	if 0x1 _call AskCarePackageSally
	release
	end

AskCarePackageSally:
	msgbox gText_route3careaskcare MSG_YESNO
	compare LASTRESULT 0x1
	if 0x1 _call GiveItems
	release
	end

GiveItems:
	giveitem ITEM_GREEN_SHARD 0x64 MSG_OBTAIN
	giveitem ITEM_ELIXIR 0x10 MSG_OBTAIN
	giveitem ITEM_LEPPA_BERRY 0x64 MSG_OBTAIN
	giveitem ITEM_IRON_BALL 0xA MSG_OBTAIN
	giveitem ITEM_SITRUS_BERRY 0xA MSG_OBTAIN
	giveitem ITEM_CHOPLE_BERRY 0xA MSG_OBTAIN
	giveitem ITEM_COLBUR_BERRY 0xA MSG_OBTAIN
	giveitem ITEM_WIDE_LENS 0xA MSG_OBTAIN
	giveitem ITEM_CHESTO_BERRY 0xA MSG_OBTAIN
	giveitem ITEM_BERRY_JUICE 0xA MSG_OBTAIN
	return

.global EventScript_Pewter_GiveDmaxMiddle
EventScript_Pewter_GiveDmaxMiddle:
    applymovement 0xFF GoUp
    waitmovement 0x0 
    goto EventScript_Pewter_GiveDmax 
    end 

.global EventScript_Pewter_GiveDmaxBottom
EventScript_Pewter_GiveDmaxBottom:
    applymovement 0xFF GoUp
    waitmovement 0x0 
    applymovement 0xFF GoUp
    waitmovement 0x0 
    goto EventScript_Pewter_GiveDmax 
    end 

.global EventScript_falknercheck_Start
EventScript_falknercheck_Start:
	checkflag 0x920
	if 0x1 _goto EventScript_falknercheck_Done
	applymovement 0xFF EventScript_falknercheck_Move0
	waitmovement 0x0
	msgbox gText_falknercheck_1 0x3
	applymovement 0xFF EventScript_falknercheck_Move
	waitmovement 0x0
	release
	end

EventScript_falknercheck_Done:
	release
	end


EventScript_falknercheck_Move0:
.byte 0x1
.byte 0xFE

EventScript_falknercheck_Move:
.byte 0x10
.byte 0xFE

.global EventScript_falkner_Start
EventScript_falkner_Start:
	lock
	textcolor 0x00
	msgbox gText_falkner_1 0x6
	sound 0x15
	applymovement 0x6 EventScript_falkner_Look
    waitmovement 0x0 
	checksound
	applymovement 0x6 EventScript_falkner_Look2
    waitmovement 0x0 
	msgbox gText_falkner_2 0x6
	msgbox gText_falkner_3 0x6
	setvar VAR_PRE_BATTLE_MUGSHOT_STYLE 0x2
	setvar VAR_PRE_BATTLE_MUGSHOT_SPRITE 0x0
	setflag 0x915
	trainerbattle3 0x3 0x2D 0x0 gText_falkner_Defeat
	msgbox gText_falkner_4 0x6
	giveitem ITEM_TM51 0x1 MSG_OBTAIN 
	msgbox gText_falkner_6 0x6
	fadescreen 0x1
	hidesprite 0x6
	sound 0x9
	checksound
	fadescreen 0x0
	setflag 0x920
	release
	end

EventScript_falkner_Look:
    .byte exclaim
    .byte end_m

EventScript_falkner_Look2:
.byte 0x4A
.byte 0xFE

.global EventScript_checkbadge1_Start
EventScript_checkbadge1_Start:
	checkflag 0x820
	if 0x1 _goto EventScript_checkbadge1_Done
	textcolor 0x00
	applymovement 0x05 EventScript_checkbadge1_Npcmove
	waitmovement 0x0
	msgbox gText_checkbadge1_1 0x6
	applymovement 0xFF EventScript_checkbadge1_Playermoveback
	waitmovement 0x0
	release
	end


EventScript_checkbadge1_Npcmove:
.byte 0x21
.byte 0x21
.byte 0xFE

EventScript_checkbadge1_Playermoveback:
.byte 0x12
.byte 0xFE

EventScript_checkbadge1_Done:
	release
	end

.global EventScript_checkbadge1_Npctalk
EventScript_checkbadge1_Npctalk:
	lock
	faceplayer
	msgbox gText_checkbadge1_1 0x6
	release
	end


.global EventScript_brock_Start
EventScript_brock_Start:
	lock
	faceplayer
	setvar VAR_PRE_BATTLE_MUGSHOT_STYLE 0x2
	setvar VAR_PRE_BATTLE_MUGSHOT_SPRITE 0x0
	checkflag 0x820
	if 0x1 _goto EventScript_brock_Defeated
	setflag 0x915
	special 0x0
	trainerbattle1 0x1 0x19E 0x0 gText_brock_EncounterText gText_brock_DefeatText EventScript_brock_WonPointer
	release
	end

EventScript_brock_Defeated:
	checkitem ITEM_MEGA_RING 0x1
	compare 0x800D 0x1
	if 0x4 _goto EventScript_brock_Rematch
	msgbox gText_brock_AfterBattle 0x6
	release
	end

EventScript_brock_WonPointer:
	msgbox gText_brock_Givetm 0x6
	giveitem 0x147 0x1 MSG_OBTAIN
	settrainerflag 0x8E
	setflag 0x820 @badge
	setflag 0x976 @placeholder flags
	setflag 0x977
	setflag 0x978
	msgbox gText_brock_TMInfomsg 0x6
	release
	end

EventScript_brock_Rematch:
	checkflag 0x959
	if 0x1 _goto EventScript_brock_DefeatedRematch
	lock
	faceplayer
	msgbox gText_brock_Helloagain 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_brock_Cancel
	special 0x0
	setflag 0x915
	setflag 0x90E @scale levels
	checkflag FLAG_HARDCORE_MODE
	if 0x1 _call SetWeather 
	trainerbattle1 0x1 0x38 0x0 gText_brock_Battle gText_brock_Seconddefeat EventScript_brock_Rematchwon
	release
	end

SetWeather:
	setvar VAR_WEATHER 0x1
	setvar VAR_BATTLE_AURAS AURA_SOLIDROCK_STRING
	return

EventScript_brock_Cancel:
	msgbox gText_brock_Comeback 0x6
	release
	end


EventScript_brock_Rematchwon:
	clearflag 0x915
	msgbox gText_brock_Won2text 0x6
	giveitem ITEM_AERODACTYLITE 0x1 MSG_OBTAIN
	giveitem ITEM_TM71 0x1 MSG_OBTAIN
	setflag 0x959
	msgbox gText_brock_Info 0x6
	release
	end

EventScript_brock_DefeatedRematch:
	msgbox gText_brock_Info 0x6
	release
	end

.global EventScript_badtantrum_Start
EventScript_badtantrum_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x963
	if 0x1 _goto EventScript_badtantrum_Cost
	msgbox gText_badtantrum_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_badtantrum_Cancel
	msgbox gText_badtantrum_3 0x6
	setvar 0x8005 0x2E
	call EventScript_badtantrum_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_badtantrum_Cancel
	setflag 0x963
	msgbox gText_badtantrum_4 0x6
	release
	end


EventScript_badtantrum_Teach:
	special 0x18D
	waitstate
	return

EventScript_badtantrum_Cost:
	showmoney 0x00 0x00 0x00
	msgbox gText_badtantrum_1 0x6
	msgbox gText_badtantrum_2 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_badtantrum_Cancelhide
	checkmoney 0xBB8 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_badtantrum_Nomoney
	msgbox gText_badtantrum_3 0x6
	hidemoney 0x00 0x00
	setvar 0x8005 0x2E
	call EventScript_badtantrum_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_badtantrum_Cancel
	showmoney 0x00 0x00 0x00
	msgbox gText_badtantrum_Wait 0x6
	removemoney 0xBB8 0x00
	sound 0x58
	updatemoney 0x00 0x00 0x00
	msgbox gText_badtantrum_4 0x6
	checksound
	hidemoney 0x0 0x0
	release
	end

EventScript_badtantrum_Cancel:
	msgbox gText_badtantrum_No 0x6
	release
	end

EventScript_badtantrum_Cancelhide:
	hidemoney 0x00 0x00
	msgbox gText_badtantrum_No 0x6
	release
	end

EventScript_badtantrum_Nomoney:
	msgbox gText_badtantrum_Poor 0x6
	hidemoney 0x00 0x00
	release
	end

.global EventScript_GiveExpShare
EventScript_GiveExpShare:
	lock 
	faceplayer 
	checkitem ITEM_EXP_SHARE 0x1
	compare 0x800D 0x1
	if lessthan _call GiveExpShare 
	checkitem ITEM_VS_SEEKER 0x1
	compare 0x800D 0x1
	if lessthan _call GiveStatScanner
	checkflag FLAG_MINIMAL_GRINDING_MODE
	if 0x1 _goto AskCarePackage 
	@ givepokemon SPECIES_KOMMO_O 1 ITEM_DAMP_ROCK 0x0 0x0 0x0
	@ givepokemon SPECIES_LAPRAS 80 ITEM_LAPRASITE 0x0 0x0 0x0
	@ callasm 0x088032F0 + 1
	@ callasm 0x08803960 + 1
	@ giveitem ITEM_BIG_NUGGET 0x50 MSG_OBTAIN 
	@ givepokemon SPECIES_EEVEE 50 ITEM_EEVIUM_Z 0x0 0x0 0x0 
	@ givepokemon SPECIES_EEVEE 50 ITEM_NORMALIUM_Z 0x0 0x0 0x0 
	@ givepokemon SPECIES_ROCKRUFF 24 0 0x0 0x0 0x0 
	@ giveitem ITEM_RARE_CANDY 0x50 MSG_OBTAIN 
	@ warp 0x3 0x8 0x1 0x0 0x0
	goto FatNormalMsg

FatNormalMsg:
	msgbox gText_Pewter_TalkAboutLevelCap MSG_FACE
	release 
	end 

AskCarePackage:
	checkflag 0x103F
	if 0x1 _goto GiveCarePackage
	goto FatNormalMsg
	msgbox gText_Pewter_AhThatsOkay MSG_NORMAL
	release
	end


GiveCarePackage:
	msgbox gText_Pewter_WantCarePackage MSG_YESNO
	compare LASTRESULT YES
	if 0x1 _goto ItemCarePackage
	release
	end

ItemCarePackage:
	msgbox gText_Pewter_SayNoMore MSG_NORMAL
	giveitem ITEM_SOFT_SAND 0xC MSG_OBTAIN
	giveitem ITEM_BLACK_BELT 0xC MSG_OBTAIN
	giveitem ITEM_SPELL_TAG 0xC MSG_OBTAIN
	giveitem ITEM_MAGNET 0xC MSG_OBTAIN
	giveitem ITEM_DRAGON_FANG 0xC MSG_OBTAIN
	giveitem ITEM_RAWST_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_PERSIM_BERRY 0xC MSG_OBTAIN
	giveitem ITEM_TANGA_BERRY 0xC MSG_OBTAIN
	msgbox gText_Pewter_TakeCare MSG_NORMAL
	release
	end

GiveExpShare:
	giveitem ITEM_EXP_SHARE 0x1 MSG_OBTAIN 
	return 

GiveStatScanner:
	giveitem ITEM_VS_SEEKER 0x1 MSG_OBTAIN 
	return 

.global EventScript_Pewter_RandomizerInfo
EventScript_Pewter_RandomizerInfo:
	lock
	faceplayer
	msgbox gText_Pewter_RandomizerInfo MSG_FACE
	release
	end

.global EventScript_DiglettsCave_HardStone @changed to TM low sweep
EventScript_DiglettsCave_HardStone:
    hidesprite 0x800F
    giveitem ITEM_TM78 0x1 MSG_FIND
    setflag 0x1035
    release
    end

@wip i guess
.global EventScript_AITestBattle
EventScript_AITestBattle:
	@ setvar 0x8001 0x6
    @ setvar 0x8004 0xC 
    @ preparemsg gText_NatureChanger2 
    @ waitmsg
    @ special 0x158
    @ waitstate
	@ trainerbattle3 0x3  
	trainerbattle3 0x3 0x7 0x0 gText_falkner_Defeat
	release
	end

.global EventScript_GenderSwapper
EventScript_GenderSwapper:
	lock
	faceplayer
	msgbox gText_DoYouWantGenderSwap MSG_YESNO
	compare LASTRESULT NO
	if equal _goto CancelGenderSwap
	setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto CancelGenderSwap
	callasm CheckIfCanSwapGender + 1
	compare LASTRESULT TRUE
	if 0x0 _goto CantDo
	msgbox gText_Gender_DoYouWantTo MSG_YESNO
	compare LASTRESULT NO
	if equal _goto CancelGenderSwap
	callasm ChangeMonGender + 1
	msgbox gText_Gender_SuccesfullySwapped MSG_FACE
	release
	end


CancelGenderSwap:
	release
	end

CantDo:
	msgbox gText_GenderSwapperCantDo MSG_FACE
	release
	end
