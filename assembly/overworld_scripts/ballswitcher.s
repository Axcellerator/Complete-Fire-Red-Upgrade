.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_PokeBallSwitcher
EventScript_PokeBallSwitcher:
	lock 
	faceplayer 
	msgbox gText_SetBalls1 MSG_YESNO 
	compare LASTRESULT NO 
	if equal _goto EventScript_PokeBallSwitcher_Cancel
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_PokeBallSwitcher_Cancel
	goto PokeBallList11 
	end 

PokeBallList11: 
    setvar 0x8000 0x4
    setvar 0x8001 0x6
	copyvar 0x5106 0x8004
    setvar 0x8004 0x0 
    preparemsg gText_PokeBall_Which
	waitmsg
    special 0x158
    waitstate 
	copyvar 0x8004 0x5106
	compare LASTRESULT 0x0
	if 0x1 _goto MasterBall
	compare LASTRESULT 0x1
	if 0x1 _goto UltraBall
	compare LASTRESULT 0x2
	if 0x1 _goto GreatBall
	compare LASTRESULT 0x3
	if 0x1 _goto PokeBall
	compare LASTRESULT 0x4
	if 0x1 _goto SafariBall
	compare LASTRESULT 0x5
	if 0x1 _goto NetBall
	compare LASTRESULT 0x6
	if 0x1 _goto DiveBall
	compare LASTRESULT 0x7
	if 0x1 _goto NestBall
	compare LASTRESULT 0x8
	if 0x1 _goto RepeatBall
	compare LASTRESULT 0x9
	if 0x1 _goto TimerBall
	compare LASTRESULT 0xA
	if 0x1 _goto LuxuryBall
	compare LASTRESULT 0xB
	if 0x1 _goto PremierBall
	compare LASTRESULT 0xC
	if 0x1 _goto DuskBall
	compare LASTRESULT 0xD
	if 0x1 _goto HealBall
	compare LASTRESULT 0xE
	if 0x1 _goto QuickBall
	compare LASTRESULT 0xF
	if 0x1 _goto CherishBall
	compare LASTRESULT 0x10
	if 0x1 _goto ParkBall
	compare LASTRESULT 0x11
	if 0x1 _goto FastBall
	compare LASTRESULT 0x12
	if 0x1 _goto LevelBall
	compare LASTRESULT 0x13
	if 0x1 _goto LureBall
	compare LASTRESULT 0x14
	if 0x1 _goto HeavyBall
	compare LASTRESULT 0x15
	if 0x1 _goto LoveBall
	compare LASTRESULT 0x16
	if 0x1 _goto FriendBall
	compare LASTRESULT 0x17
	if 0x1 _goto MoonBall
	compare LASTRESULT 0x18
	if 0x1 _goto SportBall
	compare LASTRESULT 0x19
	if 0x1 _goto BeastBall
	compare LASTRESULT 0x1A
	if 0x1 _goto DreamBall
	goto EventScript_PokeBallSwitcher_Cancel @means they pressed B, goto previous screen
	end 

MasterBall:
	checkitem ITEM_MASTER_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveMaster
	setvar 0x8005 0x0
	removeitem ITEM_MASTER_BALL	0x1
	goto EndOfPokeBall 

UltraBall:
	checkitem ITEM_ULTRA_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveUltra
	setvar 0x8005 0x1
	removeitem ITEM_ULTRA_BALL 0x1
	goto EndOfPokeBall 

GreatBall:
	checkitem ITEM_GREAT_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveGreat
	setvar 0x8005 0x2
	removeitem ITEM_GREAT_BALL	0x1
	goto EndOfPokeBall

PokeBall:
	checkitem ITEM_POKE_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHavePoke
	setvar 0x8005 0x3
	removeitem ITEM_POKE_BALL 0x1
	goto EndOfPokeBall

SafariBall:
	checkitem ITEM_SAFARI_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveSafari
	setvar 0x8005 0x4
	removeitem ITEM_SAFARI_BALL	0x1
	goto EndOfPokeBall

NetBall:
	checkitem ITEM_NET_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveNet
	setvar 0x8005 0x5
	removeitem ITEM_NET_BALL 0x1
	goto EndOfPokeBall

DiveBall:
	checkitem ITEM_DIVE_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveDive
	setvar 0x8005 0x6
	removeitem ITEM_DIVE_BALL 0x1
	goto EndOfPokeBall

NestBall:
	checkitem ITEM_NEST_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveNest
	setvar 0x8005 0x7
	removeitem ITEM_NEST_BALL 0x1
	goto EndOfPokeBall

RepeatBall:
	checkitem ITEM_REPEAT_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveRepeat
	setvar 0x8005 0x8
	removeitem ITEM_REPEAT_BALL	0x1
	goto EndOfPokeBall

TimerBall:
	checkitem ITEM_TIMER_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveTimer
	setvar 0x8005 0x9
	removeitem ITEM_TIMER_BALL	0x1
	goto EndOfPokeBall

LuxuryBall:
	checkitem ITEM_LUXURY_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveLuxury
	setvar 0x8005 0xA
	removeitem ITEM_LUXURY_BALL	0x1
	goto EndOfPokeBall

PremierBall:
	checkitem ITEM_PREMIER_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHavePremier
	setvar 0x8005 0xB
	removeitem ITEM_PREMIER_BALL 0x1
	goto EndOfPokeBall

DuskBall:
	checkitem ITEM_DUSK_BALL 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveDusk
	setvar 0x8005 0xC
	removeitem ITEM_DUSK_BALL 0x1
	goto EndOfPokeBall

