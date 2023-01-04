.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Tickets_Start
EventScript_Tickets_Start:
	lock
	faceplayer
	checkflag 0x1201
	if 0x1 _goto EventScript_Tickets_Nomore
	msgbox gText_Tickets_1 0x2
	giveitem 0x172 0x1 MSG_OBTAIN
	giveitem 0x173 0x1 MSG_OBTAIN
	setflag 0x1201
	setflag 0x84A
	setflag 0x84B
	release
	end

EventScript_Tickets_Nomore:
	msgbox gText_Tickets_Msg 0x2
	release
	end
