.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_EGGMOVETUTOR_Start	
EventScript_EGGMOVETUTOR_Start:
	setflag 0x917
	checkflag 0x1
	if 0x1 _goto EventScript_EGGMOVETUTOR_0X80045B
	setflag 0x1
	msgbox gText_EGGMOVETUTOR_1 MSG_FACE
	goto EventScript_EGGMOVETUTOR_0X80045B

	
EventScript_EGGMOVETUTOR_0X80045B:
	msgbox gText_EGGMOVETUTOR_2 MSG_YESNO
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EGGMOVETUTOR_0X8004D2
	goto EventScript_EGGMOVETUTOR_0X800474

	
EventScript_EGGMOVETUTOR_0X8004D2:
	msgbox gText_EGGMOVETUTOR_3 MSG_FACE
	clearflag 0x917
	release
	end

	
EventScript_EGGMOVETUTOR_0X800474:
	msgbox gText_EGGMOVETUTOR_4 MSG_FACE
	special 0xDB
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_EGGMOVETUTOR_0X8004D2
	special 0x148
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EGGMOVETUTOR_0X8004B6
	compare 0x8005 0x0
	if 0x1 _goto EventScript_EGGMOVETUTOR_0X8004C4
	msgbox gText_EGGMOVETUTOR_5 MSG_FACE
	special 0xE0
	waitstate
	goto EventScript_EGGMOVETUTOR_0X8004D2

	
EventScript_EGGMOVETUTOR_0X8004B6:
	msgbox gText_EGGMOVETUTOR_6 MSG_FACE
	goto EventScript_EGGMOVETUTOR_0X800474

	
EventScript_EGGMOVETUTOR_0X8004C4:
	msgbox gText_EGGMOVETUTOR_7 MSG_FACE
	goto EventScript_EGGMOVETUTOR_0X800474
