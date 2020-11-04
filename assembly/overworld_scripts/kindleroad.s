.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_KindleRoadBugsy
EventScript_KindleRoadBugsy:
    lock
    msgbox gText_KindleRoadBugsy_1 MSG_KEEPOPEN
    pause 0x4
    closeonkeypress
    sound 0x15
    applymovement 0x1E BugsyTurnAround
    waitmovement 0x0
    checksound
    msgbox gText_KindleRoadBugsy_2 MSG_KEEPOPEN
    pause 0x3 
    closeonkeypress
    msgbox gText_KindleRoadBugsy_3 MSG_NORMAL
    special 0x0
    setflag 0x90E
    trainerbattle3 0x3 0x4B 0x0 gText_KindleRoadBugsy_Defeat
    msgbox gText_KindleRoadBugsy_4 MSG_NORMAL 
    giveitem ITEM_BUGINIUM_Z 0x1 MSG_OBTAIN
    msgbox gText_KindleRoadBugsy_5 MSG_NORMAL
    fadescreen 0x1
    hidesprite 0x1E
    sound 0x9
    checksound
    fadescreen 0x0
    setflag 0x1019
    release
	end
    
BugsyTurnAround:
    .byte face_player
    .byte exclaim
    .byte end_m
