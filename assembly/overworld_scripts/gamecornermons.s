.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_gamecornermons_Start2
EventScript_gamecornermons_Start2:
	lockall
	faceplayer
	msgbox gText_gamecornermons_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_gamecornermons_Cancel
	showmoney 0x35 0x00 0x00
	goto FirstList 

FirstList: 
	setvar 0x8000 0x2 
    setvar 0x8001 0x5 
    setvar 0x8004 0x0 
    @ preparemsg gText_gamecornermons_Whichpkmn
	@ waitmsg
    special 0x158
    waitstate 
    compare LASTRESULT 0x7F 
    if 0x1 _goto EventScript_gamecornermons_Cancelhide
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_gamecornermons_Dratini
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_gamecornermons_Larvitar
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_gamecornermons_Beldum
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_gamecornermons_Bagon
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_gamecornermons_Riolu
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_gamecornermons_Rotom
	compare LASTRESULT 0x6
	if 0x1 _goto EventScript_gamecornermons2_Gible 
    compare LASTRESULT 0x7
	if 0x1 _goto EventScript_gamecornermons2_Larvesta 
    compare LASTRESULT 0x8
    if 0x1 _goto EventScript_gamecornermons2_Deino
    compare LASTRESULT 0x9
    if 0x1 _goto EventScript_gamecornermons2_Goomy 
    compare LASTRESULT 0xA
    if 0x1 _goto EventScript_gamecornermons2_Jangmo
    compare LASTRESULT 0xB
	if 0x1 _goto EventScript_gamecornermons2_Dreepy
	compare LASTRESULT 0xC
	if 0x1 _goto EventScript_gamecornermons2_Floette
	hidemoney 0x35 0x00
	release
	end

EventScript_gamecornermons_Cancel:
    fadescreen 0x1
    fadescreen 0x0
    clearflag 0x90F 
    clearflag 0x913
	release
	end

EventScript_gamecornermons_Cancelhide:
	hidemoney 0x35 0x00
    goto EventScript_gamecornermons_Cancel

EventScript_gamecornermons_Shinyupgrade:
	msgbox gText_gamecornermons_Upgrade 0x5 @Ask for shiny upgrade
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_gamecornermons_Doshiny
	return

EventScript_gamecornermons_Hiddenability:
	msgbox gText_gamecornermons_Haupgrade 0x5 @ask if they want hidden ability
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_gamecornermons_Doha
	return

EventScript_gamecornermons_Doshiny:
	setflag 0x913
	return

EventScript_gamecornermons_Doha:
	setflag 0x90F
	return

EventScript_gamecornermons_Dratini:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons_Text1 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons_Text1 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x93 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotdratini 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Larvitar:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons_Text2 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons_Text2 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0xF6 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotlarvitar 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Beldum:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons_Text3 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons_Text3 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x18E 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotbeldum 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Bagon:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons_Text4 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons_Text4 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x18B 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotbagon 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Riolu:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons_Text5 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons_Text5 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x1F4 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotriolu 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Rotom:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons_Text6 0x6
	msgbox gText_gamecornermons_Itllberotom 0x6
	msgbox gText_gamecornermons_Isitok 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_gamecornermons_Cancelhide
	call EventScript_gamecornermons_Shinyupgrade @has no hidden ability
	msgbox gText_gamecornermons_Text6 0x6
	msgbox gText_gamecornermons_Itllberotom 0x6
	call EventScript_gamecornermons_Checkcorrectrotom
	call EventScript_gamecornermons_Checkpaymentrotom
	givepokemon 0x214 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotrotom 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Honedge:
    fadescreen 0x1
    fadescreen 0x0
    msgbox gText_gamecornermons_Text7 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	msgbox gText_gamecornermons_Text7 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon SPECIES_HONEDGE 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons_Gotriolu 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Gible:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons2_Text1 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons2_Text1 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x1F0 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_Gotgible 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Larvesta:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons2_Text2 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons2_Text2 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x2B1 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_GotLarvesta 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Deino:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons2_Text3 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade @has no hidden ability
	msgbox gText_gamecornermons2_Text3 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x2AE 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_GotDeino 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Goomy:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons2_Text4 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons2_Text4 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x32C 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_GotGoomy 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Jangmo:
    fadescreen 0x1
    setflag 0x200 
    fadescreen 0x0
	msgbox gText_gamecornermons2_Text5 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons2_Text5 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon 0x3E7 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_Gotjangmo 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Floette:
	msgbox gText_gamecornermons2_Text7 0x6
	msgbox gText_gamecornermons2_Itllbefloette 0x6
	msgbox gText_gamecornermons2_Isitok 0x5
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_gamecornermons_Cancelhide
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons2_Text7 0x6
	msgbox gText_gamecornermons2_Itllbefloette 0x6
	call EventScript_gamecornermons2_Checkcorrectfloette
	call EventScript_gamecornermons2_Checkpaymentfloette
	givepokemon 0x350 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_Gotfloette 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons2_Dreepy:
    fadescreen 0x1
    fadescreen 0x0
	msgbox gText_gamecornermons2_Text6 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Shinyupgrade
	call EventScript_gamecornermons_Hiddenability
	msgbox gText_gamecornermons2_Text6 0x6
	msgbox gText_gamecornermons_Itllbe 0x6
	call EventScript_gamecornermons_Checkifcorrect
	call EventScript_gamecornermons_Checkpayment
	givepokemon SPECIES_DREEPY 0x1E 0x0 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_gamecornermons2_Gotjangmo 0x4
	goto EventScript_gamecornermons_Endofscript

