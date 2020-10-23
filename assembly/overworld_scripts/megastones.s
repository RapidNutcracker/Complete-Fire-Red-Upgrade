.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_VictoryRoad_Snorlaxite
EventScript_VictoryRoad_Snorlaxite:
    hidesprite 0x800F
    giveitem ITEM_SNORLAXITE 0x1 MSG_FIND
    setflag 0x1008
    release
    end

.global EventScript_Route19_Drednawite
EventScript_Route19_Drednawite:
    hidesprite 0x800F
    giveitem ITEM_DREDNAWITE 0x1 MSG_FIND
    setflag 0x1009
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

.global EventScript_RockTunnel_Coalossalite
EventScript_RockTunnel_Coalossalite:
    hidesprite 0x800F
    giveitem ITEM_COALOSSITE 0x1 MSG_FIND
    setflag 0x93B
    release
    end

.global EventScript_Route2_ChargeBeam
EventScript_Route2_ChargeBeam:
    hidesprite 0x800F
    giveitem ITEM_TM57 0x1 MSG_FIND
    setflag 0x936
    release
    end

.global EventScript_Route2_Rest
EventScript_Route2_Rest:
    hidesprite 0x800F
    giveitem ITEM_TM44 0x1 MSG_FIND
    setflag 0x1007
    release
    end

.global EventScript_CeruleanCave_BodyPress
EventScript_CeruleanCave_BodyPress:
    hidesprite 0x800F
    giveitem ITEM_TM115 0x1 MSG_FIND
    setflag 0x100B
    release
    end

.global EventScript_Route16_TMWingbeat
EventScript_Route16_TMWingbeat:
    hidesprite 0x800F
    giveitem ITEM_TM100 0x1 MSG_FIND
    setflag 0x1016
    release
    end
    
.global EventScript_Route17_HeatCrash
EventScript_Route17_HeatCrash:
    hidesprite 0x800F
    giveitem ITEM_TM114 0x1 MSG_FIND
    setflag 0x100A
    release
    end

.global EventScript_Route2_Orbeetlite
EventScript_Route2_Orbeetlite:
    hidesprite 0x800F
    giveitem ITEM_ORBEETLITE 0x1 MSG_FIND 
    setflag 0x93C 
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
    giveitem ITEM_MEDICHAMITE 0x1 MSG_FIND
    setflag 0x1011
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

.global EventScript_SilphCo_Wisp
EventScript_SilphCo_Wisp:
    hidesprite 0x800F
    giveitem ITEM_TM61 0x1 MSG_FIND
    setflag 0x94F
    release
    end

.global EventScript_Route13_Teleport @Now Route 3 
EventScript_Route13_Teleport:
    hidesprite 0x800F
    giveitem ITEM_TM34 0x1 MSG_FIND
    setflag 0x95A
    release
    end

.global EventScript_Route13_FutureSight @Now Route 3 
EventScript_Route13_FutureSight:
    hidesprite 0x800F
    giveitem ITEM_TM85 0x1 MSG_FIND
    setflag 0x961
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
    giveitem ITEM_TM04 0x1 MSG_FIND 
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

.global EventScript_Route18_Kinglerite
EventScript_Route18_Kinglerite:
    hidesprite 0x800F
    giveitem ITEM_KINGLERITE 0x1 MSG_FIND 
    setflag 0x94E
    release 
    end 

.global EventScript_Route18_Altariaite
EventScript_Route18_Altariaite:
    hidesprite 0x800F
    giveitem ITEM_ALTARIANITE 0x1 MSG_FIND 
    setflag 0x95B
    release 
    end 


.global EventScript_xscissor_Start
EventScript_xscissor_Start:
	hidesprite 0x800F
	giveitem ITEM_TM81 0x1 MSG_FIND
	setflag 0x939
	release
	end

.global EventScript_SafariZone_Heracronite
EventScript_SafariZone_Heracronite:
    hidesprite 0x800F
    giveitem ITEM_HERACRONITE 0x1 MSG_FIND 
    setflag 0x183
    release 
    end 

.global EventScript_SafariZone_Beedrilite
EventScript_SafariZone_Beedrilite:
    hidesprite 0x800F
    giveitem ITEM_BEEDRILLITE 0x1 MSG_FIND 
    setflag 0x1D3
    release 
    end 

.global EventScript_SafariZone_Pidgeotite
EventScript_SafariZone_Pidgeotite:
    hidesprite 0x800F
    giveitem ITEM_PIDGEOTITE 0x1 MSG_FIND 
    setflag 0x186
    release 
    end 

.global EventScript_SafariZone_TM54
EventScript_SafariZone_TM54:
    hidesprite 0x800F
    giveitem ITEM_TM54 0x1 MSG_FIND 
    setflag 0x100C
    release 
    end 

.global EventScript_SafariZone_TM55
EventScript_SafariZone_TM55:
    hidesprite 0x800F
    giveitem ITEM_TM55 0x1 MSG_FIND 
    setflag 0x100D
    release 
    end 

