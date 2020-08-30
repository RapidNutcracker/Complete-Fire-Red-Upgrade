.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.equ VAR_DAILY_EVENT2, 0x505C

.global EventScript_Cerulean_Haircut
EventScript_Cerulean_Haircut:
    setvar 0x8000 VAR_DAILY_EVENT2
    setvar 0x8001 0x0
    special2 LASTRESULT 0xA0
    compare LASTRESULT 0x0 
    if equal _goto AlreadyDid
    lock
    faceplayer 
    showmoney 0x0 0x0 0x0
    msgbox gText_Cerulean_Haircut1 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto Cancel 
    checkmoney 0x1F4 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
    msgbox gText_Cerulean_Haircut2 MSG_FACE
    setvar 0x8003 0x0
    special 0x9F
    waitstate
    compare 0x8004 0x6
    if 0x4 _goto Cancel
    setvar 0x8000 VAR_DAILY_EVENT2
    setvar 0x8001 0x0
    special 0xA1
    showmoney 0x0 0x0 0x0
    setvar 0x8005 0x01E @add 50 to happiness 
    special 0x13 @change happiness 
    special 0x7C @buffer nickname 
    msgbox gText_Cerulean_Haircut3 MSG_KEEPOPEN
    closeonkeypress
    fadescreen 0x1
    sound 0x1
    checksound 
    fadescreen 0x0 
    msgbox gText_Cerulean_Haircut5 MSG_KEEPOPEN
    sound 0x58 
    removemoney 0x1F4 0x00
    updatemoney 0x00 0x00 0x00
    checksound
    closeonkeypress 
    msgbox gText_Cerulean_Haircut6 MSG_FACE 
    hidemoney 0x0 0x0 
    release 
    end 

Cancel:
    hidemoney 0x0 0x0 
    release 
    end 

AlreadyDid:
    msgbox gText_Cerulean_Haircut4 MSG_FACE
    release 
    end 

NotEnoughMoney:
    hidemoney 0x0 0x0 
    msgbox gText_Cerulean_Haircut7 MSG_FACE 
    release 
    end 

.global EventScript_Cerulean_HappinessCheck
EventScript_Cerulean_HappinessCheck:
    msgbox gText_Cerulean_Happiness1 MSG_FACE 
    setvar 0x8003 0x0
    special 0x9F
    waitstate
    compare 0x8004 0x6
    if 0x4 _goto CancelHappy 
    special2 LASTRESULT 0xD
    special 0x7C @buffer nickname 
    buffernumber 0x1 LASTRESULT @Buffer happiness to [buffer2]
    msgbox gText_Cerulean_Happiness2 MSG_FACE 
    release 
    end 

CancelHappy:
    release 
    end 


.global EventScript_misty_Start
EventScript_misty_Start:
	lock
	faceplayer
	checkflag 0x821
	if 0x1 _goto EventScript_misty_Defeated
	setflag 0x915
	trainerbattle1 0x1 0x19F 0x0 gText_misty_EncounterText gText_misty_DefeatText EventScript_misty_WonPointer
	release
	end

EventScript_misty_Defeated:
	lock
	faceplayer
	checkitem 0xE2 0x1
	compare 0x800D 0x1
	if 0x4 _goto EventScript_misty_Rematch
	msgbox gText_misty_TMInfomsg 0x6
	release
	end

EventScript_misty_WonPointer:
	msgbox gText_misty_Givetm 0x6
	giveitem 0x123 0x1 MSG_OBTAIN
	settrainerflag 0xEA
	settrainerflag 0x96
	setflag 0x821
	clearflag 0x915
	msgbox gText_misty_TMInfomsg 0x6
	release
	end

EventScript_misty_Rematch:
	checkflag 0x932
	if 0x1 _goto EventScript_misty_DefeatedRematch
	lock
	faceplayer
	msgbox gText_misty_Helloagain 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_misty_Cancel
	setflag 0x915
	setflag 0x90E
	trainerbattle1 0x1 0x30 0x0 gText_misty_Battle gText_misty_Seconddefeat EventScript_misty_Rematchwon
	release
	end

EventScript_misty_Cancel:
	msgbox gText_misty_Comeback 0x6
	release
	end

EventScript_misty_Rematchwon:
	clearflag 0x915
	msgbox gText_misty_Won2text 0x6
	setflag 0x90F
	giveitem ITEM_GYARADOSITE 0x1 MSG_OBTAIN
	givepokemon SPECIES_FROAKIE 0x5 0x0 0x0 0x0 0x0
	clearflag 0x90F
	fanfare 0x13E
	msgbox gText_misty_Froakie 0x4
	waitfanfare
	closeonkeypress
	setflag 0x932
	msgbox gText_misty_Info 0x6
	release
	end

EventScript_misty_DefeatedRematch:
	msgbox gText_misty_Info 0x6
	release
	end
