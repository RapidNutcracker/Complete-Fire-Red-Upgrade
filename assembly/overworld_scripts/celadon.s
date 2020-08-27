.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_Celadon_CheckErika
EventScript_Celadon_CheckErika:
    checkflag 0x823
    if 0x1 _goto Finished 
    applymovement 0xFF LookUp
    waitmovement 0x0 
    msgbox gText_Celadon_ErikaCheck MSG_FACE 
    applymovement 0xFF GoRight 
    waitmovement 0x0 
    release 
    end 

Finished:
    release 
    end 

LookUp:
    .byte 0x1
    .byte 0xFE 

GoRight:
    .byte 0x13
    .byte 0xFE 

.global EventScript_Celadon_CheckErika2
EventScript_Celadon_CheckErika2:
    checkflag 0x823
    if 0x1 _goto Finished 
    applymovement 0xFF LookUp
    waitmovement 0x0 
    msgbox gText_Celadon_ErikaCheck MSG_FACE 
    applymovement 0xFF GoDown 
    waitmovement 0x0 
    release 
    end 

GoDown:
    .byte 0x10
    .byte 0xFE 

.global EventScript_Celadon_StopExploit
EventScript_Celadon_StopExploit:
    clearflag 0x913
    clearflag 0x90F
    release 
    end 

.global EventScript_Celadon_IronHead
EventScript_Celadon_IronHead:
    lock
    faceplayer 
	msgbox gText_Celadon_IronHead1 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto Cancel
    setvar 0x8005 0x19
    special 0x18D
    waitstate
    compare LASTRESULT 0x0
    if 0x1 _goto Cancel
    msgbox gText_Celadon_IronHead2 MSG_FACE 
    release 
	end

Cancel:
    release 
    end 
