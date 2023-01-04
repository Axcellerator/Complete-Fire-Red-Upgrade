.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s"

.global EventScript_Tutor1
EventScript_Tutor1:
	lock
	faceplayer 
	textcolor 0x0
	showmoney 0x13 0x00 0x00
	msgbox gText_TutorIntro1 MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto CheckMoney1
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end

EventScript_SelectTutor1:
	showmoney 0x13 0x00 0x00
	preparemsg gText_SelectMove
	waitmsg
	setvar 0x8000 0x8
	setvar 0x8001 0x6
	setvar 0x8004 0x0
	special 0x158
	waitstate 
	compare LASTRESULT 0x0
	if 0x1 _goto Snore
	compare LASTRESULT 0x1
	if 0x1 _goto HealBell
	compare LASTRESULT 0x2
	if 0x1 _goto Electroweb
	compare LASTRESULT 0x3
	if 0x1 _goto LowKick
	compare LASTRESULT 0x4
	if 0x1 _goto Uproar
	compare LASTRESULT 0x5
	if 0x1 _goto Bind
	compare LASTRESULT 0x6
	if 0x1 _goto HelpingHand
	compare LASTRESULT 0x7
	if 0x1 _goto Block
	compare LASTRESULT 0x8
	if 0x1 _goto WorrySeed
	compare LASTRESULT 0x9
	if 0x1 _goto Covet
	compare LASTRESULT 0xA
	if 0x1 _goto BugBite
	compare LASTRESULT 0xB
	if 0x1 _goto Snatch
	compare LASTRESULT 0xC
	if 0x1 _goto Spite
	compare LASTRESULT 0xD
	if 0x1 _goto AfterYou
	compare LASTRESULT 0xE
	if 0x1 _goto Synthesis
	compare LASTRESULT 0xF
	if 0x1 _goto SignalBeam
	compare LASTRESULT 0x10
	if 0x1 _goto Gravity
	compare LASTRESULT 0x11
	if 0x1 _goto IronDefense
	compare LASTRESULT 0x12
	if 0x1 _goto Telekinesis
	compare LASTRESULT 0x13
	if 0x1 _goto MagnetRise
	compare LASTRESULT 0x14
	if 0x1 _goto Bounce
	compare LASTRESULT 0x15
	if 0x1 _goto RolePlay
	compare LASTRESULT 0x16
	if 0x1 _goto Endeavor
	compare LASTRESULT 0x17
	if 0x1 _goto IcyWind
	compare LASTRESULT 0x18
	if 0x1 _goto LaserFocus
	compare LASTRESULT 0x19
	if 0x1 _goto Trick
	compare LASTRESULT 0x1A
	if 0x1 _goto DrillRun
	compare LASTRESULT 0x1B
	if 0x1 _goto MagicCoat
	compare LASTRESULT 0x1C
	if 0x1 _goto MagicRoom
	compare LASTRESULT 0x1D
	if 0x1 _goto WonderRoom
	compare LASTRESULT 0x1E
	if 0x1 _goto GastroAcid
	compare LASTRESULT 0x1F
	if 0x1 _goto FoulPlay
	compare LASTRESULT 0x20
	if 0x1 _goto SuperFang
	compare LASTRESULT 0x21
	if 0x1 _goto KnockOff
	compare LASTRESULT 0x22
	if 0x1 _goto PsychUp
	compare LASTRESULT 0x23
	if 0x1 _goto VacuumWave
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end


.global EventScript_Tutor2
EventScript_Tutor2:
	lock
	faceplayer
	textcolor 0x0
	showmoney 0x13 0x00 0x00	
	msgbox gText_TutorIntro2 MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto CheckMoney2
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end

