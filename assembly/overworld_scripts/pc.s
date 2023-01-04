.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"

.global EventScript_PC
EventScript_PC:
	special 0x17D
	setvar 0x8004 0x1
	special 0xD6
	sound 0x4
	msgbox gText_Cheat MSG_YESNO
	compare LASTRESULT 0x0
	if equal _goto GoodBoy
	msgbox gText_YouSure MSG_YESNO
	compare LASTRESULT 0x0
	if equal _goto GoodBoy
	msgbox gText_ReallySure MSG_YESNO
	compare LASTRESULT 0x0
	if equal _goto GoodBoy
	msgbox gText_OkayThen MSG_FACE
	msgbox gText_OpenedPC MSG_FACE
	msgbox gText_Bazinga MSG_FACE
	sound 0x3
	callasm 0x80EB9B9
	releaseall
	end
	
GoodBoy:
	msgbox gText_GoodBoy MSG_FACE
	sound 0x3
	callasm 0x80EB9B9
	releaseall
	end
