.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.equ VAR_WEATHER, 0x5118

.global EventScript_silphcoelevatorthatworks_Start
EventScript_silphcoelevatorthatworks_Start:
	lockall
	setvar 0x8006 0x0
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor1
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor2
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor3
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor4
	special 0x25
	setvar 0x8006 0x4
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor5
	special 0x25
	setvar 0x8006 0x5
	loadpointer 0x0 gText_silphcoelevatorthatworks_Floor6
	special 0x25
	preparemsg 0x81A535C @"Which floor do you want?"
	waitmsg
	multichoice 0x0 0x0 0x24 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Firstfloor
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Secondfloor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Thirdfloor
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Fourthfloor
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Fifthfloor
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Sixthfloor
	releaseall
	end

.global EventScript_silphcoelevatorthatworks_StartV2
EventScript_silphcoelevatorthatworks_StartV2:
	lockall
	setvar 0x8000 0x3
	setvar 0x8001 0x6
	setvar 0x8004 0x0 
	preparemsg 0x81A535C @"Which floor do you want?"
	waitmsg
	special 0x158
	waitstate 
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Firstfloor
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Secondfloor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Thirdfloor
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Fourthfloor
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Fifthfloor
	compare LASTRESULT 0x5
	if 0x1 _goto EventScript_silphcoelevatorthatworks_Sixthfloor
	compare LASTRESULT 0x6
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Seventhfloor
	compare LASTRESULT 0x7
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Eighthfloor
	compare LASTRESULT 0x8
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Ninthfloor
	compare LASTRESULT 0x9
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Tenthfloor
	compare LASTRESULT 0xA
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Eleventhfloor
	releaseall 
	end 
	
EventScript_silphcoelevatorthatworks_End:
	releaseall
	end

EventScript_silphcoelevatorthatworks_Firstfloor:
	setdynamicwarp 0x1 0x2F 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Secondfloor:
	setdynamicwarp 0x1 0x30 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Thirdfloor:
	setdynamicwarp 0x1 0x31 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Fourthfloor:
	setdynamicwarp 0x1 0x32 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Fifthfloor:
	setdynamicwarp 0x1 0x33 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Sixthfloor:
	setdynamicwarp 0x1 0x34 0xFF 0x14 0x3
	call EventScript_silphcoelevatorthatworks_Elevatorshit
	goto EventScript_silphcoelevatorthatworks_End

EventScript_silphcoelevatorthatworks_Elevatorshit:
	special 0x111 @does elevator shit i think?
	waitstate
	return

.global EventScript_silphcoelevatorthatworks2_Start
EventScript_silphcoelevatorthatworks2_Start:
	lockall
	setvar 0x8006 0x0
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor7
	special 0x25
	setvar 0x8006 0x1
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor8
	special 0x25
	setvar 0x8006 0x2
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor9
	special 0x25
	setvar 0x8006 0x3
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor10
	special 0x25
	setvar 0x8006 0x4
	loadpointer 0x0 gText_silphcoelevatorthatworks2_Floor11
	special 0x25
	preparemsg 0x81A535C @"Which floor do you want?"
	waitmsg
	multichoice 0x0 0x0 0x23 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Seventhfloor
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Eighthfloor
	compare LASTRESULT 0x2
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Ninthfloor
	compare LASTRESULT 0x3
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Tenthfloor
	compare LASTRESULT 0x4
	if 0x1 _goto EventScript_silphcoelevatorthatworks2_Eleventhfloor
	releaseall
	end

EventScript_silphcoelevatorthatworks2_End:
	releaseall
	end

EventScript_silphcoelevatorthatworks2_Seventhfloor:
	setdynamicwarp 0x1 0x35 0xFF 0x17 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Eighthfloor:
	setdynamicwarp 0x1 0x36 0xFF 0x16 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Ninthfloor:
	setdynamicwarp 0x1 0x37 0xFF 0x18 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Tenthfloor:
	setdynamicwarp 0x1 0x38 0xFF 0xD 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Eleventhfloor:
	setdynamicwarp 0x1 0x39 0xFF 0xD 0x3
	call EventScript_silphcoelevatorthatworks2_Elevatorshit
	goto EventScript_silphcoelevatorthatworks2_End

EventScript_silphcoelevatorthatworks2_Elevatorshit:
	special 0x111 @does elevator shit i think?
	waitstate
	return
