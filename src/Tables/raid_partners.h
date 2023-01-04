#include "../config.h"
#include "../../include/constants/species.h"
#include "../../include/constants/items.h"
#include "../../include/constants/moves.h"


static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank12[] =
{
	{
		.species = SPECIES_GROVYLE, //pokemon species. examples are: SPECIES_BULBASAUR, SPECIES_ZAPDOS, etc.
		.nature = NATURE_ADAMANT, //nature
		.hpIv = 31, //iv
		.atkIv = 31, //iv
		.defIv = 31, //iv
		.spAtkIv = 0, //iv 
		.spDefIv = 31, //iv
		.spdIv = 31, //iv
		.atkEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.spDefEv = 4, //evs. same naming scheme as the ivs except replace iv with ev.
		.spdEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.ability = FRONTIER_ABILITY_1, //ability. same as raid abilities except with frontier at the start instead of raid
		.item = ITEM_MIRACLE_SEED, //item
		.moves = 
		{
			MOVE_XSCISSOR, //move 1
			MOVE_ASSURANCE, //move 2
			MOVE_DETECT, //move 3
			MOVE_QUICKATTACK, //move 4
		},
		.ball = BALL_TYPE_POKE_BALL, //ball
		.forSingles = TRUE, //?
		.forDoubles = TRUE, //?
		.modifyMovesDoubles = FALSE, //?
	},
	{
		.species = SPECIES_WAILMER,
		.nature = NATURE_SASSY,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 0,
		.defEv = 252,
		.hpEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_ICEBEAM,
			MOVE_PROTECT,
			MOVE_SCALD,
			MOVE_AQUARING,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_MAGCARGO,
		.nature = NATURE_RELAXED,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.spAtkEv = 128,
		.spDefEv = 128,
		.defEv = 252,
		.ability = FRONTIER_ABILITY_2,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_EARTHPOWER,
			MOVE_LAVAPLUME,
			MOVE_ANCIENTPOWER,
			MOVE_CLEARSMOG,
		},
		.ball = BALL_TYPE_SAFARI_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	}
};

static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank34[] =
{
	{
		.species = SPECIES_SCEPTILE, //pokemon species. examples are: SPECIES_BULBASAUR, SPECIES_ZAPDOS, etc.
		.nature = NATURE_ADAMANT, //nature
		.hpIv = 31, //iv
		.atkIv = 31, //iv
		.defIv = 31, //iv
		.spAtkIv = 0, //iv 
		.spDefIv = 31, //iv
		.spdIv = 31, //iv
		.atkEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.spDefEv = 4, //evs. same naming scheme as the ivs except replace iv with ev.
		.spdEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.ability = FRONTIER_ABILITY_1, //ability. same as raid abilities except with frontier at the start instead of raid
		.item = ITEM_MIRACLE_SEED, //item
		.moves = 
		{
			MOVE_XSCISSOR, //move 1
			MOVE_LEAFBLADE, //move 2
			MOVE_DRAGONDANCE, //move 3
			MOVE_DUALCHOP, //move 4
		},
		.ball = BALL_TYPE_POKE_BALL, //ball
		.forSingles = TRUE, //?
		.forDoubles = TRUE, //?
		.modifyMovesDoubles = FALSE, //?
	},
	{
		.species = SPECIES_WAILORD,
		.nature = NATURE_SASSY,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 0,
		.defEv = 252,
		.hpEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_ICEBEAM,
			MOVE_PROTECT,
			MOVE_WATERSPOUT,
			MOVE_AQUARING,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_SWELLOW,
		.nature = NATURE_JOLLY,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.spdEv = 252,
		.defEv = 4,
		.ability = FRONTIER_ABILITY_1,
		.item = ITEM_FLAME_ORB,
		.moves =
		{
			MOVE_AERIALACE,
			MOVE_BRAVEBIRD,
			MOVE_UTURN,
			MOVE_FACADE,
		},
		.ball = BALL_TYPE_FAST_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	}
};

