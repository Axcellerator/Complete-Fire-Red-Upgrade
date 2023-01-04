.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Grotto_Start
EventScript_Grotto_Start:
	random 0x6
	compare 0x800D 0x0
	if 0x1 _goto EventScript_Grotto_K1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_Grotto_K2
	compare 0x800D 0x2
	if 0x1 _goto EventScript_Grotto_K3
	compare 0x800D 0x3
	if 0x1 _goto EventScript_Grotto_K4
	compare 0x800D 0x4
	if 0x1 _goto EventScript_Grotto_K5
	compare 0x800D 0x5
	if 0x1 _goto EventScript_Grotto_K6
	release
	end
	
	
	
EventScript_Grotto_K1:	
	giveitem 0x25 0x1 MSG_FIND
	end
	
EventScript_Grotto_K2:	
	giveitem 0x26 0x1 MSG_FIND
	end
	
EventScript_Grotto_K3:	
	giveitem 0x27 0x1 MSG_FIND
	end
	
EventScript_Grotto_K4:	
	giveitem 0x28 0x1 MSG_FIND
	end
	
EventScript_Grotto_K5:	
	giveitem 0x29 0x1 MSG_FIND
	end
	
EventScript_Grotto_K6:	
	cry 0x6 0x0
	wildbattle 0x6 0x1E 0x8B
	fadescreen 0x1
	fadescreen 0x0
	hidesprite 0x800F
	setflag 0xE00
	end
	