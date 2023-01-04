.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_ManaphyEvent_Start
EventScript_ManaphyEvent_Start:
	lock
	faceplayer
	checkflag 0x931
	if 0x1 _goto EventScript_ManaphyEvent_After
	checkflag 0x932
	if 0x1 _goto EventScript_ManaphyEvent_More
	msgbox gText_ManaphyEvent_FirstDialogue 0x6
	setflag 0x932
	release
	end

	
EventScript_ManaphyEvent_More:
	msgbox gText_ManaphyEvent_SecondDialogue 0x6
	checkflag 0x82C
	if 0x0 _goto EventScript_ManaphyEvent_Search
	msgbox gText_ManaphyEvent_Worthy 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_ManaphyEvent_Yes
	msgbox gText_ManaphyEvent_Saidnomsg 0x6
	release
	end

	
EventScript_ManaphyEvent_Search:
	msgbox gText_ManaphyEvent_TryLater 0x6
	release
	end

	
EventScript_ManaphyEvent_Yes:
	countpokemon
	compare 0x800D 0x6
	if 0x1 _goto EventScript_ManaphyEvent_Full
	msgbox gText_ManaphyEvent_Take 0x6
	givepokemon 0x21F 0xA 0xD1 0x0 0x0 0x0
	fanfare 0x101
	msgbox gText_ManaphyEvent_Mana 0x4
	waitfanfare
	closeonkeypress
	msgbox gText_ManaphyEvent_Nick 0x5
	compare LASTRESULT 0x1
	if 0x1 _call EventScript_ManaphyEvent_YesToNick
	msgbox gText_ManaphyEvent_Donemsg 0x6
	setflag 0x931
	release
	end

	
EventScript_ManaphyEvent_YesToNick:
	countpokemon
	subvar LASTRESULT 0x1
	copyvar 0x8004 LASTRESULT
	call 0x81A74EB
	return

	
EventScript_ManaphyEvent_Full:
	msgbox gText_ManaphyEvent_Fullmsg 0x6
	release
	end

	
EventScript_ManaphyEvent_Done:
	msgbox gText_ManaphyEvent_Donemsg 0x6
	release
	end

	
EventScript_ManaphyEvent_After:
	msgbox gText_ManaphyEvent_Final 0x6
	release
	end
