.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_gamecornertms_test
EventScript_gamecornertms_test:
	special 0x187
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_gamecornertms_End
	lock
	faceplayer
	preparemsg gText_gamecornertms_Hello @"Hi, there!\nMay I help you?"
	waitmsg
	pokemart EventScript_gamecornertms_Values
	msgbox gText_gamecornertms_Comeagain MSG_KEEPOPEN @"Please come again!"
	release
	end

EventScript_gamecornertms_End:
	release
	end

EventScript_gamecornertms_Values:
	.hword ITEM_TM06
	.hword ITEM_TM13
	.hword ITEM_TM16 
	.hword ITEM_TM17
	.hword ITEM_TM20 
	.hword ITEM_TM24
	.hword ITEM_TM33 
    .hword ITEM_TM35
	.hword ITEM_TM53 @ 0x17A 
	.hword ITEM_TM64 @ 0x185
	.hword ITEM_TM65 @ 0x186 
	.hword ITEM_TM74 @ 0x18F
	.hword ITEM_TM75 @ 0x190
	.hword ITEM_TM79 @ 0x194 
	.hword ITEM_TM82 @ 0x197
	.hword ITEM_TM83 @ 0x198 
    .hword ITEM_TM84 @ 0x199 
    .hword ITEM_TM91 @ 0x1A0
	.hword ITEM_TM93 @ 0x1A2
	.hword ITEM_TM102 @ 0x1AB
	.hword ITEM_TM110 @ 0x1B3 
    .hword 0x0
    