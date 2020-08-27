.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_Pewter_GiveDmax 
EventScript_Pewter_GiveDmax:
    applymovement 0xFF Stop 
    waitmovement 0x0
    msgbox gText_Pewter_GiveDmax1 MSG_NORMAL 
    clearflag 0x200
    showsprite 0x8 
    applymovement 0x8 ComeToYou 
    waitmovement 0x0 
    applymovement 0xFF Look
    waitmovement 0x0
    msgbox gText_Pewter_GiveDmax2 MSG_NORMAL 
    msgbox gText_Pewter_GiveDmax3 MSG_NORMAL 
    giveitem 0x119 0x1 MSG_OBTAIN
    setflag 0x200
    @ msgbox gText_Pewter_GiveDmax3 MSG_NORMAL 
    applymovement 0x8 GoLeave 
    waitmovement 0x0 
    hidesprite 0x8
    setvar 0x506A 0x1 
    release 
    end 

Stop:
    .byte look_right 
    .byte end_m

ComeToYou:
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte walk_right
    .byte end_m 

Look:
    .byte look_left
    .byte end_m 

GoLeave:
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte walk_left 
    .byte end_m 

GoUp:
    .byte walk_up 
    .byte end_m

.global EventScript_Pewter_GiveDmaxMiddle
EventScript_Pewter_GiveDmaxMiddle:
    applymovement 0xFF GoUp
    waitmovement 0x0 
    goto EventScript_Pewter_GiveDmax 
    end 

.global EventScript_Pewter_GiveDmaxBottom
EventScript_Pewter_GiveDmaxBottom:
    applymovement 0xFF GoUp
    waitmovement 0x0 
    applymovement 0xFF GoUp
    waitmovement 0x0 
    goto EventScript_Pewter_GiveDmax 
    end 

