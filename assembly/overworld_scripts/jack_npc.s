.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_jack_npc_Start
EventScript_jack_npc_Start:
	lock
	faceplayer
	setvar 0x8006 0x0
	loadpointer 0x0 gText_jack_npc_Choice1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 gText_jack_npc_Choice2
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 gText_jack_npc_Choice3
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 gText_jack_npc_Choice4
	special 0x25
	preparemsg gText_jack_npc_N1
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_jack_npc_Namerater
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_jack_npc_Movetutor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_jack_npc_Movedeleter
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_jack_npc_Cancelled
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_jack_npc_Cancelled

EventScript_jack_npc_Repeat:
	setvar 0x8006 0x0
	loadpointer 0x0 gText_jack_npc_Choice1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 gText_jack_npc_Choice2
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 gText_jack_npc_Choice3
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 gText_jack_npc_Choice4
	special 0x25
	preparemsg gText_jack_npc_N2
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_jack_npc_Namerater
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_jack_npc_Movetutor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_jack_npc_Movedeleter
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_jack_npc_Cancelled
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_jack_npc_Cancelled

EventScript_jack_npc_Namerater:
	msgbox gText_jack_npc_Nr1 0x4
	special 0x9F
	waitstate
	compare 0x8004 0x6
	if 0x0 _goto EventScript_jack_npc_Nameratercont
	compare 0x8004 0x6
	if 0x4 _goto EventScript_jack_npc_Repeat
	end

EventScript_jack_npc_Nameratercont:
	special2 0x800D 0x147
	compare 0x800D 0x19C
	if 0x1 _goto EventScript_jack_npc_Namerateregg
	special 0x7C
	special 0x7D
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Nameratertraded
	special2 0x800D 0x150
	special 0x7C
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Nameratertraded
	msgbox gText_jack_npc_Nr4 0x5
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Nameraterchange
	compare 0x800D 0x0
	if 0x1 _goto EventScript_jack_npc_Repeat
	end

EventScript_jack_npc_Namerateregg:
	msgbox gText_jack_npc_Nr2 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Nameratertraded:
	msgbox gText_jack_npc_Nr3 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Nameraterchange:
	msgbox gText_jack_npc_Nr5 0x4
	call EventScript_jack_npc_Changingname
	special2 0x800D 0x7B
	special 0x7C
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Nameraterfinish
	msgbox gText_jack_npc_Nr6 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Changingname:
	fadescreen 0x1
	special 0x9E
	waitstate
	return

EventScript_jack_npc_Nameraterfinish:
	msgbox gText_jack_npc_Nr7 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Movetutor:
	msgbox gText_jack_npc_Mt1 0x4
	special 0xDB
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_jack_npc_Repeat
	special 0x148
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Movetutoregg
	compare 0x8005 0x0
	if 0x1 _goto EventScript_jack_npc_Nomoves
	goto EventScript_jack_npc_Movetutorcont

EventScript_jack_npc_Movetutoregg:
	msgbox gText_jack_npc_Mt2 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Nomoves:
	msgbox gText_jack_npc_Mt3 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Movetutorcont:
	msgbox gText_jack_npc_Mt4 0x4
	special 0xE0
	waitstate
	compare 0x8004 0x0
	if 0x1 _goto EventScript_jack_npc_Repeat
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Movedeleter:
	msgbox gText_jack_npc_Md1 0x4
	special 0x9F
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_jack_npc_Repeat
	special 0x148
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Movedeleteregg
	special 0xDF
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Onemove
	msgbox gText_jack_npc_Md4 0x4
	fadescreen 0x1
	special 0xDC
	fadescreen 0x0
	compare 0x8005 0x4
	if 0x1 _goto EventScript_jack_npc_Repeat
	special 0xDE
	msgbox gText_jack_npc_Md5 0x5
	compare 0x800D 0x1
	if 0x1 _goto EventScript_jack_npc_Movedeletercont
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Movedeleteregg:
	msgbox gText_jack_npc_Md2 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Onemove:
	special 0xDE
	msgbox gText_jack_npc_Md3 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Movedeletercont:
	special 0xDD
	fanfare 0x10E
	waitfanfare
	msgbox gText_jack_npc_Md6 0x4
	goto EventScript_jack_npc_Repeat

EventScript_jack_npc_Cancelled:
	msgbox gText_jack_npc_End 0x6
	release
	end
