.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global gMapScripts_Route5
gMapScripts_Route5:
    mapscript MAP_SCRIPT_ON_TRANSITION MapEntryScript_Route5
    .byte MAP_SCRIPT_TERMIN

MapEntryScript_Route5:
    checkflag 0x266
    if 0x1 _call MoveShit
    end 

MoveShit: 
    movesprite2 0x2 0x1B 0x1A 
    return 
