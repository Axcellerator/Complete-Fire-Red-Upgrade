#include "../config.h"


static struct Raid sRoute2Raids2Star[] =
{
	{
		.species = SPECIES_CHARMANDER,
		.ability = RAID_ABILITY_HIDDEN, //ability. can be RAID_ABILITY_1, (first ability), RAID_ABILITY_2, (second), RAID_ABILITY_HIDDEN, (hidden), RAID_ABILITY_RANDOM_1_2, (first or second), RAID_ABILITY_RANDOM_ALL, (any).
		.drops =
		{
		/*100 %*/ ITEM_POTION,
		/* 80 %*/ ITEM_POTION ,
		/* 80 %*/ ITEM_POTION ,
		/* 50 %*/ ITEM_POTION ,
		/* 50 %*/ ITEM_POTION ,
		/* 30 %*/ ITEM_POTION ,
		/* 30 %*/ ITEM_POTION ,
		/* 25 %*/ ITEM_POTION ,
		/* 25 %*/ ITEM_POTION ,
		/*  5 %*/ ITEM_POTION , 
		/*  4 %*/ ITEM_POTION ,
		/*  1 %*/ ITEM_POTION ,
		},
	},
};


const struct RaidData gRaidsByMapSection[KANTO_MAPSEC_COUNT][RAID_STAR_COUNT] =
{
	
	[MAPSEC_ROUTE_2 - MAPSEC_DYNAMIC] =
	{
		[TWO_STAR_RAID] = {sRoute2Raids2Star, NELEMS(sRoute2Raids2Star)},
		[THREE_STAR_RAID] = {sRoute2Raids2Star, NELEMS(sRoute2Raids2Star)},
		[FOUR_STAR_RAID] = {sRoute2Raids2Star, NELEMS(sRoute2Raids2Star)},
		[FIVE_STAR_RAID] = {sRoute2Raids2Star, NELEMS(sRoute2Raids2Star)},
		[SIX_STAR_RAID] = {sRoute2Raids2Star, NELEMS(sRoute2Raids2Star)},
	},
	
};

// const struct RaidData gRaidsByMapSection[KANTO_MAPSEC_COUNT][RAID_STAR_COUNT] =
// {
// };


