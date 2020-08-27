.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_MtMoon_MuscleBand
EventScript_MtMoon_MuscleBand:
    lock
    faceplayer 
    checkflag 0x997
    if 0x1 _goto Done
    msgbox gText_MtMoon_MuscleBand1 MSG_FACE 
    msgbox gText_MtMoon_MuscleBand2 MSG_FACE
    giveitem 0x18C 0x1 MSG_OBTAIN 
    setflag 0x997
    release
    end

Done:
    msgbox gText_MtMoon_MuscleBand1 MSG_FACE 
    release 
    end 

    