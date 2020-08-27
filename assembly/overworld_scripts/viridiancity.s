.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_Viridian_WiseGlasses
EventScript_Viridian_WiseGlasses:
    lock
    faceplayer 
    checkflag 0x996
    if 0x1 _goto Done
    msgbox gText_Viridian_WiseGlasses1 MSG_FACE 
    giveitem 0x18D 0x1 MSG_OBTAIN 
    setflag 0x996
    release
    end

Done:
    msgbox gText_Viridian_WiseGlasses2 MSG_FACE 
    release 
    end 

.global EventScript_Viridian_GiveTestItem
EventScript_Viridian_GiveTestItem:
    lock
    faceplayer 
    giveitem 0x1AA 0x1 MSG_OBTAIN 
    giveitem 0x99 0x1 MSG_OBTAIN 
    giveitem 0x9A 0x1 MSG_OBTAIN 
    giveitem 0x9B 0x1 MSG_OBTAIN 
    release
    end
    
