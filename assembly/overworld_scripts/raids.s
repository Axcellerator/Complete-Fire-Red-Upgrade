.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.equ SPECIAL_RAID_BATTLE_INTRO, 0x116
.equ SPECIAL_CREATE_RAID_MON, 0x117
.equ SPECIAL_START_RAID_BATTLE, 0x118 
.equ SPECIAL_SET_RAID_BATTLE_FLAG, 0x119
.equ SPECIAL_GIVE_RAID_BATTLE_REWARDS, 0x11C
.equ FLAG_TAG_BATTLE, 0x908
.equ FLAG_DYNAMAX_BATTLE, 0x918
.equ VAR_DAILY_EVENT, 0x504A @ Also 0x504B
.equ VAR_ROUTE2, 0x5072 @also 0x5073


.global EventScript_Route2Raid @Here 
EventScript_Route2Raid:
    setvar 0x8000 VAR_ROUTE2 @Here 
    setvar 0x8001 0x0
    special2 LASTRESULT 0xA0
    compare LASTRESULT 0x0 
    if equal _goto RaidScript_Cancel
	call RaidBattle 
    setvar 0x4000 0x0
    call RaidScript_GiveReward
    goto RaidScript_EndRoute2 @ Here
    end 

RaidScript_EndRoute2: @Here 
    setvar 0x8000 VAR_ROUTE2 @Here 
    setvar 0x8001 0x0
    special 0xA1
    release 
    end 
	
RaidBattle: 
    setvar 0x8000 0x0  @Clear Raid Script flag 
    special 0x11A
    lock
    special 0x115
    compare LASTRESULT 0x0 
    if equal _goto RaidScript_Cancel 
    msgbox gText_StartRaidBattle MSG_YESNO 
    compare LASTRESULT YES 
    if NO _goto RaidScript_EndClear 
    fadescreen FADEOUT_BLACK
    sound 0x9
    checksound
    special SPECIAL_RAID_BATTLE_INTRO
    waitstate
    compare LASTRESULT 0x0 
    if equal _goto RaidScript_EndClear
    msgbox gText_SelectThree MSG_NORMAL
    special 0x27
	special 0xF5
	waitstate
    compare LASTRESULT NO
	if equal _goto Cancel
	special 0x28
    setflag FLAG_TAG_BATTLE 
    setflag FLAG_DYNAMAX_BATTLE
    msgbox gText_RaidTeamUp MSG_NORMAL
    special SPECIAL_CREATE_RAID_MON 
    special SPECIAL_START_RAID_BATTLE
    waitstate 
    special2 LASTRESULT 0xB4
    compare LASTRESULT 0x4 @Ran 
    if equal _goto RaidScript_End2 
    compare LASTRESULT 0x5 @Teleported, lost battle
    if equal _goto RaidScript_End2
    special SPECIAL_SET_RAID_BATTLE_FLAG 
    @ goto RaidScript_GiveReward
    return 

Cancel:
    special 0x28
    clearflag FLAG_TAG_BATTLE 
    clearflag FLAG_DYNAMAX_BATTLE
    release
    end

RaidScript_GiveReward:
    special SPECIAL_GIVE_RAID_BATTLE_REWARDS 
    compare LASTRESULT 0x1
    if equal _goto RaidScript_End2
    callstd MSG_FIND 
    goto RaidScript_GiveReward 

RaidScript_End2:
    return 

RaidScript_End: 
    setvar 0x8000 VAR_DAILY_EVENT
    setvar 0x8001 0x0
    special 0xA1
    release 
    end 

RaidScript_Cancel:
    msgbox gText_StartRaidBattle2 MSG_NORMAL 
    release 
    end 

RaidScript_EndClear:
    setvar 0x8000 0x0  @Clear Raid Script flag 
    clearflag FLAG_DYNAMAX_BATTLE @Prevent Dynamax lol
    special 0x11A
    release 
    end 
