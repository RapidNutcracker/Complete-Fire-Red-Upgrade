.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.equ VAR_GARTICUNO_DAILY, 0x5114

.global EventScript_SeafoamIslands_Articuno
EventScript_SeafoamIslands_Articuno:
    lock
    faceplayer
    cry SPECIES_ARTICUNO 0x2
    preparemsg gText_SeafoamIslands_Articuno_1 
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_ARTICUNO 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x2BE
	setvar 0x8000 VAR_GARTICUNO_DAILY
    setvar 0x8001 0x0
    special 0xA1
    fadescreen 0x0
    release
    end

Moveback2:
    release 
    end

.global EventScript_SeafoamIslands_GalarArticuno
EventScript_SeafoamIslands_GalarArticuno:
    lock
    faceplayer
    cry SPECIES_ARTICUNO 0x2
    preparemsg gText_PowerPlant_Zapdos1 
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_ARTICUNO_G 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x1028
	setflag 0x1029
    fadescreen 0x0
    release
    end

.global gMapScripts_SeafoamIslands
gMapScripts_SeafoamIslands:
    mapscript MAP_SCRIPT_ON_TRANSITION HideGArticunoIfNotReady
    .byte MAP_SCRIPT_TERMIN

HideGArticunoIfNotReady:
	checkflag 0x2BE
	if 0x0 _goto HideGArticuno
	checkflag 0x1029
	if 0x1 _goto HideGArticuno
	setvar 0x8000 VAR_GARTICUNO_DAILY
    setvar 0x8001 0x0
    special2 LASTRESULT 0xA0
    compare LASTRESULT 0x0 
    if equal _goto HideGArticuno
	clearflag 0x1028
	showsprite 0x5
	end 

HideGArticuno:
    hidesprite 0x5
    setflag 0x1028
    end

.global EventScript_Keldeo_OW
EventScript_Keldeo_OW:
	lock
    faceplayer
    cry SPECIES_KELDEO 0x2
    preparemsg gText_keldeo_12
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle SPECIES_KELDEO 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x1014
    fadescreen 0x0
    release
    end
