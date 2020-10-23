.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_terrakion_OW
EventScript_terrakion_OW:
    lock
    faceplayer
    cry SPECIES_TERRAKION 0x2
    preparemsg gText_terrakion_12
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_TERRAKION 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x1012
    fadescreen 0x0
    release
    end

Moveback2:
    release 
    end
