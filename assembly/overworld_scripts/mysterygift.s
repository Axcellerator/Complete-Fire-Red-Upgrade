.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"


.global EventScript_mysterygift_Start
EventScript_mysterygift_Start:
	lock
	faceplayer
	setflag 0x828
	msgbox gText_mysterygift_Msg 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_mysterygift_Yes
	msgbox gText_mysterygift_Msgno 0x6
	release
	end


EventScript_mysterygift_Yes:
	special 0x12C
	waitstate
	loadpointer 0x0 gText_mysterygift_Pass1
	special 0x12D
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_mysterygift_Gift1
	loadpointer 0x0 gText_mysterygift_Pass2
	special 0x12D
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_mysterygift_Gift2
	goto EventScript_mysterygift_WrongPassword
	end



EventScript_mysterygift_WrongPassword:
	msgbox gText_mysterygift_NotValidPassword 0x6
	release
	end
	
EventScript_mysterygift_UsedPassword:
	msgbox gText_mysterygift_UsedPassword 0x6
	release
	end

	@-------------------------------------------------------

	@ Gifts

	@-------------------------------------------------------


EventScript_mysterygift_Gift1:
	checkflag 0x933
	if 0x1 _goto EventScript_mysterygift_UsedPassword
	msgbox gText_mysterygift_ValidPassword 0x6
	setvar 0x8005 0x1
	givepokemon 0x19 0x5 0x0 0x0 0x1 0x0
	fanfare 0x13E
	msgbox gText_mysterygift_ReceivedGift1 0x6
	waitfanfare
	setflag 0x933
	release
	end


EventScript_mysterygift_Gift2:
	checkflag 0x934
	if 0x1 _goto EventScript_mysterygift_UsedPassword
	msgbox gText_mysterygift_ValidPassword 0x6
	setvar 0x8005 0x1
	givepokemon 0x4 0x5 0x0 0x0 0x1 0x0
	fanfare 0x13E
	msgbox gText_mysterygift_ReceivedGift2 0x6
	waitfanfare
	setflag 0x934
	release
	end