EventScript_SelectTutor2:
	showmoney 0x13 0x00 0x00
	preparemsg gText_SelectMove
	waitmsg
	setvar 0x8000 0x9
	setvar 0x8001 0x6
	setvar 0x8004 0x0
	special 0x158
	waitstate 
	compare LASTRESULT 0x0
	if 0x1 _goto LastResort
	compare LASTRESULT 0x1
	if 0x1 _goto Confide
	compare LASTRESULT 0x2
	if 0x1 _goto FocusEnergy
	compare LASTRESULT 0x3
	if 0x1 _goto CosmicPower
	compare LASTRESULT 0x4
	if 0x1 _goto BatonPass
	compare LASTRESULT 0x5
	if 0x1 _goto Encore
	compare LASTRESULT 0x6
	if 0x1 _goto Screech
	compare LASTRESULT 0x7
	if 0x1 _goto FakeTears
	compare LASTRESULT 0x8
	if 0x1 _goto ScaryFace
	compare LASTRESULT 0x9
	if 0x1 _goto VenomDrench
	compare LASTRESULT 0xA
	if 0x1 _goto Spikes
	compare LASTRESULT 0xB
	if 0x1 _goto TSpikes
	compare LASTRESULT 0xC
	if 0x1 _goto GTerrain
	compare LASTRESULT 0xD
	if 0x1 _goto MTerrain
	compare LASTRESULT 0xE
	if 0x1 _goto ETerrain
	compare LASTRESULT 0xF
	if 0x1 _goto PTerrain
	compare LASTRESULT 0x10
	if 0x1 _goto Whirlpool
	compare LASTRESULT 0x11
	if 0x1 _goto FireSpin
	compare LASTRESULT 0x12
	if 0x1 _goto SandTomb
	compare LASTRESULT 0x13
	if 0x1 _goto PinMissile
	compare LASTRESULT 0x14
	if 0x1 _goto IcicleSpear
	compare LASTRESULT 0x15
	if 0x1 _goto TailSlap
	compare LASTRESULT 0x16
	if 0x1 _goto RockBlast
	compare LASTRESULT 0x17
	if 0x1 _goto ThunderFang
	compare LASTRESULT 0x18
	if 0x1 _goto IceFang
	compare LASTRESULT 0x19
	if 0x1 _goto FireFang
	compare LASTRESULT 0x1A
	if 0x1 _goto HeatCrash
	compare LASTRESULT 0x1B
	if 0x1 _goto HeavySlam
	compare LASTRESULT 0x1C
	if 0x1 _goto Reversal
	compare LASTRESULT 0x1D
	if 0x1 _goto ElectroBall
	compare LASTRESULT 0x1E
	if 0x1 _goto StoredPower
	compare LASTRESULT 0x1F
	if 0x1 _goto BreakingSwipe
	compare LASTRESULT 0x20
	if 0x1 _goto RazorShell
	compare LASTRESULT 0x21
	if 0x1 _goto Hex
	compare LASTRESULT 0x22
	if 0x1 _goto WeatherBall
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end
	
.global EventScript_Tutor3
EventScript_Tutor3:
	lock
	faceplayer 
	textcolor 0x0
	showmoney 0x13 0x00 0x00
	msgbox gText_TutorIntro3 MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto CheckMoney3
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end

