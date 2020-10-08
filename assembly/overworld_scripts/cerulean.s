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
	checkitem ITEM_MEGA_RING 0x1
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


.global EventScript_newdaycare_Start
EventScript_newdaycare_Start:
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_newdaycare_End
	special 0x188
	lock
	faceplayer
	special 0xB5
	special2 LASTRESULT 0xB6
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_newdaycare_Theeggshit
	checkflag 0x266
	if 0x1 _goto EventScript_newdaycare_Theeggshit
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_newdaycare_Singlemon
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_newdaycare_Telldoingfine
	msgbox gText_newdaycare_Intro MSG_KEEPOPEN @"I@m the DAY-CARE MAN.\pI help take..."
	release
	end


EventScript_newdaycare_End:
	release
	end

EventScript_newdaycare_Theeggshit:
	msgbox gText_newdaycare_Ahitsyou MSG_YESNO @"Ah, it@s you!\pWe were raising you..."
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_newdaycare_Getegg @0x8167DD1
	msgbox gText_newdaycare_Ireallywill MSG_YESNO @"I really will keep it.\nYou do wan..."
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_newdaycare_Getegg
	msgbox gText_newdaycare_Illkeepit MSG_KEEPOPEN @"Well then, I@ll keep it.\nThanks!"
	clearflag 0x266
	special 0xB7
	release
	end

	@---------------
EventScript_newdaycare_Singlemon:
	special 0xB5
	msgbox gText_newdaycare_Singlemonmsg MSG_KEEPOPEN @"Ah, it@s you! Good to see you.\nYo..."
	release
	end

	@---------------
EventScript_newdaycare_Telldoingfine:
	special 0xB5
	msgbox gText_newdaycare_Twodoingfine MSG_KEEPOPEN @"Ah, it@s you! Your [buffer1] and\n..."
	special 0xB9
	special 0x8D
	waitmsg
	waitkeypress
	release
	end

	@---------------
EventScript_newdaycare_Getegg:
	special2 LASTRESULT 0x83
	compare LASTRESULT 0x6
	if 0x5 _goto EventScript_newdaycare_Receiveegg
	msgbox gText_newdaycare_Noroom MSG_KEEPOPEN @"You have no room for it[.]\nCome b..."
	release
	end

	@---------------
EventScript_newdaycare_Receiveegg:
	textcolor 0x3
	preparemsg gText_newdaycare_Receiveeggmsg @"[player] received the EGG from\nth..."
	call EventScript_newdaycare_Copyvar
	fanfare 0x101
	waitfanfare
	waitkeypress
	msgbox gText_newdaycare_Takegoodcare MSG_KEEPOPEN @"Take good care of it."
	special 0xB8
	clearflag 0x266
	release
	end

	@---------------
EventScript_newdaycare_Copyvar:
	copyvar 0x8012 0x8013
	return

.global EventScript_NewThiefInfo
EventScript_NewThiefInfo:
	msgbox gText_Cerulean_NewThiefInfo MSG_FACE 
	release 
	end 

.global EventScript_RedShardInfo
EventScript_RedShardInfo:
	msgbox gText_Cerulean_RedShardInfo MSG_FACE 
	release 
	end 
