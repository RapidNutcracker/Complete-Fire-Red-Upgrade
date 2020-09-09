.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_closecombat_Start
EventScript_closecombat_Start:
	lock
	faceplayer
	textcolor 0x0
	checkflag 0x987 @flag here
	if 0x1 _goto EventScript_closecombat_Cost
	msgbox gText_closecombat_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancel
	msgbox gText_closecombat_3 0x6
	setvar 0x8005 0x78 @change here
	call EventScript_closecombat_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancel
	setflag 0x987 @flag here
	msgbox gText_closecombat_4 0x6
	release
	end

EventScript_closecombat_Teach:
	special 0x18D
	waitstate
	return

EventScript_closecombat_Cost:
	showmoney 0x00 0x00 0x00
	msgbox gText_closecombat_1 0x6
	msgbox gText_closecombat_2 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancelhide
	checkmoney 0x2710 0x00 @money here
	compare 0x800D 0x1
	if 0x0 _goto EventScript_closecombat_Nomoney
	msgbox gText_closecombat_3 0x6
	hidemoney 0x00 0x00
	setvar 0x8005 0x78 @change this
	call EventScript_closecombat_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_closecombat_Cancel
	showmoney 0x00 0x00 0x00
	msgbox gText_closecombat_Wait 0x6
	removemoney 0x2710 0x00 @money here
	sound 0x58
	updatemoney 0x00 0x00 0x00
	msgbox gText_closecombat_4 0x6
	checksound
	hidemoney 0x0 0x0
	release
	end

EventScript_closecombat_Cancel:
	msgbox gText_closecombat_No 0x6
	release
	end

EventScript_closecombat_Cancelhide:
	hidemoney 0x00 0x00
	msgbox gText_closecombat_No 0x6
	release
	end

EventScript_closecombat_Nomoney:
	msgbox gText_closecombat_Poor 0x6
	hidemoney 0x00 0x00
	release
	end
