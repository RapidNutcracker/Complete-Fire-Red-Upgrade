.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_pryce_Start
EventScript_pryce_Start:
	lock
	faceplayer
	msgbox gText_pryce_1 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_pryce_Battle
	msgbox gText_pryce_2 0x6
    release 
	end

EventScript_pryce_Battle:
	msgbox gText_pryce_3 0x6
	setflag 0x915
	setflag 0x90E
	special 0x0
	random 0x3
	compare 0x800D 0x0
	if 0x1 _goto EventScript_pryce_Option1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_pryce_Option2
	compare 0x800D 0x2
	if 0x1 _goto EventScript_pryce_Option3
	end


EventScript_pryce_Option1:
	trainerbattle3 0x3 0x3A 0x0 gText_pryce_Defeat
	goto EventScript_pryce_Endbattle

EventScript_pryce_Option2:
	trainerbattle3 0x3 0x3B 0x0 gText_pryce_Defeat
	goto EventScript_pryce_Endbattle

EventScript_pryce_Option3:
	trainerbattle3 0x3 0x3C 0x0 gText_pryce_Defeat
	goto EventScript_pryce_Endbattle

EventScript_pryce_Endbattle:
	msgbox gText_pryce_6 0x6
	giveitem ITEM_GLALITITE 0x1 MSG_OBTAIN
	msgbox gText_pryce_7 0x6
	giveitem ITEM_CHOICE_SCARF 0x1 MSG_OBTAIN
	msgbox gText_pryce_Take 0x6
	fadescreen 0x1
	hidesprite 0xE
	sound 0x9
	checksound
	fadescreen 0x0
	setflag 0x96C
	release
	end
