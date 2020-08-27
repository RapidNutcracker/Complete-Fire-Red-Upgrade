.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_VictoryRoad_ExtraMart
EventScript_VictoryRoad_ExtraMart:
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
    .hword 0x3E
	.hword 0x48
	.hword 0x3E
	.hword 0x65
    .hword 0x0

.global EventScript_StopBag
EventScript_StopBag:
	setflag 0x915
	release 
	end 
