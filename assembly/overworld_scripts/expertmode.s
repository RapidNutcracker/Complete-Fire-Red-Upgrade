.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 


.global EventScript_ExpertModeTile 
EventScript_ExpertModeTile:
	applymovement 0xFF FaceUp
	waitmovement 0x0 
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

FaceUp:
	.byte look_up
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
    
TalkRules:
    msgbox gText_ExpertMode2 MSG_NORMAL 
	msgbox gText_ExpertMode5 MSG_NORMAL 
    release 
    end 