.global EventScript_SafariZone_TM58
EventScript_SafariZone_TM58:
    hidesprite 0x800F
    giveitem ITEM_TM58 0x1 MSG_FIND 
    setflag 0x100E
    release 
    end 

.global EventScript_Route5_TM96
EventScript_Route5_TM96:
    hidesprite 0x800F
    giveitem ITEM_TM96 0x1 MSG_FIND 
    setflag 0x960
    release 
    end 

.global EventScript_VictoryRoad_HeavyDuty
EventScript_VictoryRoad_HeavyDuty:
    hidesprite 0x800F
    giveitem ITEM_HEAVY_DUTY_BOOTS 0x1 MSG_FIND 
    setflag 0x1AB
    release 
    end 

.global EventScript_SafariZone_Lopunnite
EventScript_SafariZone_Lopunnite:
    hidesprite 0x800F
    giveitem ITEM_LOPUNNITE 0x1 MSG_FIND 
    setflag 0x18A
    release 
    end 

.global EventScript_Route12_Slowbronite
EventScript_Route12_Slowbronite:
    hidesprite 0x800F
    giveitem ITEM_SLOWBRONITE 0x1 MSG_FIND 
    setflag 0x965
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

.global EventScript_Route7_TM62
EventScript_Route7_TM62:
    hidesprite 0x800F
    giveitem ITEM_TM62 0x1 MSG_FIND 
    setflag 0x100F
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

.global EventScript_SilphCo_Garb
EventScript_SilphCo_Garb:
    hidesprite 0x800F
    giveitem ITEM_GARBODORITE 0x1 MSG_FIND 
    setflag 0x18E
    release 
    end 

.global EventScript_Seafoam_Laprasite
EventScript_Seafoam_Laprasite:
    hidesprite 0x800F
    giveitem ITEM_LAPRASITE 0x1 MSG_FIND 
    setflag 0x1D5 
    release 
    end 

.global EventScript_Seafoam_Abomasite
EventScript_Seafoam_Abomasite:
    hidesprite 0x800F
    giveitem ITEM_ABOMASITE 0x1 MSG_FIND 
    setflag 0x1D7
    release 
    end 

.global EventScript_PkmnMansion_Banettite
EventScript_PkmnMansion_Banettite:
    hidesprite 0x800F
    giveitem ITEM_BANETTITE 0x1 MSG_FIND 
    setflag 0x1A5
    release 
    end 

.global EventScript_CeruleanCave_Tyranitarite
EventScript_CeruleanCave_Tyranitarite:
    hidesprite 0x800F
    giveitem ITEM_TYRANITARITE 0x1 MSG_FIND 
    setflag 0x1B4
    release 
    end 

.global EventScript_CeruleanCave_Garchompite
EventScript_CeruleanCave_Garchompite:
    hidesprite 0x800F
    giveitem ITEM_GARCHOMPITE 0x1 MSG_FIND 
    setflag 0x1B7
    release 
    end 

.global EventScript_CeruleanCave_EQ
EventScript_CeruleanCave_EQ:
    hidesprite 0x800F
    giveitem ITEM_TM26 0x1 MSG_FIND 
    setflag 0x1B6
    release 
    end 

.global EventScript_PkmnMansion_Cameruptite
EventScript_PkmnMansion_Cameruptite:
    hidesprite 0x800F
    giveitem ITEM_CAMERUPTITE 0x1 MSG_FIND 
    setflag 0x19F
    release 
    end 

.global EventScript_PkmnMansion_StealthRock
EventScript_PkmnMansion_StealthRock:
    hidesprite 0x800F
    giveitem ITEM_TM76 0x1 MSG_FIND 
    setflag 0x1A2 
    release 
    end 

.global EventScript_PowerPlant_Ampharosite
EventScript_PowerPlant_Ampharosite:
    hidesprite 0x800F
    giveitem ITEM_AMPHAROSITE 0x1 MSG_FIND 
    setflag 0x19D
    release 
    end 

.global EventScript_PowerPlant_TM109
EventScript_PowerPlant_TM109:
    hidesprite 0x800F
    giveitem ITEM_TM109 0x1 MSG_FIND 
    setflag 0x19B
    release 
    end 


.global EventScript_Seafoam_TM70
EventScript_Seafoam_TM70:
    hidesprite 0x800F
    giveitem ITEM_TM70 0x1 MSG_FIND 
    setflag 0x1D6
    release 
    end 

.global EventScript_VictoryRoad_TM67
EventScript_VictoryRoad_TM67:
    hidesprite 0x800F
    giveitem ITEM_TM67 0x1 MSG_FIND 
    setflag 0x1015
    release 
    end 
    
.global EventScript_MtEmber_Scaleshot
EventScript_MtEmber_Scaleshot:
    hidesprite 0x800F
    giveitem ITEM_TM94 0x1 MSG_FIND
    setflag 0x1EE
    release
    end

.global EventScript_SilphCo_HP
EventScript_SilphCo_HP:
    hidesprite 0x800F
    giveitem ITEM_TM10 0x1 MSG_FIND 
    setflag 0x989
    release 
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

Moveback2:
    release 
    end

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