EventScript_SelectTutor3:
	showmoney 0x13 0x00 0x00
	preparemsg gText_SelectMove
	waitmsg
	setvar 0x8000 0xA
	setvar 0x8001 0x6
	setvar 0x8004 0x0
	special 0x158
	waitstate 
	compare LASTRESULT 0x0
	if 0x1 _goto FirePunch
	compare LASTRESULT 0x1
	if 0x1 _goto IcePunch
	compare LASTRESULT 0x2
	if 0x1 _goto ThunderPunch
	compare LASTRESULT 0x3
	if 0x1 _goto IronHead
	compare LASTRESULT 0x4
	if 0x1 _goto AquaTail
	compare LASTRESULT 0x5
	if 0x1 _goto PainSplit
	compare LASTRESULT 0x6
	if 0x1 _goto Tailwind
	compare LASTRESULT 0x7
	if 0x1 _goto ZenHeadbutt
	compare LASTRESULT 0x8
	if 0x1 _goto SeedBomb
	compare LASTRESULT 0x9
	if 0x1 _goto Liquidation
	compare LASTRESULT 0xA
	if 0x1 _goto Outrage
	compare LASTRESULT 0xB
	if 0x1 _goto SkyAttack
	compare LASTRESULT 0xC
	if 0x1 _goto ThroatChop
	compare LASTRESULT 0xD
	if 0x1 _goto StompingTantrum
	compare LASTRESULT 0xE
	if 0x1 _goto EarthPower
	compare LASTRESULT 0xF
	if 0x1 _goto GunkShot
	compare LASTRESULT 0x10
	if 0x1 _goto DualChop
	compare LASTRESULT 0x11
	if 0x1 _goto HeatWave
	compare LASTRESULT 0x12
	if 0x1 _goto HyperVoice
	compare LASTRESULT 0x13
	if 0x1 _goto Superpower
	compare LASTRESULT 0x14
	if 0x1 _goto AirSlash
	compare LASTRESULT 0x15
	if 0x1 _goto AuraSphere
	compare LASTRESULT 0x16
	if 0x1 _goto BlazeKick
	compare LASTRESULT 0x17
	if 0x1 _goto BugBuzz
	compare LASTRESULT 0x18
	if 0x1 _goto CrossPoison
	compare LASTRESULT 0x19
	if 0x1 _goto Crunch
	compare LASTRESULT 0x1A
	if 0x1 _goto DarkestLariat
	compare LASTRESULT 0x1B
	if 0x1 _goto HighHorsepower
	compare LASTRESULT 0x1C
	if 0x1 _goto LeafBlade
	compare LASTRESULT 0x1D
	if 0x1 _goto MuddyWater
	compare LASTRESULT 0x1E
	if 0x1 _goto MysticalFire
	compare LASTRESULT 0x1F
	if 0x1 _goto PhantomForce
	compare LASTRESULT 0x20
	if 0x1 _goto PlayRough
	compare LASTRESULT 0x21
	if 0x1 _goto DragonDance
	compare LASTRESULT 0x22
	if 0x1 _goto PowerGem
	compare LASTRESULT 0x23
	if 0x1 _goto PsychoCut
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end

.global EventScript_Tutor4
EventScript_Tutor4:
	lock
	faceplayer 
	textcolor 0x0
	showmoney 0x13 0x00 0x00
	msgbox gText_TutorIntro4 MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto CheckMoney4
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end

EventScript_SelectTutor4:
	showmoney 0x13 0x00 0x00
	preparemsg gText_SelectMove
	waitmsg
	setvar 0x8000 0xB
	setvar 0x8001 0x6
	setvar 0x8004 0x0
	special 0x158
	waitstate 
	compare LASTRESULT 0x0
	if 0x1 _goto Agility
	compare LASTRESULT 0x1
	if 0x1 _goto NastyPlot
	compare LASTRESULT 0x2
	if 0x1 _goto BodySlam
	compare LASTRESULT 0x3
	if 0x1 _goto BodyPress
	compare LASTRESULT 0x4
	if 0x1 _goto PollenPuff
	compare LASTRESULT 0x5
	if 0x1 _goto PsychicFangs
	compare LASTRESULT 0x6
	if 0x1 _goto BraveBird
	compare LASTRESULT 0x7
	if 0x1 _goto CloseCombat
	compare LASTRESULT 0x8
	if 0x1 _goto FlareBlitz
	compare LASTRESULT 0x9
	if 0x1 _goto Hurricane
	compare LASTRESULT 0xA
	if 0x1 _goto HydroPump
	compare LASTRESULT 0xB
	if 0x1 _goto LeafStorm
	compare LASTRESULT 0xC
	if 0x1 _goto Megahorn
	compare LASTRESULT 0xD
	if 0x1 _goto PowerWhip
	compare LASTRESULT 0xE
	if 0x1 _goto SolarBlade
	compare LASTRESULT 0xF
	if 0x1 _goto ExpandingForce
	compare LASTRESULT 0x10
	if 0x1 _goto SteelRoller
	compare LASTRESULT 0x11
	if 0x1 _goto ScaleShot
	compare LASTRESULT 0x12
	if 0x1 _goto MeteorBeam
	compare LASTRESULT 0x13
	if 0x1 _goto MistyExplosion
	compare LASTRESULT 0x14
	if 0x1 _goto GrassyGlide
	compare LASTRESULT 0x15
	if 0x1 _goto RisingVoltage
	compare LASTRESULT 0x16
	if 0x1 _goto TerrainPulse
	compare LASTRESULT 0x17
	if 0x1 _goto SkitterSmack
	compare LASTRESULT 0x18
	if 0x1 _goto BurningJealousy
	compare LASTRESULT 0x19
	if 0x1 _goto LashOut
	compare LASTRESULT 0x1A
	if 0x1 _goto Poltergeist
	compare LASTRESULT 0x1B
	if 0x1 _goto CorrosiveGas
	compare LASTRESULT 0x1C
	if 0x1 _goto Coaching
	compare LASTRESULT 0x1D
	if 0x1 _goto FlipTurn
	compare LASTRESULT 0x1E
	if 0x1 _goto TripleAxel
	compare LASTRESULT 0x1F
	if 0x1 _goto DualWingbeat
	compare LASTRESULT 0x20
	if 0x1 _goto ScorchingSands
	compare LASTRESULT 0x21
	if 0x1 _goto Softboiled
	compare LASTRESULT 0x22
	if 0x1 _goto Moonblast
	hidemoney 0x0 0x0
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end	
	
