.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"


.global EventScript_ZeCook_Start
EventScript_ZeCook_Start:
	lock
	faceplayer
	textcolor 0x0
	showmoney 0x13 0x00 0x00
	checkflag 0x935
	if 0x0 _call EventScript_ZeCook_FirstTime
	msgbox gText_ZeCook_Msg 0x6
	goto EventScript_ZeCook_PlusEVs
	end
	
EventScript_ZeCook_FirstTime:
	msgbox gText_ZeCook_FirstMsg 0x6
	setflag 0x935
	return

EventScript_ZeCook_PlusEVs:
	setvar 0x8003 0x0 @From party
	special 0x9F @choose from party
	waitstate
	compare 0x8004 0x6
	if 0x4 _goto EventScript_ZeCook_Cancel
	special 0x7C @puts the selected mon in party into buffer
	goto EventScript_ZeCook_MenuMultichoice

EventScript_ZeCook_MenuMultichoice:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_ZeCook_HP
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_ZeCook_Attack
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_ZeCook_Defense
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_ZeCook_SpA
	special 0x25
	setvar 0x8006 0x4 @fifth item
	loadpointer 0x0 gText_ZeCook_SpDef
	special 0x25
	setvar 0x8006 0x5 @sixth item
	loadpointer 0x0 gText_ZeCook_Speed
	special 0x25
	preparemsg gText_ZeCook_1
	waitmsg
	multichoice 0x0 0x0 0x24 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_ZeCook_AddHP
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_ZeCook_AddAttack
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_ZeCook_AddDef
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_ZeCook_AddSpA
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_ZeCook_AddSpD
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_ZeCook_AddSpeed
	goto EventScript_ZeCook_PlusEVs @means they pressed B, goto previous screen
	end
	
EventScript_ZeCook_Cancel:
	msgbox gText_ZeCook_2 0x6
	release
	end
	
EventScript_ZeCook_AddHP:
	setvar 0x8005 0x0
	goto EventScript_ZeCook_CourseMultichoice

EventScript_ZeCook_AddAttack:
	setvar 0x8005 0x1
	goto EventScript_ZeCook_CourseMultichoice

EventScript_ZeCook_AddDef:
	setvar 0x8005 0x2
	goto EventScript_ZeCook_CourseMultichoice

EventScript_ZeCook_AddSpA:
	setvar 0x8005 0x4
	goto EventScript_ZeCook_CourseMultichoice

EventScript_ZeCook_AddSpD:
	setvar 0x8005 0x5
	goto EventScript_ZeCook_CourseMultichoice

EventScript_ZeCook_AddSpeed:
	setvar 0x8005 0x3
	goto EventScript_ZeCook_CourseMultichoice
	
EventScript_ZeCook_CourseMultichoice:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_ZeCook_ThreeCourse
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_ZeCook_FiveCourse
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_ZeCook_FullCourse
	special 0x25 
	preparemsg gText_ZeCook_Addby
	waitmsg
	multichoice 0x0 0x0 0x21 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_ZeCook_ThreeCourse
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_ZeCook_FiveCourse
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_ZeCook_FullCourse
	goto EventScript_ZeCook_MenuMultichoice @means they pressed B, go back to previous screen
	end	
	
EventScript_ZeCook_ThreeCourse:
	msgbox gText_ZeCook_TresBon 0x5
	compare LASTRESULT 0x1
	if 0x0 _goto EventScript_ZeCook_Cancel
	call CheckMoney1
	setvar 0x8006 0x0014 @adding 20
	special 0xF
	msgbox gText_ZeCook_By 0x6
	removemoney 0x4C90 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	goto EventScript_ZeCook_Doanother
	end

EventScript_ZeCook_FiveCourse:
	msgbox gText_ZeCook_TresMagnifique 0x5
	compare LASTRESULT 0x1
	if 0x0 _goto EventScript_ZeCook_Cancel
	call CheckMoney2
	setvar 0x8006 0x0032
	special 0xF
	msgbox gText_ZeCook_By 0x6
	removemoney 0xC350 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	goto EventScript_ZeCook_Doanother
	end

EventScript_ZeCook_FullCourse:
	msgbox gText_ZeCook_VAT 0x5
	compare LASTRESULT 0x1
	if 0x0 _goto EventScript_ZeCook_Cancel
	call CheckMoney3
	callasm ForceShiny + 1
	setvar 0x8006 0x0FC
	special 0xF
	msgbox gText_ZeCook_ByMaxed 0x6
	removemoney 0x3F7A0 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	goto EventScript_ZeCook_Doanother
	end
	
EventScript_ZeCook_Doanother:
	msgbox gText_ZeCook_4 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_ZeCook_PlusEVs
	goto EventScript_ZeCook_Cancel
	end

CheckMoney1:
	checkmoney 0x4C90 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_ZeCook_NoMoney
	return

CheckMoney2:
	checkmoney 0xC350 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_ZeCook_NoMoney
	return

CheckMoney3:
	checkmoney 0x3F7A0 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_ZeCook_NoMoney
	return	
	
EventScript_ZeCook_NoMoney:
	msgbox gText_ZeCook_Poor 0x6
	hidemoney 0x0 0x0
	end
