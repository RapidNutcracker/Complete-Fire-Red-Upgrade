.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_NatureChanger
EventScript_NatureChanger:
    lock
    faceplayer
	showmoney 0x00 0x00 0x00  
    msgbox gText_NatureChanger1 MSG_YESNO 
    compare LASTRESULT YES 
    if 0x0 _goto CancelThis2 
	checkmoney 0x1F4 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
	hidemoney 0x00 0x00 
	setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto RegCancel 
	showmoney 0x35 0x00 0x00 
    goto FirstList 
	release 
	end 

FirstList: 
	setvar 0x8006 0x0
    loadpointer 0x0 gText_Adamant
    special 0x25 
    setvar 0x8006 0x1 
    loadpointer 0x0 gText_Modest
    special 0x25 
    setvar 0x8006 0x2
    loadpointer 0x0 gText_Timid
    special 0x25
    setvar 0x8006 0x3
    loadpointer 0x0 gText_Jolly 
    special 0x25 
    setvar 0x8006 0x4 
    loadpointer 0x0 gText_Hasty
    special 0x25
    setvar 0x8006 0x5
    loadpointer 0x0 gText_Naive
    special 0x25
    setvar 0x8006 0x6
    loadpointer 0x0 gText_ViewMore 
    special 0x25 
    preparemsg gText_NatureChanger2 
    waitmsg
    multichoice 0x0 0x0 0x25 0x0 
    compare LASTRESULT 0x0
    if 0x1 _goto Adamant
    compare LASTRESULT 0x1
    if 0x1 _goto Modest 
    compare LASTRESULT 0x2
    if 0x1 _goto Timid 
    compare LASTRESULT 0x3 
    if 0x1 _goto Jolly 
    compare LASTRESULT 0x4
    if 0x1 _goto Hasty 
    compare LASTRESULT 0x5 
    if 0x1 _goto Naive 
    compare LASTRESULT 0x6
    if 0x1 _goto SecondList
	goto CancelThis 
	end 


SecondList:
    setvar 0x8006 0x0
    loadpointer 0x0 gText_Mild
    special 0x25 
    setvar 0x8006 0x1 
    loadpointer 0x0 gText_Naughty
    special 0x25 
    setvar 0x8006 0x2
    loadpointer 0x0 gText_Rash
    special 0x25
    setvar 0x8006 0x3
    loadpointer 0x0 gText_Lonely
    special 0x25 
    setvar 0x8006 0x4 
    loadpointer 0x0 gText_Brave 
    special 0x25
    setvar 0x8006 0x5
    loadpointer 0x0 gText_Quiet 
    special 0x25 
	setvar 0x8006 0x6
    loadpointer 0x0 gText_ViewMore 
    special 0x25 
    preparemsg gText_NatureChanger2 
    waitmsg
    multichoice 0x0 0x0 0x25 0x0 
    compare LASTRESULT 0x0
    if 0x1 _goto Mild 
    compare LASTRESULT 0x1
    if 0x1 _goto Naughty
    compare LASTRESULT 0x2
    if 0x1 _goto Rash 
    compare LASTRESULT 0x3 
    if 0x1 _goto Lonely
    compare LASTRESULT 0x4
    if 0x1 _goto Brave 
    compare LASTRESULT 0x5 
    if 0x1 _goto Quiet 
	compare LASTRESULT 0x6
	if 0x1 _goto ThirdList
    goto FirstList 
    end 
	
ThirdList:
	setvar 0x8006 0x0
    loadpointer 0x0 gText_Calm
    special 0x25 
    setvar 0x8006 0x1 
    loadpointer 0x0 gText_Impish
    special 0x25 
    setvar 0x8006 0x2
    loadpointer 0x0 gText_Sassy
    special 0x25
    setvar 0x8006 0x3
    loadpointer 0x0 gText_Careful
    special 0x25 
    setvar 0x8006 0x4 
    loadpointer 0x0 gText_Relaxed 
    special 0x25
    setvar 0x8006 0x5
    loadpointer 0x0 gText_Bold 
    special 0x25 
	setvar 0x8006 0x6
    loadpointer 0x0 gText_Exit 
    special 0x25 
    preparemsg gText_NatureChanger2 
    waitmsg
    multichoice 0x0 0x0 0x25 0x0 
    compare LASTRESULT 0x0
    if 0x1 _goto Calm 
    compare LASTRESULT 0x1
    if 0x1 _goto Impish 
    compare LASTRESULT 0x2
    if 0x1 _goto Sassy 
    compare LASTRESULT 0x3 
    if 0x1 _goto Careful 
    compare LASTRESULT 0x4
    if 0x1 _goto Relaxed 
    compare LASTRESULT 0x5 
    if 0x1 _goto Bold 
	compare LASTRESULT 0x6
	if 0x1 _goto CancelThis 
    goto SecondList 
    end 

Adamant: 
    callasm SwitchMonNatureAdamant + 1
    goto EndThisScript 

Lonely:
	callasm SwitchMonNatureLonely + 1
    goto EndThisScript 

Brave:
	callasm SwitchMonNatureBrave + 1
    goto EndThisScript 

Naughty:
	callasm SwitchMonNatureNaughty + 1
    goto EndThisScript 

Bold:
	callasm SwitchMonNatureBold + 1
    goto EndThisScript 

Relaxed:
	callasm SwitchMonNatureRelaxed + 1
    goto EndThisScript 

Impish:
	callasm SwitchMonNatureImpish + 1
    goto EndThisScript 

Timid:
	callasm SwitchMonNatureTimid + 1
    goto EndThisScript 

Hasty:
	callasm SwitchMonNatureHasty + 1
    goto EndThisScript 

Jolly:
	callasm SwitchMonNatureJolly + 1
    goto EndThisScript 

Naive:
	callasm SwitchMonNatureNaive + 1
    goto EndThisScript 

Modest:
	callasm SwitchMonNatureModest + 1
    goto EndThisScript 

Mild:
	callasm SwitchMonNatureMild + 1
    goto EndThisScript 

Quiet:
	callasm SwitchMonNatureQuiet + 1
    goto EndThisScript 

Rash:
	callasm SwitchMonNatureRash + 1
    goto EndThisScript 

Calm:
	callasm SwitchMonNatureCalm + 1
    goto EndThisScript 

Sassy:
	callasm SwitchMonNatureSassy + 1
    goto EndThisScript 

Careful:
	callasm SwitchMonNatureCareful + 1
    goto EndThisScript 

CancelThis:
	hidemoney 0x35 0x00 
	release 
	end 

CancelThis2:
	hidemoney 0x00 0x00
	release 
	end 

EndThisScript: 
	msgbox gText_NatureChanger3 MSG_NORMAL 
	sound 0x58
    removemoney 0x1F4 0x00
    updatemoney 0x35 0x00 0x00
    checksound 
    hidemoney 0x35 0x00
	msgbox gText_NatureChanger4 MSG_NORMAL 
	release 
	end 

NotEnoughMoney:
    msgbox gText_Saffron_ManyTutors2 MSG_NORMAL 
    hidemoney 0x00 0x00
    release 
    end 

RegCancel:
	release 
	end 
