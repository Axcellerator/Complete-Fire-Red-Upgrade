.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.equ FLAG_LEVEL_CAP, 0x1034

.global EventScript_LevelCapsFlag
EventScript_LevelCapsFlag:
	lock
	setvar 0x4011 0x1
	msgbox gText_AskLevelCaps MSG_YESNO
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EnableLevelCaps
	sound 0x3
	release
	end
	
EventScript_EnableLevelCaps:
	sound 0x2
	msgbox gText_LevelCapsEnabled MSG_KEEPOPEN
	closeonkeypress
	setflag FLAG_LEVEL_CAP
	release
	end
