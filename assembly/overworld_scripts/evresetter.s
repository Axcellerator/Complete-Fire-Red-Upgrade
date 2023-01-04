.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"


.global EventScript_EVSubtracter_Start
EventScript_EVSubtracter_Start:
	lock
	faceplayer
	textcolor 0x0
	msgbox gText_EVSubtracter_Msg 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_MinusEVs
	goto EventScript_EVSubtracter_Cancel
	end

EventScript_EVSubtracter_MinusEVs:
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_EVSubtracter_Cancel
	special 0x7C @puts the selected mon in party into buffer
	goto EventScript_EVSubtracter_CheckEVs
	
EventScript_EVSubtracter_CheckEVs:
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
	preparemsg gText_EVSubtracter_1
	waitmsg
	multichoice 0x0 0x0 0x25 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EVSubtracter_ReduceHP
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_ReduceAttack
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_EVSubtracter_ReduceDef
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_EVSubtracter_ReduceSpA
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_EVSubtracter_ReduceSpD
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_EVSubtracter_ReduceSpeed
	compare LASTRESULT 0x6
	if 0x1 _goto EventScript_EVSubtracter_ReduceAllEVs
	goto EventScript_EVSubtracter_MinusEVs @means they pressed B, goto previous screen
	end

EventScript_EVSubtracter_Cancel:
	msgbox gText_EVSubtracter_2 0x6
	release
	end


EventScript_EVSubtracter_ReduceHP:
	setvar 0x8005 0x0
	msgbox gText_EVSubtracter_HP 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceAttack:
	setvar 0x8005 0x1
	msgbox gText_EVSubtracter_Attack 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceDef:
	setvar 0x8005 0x2
	msgbox gText_EVSubtracter_Defense 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceSpA:
	setvar 0x8005 0x4
	msgbox gText_EVSubtracter_SpA 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceSpD:
	setvar 0x8005 0x5
	msgbox gText_EVSubtracter_SpDef 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceSpeed:
	setvar 0x8005 0x3
	msgbox gText_EVSubtracter_Speed 0x6
	goto EventScript_EVSubtracter_Statmultichoice

EventScript_EVSubtracter_ReduceAllEVs:
	msgbox gText_EVSubtracter_DoAll MSG_YESNO 
	compare LASTRESULT YES 
	if notequal _goto EventScript_EVSubtracter_CheckEVs
	setvar 0x8005 0x0
	setvar 0x8006 0x1FC
	special 0xF
	setvar 0x8005 0x1 
	setvar 0x8006 0x1FC
	special 0xF
	setvar 0x8005 0x2
	setvar 0x8006 0x1FC
	special 0xF
	setvar 0x8005 0x3 
	setvar 0x8006 0x1FC
	special 0xF
	setvar 0x8005 0x4 
	setvar 0x8006 0x1FC
	special 0xF
	setvar 0x8005 0x5 
	setvar 0x8006 0x1FC
	special 0xF
	msgbox gText_EVSubtracter_DoAllDone MSG_NORMAL 
	goto EventScript_EVSubtracter_Doanother
	end 


EventScript_EVSubtracter_Statmultichoice:
	call EventScript_EVSubtracter_Checkstat0
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_EVSubtracter_Ten
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_EVSubtracter_Fifty
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_EVSubtracter_Hundred
	special 0x25
    setvar 0x8006 0x3 
    loadpointer 0x0 gText_EVSubtracter_All
    special 0x25 
	preparemsg gText_EVSubtracter_Reduceby
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EVSubtracter_Reduce10
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_Reduce50
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_EVSubtracter_Reduce100
    compare LASTRESULT 0x3
	if 0x1 _goto EventScript_EVSubtracter_ReduceAll
	goto EventScript_EVSubtracter_CheckEVs @means they pressed B, go back to previous screen
	end

EventScript_EVSubtracter_Reduce10:
	setvar 0x8006 0x010A @subtracting 10
	special 0xF
	msgbox gText_EVSubtracter_By10 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_Reduce50:
	setvar 0x8006 0x0132
	special 0xF
	msgbox gText_EVSubtracter_By50 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_Reduce100:
	setvar 0x8006 0x164
	special 0xF
	msgbox gText_EVSubtracter_By100 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_ReduceAll:
	setvar 0x8006 0x1FC
	special 0xF
	msgbox gText_EVSubtracter_ByAll 0x6
	goto EventScript_EVSubtracter_Doanother
	end

EventScript_EVSubtracter_Checkstat0:
	special2 LASTRESULT 0x7
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_EVSubtracter_Noeffect
	special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT
	msgbox gText_EVSubtracter_Currently 0x6
	return

EventScript_EVSubtracter_Noeffect:
	msgbox gText_EVSubtracter_None 0x6
	goto EventScript_EVSubtracter_CheckEVs
	end

EventScript_EVSubtracter_Doanother:
	msgbox gText_EVSubtracter_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EVSubtracter_MinusEVs
	goto EventScript_EVSubtracter_Cancel
	end

.global EventScript_EvChecker_Start
EventScript_EvChecker_Start:
	lock
	faceplayer
	textcolor 0x0
	msgbox gText_EvChecker_Msg 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EvChecker_CheckEVs
	goto EventScript_EvChecker_Cancel
	end

EventScript_EvChecker_CheckEVs:
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_EvChecker_Cancel
	special 0x7C @puts the selected mon in party into buffer
	msgbox gText_EvChecker_1 0x6
	setvar 0x8005 0x0
	special2 LASTRESULT 0x7
	buffernumber 0x0 LASTRESULT @hp evs in buffer 1
	setvar 0x8005 0x1
	special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT @atk evs in buffer 2
	setvar 0x8005 0x2
	special2 LASTRESULT 0x7
	buffernumber 0x2 LASTRESULT @def evs in buffer 3
	msgbox gText_EvChecker_3 0x6
	setvar 0x8005 0x3
	special2 LASTRESULT 0x7
	buffernumber 0x2 LASTRESULT @speed evs in buffer 1
	setvar 0x8005 0x4
	special2 LASTRESULT 0x7
	buffernumber 0x0 LASTRESULT @spa evs in buffer 2
	setvar 0x8005 0x5
	special2 LASTRESULT 0x7
	buffernumber 0x1 LASTRESULT @spdef evs in buffer 3
    msgbox gText_EvChecker_5 0x6
	msgbox gText_EvChecker_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EvChecker_CheckEVs
	goto EventScript_EvChecker_Cancel
	end

EventScript_EvChecker_Cancel:
	msgbox gText_EvChecker_2 0x6
	release
	end
