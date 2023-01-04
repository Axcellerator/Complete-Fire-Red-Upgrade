.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Trainer
EventScript_Trainer:
	lock
    faceplayer
    msgbox gText_Howdy MSG_YESNO
	compare LASTRESULT 0
	if equal _goto NahImGood
	giveitem 0x2DB 0x1 MSG_OBTAIN
	goto Clearance
	
Choose_Stat:
    setvar 0x8000 0x5
    setvar 0x8001 0x5
	setvar 0x8004 0x0 
	preparemsg gText_Start_Training
	waitmsg
	special 0x158
	waitstate
	closeonkeypress
	compare LASTRESULT 0x0
	if 0x1 _goto Experience
	compare LASTRESULT 0x1
	if 0x1 _goto HP
	compare LASTRESULT 0x2
	if 0x1 _goto Attack
	compare LASTRESULT 0x3
	if 0x1 _goto Defense
	compare LASTRESULT 0x4
	if 0x1 _goto Special_Attack
	compare LASTRESULT 0x5
	if 0x1 _goto Special_Defense
	compare LASTRESULT 0x6
	if 0x1 _goto Speed
	compare LASTRESULT 0x7
	if 0x1 _goto NahImGood
	goto NahImGood
	release
	end

Experience:
    setvar 0x8000 0x6
    setvar 0x8001 0x5
	setvar 0x8004 0x0 
	preparemsg gText_Start_Training
	waitmsg
	special 0x158
	waitstate
	compare LASTRESULT 0x0
	if 0x1 _goto Start25
	compare LASTRESULT 0x1
	if 0x1 _goto Start35
	compare LASTRESULT 0x2
	if 0x1 _goto Start45
	compare LASTRESULT 0x3
	if 0x1 _goto Start55
	compare LASTRESULT 0x4
	if 0x1 _goto Start65
	compare LASTRESULT 0x5
	if 0x1 _goto Start75
	compare LASTRESULT 0x6
	if 0x1 _goto Start85
	compare LASTRESULT 0x7
	if 0x1 _goto Choose_Stat
	goto Choose_Stat
	
HP:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_High
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_Medium
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_Low
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Back
	special 0x25
	preparemsg gText_Start_Training
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto StartHighHP
	compare LASTRESULT 0x1
	if 0x1 _goto StartMediumHP
	compare LASTRESULT 0x2
	if 0x1 _goto StartLowHP
	compare LASTRESULT 0x3
	if 0x1 _goto Choose_Stat
	goto Choose_Stat
	
Attack:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_High
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_Medium
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_Low
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Back
	special 0x25
	preparemsg gText_Start_Training
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto StartHighAtk
	compare LASTRESULT 0x1
	if 0x1 _goto StartMediumAtk
	compare LASTRESULT 0x2
	if 0x1 _goto StartLowAtk
	compare LASTRESULT 0x3
	if 0x1 _goto Choose_Stat
	goto Choose_Stat

Defense:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_High
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_Medium
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_Low
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Back
	special 0x25
	preparemsg gText_Start_Training
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto StartHighDef
	compare LASTRESULT 0x1
	if 0x1 _goto StartMediumDef
	compare LASTRESULT 0x2
	if 0x1 _goto StartLowDef
	compare LASTRESULT 0x3
	if 0x1 _goto Choose_Stat
	goto Choose_Stat
	
Special_Attack:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_High
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_Medium
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_Low
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Back
	special 0x25
	preparemsg gText_Start_Training
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto StartHighSpA
	compare LASTRESULT 0x1
	if 0x1 _goto StartMediumSpA
	compare LASTRESULT 0x2
	if 0x1 _goto StartLowSpA
	compare LASTRESULT 0x3
	if 0x1 _goto Choose_Stat
	goto Choose_Stat
	
Special_Defense:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_High
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_Medium
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_Low
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Back
	special 0x25
	preparemsg gText_Start_Training
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto StartHighSpD
	compare LASTRESULT 0x1
	if 0x1 _goto StartMediumSpD
	compare LASTRESULT 0x2
	if 0x1 _goto StartLowSpD
	compare LASTRESULT 0x3
	if 0x1 _goto Choose_Stat
	goto Choose_Stat

