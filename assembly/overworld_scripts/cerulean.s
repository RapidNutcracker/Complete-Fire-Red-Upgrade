.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

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