static const struct BattleTowerSpread sRaidPartnerSpread_May_Rank12[] =
{
	{
		.species = SPECIES_COMBUSKEN, //pokemon species. examples are: SPECIES_BULBASAUR, SPECIES_ZAPDOS, etc.
		.nature = NATURE_ADAMANT, //nature
		.hpIv = 31, //iv
		.atkIv = 31, //iv
		.defIv = 31, //iv
		.spAtkIv = 0, //iv 
		.spDefIv = 31, //iv
		.spdIv = 31, //iv
		.atkEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.spDefEv = 4, //evs. same naming scheme as the ivs except replace iv with ev.
		.spdEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.ability = FRONTIER_ABILITY_HIDDEN, //ability. same as raid abilities except with frontier at the start instead of raid
		.item = ITEM_MUSCLE_BAND, //item
		.moves = 
		{
			MOVE_FLAMECHARGE, //move 1
			MOVE_AERIALACE, //move 2
			MOVE_BULKUP, //move 3
			MOVE_BRICKBREAK, //move 4
		},
		.ball = BALL_TYPE_POKE_BALL, //ball
		.forSingles = TRUE, //?
		.forDoubles = TRUE, //?
		.modifyMovesDoubles = FALSE, //?
	},
	{
		.species = SPECIES_BEAUTIFLY,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.spdEv = 252,
		.spDefEv = 4,
		.spAtkEv = 252,
		.ability = FRONTIER_ABILITY_1,
		.item = ITEM_SILVER_POWDER,
		.moves =
		{
			MOVE_BUGBUZZ,
			MOVE_PSYCHIC,
			MOVE_QUIVERDANCE,
			MOVE_GIGADRAIN,
		},
		.ball = BALL_TYPE_NET_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_SKITTY,
		.nature = NATURE_SERIOUS,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.defEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_1,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_BABYDOLLEYES,
			MOVE_SING,
			MOVE_COPYCAT,
			MOVE_DIG,
		},
		.ball = BALL_TYPE_LOVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	}
};

static const struct BattleTowerSpread sRaidPartnerSpread_May_Rank34[] =
{
	{
		.species = SPECIES_BLAZIKEN, //pokemon species. examples are: SPECIES_BULBASAUR, SPECIES_ZAPDOS, etc.
		.nature = NATURE_ADAMANT, //nature
		.hpIv = 31, //iv
		.atkIv = 31, //iv
		.defIv = 31, //iv
		.spAtkIv = 0, //iv 
		.spDefIv = 31, //iv
		.spdIv = 31, //iv
		.atkEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.spDefEv = 4, //evs. same naming scheme as the ivs except replace iv with ev.
		.spdEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.ability = FRONTIER_ABILITY_HIDDEN, //ability. same as raid abilities except with frontier at the start instead of raid
		.item = ITEM_MUSCLE_BAND, //item
		.moves = 
		{
			MOVE_BLAZEKICK, //move 1
			MOVE_CLOSECOMBAT, //move 2
			MOVE_BULKUP, //move 3
			MOVE_BRAVEBIRD, //move 4
		},
		.ball = BALL_TYPE_POKE_BALL, //ball
		.forSingles = TRUE, //?
		.forDoubles = TRUE, //?
		.modifyMovesDoubles = FALSE, //?
	},
	{
		.species = SPECIES_LOPUNNY,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.hpEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_DRAINPUNCH,
			MOVE_BOUNCE,
			MOVE_CHARM,
			MOVE_DOUBLEHIT,
		},
		.ball = BALL_TYPE_DREAM_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_BRELOOM,
		.nature = NATURE_JOLLY,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.spdEv = 252,
		.defEv = 4,
		.ability = FRONTIER_ABILITY_2,
		.item = ITEM_TOXIC_ORB,
		.moves =
		{
			MOVE_SPORE,
			MOVE_SEEDBOMB,
			MOVE_DRAINPUNCH,
			MOVE_STONEEDGE,
		},
		.ball = BALL_TYPE_HEAVY_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	}
};

