.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ FLAG_EXPERT_DIFFICULTY, 0x93A

.equ FLAG_POKEMON_RANDOMIZER, 0x940
.equ FLAG_POKEMON_LEARNSET_RANDOMIZER, 0x941
.equ FLAG_ABILITY_RANDOMIZER, 0x942

.equ FLAG_MIN_GRINDING, 0x1032
.equ FLAG_EASY_MODE, 0x1033
.equ FLAG_HARDCORE_MODE, 0x1034
.equ FLAG_RESTRICT_MODE, 0x103C
.equ FLAG_SYS_SAVE_HIDE, 0x91D

.global gMapScripts_PalletTownHome
gMapScripts_PalletTownHome:
    mapscript MAP_SCRIPT_ON_TRANSITION SetVar_PalletTownHome
    mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_PalletTownHome
    .byte MAP_SCRIPT_TERMIN

.global gMapScripts_PalletTownPlayerHome
gMapScripts_PalletTownPlayerHome:
    mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_PalletTownPlayerHome
    .byte MAP_SCRIPT_TERMIN

LevelScripts_PalletTownHome:
    levelscript 0x5108, 0, LevelScript_PalletTownHome
    .hword MAP_SCRIPT_TERMIN

LevelScripts_PalletTownPlayerHome:
    levelscript 0x5100, 0, LevelScript_PalletTownPlayerHome
    .byte MAP_SCRIPT_TERMIN

LevelScript_PalletTownPlayerHome:
    setvar 0x5100 0x1
    fadescreen 0x1
    fadeoutbgm 0x0
    sethealingplace 0x1
    msgbox gText_PleaseStop MSG_KEEPOPEN
    pause 0x30
    closeonkeypress
    msgbox gText_DoYouWantDefinitiveEdition MSG_YESNO
    compare LASTRESULT YES
    if equal _goto DefinitiveEdition
    msgbox gText_DoYouWantMinGrinding MSG_YESNO
    compare LASTRESULT YES
    if equal _call SetMinGrindingOn
    if NO _call SetMinGrindingOff
    msgbox gText_DoYouWantHardcoreMode MSG_YESNO
    compare LASTRESULT YES
    if equal _goto SetHardcoreModeOn
    msgbox gText_DoYouWantRestrictMode MSG_YESNO
    compare LASTRESULT YES
    if equal _goto SetRestrictedModeOn
    msgbox gText_DoYouWantEasyMode MSG_YESNO
    compare LASTRESULT YES
    if equal _call SetEasyModeOn
    goto AskRandomizer

endofscript: 
    @ setvar 0x511B 0x1
    fadeinbgm 0x0 
    fadescreen 0x0
    release
    end 

.global EventScript_AskRandomizer
EventScript_AskRandomizer:
    msgbox gText_Pallet_Technology1 MSG_KEEPOPEN
    clearflag FLAG_SYS_SAVE_HIDE
    callasm CheckIfHallOfFame
    compare LASTRESULT 0x1
    if equal _goto SetHallOfFameFlag
    goto EndRandomizerScript

EndRandomizerScript:
    setvar 0x511B 0x1
    setvar 0x407C 0x2 @this clears the pokemon center flag
    clearflag FLAG_SYS_SAVE_HIDE
    release
    end

SetHallOfFameFlag:
    setflag 0x103D
    goto EndRandomizerScript

AskRandomizer:
    @ checkflag FLAG_HARDCORE_MODE
    @ if 0x1 _goto EndRandomizerScript
    @ checkflag FLAG_RESTRICT_MODE
    @ if 0x1 _goto EndRandomizerScript
    @ applymovement 0xFF FaceLeft
    @ waitmovement 0x0
    msgbox gText_DoYouWantRandomizer MSG_YESNO 
    compare LASTRESULT YES 
    if NO _goto SetRandomizerOff
    if equal _call SetPokemonRandomizerOn
    msgbox gText_DoYouWantAbility MSG_YESNO  
    compare LASTRESULT YES 
    if equal _call SetAbilityRandomizerOn 
    msgbox gText_DoYouWantLearnsets MSG_YESNO 
    compare LASTRESULT YES 
    if equal _call SetLearnsetRandomizerOn
    @ setvar 0x511B 0x1
    goto endofscript

DefinitiveEdition:
    clearflag FLAG_HARDCORE_MODE
    clearflag FLAG_POKEMON_RANDOMIZER
    clearflag FLAG_POKEMON_LEARNSET_RANDOMIZER
    clearflag FLAG_ABILITY_RANDOMIZER
    clearflag FLAG_EASY_MODE
    clearflag FLAG_RESTRICT_MODE
    clearflag FLAG_MIN_GRINDING
    sound 0x30 
    msgbox gText_DefinitiveEdition MSG_KEEPOPEN
    checksound
    closeonkeypress
    goto endofscript

SetHardcoreModeOn:
    setflag FLAG_HARDCORE_MODE
    checkflag FLAG_MIN_GRINDING
    if 0x0 _call SetMinGrindingOn
    setflag FLAG_MIN_GRINDING
    sound 0x30 
    msgbox gText_hardcoremodeset MSG_KEEPOPEN
    checksound
    closeonkeypress
    goto endofscript

SetRestrictedModeOn:
    setflag FLAG_RESTRICT_MODE
    sound 0x30 
    msgbox gText_restrictmodeset MSG_KEEPOPEN
    checksound
    closeonkeypress
    goto endofscript

SetEasyModeOn:
    setflag FLAG_EASY_MODE
    sound 0x30
    msgbox gText_easymodeset MSG_KEEPOPEN
    checksound 
    closeonkeypress
    return

