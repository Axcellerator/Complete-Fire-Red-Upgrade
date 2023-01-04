.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.equ FLAG_LEVEL_CAP, 0x1034

.global EventScript_LevelCapsPerson
EventScript_LevelCapsPerson:
	lock
	faceplayer
	checkflag FLAG_LEVEL_CAP
	if 0x1 _goto EventScript_LevelCapsDisabler
	goto EventScript_LevelCapsEnabler
	release
	end
	
EventScript_LevelCapsDisabler:
	msgbox gText_LevelCapsDisable MSG_YESNO
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_LevelCapsDisable
	msgbox gText_ByeThen 0x6
	release
	end
	
EventScript_LevelCapsEnabler:
	msgbox gText_LevelCapsEnable MSG_YESNO
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_LevelCapsEnable
	msgbox gText_ByeThen 0x6
	release
	end
	
EventScript_LevelCapsDisable:
	clearflag FLAG_LEVEL_CAP
	msgbox gText_LevelCapsDisabled 0x6
	release
	end
	
EventScript_LevelCapsEnable:
	setflag FLAG_LEVEL_CAP
	msgbox gText_LevelCapsEnabled 0x6
	release
	end
	