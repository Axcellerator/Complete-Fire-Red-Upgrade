.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.equ FLAG_MINIMAL_GRINDING_MODE, 0x1032

.global EventScript_NatureChanger
EventScript_NatureChanger:
    lock
    faceplayer 
    showmoney 0x00 0x00 0x00  
    msgbox gText_NatureChanger1 MSG_YESNO 
    compare LASTRESULT YES 
    if 0x0 _goto CancelThis
	checkmoney 0x9C4 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
	hidemoney 0x00 0x00 
	setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto RegCancel 
	showmoney 0x35 0x00 0x00 
    goto FirstList2 
	release 
	end 

FirstList2:
    setvar 0x8000 0x2
    setvar 0x8001 0x6
    copyvar 0x5106 0x8004
    setvar 0x8004 0x0 
    preparemsg gText_NatureChanger2 
    waitmsg
    special 0x158
    waitstate 
    copyvar 0x8004 0x5106  
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
    if 0x1 _goto Mild 
    compare LASTRESULT 0x7
    if 0x1 _goto Naughty
    compare LASTRESULT 0x8
    if 0x1 _goto Rash 
    compare LASTRESULT 0x9
    if 0x1 _goto Lonely
    compare LASTRESULT 0xA
    if 0x1 _goto Brave 
    compare LASTRESULT 0xB 
    if 0x1 _goto Quiet 
    compare LASTRESULT 0xC
    if 0x1 _goto Calm 
    compare LASTRESULT 0xD
    if 0x1 _goto Impish 
    compare LASTRESULT 0xE
    if 0x1 _goto Sassy 
    compare LASTRESULT 0xF 
    if 0x1 _goto Careful 
    compare LASTRESULT 0x10
    if 0x1 _goto Relaxed 
    compare LASTRESULT 0x11
    if 0x1 _goto Bold 
    goto CancelThis 
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
    msgbox gText_NatureChanger4 MSG_NORMAL 
	hidemoney 0x00 0x00
	release 
	end 

EndThisScript: 
	msgbox gText_NatureChanger3 MSG_NORMAL 
	sound 0x58
    removemoney 0x9C4 0x00
    updatemoney 0x35 0x00 0x00
    checksound 
	msgbox gText_NatureChanger4 MSG_NORMAL 
    hidemoney 0x35 0x00
	release 
	end 

NotEnoughMoney:
    msgbox gText_NatureChanger5 MSG_NORMAL 
    hidemoney 0x00 0x00
    release 
    end 

RegCancel:
	release 
	end 
