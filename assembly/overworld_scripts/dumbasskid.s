.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_DumbassKid
EventScript_DumbassKid:
    checkflag 0x98D
    if 0x1 _goto Done
    lock
    faceplayer
    msgbox gText_DumbassKid_1 MSG_YESNO
    compare LASTRESULT 0x0
    if notequal _goto Good 
    msgbox gText_DumbassKid_Battle MSG_YESNO
    compare LASTRESULT 0x0 
    if notequal _goto Good 
    sound 0xA
    applymovement 0x4 JumpUp
    waitmovement 0x0
    checksound
    msgbox gText_DumbassKid_Battle2 MSG_FACE 
    setflag 0x90E
    trainerbattle3 0x3 0x19 0x0 gText_DumbassKidLoss
    setflag 0x98D
    givepokemon 0x11B 0x5 0x0 0x0 0x0 0x0
    msgbox gText_DumbassKid_PostLoss MSG_FACE 
    fanfare 0x13E
    msgbox gText_DumbassKid_GetMudkip MSG_KEEPOPEN
    waitfanfare
    closeonkeypress
    release 
    end 
    
Done:
    msgbox gText_DumbassKid_LastMsg MSG_FACE 
    release
    end

Good:
    cry 0x11B 0x0
    msgbox gText_DumbassKid_Good MSG_KEEPOPEN
    waitcry
    closeonkeypress
    cry 0x11B 0x0
    msgbox gText_DumbassKid_Good MSG_KEEPOPEN
    waitcry
    closeonkeypress
    cry 0x11B 0x0
    msgbox gText_DumbassKid_Good MSG_KEEPOPEN
    waitcry
    closeonkeypress
    cry 0x11B 0x0
    msgbox gText_DumbassKid_Good MSG_KEEPOPEN
    waitcry
    closeonkeypress
    cry 0x11B 0x0
    msgbox gText_DumbassKid_Good MSG_KEEPOPEN
    waitcry
    closeonkeypress
    release 
    end

JumpUp:
    .byte 0x52
    .byte 0xFE

.global EventScript_PowerPlant_Jotard
EventScript_PowerPlant_Jotard:
	lock
	faceplayer 
    msgbox gText_Jotard_1 MSG_KEEPOPEN 
    closeonkeypress 
    msgbox gText_Jotard_2 MSG_YESNO 
	compare LASTRESULT NO 
    if equal _goto DontFight 
	msgbox gText_Jotard_3 MSG_NORMAL 
    goto JotardBattle
	release
	end

JotardBattle: 
	setflag 0x915
    setflag 0x90E 
	trainerbattle3 0x3 0x42 0x0 gText_Jotard_Defeat
	msgbox gText_Jotard_4 0x6
	giveitem ITEM_MACHAMPITE 0x1 MSG_OBTAIN
	giveitem ITEM_PRISON_BOTTLE 0x1 MSG_OBTAIN
	msgbox gText_Jotard_5 0x6 
	fadescreen 0x1
	hidesprite 0xA
	sound 0x9
	checksound
	fadescreen 0x0
	setflag 0x93D
	release
	end

DontFight:
    release 
    end 
