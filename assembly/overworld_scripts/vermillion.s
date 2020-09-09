.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_punchtutor_Start 
EventScript_punchtutor_Start:
	lock
	faceplayer
	msgbox gText_punchtutor_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_punchtutor_Cancel
	showmoney 0x35 0x00 0x00
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_punchtutor_Text1
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_punchtutor_Text2
	special 0x25
	setvar 0x8006 0x2 @3rd item
	loadpointer 0x0 gText_punchtutor_Text3
	special 0x25
    setvar 0x8006 0x3 @3rd item
	loadpointer 0x0 gText_punchtutor_Text4
	special 0x25
    setvar 0x8006 0x4 @3rd item
	loadpointer 0x0 gText_punchtutor_Text5
	special 0x25
    setvar 0x8006 0x5 
	loadpointer 0x0 gText_punchtutor_Text6
	special 0x25
	preparemsg gText_punchtutor_Msg
	waitmsg
	multichoice 0x0 0x0 0x24 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_punchtutor_Firstoption
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_punchtutor_Secondoption
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_punchtutor_Thirdoption
    compare LASTRESULT 0x3
    if 0x1 _goto EventScript_FireFang 
    compare LASTRESULT 0x4
    if 0x1 _goto EventScript_IceFang 
    compare LASTRESULT 0x5
    if 0x1 _goto EventScript_ThunderFang 
	hidemoney 0x35 0x00
	release
	end

EventScript_punchtutor_Teach:
	special 0x18D
	waitstate
	lock
	faceplayer
	return

EventScript_punchtutor_Cancel:
	release
	end

EventScript_FireFang:
	setvar 0x8005 0x5A
	goto EventScript_punchtutor_Endofscript

EventScript_IceFang:
	setvar 0x8005 0x59
	goto EventScript_punchtutor_Endofscript

EventScript_ThunderFang:
	setvar 0x8005 0x58
	goto EventScript_punchtutor_Endofscript

EventScript_punchtutor_Firstoption:
	setvar 0x8005 0x0
	goto EventScript_punchtutor_Endofscript

EventScript_punchtutor_Secondoption:
	setvar 0x8005 0x1
	goto EventScript_punchtutor_Endofscript

EventScript_punchtutor_Thirdoption:
	setvar 0x8005 0x2
	goto EventScript_punchtutor_Endofscript

EventScript_punchtutor_Endofscript:
    checkmoney 0x9C4 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
	hidemoney 0x35 0x00
	msgbox gText_punchtutor_3 0x6
	call EventScript_punchtutor_Teach
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_punchtutor_Cancel
	showmoney 0x35 0x00 0x00
	msgbox gText_punchtutor_Wait 0x6
	removemoney 0x9C4 0x00
	sound 0x58
	updatemoney 0x35 0x00 0x00
	lock
	faceplayer
	msgbox gText_punchtutor_4 0x6
	checksound
	hidemoney 0x35 0x00
	release
	end

NotEnoughMoney:
    msgbox gText_Saffron_ManyTutors2 MSG_NORMAL 
    hidemoney 0x35 0x00
    release 
    end 

.global EventScript_ltsurge_Start
EventScript_ltsurge_Start:
	lock
	faceplayer
	checkflag 0x822
	if 0x1 _goto EventScript_ltsurge_Defeated
	setflag 0x915
	trainerbattle1 0x1 0x1A0 0x0 gText_ltsurge_EncounterText gText_ltsurge_DefeatText EventScript_ltsurge_WonPointer
	release
	end

EventScript_ltsurge_Defeated:
	lock
	faceplayer
	checkitem ITEM_MEGA_RING 0x1
	compare 0x800D 0x1
	if 0x4 _goto EventScript_ltsurge_Rematch
	msgbox gText_ltsurge_TMInfomsg 0x6
	release
	end

EventScript_ltsurge_WonPointer:
	msgbox gText_ltsurge_Givetm 0x6
	giveitem ITEM_TM92 0x1 MSG_OBTAIN
	settrainerflag 0x1A7
	settrainerflag 0x8D
	settrainerflag 0xDC
	clearflag 0xA0
	checkflag 0x23B
	if 0x0 _call EventScript_ltsurge_Cleardis
	setflag 0x4B2
	setflag 0x822
	clearflag 0x915
	msgbox gText_ltsurge_TMInfomsg 0x6
	release
	end

EventScript_ltsurge_Rematch:
	checkflag 0x934
	if 0x1 _goto EventScript_ltsurge_DefeatedRematch
	lock
	faceplayer
	msgbox gText_ltsurge_Helloagain 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_ltsurge_Cancel
	setflag 0x915
	setflag 0x90E
	trainerbattle1 0x1 0x33 0x0 gText_ltsurge_Battle gText_ltsurge_Seconddefeat EventScript_ltsurge_Rematchwon
	release
	end

EventScript_ltsurge_Cleardis:
	clearflag 0xA1
	return

EventScript_ltsurge_Cancel:
	msgbox gText_ltsurge_Comeback 0x6
	release
	end

EventScript_ltsurge_Rematchwon:
	clearflag 0x915
	msgbox gText_ltsurge_Won2text 0x6
	giveitem ITEM_LIGHT_CLAY 0x1 MSG_OBTAIN
	giveitem ITEM_MANECTITE 0x1 MSG_OBTAIN
	setflag 0x934
	msgbox gText_ltsurge_Info 0x6
	release
	end

EventScript_ltsurge_DefeatedRematch:
	msgbox gText_ltsurge_Info 0x6
	release
	end

.global EventScript_SSAnne_CantForget
EventScript_SSAnne_CantForget:
	lock
	faceplayer
	msgbox gText_SSAnne_CantForget1 MSG_FACE 
	release
	end
	