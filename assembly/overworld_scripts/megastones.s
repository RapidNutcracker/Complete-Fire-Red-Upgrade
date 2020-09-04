.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_VictoryRoad_Salamencite
EventScript_VictoryRoad_Salamencite:
    hidesprite 0x800F
    giveitem ITEM_SALAMENCITE 0x1 MSG_FIND
    setflag 0x992
    release
    end

.global EventScript_Route22_Scizorite
EventScript_Route22_Scizorite:
    hidesprite 0x800F
    giveitem ITEM_SCIZORITE 0x1 MSG_FIND
    setflag 0x993
    release
    end

.global EventScript_Route6_Pinsirite
EventScript_Route6_Pinsirite:
    hidesprite 0x800F
    giveitem ITEM_PINSIRITE 0x1 MSG_FIND
    setflag 0x994
    release
    end

.global EventScript_Route2_ChargeBeam
EventScript_Route2_ChargeBeam:
    hidesprite 0x800F
    giveitem ITEM_TM57 0x1 MSG_FIND
    setflag 0x936
    release
    end

.global EventScript_Route10_WildCharge
EventScript_Route10_WildCharge:
    hidesprite 0x800F
    giveitem ITEM_TM99 0x1 MSG_FIND
    setflag 0x988
    release
    end

.global EventScript_Route20_Medichamite
EventScript_Route20_Medichamite:
    hidesprite 0x800F
    giveitem 0xFE 0x1 MSG_FIND
    setflag 0x99A
    release
    end

.global EventScript_Route17_Absolite
EventScript_Route17_Absolite:
    hidesprite 0x800F
    giveitem ITEM_ABSOLITE 0x1 MSG_FIND
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
    giveitem ITEM_TM52 0x1 MSG_FIND
    setflag 0x94D
    release
    end

.global EventScript_PkmnTower_DarkPulse
EventScript_PkmnTower_DarkPulse:
    hidesprite 0x800F
    giveitem ITEM_TM79 0x1 MSG_FIND
    setflag 0x94E
    release
    end

.global EventScript_SilphCo_Wisp
EventScript_SilphCo_Wisp:
    hidesprite 0x800F
    giveitem ITEM_TM61 0x1 MSG_FIND
    setflag 0x94F
    release
    end

.global EventScript_Route13_Teleport
EventScript_Route13_Teleport:
    hidesprite 0x800F
    giveitem ITEM_TM34 0x1 MSG_FIND
    setflag 0x95A
    release
    end

.global EventScript_SilphCo_Upgrade
EventScript_SilphCo_Upgrade:
    hidesprite 0x800F
    giveitem ITEM_UPGRADE 0x2 MSG_FIND
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
    giveitem ITEM_TM63 0x1 MSG_FIND 
    setflag 0x95F 
    release 
    end 

.global EventScript_Route12_TrickRoom
EventScript_Route12_TrickRoom:
    hidesprite 0x800F
    giveitem ITEM_TM116 0x1 MSG_FIND 
    setflag 0x97C
    release 
    end 

.global EventScript_Celadon_DreamBall
EventScript_Celadon_DreamBall:
    hidesprite 0x800F
    giveitem ITEM_DREAM_BALL 0x1 MSG_FIND 
    setflag 0x1D1
    release 
    end 

.global EventScript_ViridianForest_Buterfree
EventScript_ViridianForest_Buterfree:
    hidesprite 0x800F
    giveitem ITEM_BUTTERFRITE 0x1 MSG_FIND 
    setflag 0x99C
    release 
    end 

.global EventScript_xscissor_Start
EventScript_xscissor_Start:
	hidesprite 0x800F
	giveitem ITEM_TM81 0x1 MSG_FIND
	setflag 0x939
	release
	end


.global EventScript_VermilionCity_Machampite
EventScript_VermilionCity_Machampite:
    hidesprite 0x800F
    giveitem ITEM_MACHAMPITE 0x1 MSG_FIND 
    setflag 0x99D 
    release 
    end 

.global EventScript_SSAnne_RockPolish
EventScript_SSAnne_RockPolish:
    hidesprite 0x800F
    giveitem ITEM_TM69 0x1 MSG_FIND 
    setflag 0x99F
    release 
    end 

.global EventScript_SSAnne_BrickBreak
EventScript_SSAnne_BrickBreak:
    hidesprite 0x800F
    giveitem ITEM_TM31 0x1 MSG_FIND 
    setflag 0x1000
    release 
    end 

.global EventScript_SSAnne_WorkUp
EventScript_SSAnne_WorkUp:
    hidesprite 0x800F
    giveitem ITEM_TM98 0x1 MSG_FIND 
    setflag 0x1001
    release 
    end 

.global EventScript_Route11_StarPiece
EventScript_Route11_StarPiece:
    hidesprite 0x800F
    giveitem ITEM_SOFT_SAND 0x1 MSG_FIND 
    setflag 0x1002
    release 
    end 

.global EventScript_GC_BottleCap
EventScript_GC_BottleCap:
    hidesprite 0x800F
    giveitem ITEM_BOTTLE_CAP 0x1 MSG_FIND 
    setflag 0x16C
    release 
    end 

.global EventScript_GC_NewX
EventScript_GC_NewX:
    hidesprite 0x800F
    giveitem ITEM_WIDE_LENS 0x1 MSG_FIND 
    setflag 0x16E
    release 
    end 

.global EventScript_PkmnTower_NewX
EventScript_PkmnTower_NewX:
    hidesprite 0x800F
    giveitem ITEM_TM61 0x1 MSG_FIND 
    setflag 0x17D
    release 
    end 

.global EventScript_PkmnTower_Sablenite
EventScript_PkmnTower_Sablenite:
    hidesprite 0x800F
    giveitem ITEM_SABLENITE 0x1 MSG_FIND 
    setflag 0x177
    release 
    end 

.global EventScript_CyclingRoad_Absolite
EventScript_CyclingRoad_Absolite:
    hidesprite 0x800F
    giveitem ITEM_ABSOLITE 0x1 MSG_FIND 
    setflag 0x98A
    release 
    end 


.global EventScript_SilphCo_NewX
EventScript_SilphCo_NewX:
    hidesprite 0x800F
    giveitem ITEM_AUDINITE 0x1 MSG_FIND 
    setflag 0x194
    release 
    end 

.global EventScript_SilphCo_Kang
EventScript_SilphCo_Kang:
    hidesprite 0x800F
    giveitem ITEM_KANGASKHANITE 0x1 MSG_FIND 
    setflag 0x195
    release 
    end 

.global EventScript_SilphCo_HP
EventScript_SilphCo_HP:
    hidesprite 0x800F
    giveitem ITEM_TM10 0x1 MSG_FIND 
    setflag 0x989
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

