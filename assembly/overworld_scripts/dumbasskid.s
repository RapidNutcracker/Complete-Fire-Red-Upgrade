.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

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

