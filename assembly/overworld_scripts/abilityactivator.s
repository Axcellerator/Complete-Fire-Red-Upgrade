.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Ability_Activator
EventScript_Ability_Activator:
    lock
    faceplayer
    msgbox gText_Saffron_Nerd MSG_YESNO
    compare LASTRESULT 0
    if equal _goto NahImGood
    checkitem ITEM_BOTTLE_CAP 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHave
    setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto NahImGood
	callasm CheckChosenMonHiddenAbility + 1
	compare LASTRESULT 0x0 
    if equal _goto DontHaveHidden
	msgbox gText_AbilityCapsuleOfferChange MSG_YESNO 
	compare LASTRESULT NO 
	if equal _goto NahImGood
    callasm SetChosenMonHiddenAbility + 1
    msgbox gText_Saffron_NerdGiveItem2 MSG_FACE
    msgbox gText_Saffron_NerdAfter MSG_FACE
    removeitem ITEM_BOTTLE_CAP 0x1
    release
    end

NahImGood:
    release
    end

YouDontHave:
    msgbox gText_Saffron_NerdReject MSG_FACE
    release
    end

DontHaveHidden: 
    msgbox gText_SaffronNerd_NoHidden MSG_FACE 
    release 
    end 
	