static const struct BattleTowerSpread sRaidPartnerSpread_OldMan_Rank12[] =
{
	{
		.species = SPECIES_BEEDRILL, //pokemon species. examples are: SPECIES_BULBASAUR, SPECIES_ZAPDOS, etc.
		.nature = NATURE_ADAMANT, //nature
		.hpIv = 31, //iv
		.atkIv = 31, //iv
		.defIv = 31, //iv
		.spAtkIv = 31, //iv 
		.spDefIv = 31, //iv
		.spdIv = 31, //iv
		.atkEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.defEv = 4, //evs. same naming scheme as the ivs except replace iv with ev.
		.spdEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.ability = FRONTIER_ABILITY_HIDDEN, //ability. same as raid abilities except with frontier at the start instead of raid
		.item = ITEM_RAZOR_CLAW, //item
		.moves = 
		{
			MOVE_SWORDSDANCE, //move 1
			MOVE_FOCUSENERGY, //move 2
			MOVE_PINMISSILE, //move 3
			MOVE_POISONJAB, //move 4
		},
		.ball = BALL_TYPE_POKE_BALL, //ball
		.forSingles = TRUE, //?
		.forDoubles = TRUE, //?
		.modifyMovesDoubles = FALSE, //?
	},
	{
          //some more example mons. you can remove some if you don't want a team of 3.
		.species = SPECIES_RATICATE,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.hpEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_2,
		.item = ITEM_FLAME_ORB,
		.moves =
		{
			MOVE_CRUNCH,
			MOVE_FACADE,
			MOVE_DIG,
			MOVE_FLAMEWHEEL,
		},
		.ball = BALL_TYPE_SPORT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_PIDGEOTTO,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.defEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_2,
		.item = ITEM_QUICK_CLAW,
		.moves =
		{
			MOVE_AERIALACE,
			MOVE_ROOST,
			MOVE_UTURN,
			MOVE_SWAGGER,
		},
		.ball = BALL_TYPE_FAST_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	}
};

static const struct BattleTowerSpread sRaidPartnerSpread_Mamos_Rank3[] =
{
	{
		.species = SPECIES_CHARMANDER, //pokemon species. examples are: SPECIES_BULBASAUR, SPECIES_ZAPDOS, etc.
		.nature = NATURE_TIMID, //nature
		.hpIv = 31, //iv
		.atkIv = 0, //iv
		.defIv = 31, //iv
		.spAtkIv = 31, //iv 
		.spDefIv = 31, //iv
		.spdIv = 31, //iv
		.spAtkEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.spDefEv = 4, //evs. same naming scheme as the ivs except replace iv with ev.
		.spdEv = 252, //evs. same naming scheme as the ivs except replace iv with ev.
		.ability = FRONTIER_ABILITY_2, //ability. same as raid abilities except with frontier at the start instead of raid
		.item = ITEM_CHOICE_SPECS, //item
		.moves = 
		{
			MOVE_BUGBUZZ, //move 1
			MOVE_AIRSLASH, //move 2
			MOVE_UTURN, //move 3
			MOVE_GIGADRAIN, //move 4
		},
		.ball = BALL_TYPE_GREAT_BALL, //ball
		.forSingles = TRUE, //?
		.forDoubles = TRUE, //?
		.modifyMovesDoubles = FALSE, //?
	},
	{
          //some more example mons. you can remove some if you don't want a team of 3.
		.species = SPECIES_SLURPUFF,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.hpEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_2,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_BELLYDRUM,
			MOVE_RETURN,
			MOVE_PLAYROUGH,
			MOVE_DRAINPUNCH,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_MAGMORTAR,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.spAtkEv = 252,
		.spDefEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_2,
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_FIREBLAST,
			MOVE_FOCUSBLAST,
			MOVE_THUNDERBOLT,
			MOVE_TAUNT,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	}
};

extern const u8 sTrainerName_Brendan[];
extern const u8 sTrainerName_May[];
extern const u8 sTrainerName_OldMan[];
extern const u8 sTrainerName_Mamos[];


