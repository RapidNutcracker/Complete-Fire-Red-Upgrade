.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.equ VAR_LEVEL, 0x1E
.equ VAR_DAILY_EVENT, 0x505A

.global EventScript_CinnabarMay_Boss
EventScript_CinnabarMay_Boss:
    clearflag 0x200
    sound 0x9
    showsprite 0x05
    checksound
    applymovement 0xFF CinnabarMayStop
    waitmovement 0x0
    textcolor 0x01
    msgbox gText_CinnabarMay1 MSG_NORMAL
    applymovement 0xFF MoveDown
    waitmovement 0x0
    applymovement 0x05 MayDown
    waitmovement 0x0
    msgbox gText_CinnabarMay2 MSG_NORMAL
    sound 0x15
    applymovement 0x05 Exclamation
    waitmovement 0x0 
    checksound
    msgbox gText_CinnabarMay3 MSG_NORMAL
    msgbox gText_CinnabarMay4 MSG_NORMAL
    setflag 0x200 
    trainerbattle3 0x3 0x3D 0x0 gText_CinnabarMayDefeat 
    msgbox gText_CinnabarMay5 MSG_NORMAL
    setflag 0x90F
    givepokemon 0x118 0x5 0xD7 0x0 0x0 0x0
    clearflag 0x90F
    fanfare 0x13E 
    msgbox gText_CinnabarMay6 MSG_KEEPOPEN
    waitfanfare
    closeonkeypress
    msgbox gText_CinnabarMay7 MSG_NORMAL
    applymovement 0x05 ComeDown
    waitmovement 0x0 
    setvar 0x5047 0x1
    hidesprite 0x05
    setflag 0x200
    setflag 0x998
    release
    end

CinnabarMayStop:
    .byte 0x1
    .byte 0xFE

Exclamation:
    .byte 0x62
    .byte 0xFE 

MoveDown:
    .byte 0x10
    .byte 0x1
    .byte 0xFE

MayDown:
    .byte 0x10
    .byte 0xFE

ComeDown:
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0x13
    .byte 0xFE    


.global EventScript_Cinnabar_WeatherRock
EventScript_Cinnabar_WeatherRock:
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_dada_Snippet1
	lock
	faceplayer
	preparemsg gText_dada_MartGreetingMsg
	waitmsg
	pokemart EventScript_dada_MartItemsList
	msgbox gText_dada_MartLeavingMsg 0x6
	release
	end

EventScript_dada_Snippet1:
	release
	end

EventScript_dada_MartItemsList:
    .hword 0x98
	.hword 0x99
	.hword 0x9A
	.hword 0x9B
    .hword 0x10A @remove later 
    .hword 0x0

.global EventScript_Cinnabar_FossilGuy
EventScript_Cinnabar_FossilGuy:
    lockall 
    faceplayer
    setvar 0x8000 VAR_DAILY_EVENT
    setvar 0x8001 0x0
    special2 LASTRESULT 0xA0
    compare LASTRESULT 0x0 
    if equal _goto AlreadyDid
    setvar 0x8000 VAR_DAILY_EVENT 
    msgbox gText_Cinnabar_FossilGuy1 MSG_FACE
    special 0xA1 
    random 0xA
    compare 0x800D 0x0
    if 0x1 _goto Root 
    compare 0x800D 0x1 
    if 0x1 _goto Claw 
    compare 0x800D 0x2
    if 0x1 _goto Skull
    compare 0x800D 0x3 
    if 0x1 _goto Armor
    compare 0x800D 0x4 
    if 0x1 _goto Cover
    compare 0x800D 0x5 
    if 0x1 _goto Plume
    compare 0x800D 0x6
    if 0x1 _goto Jaw
    compare 0x800D 0x7
    if 0x1 _goto Sail 
    compare 0x800D 0x8
    if 0x1 _goto Helix 
    compare 0x800D 0x9
    if 0x1 _goto Dome 
    end 

Root: @Lileep 
    bufferpokemon 0x00 0x184  
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x184 VAR_LEVEL 0x0 0x0 0x0
    release 
    end

Claw: @Anorith
    bufferpokemon 0x00 0x186
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x186 VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Skull: @Cranidos
    bufferpokemon 0x00 0x1CD
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x1CD VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Armor: @Shieldon 
    bufferpokemon 0x00 0x1CF
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x1CF VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Cover: @Tirtouga
    bufferpokemon 0x00 0x269
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x269 VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Plume: @Archen 
    bufferpokemon 0x00 0x26B
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x26B VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Jaw: @Tyrantrum
    bufferpokemon 0x00 0x324
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x324 VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Sail: @Amaura
    bufferpokemon 0x00 0x326
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x326 VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Helix:
    bufferpokemon 0x00 0x8A
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x8A VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

Dome:
    bufferpokemon 0x00 0x8C
    msgbox gText_Cinnabar_FossilGuy2 MSG_FACE
    givepokemon 0x8C VAR_LEVEL 0x0 0x0 0x0
    release 
    end 

AlreadyDid:
    msgbox gText_Cinnabar_FossilGuy3 MSG_FACE 
    release 
    end 

.global EventScript_Cinnabar_Latis
EventScript_Cinnabar_Latis:
    checkflag 0x94A
    if 0x0 _goto Start 
    checkflag 0x94B
    if 0x0 _goto Start 
    msgbox gText_CinnabarLatis5 MSG_FACE 
    release 
    end 

Start:
    lockall 
    faceplayer
    msgbox gText_CinnabarLatis1 MSG_FACE 
    setvar 0x8003 0x0
    special 0x9F
    waitstate
    compare 0x8004 0x6
    if 0x4 _goto CancelLati 
    special2 LASTRESULT 0x18 
    compare LASTRESULT 0x197 
    if 0x1 _goto Latias 
    compare LASTRESULT 0x198
    if 0x1 _goto Latios 
    msgbox gText_CinnabarLatis2 MSG_FACE 
    msgbox gText_CinnabarLatis3 MSG_FACE 
    release 
    end 

Latias: 
    checkflag 0x94A
    if 0x1 _goto AlreadyGave
    call ExclamationStuff
    bufferpokemon 0x0 0x197
    msgbox gText_CinnabarLatis6 MSG_FACE 
    giveitem 0x75 0x1 MSG_OBTAIN 
    giveitem 0xBF 0x1 MSG_OBTAIN 
    setflag 0x94A 
    release 
    end 

Latios: 
    checkflag 0x94B 
    if 0x1 _goto AlreadyGave 
    call ExclamationStuff
    bufferpokemon 0x0 0x198
    msgbox gText_CinnabarLatis6 MSG_FACE 
    giveitem 0x76 0x1 MSG_OBTAIN 
    giveitem 0xBF 0x1 MSG_OBTAIN 
    setflag 0x94B
    release 
    end 

ExclamationStuff:
    msgbox gText_CinnabarLatis2 MSG_FACE 
    applymovement 0x800F ExclamationMark
    sound 0x15 
    checksound 
    waitmovement 0x0 
    return 

CancelLati:
    release 
    end 

AlreadyGave:
    msgbox gText_CinnabarLatis4 MSG_FACE 
    release 
    end 

ExclamationMark:
    .byte 0x62
    .byte 0xFE 
