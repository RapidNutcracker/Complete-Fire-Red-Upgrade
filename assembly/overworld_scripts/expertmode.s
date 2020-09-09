.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 


.global EventScript_ExpertModeTile 
EventScript_ExpertModeTile:
	applymovement 0x3 WalkUpToYouTop
	waitmovement 0x0 
	call EventScript_ExpertModeStart 
	applymovement 0x3 WalkBackTop
	waitmovement 0x0 
	release 
	end 

.global EventScript_ExpertModeTileLeft
EventScript_ExpertModeTileLeft:
	applymovement 0x3 WalkUpToYouLeft 
	waitmovement 0x0 
	call EventScript_ExpertModeStart 
	applymovement 0x3 WalkBackLeft 
	waitmovement 0x0 
	release 
	end 

.global EventScript_ExpertModeTileRight
EventScript_ExpertModeTileRight:
	applymovement 0x3 WalkUpToYouRight
	waitmovement 0x0 
	call EventScript_ExpertModeStart 
	applymovement 0x3 WalkBackRight  
	waitmovement 0x0 
	release 
	end 

EventScript_ExpertModeStart:
	textcolor 0x0
	msgbox gText_ExpertMode1 MSG_NORMAL 
	msgbox gText_ExpertMode2 MSG_NORMAL 
	msgbox gText_ExpertMode3 MSG_NORMAL 
	msgbox gText_ExpertMode5 MSG_NORMAL 
	setvar 0x5101 0x1
	return 

WalkUpToYouTop:
	.byte walk_left 
	.byte face_player 
	.byte end_m 

WalkBackTop:
	.byte walk_right  
	.byte look_down
	.byte end_m 

WalkUpToYouLeft:
	.byte walk_left 
	.byte walk_left 
	.byte walk_down 
	.byte face_player 
	.byte end_m 

WalkUpToYouRight:
	.byte walk_down 
	.byte face_player 
	.byte end_m 

WalkBackLeft:
	.byte walk_up
	.byte walk_right  
	.byte walk_right  
	.byte look_down 
	.byte end_m 

WalkBackRight:
	.byte walk_up  
	.byte look_down
	.byte end_m 

.global EventScript_ExpertModeNPC
EventScript_ExpertModeNPC: 
    lock 
    faceplayer
	msgbox gText_WhatYouWant MSG_YESNO 
    compare LASTRESULT NO 
    if equal _goto EndThis 
    goto TalkRules
	release 
    end 

EndThis:
	release 
	end 

TalkExpert:
    msgbox gText_ExpertModeInfo MSG_NORMAL 
    checkflag 0x93A 
    if 0x1 _goto TurnOff 
    goto TurnOn 

TurnOn: 
    msgbox gText_AskTurnOnExpert MSG_YESNO  
	compare LASTRESULT YES
	if equal _call SetExpert 
	msgbox gText_ExpertMode5 MSG_NORMAL 
	return 

TurnOff:
    msgbox gText_AskTurnOffExpert MSG_YESNO  
    compare LASTRESULT YES 
    if equal _call OffExpert 
    msgbox gText_ExpertMode5 MSG_NORMAL 
    return 

OffExpert: 
    clearflag 0x93A 
    msgbox gText_TurnOffExpert MSG_NORMAL 
    return 
    
SetExpert: 
	setflag 0x93A 
	msgbox gText_TurnOnExpert MSG_NORMAL 
	return 

TalkRules:
    msgbox gText_ExpertMode2 MSG_NORMAL 
	msgbox gText_ExpertMode5 MSG_NORMAL 
    release 
    end 