.global EventScript_TutorSpecial
EventScript_TutorSpecial:
	lock
	faceplayer 
	msgbox gText_TutorSpecialIntro MSG_YESNO
	compare LASTRESULT 0x1
	if equal _goto EventScript_SelectTutorSpecial
	msgbox gText_SeeYouAgain MSG_FACE
	release
	end
	
EventScript_SelectTutorSpecial:
	setvar 0x8006 0x0 @first item
	loadpointer 0x0 NAME_GRASS_PLEDGE
	special 0x25
	setvar 0x8006 0x1 @second item
	loadpointer 0x0 NAME_FIRE_PLEDGE
	special 0x25
	setvar 0x8006 0x2 @third item
	loadpointer 0x0 NAME_WATER_PLEDGE
	special 0x25
	setvar 0x8006 0x3 @fourth item
	loadpointer 0x0 gText_Exit
	special 0x25
	preparemsg gText_SelectMove
	waitmsg
	multichoice 0x0 0x0 0x22 0x0
	compare LASTRESULT 0x0
	if 0x1 _goto GrassPledge
	compare LASTRESULT 0x1
	if 0x1 _goto FirePledge
	compare LASTRESULT 0x2
	if 0x1 _goto WaterPledge
	compare LASTRESULT 0x3
	if 0x1 _goto NotWant
	goto NotWant

NotWant:
	msgbox gText_DontWant 0x6
	release
	end

WantAnother1:
	msgbox gText_WantAnother 0x6
	goto EventScript_SelectTutor1
	release
	end
	
WantAnother2:
	msgbox gText_WantAnother 0x6
	goto EventScript_SelectTutor2
	release
	end
	
WantAnother3:
	msgbox gText_WantAnother 0x6
	goto EventScript_SelectTutor3
	release
	end
	
WantAnother4:
	msgbox gText_WantAnother 0x6
	goto EventScript_SelectTutor4
	release
	end

CheckMoney1:
	checkmoney 0xBB8 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_NoMoney
	goto EventScript_SelectTutor1
	return
	
PayMoney1:
	removemoney 0xBB8 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	release
	end
	
CheckMoney2:
	checkmoney 0x1388 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_NoMoney
	goto EventScript_SelectTutor2
	return

PayMoney2:
	removemoney 0x1388 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	release
	end
	
CheckMoney3:
	checkmoney 0x1D4C 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_NoMoney
	goto EventScript_SelectTutor3
	return
	
PayMoney3:
	removemoney 0x1D4C 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	release
	end
	
CheckMoney4:
	checkmoney 0x2710 0x0
	compare 0x800D 0x1 
	if 0x0 _goto EventScript_NoMoney
	goto EventScript_SelectTutor4
	return

PayMoney4:
	removemoney 0x2710 0x00
	sound 0x58
	msgbox gText_SeeYouAgain MSG_FACE
	updatemoney 0x13 0x00 0x00
	checksound
	hidemoney 0x0 0x0
	release
	end	
	
EventScript_NoMoney:
	hidemoney 0x0 0x0
	msgbox gText_NotEnoughMoney 0x6
	release
	end






