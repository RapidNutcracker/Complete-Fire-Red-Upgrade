.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_Fuschia_OakAid
EventScript_Fuschia_OakAid:
    checkflag 0x999 
    if 0x1 _goto AidDone
	msgbox gText_Fuschia_OakAid1 MSG_FACE 
    giveitem 0x94 0x1 MSG_OBTAIN 
    giveitem 0x95 0x1 MSG_OBTAIN 
    setflag 0x999
    goto AidDone
	end

AidDone:
    msgbox gText_Fuschia_OakAid2 MSG_FACE 
    release 
    end 

.global EventScript_Fuschia_NastyPlot
EventScript_Fuschia_NastyPlot:
    @ checkflag 0x99F
    @ if 0x1 _goto AlreadyTaught
    lock
    faceplayer 
	msgbox gText_Fuschia_NastyPlot1 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto Cancel
    setvar 0x8005 0x4C
    special 0x18D
    waitstate
    compare LASTRESULT 0x0
    if 0x1 _goto Cancel
    msgbox gText_Fuschia_NastyPlot2 MSG_FACE 
    @ setflag 0x99F
    release 
	end

Cancel:
    msgbox gText_Fuschia_NastyPlot3 MSG_FACE 
    release 
    end 

.global EventScript_Fuschia_EggTutor
EventScript_Fuschia_EggTutor:
    lock
    faceplayer
    textcolor 0x0
    checkitem 0x6F 0x1
    compare 0x800D 0x1
    if 0x0 _goto NeedScale
    msgbox gText_Fuschia_Egg2 MSG_YESNO
    compare LASTRESULT 0x0
    if 0x1 _goto Cancel1
    msgbox gText_Fuschia_Egg3 MSG_NORMAL
    call Teach
    msgbox gText_Fuschia_EggWhichMove MSG_NORMAL
    call TeachMoves
    removeitem 0x6F 0x1
    textcolor 0x3
    msgbox gText_FuschiaHandOver MSG_NORMAL
    msgbox gText_Fuschia_Egg4 MSG_NORMAL
    clearflag 0x917
    release
    end

NeedScale:
    msgbox gText_Fuschia_Egg1 MSG_NORMAL
    release
    end

Teach:
    setflag 0x917
    special 0xDB
    waitstate
    compare 0x8004 0x6
    if 0x4 _goto Cancel1
    special 0x148 @check if its an egg
    compare LASTRESULT 0x1
    if 0x1 _goto CancelNo3
    compare 0x8005 0x0
    if 0x1 _goto CancelNo
    return

TeachMoves:
    special 0xE0
    waitstate
    compare 0x8004 0x0
    if 0x1 _goto Cancel1
    return

Cancel1:
    clearflag 0x917
    msgbox gText_Fuschia_EggNo MSG_NORMAL
    release
    end

CancelNo:
    clearflag 0x917
    msgbox gText_Fuschia_EggNo2 MSG_NORMAL
    release
    end

CancelNo3:
    clearflag 0x917
    msgbox gText_Fuschia_EggNo3 MSG_NORMAL
    release
    end


.global EventScript_Fuschia_DoubleBattle
EventScript_Fuschia_DoubleBattle:
    lock
    faceplayer 
    checkflag 0x910
    if 0x1 _goto TurnOff
    msgbox gText_FuschiaDouble1 MSG_YESNO 
    compare LASTRESULT 0x1
    if NO _goto CancelThis
    setflag 0x910
    msgbox gText_FuschiaDouble2 MSG_NORMAL
    release 
    end 

TurnOff:
    msgbox gText_FuschiaDouble3 MSG_YESNO
    compare LASTRESULT YES 
    if NO _goto CancelThis
    clearflag 0x910
    msgbox gText_FuschiaDouble4 MSG_NORMAL 
    release 
    end 

CancelThis:
    msgbox gText_FuschiaDouble5 MSG_NORMAL 
    release 
    end 
