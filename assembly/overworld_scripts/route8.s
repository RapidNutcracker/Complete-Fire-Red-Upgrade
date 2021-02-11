.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_Route8_AceTrainer
EventScript_Route8_AceTrainer:
    lock
    faceplayer
    msgbox gText_Route8_AceTrainer1 MSG_FACE
    checktrainerflag 0xAB
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x106
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x217
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x218
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x80
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0xAD
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x81
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x82
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x1E4
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0xAC
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x108
    compare 0x800D 0x1
    if 0x0 _goto Notready
    checktrainerflag 0x83
    compare 0x800D 0x1
    if 0x0 _goto Notready
    release
    end

Notready:
    release
    end