FirePunch:	
	setvar 0x8005 0
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
IcePunch:	
	setvar 0x8005 1
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
ThunderPunch:	
	setvar 0x8005 2
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
Snore:	
	setvar 0x8005 3
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
HealBell:	
	setvar 0x8005 4
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end	
Electroweb:	
	setvar 0x8005 5
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
LowKick:	
	setvar 0x8005 6
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Uproar:	
	setvar 0x8005 7
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Bind:	
	setvar 0x8005 8
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
HelpingHand:	
	setvar 0x8005 9
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Block:	
	setvar 0x8005 10
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
WorrySeed:	
	setvar 0x8005 11
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Covet:	
	setvar 0x8005 12
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
BugBite:	
	setvar 0x8005 13
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Snatch:	
	setvar 0x8005 14
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Spite:	
	setvar 0x8005 15
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
AfterYou:	
	setvar 0x8005 16
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Synthesis:
	setvar 0x8005 17
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end	
SignalBeam:	
	setvar 0x8005 18
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Gravity:
	setvar 0x8005 19
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
IronDefense:	
	setvar 0x8005 20
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Telekinesis:
	setvar 0x8005 21
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
MagnetRise:	
	setvar 0x8005 22
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Bounce:	
	setvar 0x8005 23
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
RolePlay:	
	setvar 0x8005 24
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
IronHead:
	setvar 0x8005 25
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
AquaTail:	
	setvar 0x8005 26
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
PainSplit:
	setvar 0x8005 27
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
Tailwind:	
	setvar 0x8005 28
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
Endeavor:	
	setvar 0x8005 29
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
IcyWind:	
	setvar 0x8005 30
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
ZenHeadbutt:
	setvar 0x8005 31	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
SeedBomb:
	setvar 0x8005 32	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
LaserFocus:
	setvar 0x8005 33	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Trick:
	setvar 0x8005 34	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
DrillRun:
	setvar 0x8005 35	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
MagicCoat:
	setvar 0x8005 36	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
MagicRoom:
	setvar 0x8005 37	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
WonderRoom:
	setvar 0x8005 38
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Liquidation:
	setvar 0x8005 39	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
GastroAcid:
	setvar 0x8005 40	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
FoulPlay:
	setvar 0x8005 41	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
SuperFang:
	setvar 0x8005 42
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
Outrage:
	setvar 0x8005 43
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
SkyAttack:
	setvar 0x8005 44
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
ThroatChop:
	setvar 0x8005 45
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
StompingTantrum:
	setvar 0x8005 46	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
EarthPower:
	setvar 0x8005 47
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
GunkShot:
	setvar 0x8005 48	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
DualChop:
	setvar 0x8005 49	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
HeatWave:
	setvar 0x8005 50	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
HyperVoice:
	setvar 0x8005 51	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
Superpower:
	setvar 0x8005 52
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
KnockOff:
	setvar 0x8005 53
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
PsychUp:
	setvar 0x8005 54
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
VacuumWave:
	setvar 0x8005 55
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother1
	goto PayMoney1
	release
	end
LastResort:
	setvar 0x8005 56
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Confide:
	setvar 0x8005 57
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
GrassPledge:
	setvar 0x8005 58
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto EventScript_SelectTutorSpecial
	msgbox gText_DontWant 0x6
	release
	end
FirePledge:
	setvar 0x8005 59
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto EventScript_SelectTutorSpecial
	msgbox gText_DontWant 0x6
	release
	end
WaterPledge:
	setvar 0x8005 60
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto EventScript_SelectTutorSpecial
	msgbox gText_DontWant 0x6
	release
	end
FrenzyPlant:
	setvar 0x8005 61
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto EventScript_SelectTutorSpecial
	release
	end
BlastBurn:
	setvar 0x8005 62
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto EventScript_SelectTutorSpecial
	release
	end
HydroCannon:
	setvar 0x8005 63
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto EventScript_SelectTutorSpecial
	release
	end
FocusEnergy:
	setvar 0x8005 64
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
CosmicPower:
	setvar 0x8005 65
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
BatonPass:
	setvar 0x8005 66
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Encore:
	setvar 0x8005 67
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Screech:
	setvar 0x8005 68
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
FakeTears:
	setvar 0x8005 69
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
ScaryFace:
	setvar 0x8005 70
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
VenomDrench:
	setvar 0x8005 71
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Spikes:
	setvar 0x8005 72
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
TSpikes:
	setvar 0x8005 73
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
DragonDance:
	setvar 0x8005 74	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
Agility:
	setvar 0x8005 75	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
