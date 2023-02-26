.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"


.global EventScript_EVIV_Start
EventScript_EVIV_Start:
	lock
	faceplayer
	textcolor 0x0
	msgbox gText_EVIVWelcome_Msg 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVIV
	goto EventScript_EVIV_Cancel
	end
	
EventScript_EVIV:
	giveitem 0x2DC 0x1 MSG_OBTAIN
	end
	
EventScript_EVIV_Cancel:
	msgbox gText_EVSubtracter_2 0x6
	release
	end
