.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_SoulDew_Start
EventScript_SoulDew_Start:
	lock
	faceplayer
	checkflag 0x204
	if 0x1 _goto EventScript_SoulDew_Done
	msgbox gText_SoulDew_1 0x5
	compare 0x800D 0x1
	if 0x1 _goto EventScript_SoulDew_Take
	msgbox gText_SoulDew_2 0x6
	release
	end

EventScript_SoulDew_Done:
	msgbox gText_SoulDew_3 0x6
	release
	end

EventScript_SoulDew_Take:
	giveitem 0xBF 0x1 MSG_OBTAIN
	msgbox gText_SoulDew_3 0x6
	setflag 0x204
	release
	end
