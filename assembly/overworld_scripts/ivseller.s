.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_ivseller_Start
EventScript_ivseller_Start:
	lock
	faceplayer
	textcolor 0x0
	showmoney 0x0 0x00 0x00
	msgbox gText_ivseller_1 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_ivseller_Cancel
	msgbox gText_ivseller_3 0x6 @who wants it?
	hidemoney 0x0 0x0
	goto PickPokemon

PickPokemon:
	setvar 0x8003 0x0
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_ivseller_Cancelnohide
	special2 LASTRESULT 0x147 @check if it@s an egg
	compare LASTRESULT 0x19C
	if 0x1 _goto EventScript_ivseller_Thatsegg
	showmoney 0x35 0x00
	special 0x7C @puts the selected mon in party into buffer
	goto ChooseStat
	end
	
ChooseStat:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_EVSubtracter_HP
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_EVSubtracter_Attack
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_EVSubtracter_Defense
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_EVSubtracter_SpA
	special 0x25
	setvar 0x8006 0x4 @fifth item
	loadpointer 0x0 gText_EVSubtracter_SpDef
	special 0x25
	setvar 0x8006 0x5 @sixth item
	loadpointer 0x0 gText_EVSubtracter_Speed
	special 0x25
	setvar 0x8006 0x6 @7th item
	loadpointer 0x0 gText_EVSubtracter_AllStats
	special 0x25
	preparemsg gText_IVPerfecterPreparemsg_1
	waitmsg
	multichoice 0x0 0x0 0x25 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto PerfectHP
	compare LASTRESULT 0x1
	if 0x1 _goto PerfectAtk
	compare LASTRESULT 0x2
	if 0x1 _goto PerfectDef
	compare LASTRESULT 0x3
	if 0x1 _goto PerfectSpA
	compare LASTRESULT 0x4
	if 0x1 _goto PerfectSpDef
	compare LASTRESULT 0x5
	if 0x1 _goto PerfectSpeed
	compare LASTRESULT 0x6
	if 0x1 _goto PerfectAll
	goto EventScript_ivseller_Cancel
	end
	
CheckMoney:
	checkmoney 0x3A98 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_ivseller_Poor
	return
	
PerfectHP:
	call CheckMoney
	setvar 0x8005 0x0
	special2 LASTRESULT 0x8 
	buffernumber 0x1 LASTRESULT
	msgbox gText_ivseller_4_1 MSG_YESNO
	compare LASTRESULT NO 
	if equal _goto ChooseStat
	setvar 0x8005 0x0
	setvar 0x8006 0x1F @31
	special 0x10
	goto RemoveEnd
	
PerfectAtk:
	call CheckMoney
	setvar 0x8005 0x1
	special2 LASTRESULT 0x8 
	buffernumber 0x1 LASTRESULT
	msgbox gText_ivseller_4_2 MSG_YESNO
	compare LASTRESULT NO 
	if equal _goto ChooseStat
	setvar 0x8005 0x1
	setvar 0x8006 0x1F @31
	special 0x10
	goto RemoveEnd
	
PerfectDef:
	call CheckMoney
	setvar 0x8005 0x2
	special2 LASTRESULT 0x8 
	buffernumber 0x1 LASTRESULT
	msgbox gText_ivseller_4_3 MSG_YESNO
	compare LASTRESULT NO 
	if equal _goto ChooseStat
	setvar 0x8005 0x2
	setvar 0x8006 0x1F @31
	special 0x10
	goto RemoveEnd
	
PerfectSpA:
	call CheckMoney
	setvar 0x8005 0x4
	special2 LASTRESULT 0x8 
	buffernumber 0x1 LASTRESULT
	msgbox gText_ivseller_4_4 MSG_YESNO
	compare LASTRESULT NO 
	if equal _goto ChooseStat
	setvar 0x8005 0x4
	setvar 0x8006 0x1F @31
	special 0x10
	goto RemoveEnd
	
PerfectSpDef:
	call CheckMoney
	setvar 0x8005 0x5
	special2 LASTRESULT 0x8 
	buffernumber 0x1 LASTRESULT
	msgbox gText_ivseller_4_5 MSG_YESNO
	compare LASTRESULT NO 
	if equal _goto ChooseStat
	setvar 0x8005 0x5
	setvar 0x8006 0x1F @31
	special 0x10
	goto RemoveEnd
	
PerfectSpeed:
	call CheckMoney
	setvar 0x8005 0x3
	special2 LASTRESULT 0x8 
	buffernumber 0x1 LASTRESULT
	msgbox gText_ivseller_4_6 MSG_YESNO
	compare LASTRESULT NO 
	if equal _goto ChooseStat
	setvar 0x8005 0x3
	setvar 0x8006 0x1F @31
	special 0x10
	goto RemoveEnd
	
RemoveEnd:
	removemoney 0x3A98 0x00
	sound 0x58
	msgbox gText_ivseller_Wait 0x6
	updatemoney 0x35 0x00 0x00
	msgbox gText_ivseller_Done 0x6
	checksound
	hidemoney 0x35 0x0
	msgbox gText_ivseller_Grind 0x6
	release
	end
	
PerfectAll: 
	checkmoney 0x124F8 0x0
	compare 0x800D 0x1
	if 0x0 _goto EventScript_ivseller_Poor @means player doesnt ahve enuf money
	msgbox gText_ivseller_4 0x6
	msgbox gText_ivseller_5 0x5
	compare LASTRESULT 0x0
	if 0x1 _call EventScript_ivseller_Cancel2
	removemoney 0x124F8 0x00
	call EventScript_ivseller_Giveivs
	sound 0x58
	msgbox gText_ivseller_Wait 0x6
	updatemoney 0x35 0x00 0x00
	msgbox gText_ivseller_Done 0x6
	checksound
	hidemoney 0x35 0x0
	msgbox gText_ivseller_Grind 0x6
	release
	end
	
EventScript_ivseller_Cancel:
	hidemoney 0x0 0x0
    goto EventScript_ivseller_Cancelnohide
	end

EventScript_ivseller_Cancel2:
	hidemoney 0x35 0x0
	goto EventScript_ivseller_Cancelnohide
	end 

EventScript_ivseller_Cancelnohide:
	msgbox gText_ivseller_Op 0x6
	release
	end

EventScript_ivseller_Poor:
	hidemoney 0x0 0x0
	msgbox gText_ivseller_2 0x6
	msgbox gText_ivseller_Op 0x6
	release
	end

EventScript_ivseller_Thatsegg:
	msgbox gText_ivseller_Wtf 0x6
	release
	end

EventScript_ivseller_Giveivs:
	setvar 0x8005 0x0
	setvar 0x8006 0x1F @31
	special 0x10
	setvar 0x8005 0x1
	setvar 0x8006 0x1F @It might be redundant setting 8006 each time but idk how it works so i@ll do it anyway lol
	special 0x10
	setvar 0x8005 0x2
	setvar 0x8006 0x1F
	special 0x10
	setvar 0x8005 0x3
	setvar 0x8006 0x1F
	special 0x10
	setvar 0x8005 0x4
	setvar 0x8006 0x1F
	special 0x10
	setvar 0x8005 0x5
	setvar 0x8006 0x1F
	special 0x10
	return
