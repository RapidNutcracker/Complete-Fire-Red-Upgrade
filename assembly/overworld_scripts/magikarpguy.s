.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_MagikarpGuy
EventScript_MagikarpGuy:
    lock    
    faceplayer
    checkflag 0x98E
    if 0x1 _goto Done1 
    showmoney 0x0 0x0 0x0
    msgbox gText_MagikarpGuy_1 MSG_YESNO
    compare LASTRESULT NO
    if equal _goto Reject
    checkmoney 0x1F4 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
    sound 0x58 
    msgbox gText_MagikarpGuy_Bought1 MSG_FACE
    removemoney 0x1F4 0x00
    updatemoney 0x00 0x00 0x00
    checksound
    givepokemon 0x81 0x5 0x0 0x0 0x0 0x0
    msgbox gText_MagikarpGuy_AfterBought2 MSG_FACE
    setflag 0x98E
    hidemoney 0x0 0x0 
    release 
    end

Done1:
    checkflag 0x98F
    if 0x1 _goto Done2 
    showmoney 0x0 0x0 0x0
    msgbox gText_MagikarpGuy_2 MSG_YESNO
    compare LASTRESULT NO
    if equal _goto Reject
    checkmoney 0x124F8 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
    sound 0x58 
    removemoney 0x124F8 0x00
    updatemoney 0x00 0x00 0x00
    setflag 0x913
    givepokemon 0x81 0x5 0x0 0x0 0x0 0x0
    clearflag 0x913
    msgbox gText_MagikarpGuy_Bought2 MSG_KEEPOPEN
    checksound
    closeonkeypress 
    msgbox gText_MagikarpGuy_AfterBought2 MSG_FACE
    hidemoney 0x0 0x0 
    setflag 0x98F
    release 
    end

Done2:
    checkflag 0x990
    if 0x1 _goto Done3
    msgbox gText_MagikarpGuy_3 MSG_FACE 
    msgbox gText_MagikarpGuy_4 MSG_FACE 
    setflag 0x990
    release 
    end 

Done3: 
    msgbox gText_MagikarpGuy_4 MSG_FACE 
    release 
    end

Reject: 
    hidemoney 0x0 0x0 
    msgbox gText_MagikarpGuy_Reject MSG_FACE 
    release 
    end

NotEnoughMoney: 
    msgbox gText_MagikarpGuy_MoreMoney MSG_FACE 
    hidemoney 0x0 0x0 
    release 
    end 