const struct MultiRaidTrainer gRaidPartners[] =
{
	{
		.owNum = EVENT_OBJ_GFX_BRENDAN, //example. you can find more in include/constants/event_objects.h or you can use the number in AdvanceMap. Example: 9
		.trainerClass = CLASS_PKMN_TRAINER_1, //trainer class. leave this if you want the class to be PkMn Trainer.
		.backSpriteId = TRAINER_BACK_PIC_BRENDAN , //back sprite. this back sprite is NOT in CFRU by default and WILL error for you. If you want to add your own, go to page 61 in the CFRU documentation, or use one found in include/constants/trainers.h
		.gender = MALE, //male or female
		.otId = 0x87116209, //trainer ot. i dont modify this.
		.name = sTrainerName_Brendan, //set this to the name you added before.
		.spreads =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = sRaidPartnerSpread_Brendan_Rank12, // the ... in the middle of ONE_STAR and THREE_STAR means ONE_STAR, TWO_STAR, and THREE_STAR raids will use this trainer.
			[THREE_STAR_RAID ... FOUR_STAR_RAID] = sRaidPartnerSpread_Brendan_Rank34,
                        
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = NELEMS(sRaidPartnerSpread_Brendan_Rank12),
		    [THREE_STAR_RAID ... FOUR_STAR_RAID] = NELEMS(sRaidPartnerSpread_Brendan_Rank34),
		},
	},
	
	{
		.owNum = EVENT_OBJ_GFX_MAY, //example. you can find more in include/constants/event_objects.h or you can use the number in AdvanceMap. Example: 9
		.trainerClass = CLASS_PKMN_TRAINER_1, //trainer class. leave this if you want the class to be PkMn Trainer.
		.backSpriteId = TRAINER_BACK_PIC_MAY , //back sprite. this back sprite is NOT in CFRU by default and WILL error for you. If you want to add your own, go to page 61 in the CFRU documentation, or use one found in include/constants/trainers.h
		.gender = FEMALE, //male or female
		.otId = 0x87116209, //trainer ot. i dont modify this.
		.name = sTrainerName_May, //set this to the name you added before.
		.spreads =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = sRaidPartnerSpread_May_Rank12, // the ... in the middle of ONE_STAR and THREE_STAR means ONE_STAR, TWO_STAR, and THREE_STAR raids will use this trainer.
			[THREE_STAR_RAID ... FOUR_STAR_RAID] = sRaidPartnerSpread_May_Rank34,
                        
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank12),
		    [THREE_STAR_RAID ... FOUR_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank34),
		},
	},
	
	{
		.owNum = EVENT_OBJ_GFX_OLD_MAN, //example. you can find more in include/constants/event_objects.h or you can use the number in AdvanceMap. Example: 9
		.trainerClass = CLASS_PKMN_TRAINER_1, //trainer class. leave this if you want the class to be PkMn Trainer.
		.backSpriteId = TRAINER_BACK_PIC_OLD_MAN, //back sprite. this back sprite is NOT in CFRU by default and WILL error for you. If you want to add your own, go to page 61 in the CFRU documentation, or use one found in include/constants/trainers.h
		.gender = MALE, //male or female
		.otId = 0x87116209, //trainer ot. i dont modify this.
		.name = sTrainerName_OldMan, //set this to the name you added before.
		.spreads =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = sRaidPartnerSpread_OldMan_Rank12,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = NELEMS(sRaidPartnerSpread_OldMan_Rank12),
		},
	},
	
	{
		.owNum = EVENT_OBJ_GFX_CRUSH_GIRL, //example. you can find more in include/constants/event_objects.h or you can use the number in AdvanceMap. Example: 9
		.trainerClass = CLASS_PKMN_TRAINER_1, //trainer class. leave this if you want the class to be PkMn Trainer.
		.backSpriteId = TRAINER_BACK_PIC_RED, //back sprite. this back sprite is NOT in CFRU by default and WILL error for you. If you want to add your own, go to page 61 in the CFRU documentation, or use one found in include/constants/trainers.h
		.gender = FEMALE, //male or female
		.otId = 0x87116209, //trainer ot. i dont modify this.
		.name = sTrainerName_Mamos, //set this to the name you added before.
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Mamos_Rank3, // the ... in the middle of ONE_STAR and THREE_STAR means ONE_STAR, TWO_STAR, and THREE_STAR raids will use this trainer.
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = sRaidPartnerSpread_Mamos_Rank3,
      
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Mamos_Rank3),
		    [FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Mamos_Rank3),
		},
	},
};

const u8 gNumRaidPartners = NELEMS(gRaidPartners);