.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_VictoryRoad_Salamencite
EventScript_VictoryRoad_Salamencite:
    hidesprite 0x800F
    giveitem 0x73 0x1 MSG_FIND
    setflag 0x992
    release
    end

.global EventScript_Route22_Scizorite
EventScript_Route22_Scizorite:
    hidesprite 0x800F
    giveitem 0xF3 0x1 MSG_FIND
    setflag 0x993
    release
    end

.global EventScript_Route6_Pinsirite
EventScript_Route6_Pinsirite:
    hidesprite 0x800F
    giveitem 0xEC 0x1 MSG_FIND
    setflag 0x994
    release
    end

.global EventScript_Route20_Medichamite
EventScript_Route20_Medichamite:
    hidesprite 0x800F
    giveitem 0xFE 0x1 MSG_FIND
    setflag 0x99A
    release
    end

.global EventScript_Route18_Roost 
EventScript_Route18_Roost:
    hidesprite 0x800F
    giveitem 0x15C 0x1 MSG_FIND
    setflag 0x94C
    release
    end

.global EventScript_Route20_FocusBlast
EventScript_Route20_FocusBlast:
    hidesprite 0x800F
    giveitem 0x79 0x1 MSG_FIND
    setflag 0x94D
    release
    end

.global EventScript_PkmnTower_DarkPulse
EventScript_PkmnTower_DarkPulse:
    hidesprite 0x800F
    giveitem 0x9F 0x1 MSG_FIND
    setflag 0x94E
    release
    end

.global EventScript_SilphCo_Wisp
EventScript_SilphCo_Wisp:
    hidesprite 0x800F
    giveitem 0x7E 0x1 MSG_FIND
    setflag 0x94F
    release
    end

.global EventScript_Route13_Teleport
EventScript_Route13_Teleport:
    hidesprite 0x800F
    giveitem 0x142 0x1 MSG_FIND
    setflag 0x95A
    release
    end

.global EventScript_SilphCo_Upgrade
EventScript_SilphCo_Upgrade:
    hidesprite 0x800F
    giveitem 0x3C 0x2 MSG_FIND
    setflag 0x95B
    release
    end

.global EventScript_Route10_Facade
EventScript_Route10_Facade:
    hidesprite 0x800F
    giveitem 0x14A 0x1 MSG_FIND 
    setflag 0x95C
    release 
    end 

.global EventScript_MtMoon_ScopeLens
EventScript_MtMoon_ScopeLens:
    hidesprite 0x800F
    giveitem 0xC6 0x1 MSG_FIND 
    setflag 0x95D
    release 
    end 

.global EventScript_Route6_Venoshock
EventScript_Route6_Venoshock:
    hidesprite 0x800F
    giveitem 0x11A 0x1 MSG_FIND 
    setflag 0x95F 
    release 
    end 

.global EventScript_Route12_TrickRoom
EventScript_Route12_TrickRoom:
    hidesprite 0x800F
    giveitem 0x1BB 0x1 MSG_FIND 
    setflag 0x97C
    release 
    end 

.global EventScript_Celadon_DreamBall
EventScript_Celadon_DreamBall:
    hidesprite 0x800F
    giveitem 0x10A 0x1 MSG_FIND 
    setflag 0x97D
    release 
    end 

.global EventScript_ViridianForest_Buterfree
EventScript_ViridianForest_Buterfree:
    hidesprite 0x800F
    giveitem 0x1BF 0x1 MSG_FIND 
    setflag 0x99C
    release 
    end 

.global EventScript_VermilionCity_Machampite
EventScript_VermilionCity_Machampite:
    hidesprite 0x800F
    giveitem 0x1C0 0x1 MSG_FIND 
    setflag 0x99D 
    release 
    end 


.global EventScript_SeafoamIslands_Keldeo
EventScript_SeafoamIslands_Keldeo:
    sound 0xB3 
    applymovement 0xFF StopMove
    waitmovement 0x0
    checksound
    msgbox gText_SeafoamIslands_1 MSG_FACE
    cry 0x2BC 0x0
    msgbox gText_SeafoamIslands_2 MSG_KEEPOPEN
    waitcry
    closeonkeypress
    sound 0x15
    applymovement 0xFF Surprised
    waitmovement 0x0
    checksound
    playsong 0x156 0x0
    msgbox gText_SeafoamIslands_3 MSG_FACE
    msgbox gText_SeafoamIslands_4 MSG_YESNO
    compare LASTRESULT 0x0
    if 0x1 _goto CancelMusic
    wildbattle 0x2BC 0x32 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback
    setvar 0x5059 0x1
    release
    end


CancelMusic:
    fadesong 0x120
    applymovement 0xFF Moveback
    waitmovement 0x0
    release
    end

StopMove:
    .byte 0x3
    .byte 0x63  @question mark
    .byte 0xFE 

Surprised:
    .byte 0x65
    .byte 0xFE

Moveback:
    .byte 0x12
    .byte 0xFE


.global EventScript_VictoryRoad_Moltres
EventScript_VictoryRoad_Moltres:
    lock
    faceplayer
    cry 0x92 0x2
    preparemsg gText_VictoryRoad_Moltres1 
    waitmsg
    waitcry
    pause 0xA
    playsong 0x156 0x0
    waitkeypress
    wildbattle 0x92 0x46 0x00
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4
    if 0x1 _goto Moveback2
    fadescreen 0x1
    hidesprite 0x800F
    setflag 0x99B
    fadescreen 0x0
    release
    end

Moveback2:
    release 
    end