SetMinGrindingOn:
    setflag FLAG_MIN_GRINDING
    sound 0x30
    msgbox gText_SetMinGrindingOn MSG_KEEPOPEN
    checksound
    closeonkeypress 
    return

SetMinGrindingOff:
    clearflag FLAG_MIN_GRINDING
    return

SetRandomizerOff:
    clearflag FLAG_POKEMON_RANDOMIZER
    clearflag FLAG_POKEMON_LEARNSET_RANDOMIZER
    clearflag FLAG_ABILITY_RANDOMIZER
    goto endofscript

SetPokemonRandomizerOn:
    setflag FLAG_POKEMON_RANDOMIZER 
    msgbox gText_RandomizerHard MSG_YESNO 
    compare LASTRESULT YES 
    if equal _goto SetExpertDifficultyOn 
    sound 0x30
    msgbox gText_RandomizerSet MSG_KEEPOPEN
    checksound
    closeonkeypress 
    return 
 
SetExpertDifficultyOn: 
    setflag FLAG_EXPERT_DIFFICULTY 
    sound 0x30
    msgbox gText_RandomizerSetHard MSG_KEEPOPEN 
    checksound
    closeonkeypress 
    return 

SetAbilityRandomizerOn:
    setflag FLAG_ABILITY_RANDOMIZER
    sound 0x30
    msgbox gText_RandomAbilitySet MSG_KEEPOPEN
    checksound
    closeonkeypress 
    return 

SetLearnsetRandomizerOn:
    setflag FLAG_POKEMON_LEARNSET_RANDOMIZER
    sound 0x30
    msgbox gText_RandomLearnsets MSG_KEEPOPEN
    checksound
    closeonkeypress 
    return 

SetVar_PalletTownHome:
    compare 0x5108 0x2
    if equal _goto TheEnd
    checkflag 0x82C 
    if 0x1 _goto SetTheVar 
    end

TheEnd:
    end 

SetTheVar:
    setvar 0x5108 0x0
    end

LevelScript_PalletTownHome:
    lock
    checkflag 0x82C
    if 0x1 _goto End
    setvar 0x5108 0x1
    release
    end

End: 
    getplayerpos 0x5109 0x510A
    compare 0x5109 0x4
    if 0x1 _call FaceDownMov
    compare 0x5109 0xA
    if 0x1 _call FaceRightMov
    msgbox gText_Pallet_Mom MSG_NORMAL
    msgbox gText_Pallet_Mom2 MSG_NORMAL
    applymovement 0x1 FaceLeft
    waitmovement 0x0
    setvar 0x5108 0x2
    release
    end

FaceDownMov:
    applymovement 0x1 FaceDown
    waitmovement 0x0
    return

FaceRightMov:
    applymovement 0x1 FaceRight
    waitmovement 0x0
    return

FaceDown:
    .byte look_down
    .byte end_m

FaceRight:
    .byte look_right
    .byte end_m

FaceLeft:
    .byte look_left
    .byte end_m

.global EventScript_Pallet_Technology
EventScript_Pallet_Technology:
    msgbox gText_Pallet_Technology1 MSG_FACE 
    release 
    end 

.global EventScript_Pallet_AutoRunSign
EventScript_Pallet_AutoRunSign:
    lock 
    msgbox gText_Pallet_AutoRunSign1 MSG_SIGN
    release 
    end 

.global EventScript_mom_Start
EventScript_mom_Start:
	lock
	faceplayer
    checkflag 0x82C
    if 0x1 _goto EventScript_mom_RestCelebrate
	checkflag 0x258
	if 0x1 _goto EventScript_mom_TakeARest
	checkgender
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_mom_Allboys
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_mom_AllGirls
	closeonkeypress
	applymovement 0x1 EventScript_mom_Movement
	waitmovement 0x0
	release
	end

EventScript_mom_TakeARest:
	msgbox gText_mom_RestText MSG_KEEPOPEN @"Mom: [player]!\nYou should take a ..."
	closeonkeypress
	call EventScript_mom_Rest
	msgbox gText_mom_LookGreat MSG_KEEPOPEN @"Mom: Oh, good! You and your\nPokém..."
	release
	end

EventScript_mom_RestCelebrate:
    msgbox gText_mom_RestText2 MSG_KEEPOPEN @"Mom: [player]!\nYou should take a ..."
	closeonkeypress
	call EventScript_mom_Rest
	msgbox gText_mom_LetsCelebrate MSG_YESNO 
    compare LASTRESULT NO
    if equal _goto WhyCelebrate
    setvar 0x8005 0x15
    special 0x18D
    waitstate
    compare LASTRESULT 0x0
    if 0x1 _goto WhyCelebrate
    msgbox gText_mom_GreatJob MSG_NORMAL
    applymovement 0x1 EventScript_mom_Movement
	waitmovement 0x0
    release 
	end

WhyCelebrate:
    msgbox gText_mom_WhyCelebrate MSG_NORMAL
    applymovement 0x1 EventScript_mom_Movement
	waitmovement 0x0
    release
    end 

EventScript_mom_Allboys:
	msgbox gText_mom_AllBoysTxt MSG_KEEPOPEN @"Mom: [.]Right.\nAll boys leave hom..."
	return

EventScript_mom_AllGirls:
	msgbox gText_mom_AllGirlsTxt MSG_KEEPOPEN @"Mom: [.]Right.\nAll girls dream of..."
	return

EventScript_mom_Rest:
	fadescreen 0x1
	fanfare 0x100
	waitfanfare
	special 0x0
	fadescreen 0x0
	return

EventScript_mom_Movement:
    .byte 0x5A
    .byte 0xFE