NastyPlot:
	setvar 0x8005 76	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
GTerrain:
	setvar 0x8005 77
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
MTerrain:
	setvar 0x8005 78
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
ETerrain:
	setvar 0x8005 79
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
PTerrain:
	setvar 0x8005 80
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Whirlpool:
	setvar 0x8005 81
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
FireSpin:
	setvar 0x8005 82
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
SandTomb:
	setvar 0x8005 83
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
PinMissile:
	setvar 0x8005 84
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
IcicleSpear:
	setvar 0x8005 85
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
TailSlap:
	setvar 0x8005 86
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
RockBlast:
	setvar 0x8005 87
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
ThunderFang:
	setvar 0x8005 88
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
IceFang:
	setvar 0x8005 89
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
FireFang:
	setvar 0x8005 90
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
BodySlam:
	setvar 0x8005 91
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
BodyPress:
	setvar 0x8005 92	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
HeatCrash:
	setvar 0x8005 93	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
HeavySlam:
	setvar 0x8005 94
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Reversal:
	setvar 0x8005 95
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
ElectroBall:
	setvar 0x8005 96
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
StoredPower:
	setvar 0x8005 97	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
BreakingSwipe:
	setvar 0x8005 98	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
RazorShell:
	setvar 0x8005 99	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
Hex:
	setvar 0x8005 100	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
WeatherBall:
	setvar 0x8005 101	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother2
	goto PayMoney2
	release
	end
AirSlash:
	setvar 0x8005 102	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
AuraSphere:
	setvar 0x8005 103
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
BlazeKick:
	setvar 0x8005 104	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
BugBuzz:
	setvar 0x8005 105	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
CrossPoison:
	setvar 0x8005 106	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
Crunch:
	setvar 0x8005 107
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
DarkestLariat:
	setvar 0x8005 108	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
HighHorsepower:
	setvar 0x8005 109	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
LeafBlade:
	setvar 0x8005 110	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
MuddyWater:
	setvar 0x8005 111	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
MysticalFire:
	setvar 0x8005 112	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
PhantomForce:
	setvar 0x8005 113	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
PlayRough:
	setvar 0x8005 114	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
PollenPuff:
	setvar 0x8005 115	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
PowerGem:
	setvar 0x8005 116	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
PsychicFangs:
	setvar 0x8005 117
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
PsychoCut:
	setvar 0x8005 118	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother3
	goto PayMoney3
	release
	end
BraveBird:
	setvar 0x8005 119	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
CloseCombat:
	setvar 0x8005 120
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
FlareBlitz:
	setvar 0x8005 121	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
Hurricane:
	setvar 0x8005 122	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
HydroPump:
	setvar 0x8005 123	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
LeafStorm:
	setvar 0x8005 124	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
Megahorn:
	setvar 0x8005 125	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
PowerWhip:
	setvar 0x8005 126
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
SolarBlade:
	setvar 0x8005 127	
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
ExpandingForce:	
	setvar 0x8005 128
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
SteelRoller:	
	setvar 0x8005 129
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
ScaleShot:	
	setvar 0x8005 130
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
MeteorBeam:	
	setvar 0x8005 131
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
MistyExplosion:	
	setvar 0x8005 132
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
GrassyGlide:	
	setvar 0x8005 133
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
RisingVoltage:	
	setvar 0x8005 134
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
TerrainPulse:	
	setvar 0x8005 135
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
SkitterSmack:	
	setvar 0x8005 136
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
BurningJealousy:	
	setvar 0x8005 137
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
LashOut:	
	setvar 0x8005 138
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
Poltergeist:	
	setvar 0x8005 139
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
CorrosiveGas:	
	setvar 0x8005 140
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
Coaching:	
	setvar 0x8005 141
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
FlipTurn:	
	setvar 0x8005 142
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
TripleAxel:	
	setvar 0x8005 143
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
DualWingbeat:	
	setvar 0x8005 144
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
ScorchingSands:	
	setvar 0x8005 145
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
Softboiled:	
	setvar 0x8005 146
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end
Moonblast:	
	setvar 0x8005 147
	special 0x18D
	waitstate
	compare LASTRESULT 0x0 
    if 0x1 _goto WantAnother4
	goto PayMoney4
	release
	end	
