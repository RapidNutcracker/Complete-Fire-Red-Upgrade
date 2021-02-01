.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global gMapScripts_OneIsland
gMapScripts_OneIsland:
    mapscript MAP_SCRIPT_ON_FRAME_TABLE LevelScripts_OneIslandJotard
    .byte MAP_SCRIPT_TERMIN

LevelScripts_OneIslandJotard:
    levelscript 0x5107, 0, LevelScript_OneIslandJotard
    .hword MAP_SCRIPT_TERMIN

LevelScript_OneIslandJotard:
    lock
    playsong 0x13B
    applymovement 0x5 JotardWalkToU
    waitmovement 0x0
    msgbox gText_OneIslandJotard_1 MSG_KEEPOPEN
    pause 0x4
    closeonkeypress
    msgbox gText_OneIslandJotard_2 MSG_KEEPOPEN
    pause 0x3
    closeonkeypress
    msgbox gText_OneIslandJotard_3 MSG_NORMAL
    msgbox gText_OneIslandJotard_4 MSG_NORMAL
    setflag 0x90E
    trainerbattle3 0x3 0x28 0x0 gText_OneIslandJotard_Defeated
    msgbox gText_OneIslandJotard_5 MSG_NORMAL
    giveitem ITEM_Z_POWER_RING 0x1 MSG_OBTAIN
    msgbox gText_OneIslandJotard_6 MSG_NORMAL
    giveitem ITEM_FIGHTINIUM_Z 0x1 MSG_OBTAIN
    msgbox gText_OneIslandJotard_7 MSG_NORMAL
    playsong 0x13B
    applymovement 0xFF WalkLeft
    waitmovement 0x0
    applymovement 0x5 JotardLeave
    waitmovement 0x0
    sound 0x9
    hidesprite 0x5
    checksound
    fadeoutbgm 0x3
    setflag 0x1017
    setworldmapflag 0x89B
    setvar 0x5107 0x1
    fadeinbgm 0x2 
    release
    end

JotardWalkToU:
    .byte walk_down
    .byte walk_down
    .byte walk_down
    .byte end_m

WalkLeft:
    .byte walk_left
    .byte look_right
    .byte end_m

JotardLeave:
    .byte walk_down
    .byte end_m

.global EventScript_TeleportToKanto 
EventScript_TeleportToKanto:
    lock
    faceplayer
    setvar 0x4071 0x4
    msgbox gText_TeleportToKanto MSG_YESNO
    compare LASTRESULT NO
    if equal _goto End
    warp 0x3 0x5 0xA 0x0 0x0
    release
    end

End:
    release
    end

.global EventScript_waterfallhm_Start
EventScript_waterfallhm_Start:
	lock
	faceplayer
	checkflag 0x2EF
	if 0x1 _goto EventScript_waterfallhm_Done
	msgbox gText_waterfallhm_Handinhand MSG_KEEPOPEN @"Hot springs go hand-in-hand with\n..."
	giveitem ITEM_HM07 0x1 MSG_OBTAIN
	setflag 0x2EF
	msgbox gText_waterfallhm_Shatterstxt MSG_KEEPOPEN @"That shatters boulders as if they\..."
	release
	end

EventScript_waterfallhm_Done:
	msgbox gText_waterfallhm_Shatterstxt MSG_KEEPOPEN @"That shatters boulders as if they\..."
	release
	end
