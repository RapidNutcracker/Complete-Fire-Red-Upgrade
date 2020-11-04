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

.global gMapScripts_RockTunnelZap
gMapScripts_RockTunnelZap:
    mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_RockTunnelZap
    .byte MAP_SCRIPT_TERMIN

LevelScripts_RockTunnelZap:
    levelscript 0x510C, 0, LevelScript_RockTunnelZap
    .hword MAP_SCRIPT_TERMIN

LevelScript_RockTunnelZap:
    lock
	msgbox gText_rocktunnelzap_1 MSG_KEEPOPEN
    pause 0x3
	closeonkeypress
    applymovement 0x4 FalknerLookDown
    waitmovement 0x0
    pause 0x3
    sound 0x15
    applymovement 0x4 FalknerSurprised
    waitmovement 0x0
    checksound
    msgbox gText_rocktunnelzap_2 MSG_KEEPOPEN
    pause 0x3
    msgbox gText_rocktunnelzap_2_2 MSG_NORMAL
    msgbox gText_rocktunnelzap_3 MSG_NORMAL
    special 0x0
    setflag 0x90E
    trainerbattle3 0x3 0x2B 0x0 gText_rocktunnelzap_Defeat
    msgbox gText_rocktunnelzap_4 MSG_NORMAL
    giveitem ITEM_FLYINIUM_Z 0x1 MSG_OBTAIN
    msgbox gText_rocktunnelzap_5 MSG_NORMAL
    fadescreen 0x1
    hidesprite 0x4
    sound 0x9
    checksound
    fadescreen 0x0
    setflag 0x1018
	setvar 0x510C 0x1
	end

FalknerSurprised:
    .byte exclaim
    .byte end_m

FalknerLookDown:
    .byte look_down
    .byte end_m

.global EventScript_ZapdosG_OW
EventScript_ZapdosG_OW:
    lock
    faceplayer
    cry SPECIES_ZAPDOS_G 0x2
    preparemsg gText_ZapdosG_12
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_ZAPDOS_G 0x5A 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x101A
    fadescreen 0x0
    release
    end