HealBall:
	checkitem 0xF1 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveHeal
	setvar 0x8005 0xD
	removeitem 0xF1 0x1
	goto EndOfPokeBall

QuickBall:
	checkitem 0xF2 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveQuick
	setvar 0x8005 0xE
	removeitem 0xF2	0x1
	goto EndOfPokeBall

CherishBall:
	checkitem 0xEF 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveCherish
	setvar 0x8005 0xF
	removeitem 0xEF 0x1
	goto EndOfPokeBall

ParkBall:
	checkitem 0xFD 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHavePark
	setvar 0x8005 0x10
	removeitem 0xFD 0x1
	goto EndOfPokeBall

FastBall:
	checkitem 0xF3 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveFast
	setvar 0x8005 0x11
	removeitem 0xF3 0x1
	goto EndOfPokeBall

LevelBall:
	checkitem 0xF4 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveLevel
	setvar 0x8005 0x12
	removeitem 0xF4 0x1
	goto EndOfPokeBall

LureBall:
	checkitem 0xF5 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveLure
	setvar 0x8005 0x13
	removeitem 0xF5 0x1
	goto EndOfPokeBall

HeavyBall:
	checkitem 0xF6 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveHeavy
	setvar 0x8005 0x14
	removeitem 0xF6 0x1
	goto EndOfPokeBall

LoveBall:
	checkitem 0xF7 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveLove
	setvar 0x8005 0x15
	removeitem 0xF7 0x1
	goto EndOfPokeBall

FriendBall:
	checkitem 0xF8 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveFriend
	setvar 0x8005 0x16
	removeitem 0xF8	0x1
	goto EndOfPokeBall

MoonBall:
	checkitem 0xF9 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveMoon
	setvar 0x8005 0x17
	removeitem 0xF9 0x1
	goto EndOfPokeBall

SportBall:
	checkitem 0xFA 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveSport
	setvar 0x8005 0x18
	removeitem 0xFA 0x1
	goto EndOfPokeBall

BeastBall:
	checkitem 0xFB 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveBeast
	setvar 0x8005 0x19
	removeitem 0xFB 0x1
	goto EndOfPokeBall

DreamBall:
	checkitem 0xFC 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHaveDream
	setvar 0x8005 0x1A
	removeitem 0xFC 0x1
	goto EndOfPokeBall

EndOfPokeBall:
	special 0x14 
	msgbox gText_POkeBall_Done MSG_NORMAL 
	release 
	end 

EventScript_PokeBallSwitcher_Cancel:
	release 
	end 
	
YouDontHaveMaster:
    msgbox gText_Not_have_master MSG_FACE
    release
    end
	
YouDontHaveUltra:
    msgbox gText_Not_have_ultra MSG_FACE
    release
    end
	
YouDontHaveGreat:
    msgbox gText_Not_have_great MSG_FACE
    release
    end
	
YouDontHavePoke:
    msgbox gText_Not_have_poke MSG_FACE
    release
    end
	
YouDontHaveSafari:
    msgbox gText_Not_have_safari MSG_FACE
    release
    end
	
YouDontHaveNet:
    msgbox gText_Not_have_net MSG_FACE
    release
    end
	
YouDontHaveDive:
    msgbox gText_Not_have_dive MSG_FACE
    release
    end
	
YouDontHaveNest:
    msgbox gText_Not_have_nest MSG_FACE
    release
    end
	
YouDontHaveRepeat:
    msgbox gText_Not_have_repeat MSG_FACE
    release
    end
	
YouDontHaveTimer:
    msgbox gText_Not_have_timer MSG_FACE
    release
    end
	
YouDontHaveLuxury:
    msgbox gText_Not_have_luxury MSG_FACE
    release
    end
	
YouDontHavePremier:
    msgbox gText_Not_have_premier MSG_FACE
    release
    end
	
YouDontHaveDusk:
    msgbox gText_Not_have_dusk MSG_FACE
    release
    end
	
YouDontHaveHeal:
    msgbox gText_Not_have_heal MSG_FACE
    release
    end
	
YouDontHaveQuick:
    msgbox gText_Not_have_quick MSG_FACE
    release
    end
	
YouDontHaveCherish:
    msgbox gText_Not_have_cherish MSG_FACE
    release
    end
	
YouDontHavePark:
    msgbox gText_Not_have_park MSG_FACE
    release
    end
	
YouDontHaveFast:
    msgbox gText_Not_have_fast MSG_FACE
    release
    end
	
YouDontHaveLevel:
    msgbox gText_Not_have_level MSG_FACE
    release
    end
	
YouDontHaveLure:
    msgbox gText_Not_have_lure MSG_FACE
    release
    end
	
YouDontHaveHeavy:
    msgbox gText_Not_have_heavy MSG_FACE
    release
    end
	
YouDontHaveLove:
    msgbox gText_Not_have_love MSG_FACE
    release
    end
	
YouDontHaveFriend:
    msgbox gText_Not_have_friend MSG_FACE
    release
    end
	
YouDontHaveMoon:
    msgbox gText_Not_have_moon MSG_FACE
    release
    end
	
YouDontHaveSport:
    msgbox gText_Not_have_sport MSG_FACE
    release
    end
	
YouDontHaveBeast:
    msgbox gText_Not_have_beast MSG_FACE
    release
    end
	
YouDontHaveDream:
    msgbox gText_Not_have_dream MSG_FACE
    release
    end
	