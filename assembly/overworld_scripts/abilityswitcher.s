.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_ChangeAbilityStuff
EventScript_ChangeAbilityStuff:
    lock
    faceplayer
    msgbox gText_ICanChangeAbility MSG_YESNO
    compare LASTRESULT NO
    if equal _goto End
	checkitem ITEM_HEART_SCALE 0x1
    compare 0x800D 0x1
    if lessthan _goto YouDontHave
    msgbox gText_WhichAbilityDoISwap MSG_NORMAL
    setvar 0x8003 0x0 
    special 0x9F 
    waitstate 
    compare 0x8004 0x6
    if greaterorequal _goto End
     callasm SwitchChosenMonAbility + 1
    compare LASTRESULT 0x1
    if equal _goto ItsHidden
    compare LASTRESULT 0x2 
    if equal _goto NoDiff
	msgbox gText_Saffron_NerdGiveItem MSG_FACE
    msgbox gText_Saffron_NerdAfter MSG_FACE
    removeitem ITEM_HEART_SCALE 0x1
    release
    end

ItsHidden:
    msgbox gText_Saffron_Nerd2_Hidden MSG_FACE 
    release 
    end 

NoDiff:
    msgbox gText_SaffronNerd2_NoDiff MSG_FACE 
    release 
    end
	
End:
    msgbox gText_Bye MSG_FACE 
    release 
    end
	
YouDontHave:
    msgbox gText_Not_have MSG_FACE
    release
    end
	