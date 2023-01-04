.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_Cut
EventScript_Cut: 
	lockall
	checkflag 0x821 @check for misty badge
	if 0x0 _goto EventScript_newcut_Cantcut
	checkitem ITEM_HM01 0x1 
    compare 0x800D 0x1
	if lessthan _goto EventScript_newcut_Cantcut
	@ special 0x10A @check if any mon in party can cut
	@ compare 0x8004 0x6
	@ if 0x1 _goto EventScript_newcut_Cantcut
	@ setanimation 0x0 0x8004
	@ bufferpartypokemon 0x0 0x8004
	@ bufferattack 0x1 0xF
	@ msgbox gText_newcut_Usedcut 0x4
	@ closeonkeypress
	@ doanimation 0x2
	@ waitstate
	goto EventScript_newcut_Hideshit

EventScript_newcut_Cantcut:
	textcolor 0x2
	msgbox gText_newcut_Nocut 0x6
	releaseall
	end


EventScript_newcut_Hideshit:
	sound 0x79
	applymovement LASTTALKED EventScript_newcut_Movement
	waitmovement 0x0
	checksound 
	hidesprite LASTTALKED
	releaseall
	end

EventScript_newcut_Movement:
	.byte 0x69
	.byte 0xFE

.global EventScript_RockSmash 
EventScript_RockSmash:
	checkflag 0x825
	if 0x0 _goto EventScript_newcut_CantSmash
	checkitem ITEM_HM06 0x1 
    compare 0x800D 0x1
	if lessthan _goto EventScript_newcut_CantSmash
	goto EventScript_newSmash_Hideshit
	
EventScript_newcut_CantSmash:
	textcolor 0x2
	msgbox gText_newrocksmash_Nosmash 0x6
	releaseall
	end

EventScript_newSmash_Hideshit:
	sound 0x7C
	applymovement LASTTALKED EventScript_newrocksmash_Delete
	waitmovement 0x0
	checksound 
	hidesprite LASTTALKED
	special 0xAB
	compare LASTRESULT 0x0
	if 0x1 _goto EventScript_newrocksmash_Endall
	waitstate
	releaseall
	end

EventScript_newrocksmash_Endall:
	releaseall
	end
	
EventScript_newrocksmash_Delete:
	.byte 0x68
	.byte 0xFE

.global EventScript_newstrength_Start
EventScript_newstrength_Start:
	lockall
	checkflag 0x823
	if 0x0 _goto EventScript_newstrength_Cantpoosh
	checkflag 0x805
	if 0x1 _goto EventScript_newstrength_Pushed
	special 0x10C
	checkitem ITEM_HM04 0x1 
	compare 0x800D 0x1
	if lessthan _goto EventScript_newstrength_Cantpoosh
	goto EventScript_newstrength_Usestrength


EventScript_newstrength_Cantpoosh:
	msgbox gText_newstrength_Cantpush MSG_SIGN @"It@s a big boulder, but a POK�MON\..."
	end

	@---------------
EventScript_newstrength_Pushed:
	msgbox gText_newstrength_Madeitpossible MSG_SIGN @"STRENGTH made it possible to move\..."
	end


	@---------------
EventScript_newstrength_Usestrength:
	setflag 0x805
	msgbox gText_newstrength_Strengthtxt MSG_SIGN @"[buffer1] used STRENGTH!\p[buffer1..."
	end
	