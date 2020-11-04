.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global gMapScripts_PalletTownHome
gMapScripts_PalletTownHome:
    mapscript MAP_SCRIPT_ON_TRANSITION SetVar_PalletTownHome
    mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_PalletTownHome
    .byte MAP_SCRIPT_TERMIN

LevelScripts_PalletTownHome:
    levelscript 0x5108, 0, LevelScript_PalletTownHome
    .hword MAP_SCRIPT_TERMIN

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
