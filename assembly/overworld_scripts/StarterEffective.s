.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_StarterEffective_Start
EventScript_StarterEffective_Start:
	lock
	faceplayer
	checkflag 0x202
	if 0x1 _goto EventScript_StarterEffective_Done
	msgbox gText_StarterEffective_Question 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_StarterEffective_Yes
	msgbox gText_StarterEffective_Saidnomsg 0x6
	release
	end

EventScript_StarterEffective_Yes:
	countpokemon
	compare 0x800D 0x6
	if 0x1 _goto EventScript_StarterEffective_Full
	msgbox gText_StarterEffective_Take 0x6
	compare 0x4031 0x0
	if 0x1 _goto EventScript_StarterEffective_Starter3
	compare 0x4031 0x1
	if 0x1 _goto EventScript_StarterEffective_Starter2
	compare 0x4031 0x2
	if 0x1 _goto EventScript_StarterEffective_Starter1
	release
	end

EventScript_StarterEffective_Starter1:
	givepokemon 0x7 0x5 0xD1 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_StarterEffective_Squirt 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_StarterEffective_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_StarterEffective_YesToNick
	msgbox gText_StarterEffective_Donemsg 0x6
	setflag 0x202
	release
	end

EventScript_StarterEffective_Starter2:
	givepokemon 0x1 0x5 0xCD 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_StarterEffective_Bulba 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_StarterEffective_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_StarterEffective_YesToNick
	msgbox gText_StarterEffective_Donemsg 0x6
	setflag 0x202
	release
	end

EventScript_StarterEffective_Starter3:
	givepokemon 0x4 0x5 0xD7 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_StarterEffective_Char 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_StarterEffective_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_StarterEffective_YesToNick
	msgbox gText_StarterEffective_Donemsg 0x6
	setflag 0x202
	release
	end

EventScript_StarterEffective_YesToNick:
	countpokemon
	subvar LASTRESULT 0x1
	copyvar 0x8004 LASTRESULT
	call 0x81A74EB
	return

EventScript_StarterEffective_Full:
	msgbox gText_StarterEffective_Fullmsg 0x6
	release
	end

EventScript_StarterEffective_Done:
	msgbox gText_StarterEffective_Donemsg 0x6
	release
	end
