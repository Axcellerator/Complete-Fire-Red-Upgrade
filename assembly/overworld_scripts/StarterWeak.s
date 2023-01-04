.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_StarterWeak_Start
EventScript_StarterWeak_Start:
	lock
	faceplayer
	checkflag 0x201
	if 0x1 _goto EventScript_StarterWeak_Done
	msgbox gText_StarterWeak_Question 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_StarterWeak_Yes
	msgbox gText_StarterWeak_Saidnomsg 0x6
	release
	end

EventScript_StarterWeak_Yes:
	countpokemon
	compare 0x800D 0x6
	if 0x1 _goto EventScript_StarterWeak_Full
	msgbox gText_StarterWeak_Take 0x6
	compare 0x4031 0x0
	if 0x1 _goto EventScript_StarterWeak_Starter1
	compare 0x4031 0x1
	if 0x1 _goto EventScript_StarterWeak_Starter3
	compare 0x4031 0x2
	if 0x1 _goto EventScript_StarterWeak_Starter2
	release
	end

EventScript_StarterWeak_Starter1:
	givepokemon 0x7 0x5 0xD1 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_StarterWeak_Squirt 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_StarterWeak_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_StarterWeak_YesToNick
	msgbox gText_StarterWeak_Donemsg 0x6
	setflag 0x201
	release
	end

EventScript_StarterWeak_Starter2:
	givepokemon 0x1 0x5 0xCD 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_StarterWeak_Bulba 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_StarterWeak_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_StarterWeak_YesToNick
	msgbox gText_StarterWeak_Donemsg 0x6
	setflag 0x201
	release
	end

EventScript_StarterWeak_Starter3:
	givepokemon 0x4 0x5 0xD7 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_StarterWeak_Char 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_StarterWeak_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_StarterWeak_YesToNick
	msgbox gText_StarterWeak_Donemsg 0x6
	setflag 0x201
	release
	end

EventScript_StarterWeak_YesToNick:
	countpokemon
	subvar LASTRESULT 0x1
	copyvar 0x8004 LASTRESULT
	call 0x81A74EB
	return

EventScript_StarterWeak_Full:
	msgbox gText_StarterWeak_Fullmsg 0x6
	release
	end

EventScript_StarterWeak_Done:
	msgbox gText_StarterWeak_Donemsg 0x6
	release
	end