EventScript_gamecornermons_Hatext:
	msgbox gText_gamecornermons_Withha 0x6
	return

EventScript_gamecornermons_Shinyupgradetxt:
	msgbox gText_gamecornermons_Shinytxt 0x6
	return

EventScript_gamecornermons_Shinyrotomtxt:
	msgbox gText_gamecornermons_Rotomtxt 0x6
	return

EventScript_gamecornermons_Checkifcorrect:
	checkflag 0x90F
	if 0x1 _call EventScript_gamecornermons_Hatext
	checkflag 0x913
	if 0x1 _call EventScript_gamecornermons_Shinyupgradetxt
	msgbox gText_gamecornermons_Correct 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_gamecornermons_Cancelhide
	return

EventScript_gamecornermons_Checkcorrectrotom:
	checkflag 0x913
	if 0x1 _call EventScript_gamecornermons_Shinyrotomtxt
	msgbox gText_gamecornermons_Correct 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_gamecornermons_Cancelhide
	return

EventScript_gamecornermons2_Checkcorrectfloette:
	checkflag 0x90F
	if 0x1 _call EventScript_gamecornermons_Hatext
	checkflag 0x913
	if 0x1 _call EventScript_gamecornermons2_Shinyfloettetxt
	msgbox gText_gamecornermons2_Correct 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_gamecornermons_Cancelhide
	return

EventScript_gamecornermons2_Checkpaymentfloette:
	checkflag 0x913
	if 0x1 _call EventScript_gamecornermons2_Payshinyfloette
	checkmoney 0xC350 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_gamecornermons_Nomoney
	msgbox gText_gamecornermons2_Wait 0x6
	removemoney 0xC350 0x00
	sound 0x58
	updatemoney 0x35 0x00 0x00
	msgbox gText_gamecornermons2_4 0x6
	checksound
	return

EventScript_gamecornermons2_Shinyfloettetxt:
	msgbox gText_gamecornermons2_Floettetxt 0x6
	return

EventScript_gamecornermons2_Payshinyfloette:
	checkmoney 0x186A0 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_gamecornermons_Nomoney
	msgbox gText_gamecornermons2_Wait 0x6
	removemoney 0xC350 0x00
	return


EventScript_gamecornermons_Endofscript:
	waitfanfare
	closeonkeypress
	@ msgbox gText_giveNickname MSG_YESNO 
	@ compare LASTRESULT YES 
	@ if equal _call givenickname 
	hidemoney 0x35 0x00
	clearflag 0x913
	clearflag 0x90F
	release
	end

@ givenickname: 
@	call 0x81A8C27
@	call 0x81A74EB
@	return

EventScript_gamecornermons_Checkpayment:
	checkflag 0x913
	if 0x1 _call EventScript_gamecornermons_Checkshinypay
	checkmoney 0x186A0 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_gamecornermons_Nomoney
	msgbox gText_gamecornermons_Wait 0x6
	removemoney 0x186A0 0x00
	sound 0x58
	updatemoney 0x35 0x00 0x00
	msgbox gText_gamecornermons_4 0x6
	checksound
	return

EventScript_gamecornermons_Checkpaymentrotom:
	checkflag 0x913
	if 0x1 _call EventScript_gamecornermons_Payshinyrotom
	checkmoney 0xC350 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_gamecornermons_Nomoney
	msgbox gText_gamecornermons_Wait 0x6
	removemoney 0xC350 0x00
	sound 0x58
	updatemoney 0x35 0x00 0x00
	msgbox gText_gamecornermons_4 0x6
	checksound
	return

EventScript_gamecornermons_Payshinyrotom:
	checkmoney 0x186A0 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_gamecornermons_Nomoney
	msgbox gText_gamecornermons_Wait 0x6
	removemoney 0xC350 0x00
	return

EventScript_gamecornermons_Checkshinypay:
	checkmoney 0x30D40 0x00
	compare 0x800D 0x1
	if 0x0 _goto EventScript_gamecornermons_Nomoney
	msgbox gText_gamecornermons_Wait 0x6
	removemoney 0x186A0 0x00
	return

EventScript_gamecornermons_Nomoney:
	msgbox gText_gamecornermons_Poor 0x6
    goto EventScript_gamecornermons_Cancelhide
    end 

