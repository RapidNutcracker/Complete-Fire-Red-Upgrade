.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_Cut
EventScript_Cut: 
	lockall
	checkflag 0x821 @check for misty badge
	if 0x0 _goto EventScript_newcut_Cantcut
	checkitem ITEM_HM01 0x1 
    compare 0x800D 0x1
	if lessthan _goto EventScript_newcut_Cantcut
	@ special 0x10A @check if any mon in party can cut
	@ compare 0x8004 0x6
	@ if 0x1 _goto EventScript_newcut_Cantcut
	@ setanimation 0x0 0x8004
	@ bufferpartypokemon 0x0 0x8004
	@ bufferattack 0x1 0xF
	@ msgbox gText_newcut_Usedcut 0x4
	@ closeonkeypress
	@ doanimation 0x2
	@ waitstate
	goto EventScript_newcut_Hideshit

EventScript_newcut_Cantcut:
	textcolor 0x2
	msgbox gText_newcut_Nocut 0x6
	releaseall
	end


EventScript_newcut_Hideshit:
	sound 0x79
	applymovement LASTTALKED EventScript_newcut_Movement
	waitmovement 0x0
	checksound 
	hidesprite LASTTALKED
	releaseall
	end

EventScript_newcut_Movement:
	.byte 0x69
	.byte 0xFE