Speed:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 gText_High
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 gText_Medium
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 gText_Low
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Back
	special 0x25
	preparemsg gText_Start_Training
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto StartHighSpe
	compare LASTRESULT 0x1
	if 0x1 _goto StartMediumSpe
	compare LASTRESULT 0x2
	if 0x1 _goto StartLowSpe
	compare LASTRESULT 0x3
	if 0x1 _goto Choose_Stat
	goto Choose_Stat
	
Clearance:
	cleartrainerflag 0x1
	cleartrainerflag 0x2
	cleartrainerflag 0x3
	cleartrainerflag 0x4
	cleartrainerflag 0x5
	cleartrainerflag 0x6
	cleartrainerflag 0x7
	cleartrainerflag 0x8
	cleartrainerflag 0x9
	cleartrainerflag 0xA
	cleartrainerflag 0xB
	cleartrainerflag 0xC
	cleartrainerflag 0xD
	cleartrainerflag 0xE
	cleartrainerflag 0xF
	cleartrainerflag 0x10
	cleartrainerflag 0x11
	cleartrainerflag 0x12
	cleartrainerflag 0x13
	cleartrainerflag 0x12
	cleartrainerflag 0x14
	cleartrainerflag 0x15
	cleartrainerflag 0x16
	cleartrainerflag 0x17
	cleartrainerflag 0x18
	cleartrainerflag 0x19
	goto Choose_Stat
	
NahImGood:
	msgbox gText_ComeBack 0x6
    release
    end
	
Start25:
	trainerbattle0 0x0 0x1 0x0 gText_Start gText_End
	end

Start35:
	trainerbattle0 0x0 0x2 0x0 gText_Start gText_End
	end
	
Start45:
	trainerbattle0 0x0 0x3 0x0 gText_Start gText_End
	end
	
Start55:
	trainerbattle0 0x0 0x4 0x0 gText_Start gText_End
	end
	
Start65:
	trainerbattle0 0x0 0x5 0x0 gText_Start gText_End
	end
	
Start75:
	trainerbattle0 0x0 0x6 0x0 gText_Start gText_End
	end
	
Start85:
	trainerbattle0 0x0 0x7 0x0 gText_Start gText_End
	end
	
StartHighHP:
	trainerbattle0 0x0 0xA 0x0 gText_Start gText_End
	end
	
StartMediumHP:
	trainerbattle0 0x0 0x9 0x0 gText_Start gText_End
	end
	
StartLowHP:
	trainerbattle0 0x0 0x8 0x0 gText_Start gText_End
	end
	
StartHighAtk:
	trainerbattle0 0x0 0xD 0x0 gText_Start gText_End
	end
	
StartMediumAtk:
	trainerbattle0 0x0 0xC 0x0 gText_Start gText_End
	end
	
StartLowAtk:
	trainerbattle0 0x0 0xB 0x0 gText_Start gText_End
	end
	
StartHighDef:
	trainerbattle0 0x0 0x10 0x0 gText_Start gText_End
	end
	
StartMediumDef:
	trainerbattle0 0x0 0xF 0x0 gText_Start gText_End
	end
	
StartLowDef:
	trainerbattle0 0x0 0xE 0x0 gText_Start gText_End
	end
	
StartHighSpA:
	trainerbattle0 0x0 0x13 0x0 gText_Start gText_End
	end
	
StartMediumSpA:
	trainerbattle0 0x0 0x12 0x0 gText_Start gText_End
	end
	
StartLowSpA:
	trainerbattle0 0x0 0x11 0x0 gText_Start gText_End
	end
	
StartHighSpD:
	trainerbattle0 0x0 0x16 0x0 gText_Start gText_End
	end
	
StartMediumSpD:
	trainerbattle0 0x0 0x15 0x0 gText_Start gText_End
	end
	
StartLowSpD:
	trainerbattle0 0x0 0x14 0x0 gText_Start gText_End
	end
	
StartHighSpe:
	trainerbattle0 0x0 0x19 0x0 gText_Start gText_End
	end
	
StartMediumSpe:
	trainerbattle0 0x0 0x18 0x0 gText_Start gText_End
	end
	
StartLowSpe:
	trainerbattle0 0x0 0x17 0x0 gText_Start gText_End
	end
	