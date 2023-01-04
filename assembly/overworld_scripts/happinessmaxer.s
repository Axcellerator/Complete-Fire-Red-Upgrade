.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"


.global EventScript_HappinessMaxer_Start
EventScript_HappinessMaxer_Start:
	lock
	faceplayer
	textcolor 0x0
	showmoney 0x13 0x00 0x00
	checkflag 0x936
	if 0x0 _call EventScript_HappinessMaxer_FirstTime
	msgbox gText_HappinessMaxer_Msg 0X5
	compare LASTRESULT 0x1
	if 0x0 _goto EventScript_HappinessMaxer_Cancel
	call CheckMoney
	msgbox gText_HappinessMaxer_Msg1 0x6
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_HappinessMaxer_Cancel
	special 0x7C @puts the selected mon in party into buffer
	call EventScript_HappinessMaxer_CheckMaxed
	setvar 0x8005 0x00FF
	special 0x13
	removemoney 0x5DC 0x00
	sound 0x58
	msgbox gText_HappinessMaxer_Relaxed MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	end
	
EventScript_HappinessMaxer_FirstTime:
	msgbox gText_HappinessMaxer_FirstMsg 0x6
	setflag 0x936
	return
	
CheckMoney:
	checkmoney 0x5DC 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_HappinessMaxer_NoMoney
	return
	
EventScript_HappinessMaxer_NoMoney:
	msgbox gText_HappinessMaxer_Poor 0x6
	hidemoney 0x0 0x0
	release
	end
	
EventScript_HappinessMaxer_Cancel:
	hidemoney 0x0 0x0
	release
	end
	
EventScript_HappinessMaxer_CheckMaxed:
	special2 LASTRESULT 0xD
	compare LASTRESULT 255
	if 0x1 _goto EventScript_HappinessMaxer_NotTired
	return

EventScript_HappinessMaxer_NotTired:
	msgbox gText_HappinessMaxer_NotTired 0x6
	release
	end
