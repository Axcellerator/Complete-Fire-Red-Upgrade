.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_EggShop_Start
EventScript_EggShop_Start:
	lock
	faceplayer
	showmoney 0x0 0x0 0x0
	msgbox gText_EggShop_Msg1 0x5
	compare LASTRESULT 0x1
	if 0x1 _goto EventScript_EggShop_Uncommon
	hidemoney 0x0 0x0
	release
	end

EventScript_EggShop_Uncommon:
	checkmoney 0x3A98 0x0
	compare 0x800D 0x0
	if 0x1 _goto EventScript_EggShop_Notenough
	countpokemon
	compare 0x800D 0x6
	if 0x1 _goto EventScript_EggShop_Full
	removemoney 0x3A98 0x0
	updatemoney 0x0 0x0 0x0
	fanfare 0x13E
	msgbox gText_EggShop_Msg3 MSG_KEEPOPEN
	closeonkeypress
	waitfanfare
	hidemoney 0x0 0x0
	random 0x5
	compare 0x800D 0x0
	if 0x1 _goto EventScript_EggShop_K1
	compare 0x800D 0x1
	if 0x1 _goto EventScript_EggShop_K2
	compare 0x800D 0x2
	if 0x1 _goto EventScript_EggShop_K3
	compare 0x800D 0x3
	if 0x1 _goto EventScript_EggShop_K4
	compare 0x800D 0x4
	if 0x1 _goto EventScript_EggShop_K5
	release
	end


EventScript_EggShop_K1:
	giveegg 0xAC @----- Pichu.
	release
	end

EventScript_EggShop_K2:
	giveegg 0xEC @----- Tyrogue.
	release
	end

EventScript_EggShop_K3:
	giveegg 0xF0 @----- Magby.
	release
	end

EventScript_EggShop_K4:
	giveegg 0xEF @----- Elekid.
	release
	end

EventScript_EggShop_K5:
	giveegg 0xEE @----- Smoochum.
	release
	end

EventScript_EggShop_Notenough:
	hidemoney 0x0 0x0
	msgbox gText_EggShop_Msg2 MSG_KEEPOPEN
	closeonkeypress
	release
	end

EventScript_EggShop_Full:
	hidemoney 0x0 0x0
	msgbox gText_EggShop_Fullmsg 0x6
	release
	end
