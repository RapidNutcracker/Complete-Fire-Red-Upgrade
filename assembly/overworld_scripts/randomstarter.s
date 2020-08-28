.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_Random_StarterEgg
EventScript_Random_StarterEgg:
    lock
    faceplayer
    msgbox gText_RandomEgg_1 MSG_FACE
    checkitem 0x30 0x1 
    compare 0x800D 0x1
    if greaterorequal _goto YouHaveShit @red
    checkitem 0x31 0x1 @blue i think
    compare 0x800D 0x1
    if greaterorequal _goto YouHaveShit 
    checkitem 0x33 0x1 
    compare 0x800D 0x1
    if greaterorequal _goto YouHaveShit 
    release
    end

NahImGood:
    release
    end

NahImGood2:
    msgbox gText_RandomEgg_AwOkayThen MSG_FACE
    release
    end

YouHaveShit:
    msgbox gText_RandomEgg_2 MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood
    goto YouHaveShit2
    end

YouHaveShit2:
    setvar 0x8006 0x0
    loadpointer 0x0 gText_RandomEgg_Red
    special 0x25 
    setvar 0x8006 0x1 
    loadpointer 0x0 gText_RandomEgg_Blue 
    special 0x25 
    setvar 0x8006 0x2
    loadpointer 0x0 gText_RandomEgg_Green 
    special 0x25
    setvar 0x8006 0x3
    loadpointer 0x0 gText_RandomEgg_LearnMore 
    special 0x25 
    preparemsg gText_RandomEgg_WhichShard 
    waitmsg
    multichoice 0x0 0x0 0x22 0x0 
    compare LASTRESULT 0x0
    if 0x1 _goto GiveRedStarter 
    compare LASTRESULT 0x1
    if 0x1 _goto GiveBlueStarter 
    compare LASTRESULT 0x2
    if 0x1 _goto GiveGreenStarter 
    compare LASTRESULT 0x3 
    if 0x1 _goto LearnMoreStuff
    release
    end

LearnMoreStuff:
    msgbox gText_RandomEgg_LearnMoreMsg MSG_FACE
    goto YouHaveShit2
    end 


GiveRedStarter:
    checkitem 0x30 0x1 
    compare 0x800D 0x1
    if lessthan _goto YouDontHave
    msgbox gText_RandomEgg_GiveRedMsg MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood2
    special2 LASTRESULT 0x83
    compare LASTRESULT 0x6
    if notequal _goto Receiveredegg  @if we have a slot open 
    msgbox gText_RandomEgg_NoRoom MSG_FACE
    release 
    end

GiveBlueStarter:
    checkitem 0x31 0x1 
    compare 0x800D 0x1
    if lessthan _goto YouDontHave
    msgbox gText_RandomEgg_GiveBlueMsg MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood2
    special2 LASTRESULT 0x83
    compare LASTRESULT 0x6
    if notequal _goto Receiveblueegg  @if we have a slot open 
    msgbox gText_RandomEgg_NoRoom MSG_FACE
    release 
    end

GiveGreenStarter:
    checkitem 0x33 0x1 
    compare 0x800D 0x1
    if lessthan _goto YouDontHave
    msgbox gText_RandomEgg_GiveGreenMsg MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood2
    special2 LASTRESULT 0x83
    compare LASTRESULT 0x6
    if notequal _goto Receivegreenegg  @if we have a slot open 
    msgbox gText_RandomEgg_NoRoom MSG_FACE
    release 
    end

YouDontHave:
    msgbox gText_RandomEgg_YouDontHave MSG_FACE 
    release 
    end

Receiveredegg:
    removeitem 0x30 0x1
    random 0x6
    compare 0x800D 0x0
    if equal _goto Cyndaquil
    compare 0x800D 0x1 
    if equal _goto Chimchar
    compare 0x800D 0x2
    if equal _goto Tepig
    compare 0x800D 0x3
    if equal _goto Fennekin
    compare 0x800D 0x4
    if equal _goto Scorbunny 
    @If we got here that means it rolled 5 for Litten
    call EggMessageStuff
    giveegg 0x3AE @Litten
    release
    end

Receiveblueegg:
    removeitem 0x31 0x1
    random 0x5
    compare 0x800D 0x0
    if equal _goto Totodile
    compare 0x800D 0x1 
    if equal _goto Piplup
    compare 0x800D 0x2 
    if equal _goto Oshawott
    compare 0x800D 0x3 
    if equal _goto Sobble 
    call EggMessageStuff @if we get here that means we rolled 4 for popplio
    giveegg 0x3B1
    release
    end

Receivegreenegg:
    removeitem 0x33 0x1
    random 0x5
    compare 0x800D 0x0
    if equal _goto Chikorita
    compare 0x800D 0x1
    if equal _goto Turtwig
    compare 0x800D 0x2
    if equal _goto Chespin
    compare 0x800D 0x3
    if equal _goto Grookey 
    call EggMessageStuff @if we get here that means we rolled 4 for dartrix
    giveegg 0x3AB
    release
    end

Cyndaquil:
    call EggMessageStuff
    giveegg 0x9B
    release
    end

Totodile:
    call EggMessageStuff
    giveegg 0x9E
    release
    end 

Chikorita:
    call EggMessageStuff
    giveegg 0x98
    release
    end

Grookey:
    call EggMessageStuff 
    giveegg 0x44E
    release 
    end 

Scorbunny:
    call EggMessageStuff 
    giveegg 0x451
    release 
    end 

Sobble:
    call EggMessageStuff 
    giveegg 0x454
    release 
    end 

Piplup:
    call EggMessageStuff
    giveegg 0x1BE
    release
    end

Chimchar:
    call EggMessageStuff
    giveegg 0x1BB
    release
    end

Turtwig:
    call EggMessageStuff
    giveegg 0x1B8
    release
    end

Tepig:
    call EggMessageStuff
    giveegg 0x227
    release
    end

Oshawott:
    call EggMessageStuff
    giveegg 0x22A
    release
    end

Fennekin:
    call EggMessageStuff
    giveegg 0x2F9
    release
    end 

Chespin:
    call EggMessageStuff
    giveegg 0x2F6 
    release 
    end 

EggMessageStuff:
    msgbox gText_RandomEgg_GiveShard MSG_FACE
    msgbox gText_RandomEgg_ThankYou MSG_FACE
    fanfare 0x101
    msgbox gText_RandomEgg_ReceivedEgg MSG_KEEPOPEN
    waitfanfare
    waitkeypress
    return

