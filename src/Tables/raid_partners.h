#include "../config.h"


// #ifdef UNBOUND

static const struct BattleTowerSpread sRaidPartnerSpread_Catherine_Rank12[] =
{
	{
		.species = SPECIES_SHELLOS_EAST,
		.nature = NATURE_BOLD,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spdEv = 4,
		.ability = FRONTIER_ABILITY_2, //ABILITY_STORMDRAIN
		.item = ITEM_EVIOLITE,
		.moves =
		{
			MOVE_SCALD,
			MOVE_CLEARSMOG,
			MOVE_MUDBOMB,
			MOVE_RECOVER,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_ALOMOMOLA,
		.nature = NATURE_IMPISH,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_HEALER
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_AQUAJET,
			MOVE_MIRRORCOAT,
			MOVE_WISH,
			MOVE_HEALPULSE,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_WARTORTLE,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_RAINDISH
		.item = ITEM_IAPAPA_BERRY,
		.moves =
		{
			MOVE_AQUATAIL,
			MOVE_ICEPUNCH,
			MOVE_POWERUPPUNCH,
			MOVE_RAINDANCE,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Catherine_Rank3[] =
{
	{
		.species = SPECIES_GASTRODON_EAST,
		.nature = NATURE_BOLD,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spAtkEv = 4,
		.ability = FRONTIER_ABILITY_2, //ABILITY_STORMDRAIN
		.item = ITEM_WIKI_BERRY,
		.moves =
		{
			MOVE_SCALD,
			MOVE_MUDBOMB,
			MOVE_CLEARSMOG,
			MOVE_RECOVER,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_ALOMOMOLA,
		.nature = NATURE_IMPISH,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_HEALER
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_AQUAJET,
			MOVE_MIRRORCOAT,
			MOVE_WISH,
			MOVE_HEALPULSE,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_BLASTOISE,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_RAINDISH
		.item = ITEM_DAMP_ROCK,
		.moves =
		{
			MOVE_AQUATAIL,
			MOVE_ICEPUNCH,
			MOVE_POWERUPPUNCH,
			MOVE_RAINDANCE,
		},
		.ball = BALL_TYPE_DIVE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

// static const struct BattleTowerSpread sRaidPartnerSpread_Catherine_Rank456[] =
// {
// 	{
// 		.species = SPECIES_GASTRODON_EAST,
// 		.nature = NATURE_BOLD,
// 		.hpIv = 31,
// 		.atkIv = 0,
// 		.defIv = 31,
// 		.spAtkIv = 31,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.defEv = 252,
// 		.spAtkEv = 4,
// 		.ability = FRONTIER_ABILITY_2, //ABILITY_STORMDRAIN
// 		.item = ITEM_LEFTOVERS,
// 		.moves =
// 		{
// 			MOVE_SCALD,
// 			MOVE_EARTHPOWER,
// 			MOVE_CLEARSMOG,
// 			MOVE_RECOVER,
// 		},
// 		.ball = BALL_TYPE_DIVE_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// 	{
// 		.species = SPECIES_ALOMOMOLA,
// 		.nature = NATURE_IMPISH,
// 		.hpIv = 31,
// 		.atkIv = 31,
// 		.defIv = 31,
// 		.spAtkIv = 0,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.defEv = 252,
// 		.ability = FRONTIER_ABILITY_1, //ABILITY_HEALER
// 		.item = ITEM_LEFTOVERS,
// 		.moves =
// 		{
// 			MOVE_AQUAJET,
// 			MOVE_MIRRORCOAT,
// 			MOVE_WISH,
// 			MOVE_HEALPULSE,
// 		},
// 		.ball = BALL_TYPE_DIVE_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// 	{
// 		.species = SPECIES_BLASTOISE,
// 		.nature = NATURE_MODEST,
// 		.hpIv = 31,
// 		.atkIv = 0,
// 		.defIv = 31,
// 		.spAtkIv = 31,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.spAtkEv = 252,
// 		.spDefEv = 4,
// 		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_RAINDISH
// 		.item = ITEM_BLASTOISINITE,
// 		.moves =
// 		{
// 			MOVE_WATERPULSE,
// 			MOVE_AURASPHERE,
// 			MOVE_DARKPULSE,
// 			MOVE_FLASHCANNON,
// 		},
// 		.ball = BALL_TYPE_DIVE_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// };

static const struct BattleTowerSpread sRaidPartnerSpread_Ginger_Rank123[] =
{
	{
		.species = SPECIES_VIVILLON,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_FRIENDGUARD
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_INFESTATION,
			MOVE_ELECTROWEB,
			MOVE_LIGHTSCREEN,
			MOVE_PROTECT,
		},
		.ball = BALL_TYPE_NET_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_CLEFAIRY,
		.nature = NATURE_CALM,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_FRIENDGUARD
		.item = ITEM_EVIOLITE,
		.moves =
		{
			MOVE_MOONBLAST,
			MOVE_HELPINGHAND,
			MOVE_FOLLOWME,
			MOVE_LIFEDEW,
		},
		.ball = BALL_TYPE_MOON_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_AUDINO,
		.nature = NATURE_CALM,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_HEALER
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_DAZZLINGGLEAM,
			MOVE_FLAMETHROWER,
			MOVE_HEALPULSE,
			MOVE_WISH,
		},
		.ball = BALL_TYPE_PREMIER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

// static const struct BattleTowerSpread sRaidPartnerSpread_Ginger_Rank456[] =
// {
// 	{
// 		.species = SPECIES_VIVILLON,
// 		.nature = NATURE_TIMID,
// 		.hpIv = 31,
// 		.atkIv = 0,
// 		.defIv = 31,
// 		.spAtkIv = 31,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.defEv = 4,
// 		.spdEv = 252,
// 		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_FRIENDGUARD
// 		.item = ITEM_LEFTOVERS,
// 		.moves =
// 		{
// 			MOVE_INFESTATION,
// 			MOVE_ELECTROWEB,
// 			MOVE_LIGHTSCREEN,
// 			MOVE_PROTECT,
// 		},
// 		.ball = BALL_TYPE_NET_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// 	{
// 		.species = SPECIES_CLEFABLE,
// 		.nature = NATURE_CALM,
// 		.hpIv = 31,
// 		.atkIv = 0,
// 		.defIv = 31,
// 		.spAtkIv = 31,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.spAtkEv = 4,
// 		.spDefEv = 252,
// 		.ability = FRONTIER_ABILITY_2, //ABILITY_MAGICGUARD
// 		.item = ITEM_LEFTOVERS,
// 		.moves =
// 		{
// 			MOVE_MOONBLAST,
// 			MOVE_FOLLOWME,
// 			MOVE_MAGICCOAT,
// 			MOVE_LIFEDEW,
// 		},
// 		.ball = BALL_TYPE_MOON_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// 	{
// 		.species = SPECIES_AUDINO,
// 		.nature = NATURE_CALM,
// 		.hpIv = 31,
// 		.atkIv = 0,
// 		.defIv = 31,
// 		.spAtkIv = 31,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.defEv = 4,
// 		.spDefEv = 252,
// 		.ability = FRONTIER_ABILITY_1, //ABILITY_HEALER
// 		.item = ITEM_AUDINITE,
// 		.moves =
// 		{
// 			MOVE_DAZZLINGGLEAM,
// 			MOVE_HELPINGHAND,
// 			MOVE_HEALPULSE,
// 			MOVE_WISH,
// 		},
// 		.ball = BALL_TYPE_PREMIER_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// };

static const struct BattleTowerSpread sRaidPartnerSpread_Mahina_Rank23[] =
{
	{
		.species = SPECIES_FOONGUS,
		.nature = NATURE_CALM,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_REGENERATOR
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_GIGADRAIN,
			MOVE_VENOSHOCK,
			MOVE_CLEARSMOG,
			MOVE_TOXIC,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_AXEW,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_2, //ABILITY_MOLDBREAKER
		.item = ITEM_EXPERT_BELT,
		.moves =
		{
			MOVE_DRAGONCLAW,
			MOVE_AQUATAIL,
			MOVE_POISONJAB,
			MOVE_XSCISSOR,
		},
		.ball = BALL_TYPE_DUSK_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_ONIX,
		.nature = NATURE_CAREFUL,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_2, //ABILITY_STURDY
		.item = ITEM_EVIOLITE,
		.moves =
		{
			MOVE_ROCKSLIDE,
			MOVE_STOMPINGTANTRUM,
			MOVE_IRONHEAD,
			MOVE_BIND,
		},
		.ball = BALL_TYPE_DUSK_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

// static const struct BattleTowerSpread sRaidPartnerSpread_Abimbola_Rank456[] =
// {
// 	{
// 		.species = SPECIES_AMOONGUSS,
// 		.nature = NATURE_CALM,
// 		.hpIv = 31,
// 		.atkIv = 0,
// 		.defIv = 31,
// 		.spAtkIv = 31,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.hpEv = 252,
// 		.spAtkEv = 4,
// 		.spDefEv = 252,
// 		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_REGENERATOR
// 		.item = ITEM_LEFTOVERS,
// 		.moves =
// 		{
// 			MOVE_GIGADRAIN,
// 			MOVE_SLUDGEBOMB,
// 			MOVE_RAGEPOWDER,
// 			MOVE_SPORE,
// 		},
// 		.ball = BALL_TYPE_GREAT_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// 	{
// 		.species = SPECIES_HAXORUS,
// 		.nature = NATURE_ADAMANT,
// 		.hpIv = 31,
// 		.atkIv = 31,
// 		.defIv = 31,
// 		.spAtkIv = 0,
// 		.spDefIv = 31,
// 		.spdIv = 31,
// 		.atkEv = 252,
// 		.defEv = 252,
// 		.spdEv = 4,
// 		.ability = FRONTIER_ABILITY_2, //ABILITY_MOLDBREAKER
// 		.item = ITEM_LEFTOVERS,
// 		.moves =
// 		{
// 			MOVE_DRAGONCLAW,
// 			MOVE_AQUATAIL,
// 			MOVE_POISONJAB,
// 			MOVE_SWORDSDANCE,
// 		},
// 		.ball = BALL_TYPE_DUSK_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// 	{
// 		.species = SPECIES_STEELIX,
// 		.nature = NATURE_BRAVE,
// 		.hpIv = 31,
// 		.atkIv = 31,
// 		.defIv = 31,
// 		.spAtkIv = 0,
// 		.spDefIv = 31,
// 		.spdIv = 0,
// 		.hpEv = 252,
// 		.atkEv = 252,
// 		.spDefEv = 4,
// 		.ability = FRONTIER_ABILITY_2, //ABILITY_STURDY
// 		.item = ITEM_STEELIXITE,
// 		.moves =
// 		{
// 			MOVE_GYROBALL,
// 			MOVE_STOMPINGTANTRUM,
// 			MOVE_AQUATAIL,
// 			MOVE_FIREFANG,
// 		},
// 		.ball = BALL_TYPE_DUSK_BALL,
// 		.forSingles = TRUE,
// 		.forDoubles = TRUE,
// 		.modifyMovesDoubles = FALSE,
// 	},
// };

static const struct BattleTowerSpread sRaidPartnerSpread_Mahina_Rank456[] =
{
	{
		.species = SPECIES_GYARADOS,
		.nature = NATURE_CAREFUL,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_INTIMIDATE
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_AQUATAIL,
			MOVE_CRUNCH,
			MOVE_IRONHEAD,
			MOVE_POWERWHIP,
		},
		.ball = BALL_TYPE_LURE_BALL,
		.shiny = TRUE,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_VOLCARONA,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.defEv = 4,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_FLAMEBODY
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_BUGBUZZ,
			MOVE_FIERYDANCE,
			MOVE_LIGHTSCREEN,
			MOVE_ROOST,
		},
		.ball = BALL_TYPE_LUXURY_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_VENUSAUR,
		.nature = NATURE_BOLD,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.defEv = 252,
		.spAtkEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_CHLOROPHYLL
		.item = ITEM_VENUSAURITE,
		.moves =
		{
			MOVE_GRASSPLEDGE,
			MOVE_SLUDGEBOMB,
			MOVE_WEATHERBALL,
			MOVE_LEECHSEED,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Leaf_Rank456[] =
{
	{
		.species = SPECIES_FLAREON,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spdEv = 4,
		.atkEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_FLASHFIRE
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_SACREDFIRE,
			MOVE_WILDCHARGE,
			MOVE_BODYSLAM,
			MOVE_WILLOWISP,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_JOLTEON,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 0,
		.hpEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_VOLTABSORB
		.item = ITEM_FOCUS_SASH,
		.moves =
		{
			MOVE_THUNDERBOLT,
			MOVE_SHADOWBALL,
			MOVE_CHARGEBEAM,
			MOVE_HYPERVOICE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.shiny = TRUE,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_VAPOREON,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.spdEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_WATERABSORB
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_SCALD,
			MOVE_WISH,
			MOVE_PROTECT,
			MOVE_ICEBEAM,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Red_Rank56[] =
{
	{
		.species = SPECIES_SNORLAX,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1,
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_BODYSLAM,
			MOVE_EARTHQUAKE,
			MOVE_FIREPUNCH,
			MOVE_DARKESTLARIAT,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_VENUSAUR,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 196,
		.spAtkEv = 252,
		.spdEv = 60,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_ADAPTABILITY
		.item = ITEM_BLACK_SLUDGE,
		.moves =
		{
			MOVE_GIGADRAIN,
			MOVE_SLUDGEBOMB,
			MOVE_LEECHSEED,
			MOVE_SLEEPPOWDER,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_RAICHU,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_LIGHTNINGROD
		.item = ITEM_FOCUS_SASH,
		.moves =
		{
			MOVE_THUNDERBOLT,
			MOVE_SURF,
			MOVE_FOCUSBLAST,
			MOVE_GRASSKNOT,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_MEW,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, 
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_PSYCHIC,
			MOVE_AURASPHERE,
			MOVE_FLAMETHROWER,
			MOVE_ICEBEAM,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_CHARIZARD,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.spDefEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_CLEARBODY
		.item = ITEM_CHARIZARDITE_X,
		.moves =
		{
			MOVE_FIREPUNCH,
			MOVE_THUNDERPUNCH,
			MOVE_DRAGONCLAW,
			MOVE_EARTHQUAKE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Marlon_Rank56[] =
{
	{
		.species = SPECIES_MACHAMP,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 0,
		.hpEv = 252,
		.atkEv = 4,
		.spDefEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_GUTS
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_BRICKBREAK,
			MOVE_ICEPUNCH,
			MOVE_BULLETPUNCH,
			MOVE_WIDEGUARD,
		},
		.ball = BALL_TYPE_DUSK_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
		.gigantamax = TRUE,
	},
	{
		.species = SPECIES_KROOKODILE,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 0,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_INTIMIDATE
		.item = ITEM_ASSAULT_VEST,
		.moves =
		{
			MOVE_STOMPINGTANTRUM,
			MOVE_DARKESTLARIAT,
			MOVE_AQUATAIL,
			MOVE_THUNDERFANG,
		},
		.ball = BALL_TYPE_DUSK_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_ZAPDOS,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_STATIC
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_THUNDERBOLT,
			MOVE_HEATWAVE,
			MOVE_OMINOUSWIND,
			MOVE_ROOST,
		},
		.ball = BALL_TYPE_DUSK_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank6[] =
{
	{
		.species = SPECIES_SCEPTILE,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_IRONFIST
		.item = ITEM_SCEPTILITE,
		.moves =
		{
			MOVE_GIGADRAIN,
			MOVE_DRAGONPULSE,
			MOVE_FOCUSBLAST,
			MOVE_TOXIC,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_EXPLOUD,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 0,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_PUNKROCK
		.item = ITEM_SILK_SCARF,
		.moves =
		{
			MOVE_HYPERVOICE,
			MOVE_FLAMETHROWER,
			MOVE_SURF,
			MOVE_ICEBEAM,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_LATIOS,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.defEv = 252,
		.spdEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_LEVITTE
		.item = ITEM_SOUL_DEW,
		.moves =
		{
			MOVE_DRAGONPULSE,
			MOVE_SURF,
			MOVE_PSYCHIC,
			MOVE_AURASPHERE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_May_Rank6[] =
{
	{
		.species = SPECIES_BLAZIKEN,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.spDefEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_SPEEDBOOST
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_FLAREBLITZ,
			MOVE_CLOSECOMBAT,
			MOVE_EARTHQUAKE,
			MOVE_ROCKSLIDE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_FLYGON,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 4,
		.atkEv = 252,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_TINTEDLENS
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_EARTHQUAKE,
			MOVE_OUTRAGE,
			MOVE_DRACOMETEOR,
			MOVE_FIREBLAST,
		},
		.ball = BALL_TYPE_MASTER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
		.gigantamax = TRUE,
	},
	{
		.species = SPECIES_LATIAS,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 4,
		.spAtkEv = 252,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_LEVITATE
		.item = ITEM_LATIASITE,
		.moves =
		{
			MOVE_ZENHEADBUTT,
			MOVE_POWERUPPUNCH,
			MOVE_POISONJAB,
			MOVE_RECOVER,
		},
		.ball = BALL_TYPE_MASTER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

// extern const u8 sTrainerName_Catherine[];
// extern const u8 sTrainerName_Ginger[];
// extern const u8 sTrainerName_Abimbola[];
extern const u8 sTrainerName_Mahina[];
extern const u8 sTrainerName_Alford[];
extern const u8 sTrainerName_Marlon[];
extern const u8 sTrainerName_Jax[];
extern const u8 sTrainerName_May[];
extern const u8 sTrainerName_Red[];

const struct MultiRaidTrainer gRaidPartners[] =
{
	// {
	// 	.owNum = EVENT_OBJ_GFX_SABRINA,
	// 	.trainerClass = CLASS_PKMN_TRAINER_2,
	// 	.backSpriteId = TRAINER_BACK_PIC_LEAF,
	// 	.gender = FEMALE,
	// 	.otId = 0xCD2F27AB,
	// 	.name = sTrainerName_Catherine,
	// 	.spreads =
	// 	{
	// 		[ONE_STAR_RAID ... TWO_STAR_RAID] =	 sRaidPartnerSpread_Catherine_Rank12,
	// 		[THREE_STAR_RAID] =				 	 sRaidPartnerSpread_Catherine_Rank3,
	// 		// [FOUR_STAR_RAID ... SIX_STAR_RAID] =	 sRaidPartnerSpread_Catherine_Rank456,
	// 	},
	// 	.spreadSizes =
	// 	{
	// 		[ONE_STAR_RAID ... TWO_STAR_RAID] =   NELEMS(sRaidPartnerSpread_Catherine_Rank12),
	// 		[THREE_STAR_RAID] = 				 NELEMS(sRaidPartnerSpread_Catherine_Rank3),
	// 		// [FOUR_STAR_RAID ... SIX_STAR_RAID] =  NELEMS(sRaidPartnerSpread_Catherine_Rank456),
	// 	},
	// },
	// {
	// 	.owNum = EVENT_OBJ_GFX_BLAINE,
	// 	.trainerClass = CLASS_PKMN_TRAINER_2,
	// 	.backSpriteId = TRAINER_BACK_PIC_LEAF,
	// 	.gender = FEMALE,
	// 	.otId = 0xAD5C417B,
	// 	.name = sTrainerName_Ginger,
	// 	.spreads =
	// 	{
	// 		[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Ginger_Rank123,
	// 		// [FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Ginger_Rank456,
	// 	},
	// 	.spreadSizes =
	// 	{
	// 		[ONE_STAR_RAID ... THREE_STAR_RAID] =  NELEMS(sRaidPartnerSpread_Ginger_Rank123),
	// 		// [FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Ginger_Rank456),
	// 	},
	// },
	// {
	// 	.owNum = EVENT_OBJ_GFX_GIOVANNI,
	// 	.trainerClass = CLASS_PKMN_TRAINER_2,
	// 	.backSpriteId = TRAINER_BACK_PIC_LEAF,
	// 	.gender = MALE,
	// 	.otId = 0x2EC3AEBC,
	// 	.name = sTrainerName_Abimbola,
	// 	.spreads =
	// 	{
	// 		[TWO_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Abimbola_Rank23,
	// 		// [FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Abimbola_Rank456,
	// 	},
	// 	.spreadSizes =
	// 	{
	// 		[TWO_STAR_RAID ... THREE_STAR_RAID] =  NELEMS(sRaidPartnerSpread_Abimbola_Rank23),
	// 		// [FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Abimbola_Rank456),
	// 	},
	// },
	{
		.owNum = EVENT_OBJ_GFX_OLD_MAN,
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_OLD_MAN,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_Mahina,
		.spreads =
		{
			[TWO_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Mahina_Rank23,
			[FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Mahina_Rank456,
		},
		.spreadSizes =
		{
			[TWO_STAR_RAID ... THREE_STAR_RAID] =  NELEMS(sRaidPartnerSpread_Mahina_Rank23),
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Mahina_Rank456),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_OLD_MAN, //TEST, REMOVE THIS LATER 
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_OLD_MAN,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_Mahina,
		.spreads =
		{
			[FIVE_STAR_RAID] =  sRaidPartnerSpread_Mahina_Rank456,
		},
		.spreadSizes =
		{
			[FIVE_STAR_RAID] = NELEMS(sRaidPartnerSpread_Mahina_Rank456),
		},
	},
	{
		.owNum =  EVENT_OBJ_GFX_OLD_MAN,
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_OLD_MAN,
		.gender = MALE,
		.otId = 0x61AC8B90,
		.name = sTrainerName_Alford,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Ginger_Rank123,
			[FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Leaf_Rank456,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] =  NELEMS(sRaidPartnerSpread_Ginger_Rank123),
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Leaf_Rank456),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_MIDDLE_AGED_MAN,
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_POKE_DUDE,
		.gender = MALE,
		.otId = 0x95746426,
		.name = sTrainerName_Red, 
		.spreads =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] =	 sRaidPartnerSpread_Catherine_Rank12,
			[FIVE_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Red_Rank56,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] =   NELEMS(sRaidPartnerSpread_Catherine_Rank12),
			[FIVE_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Red_Rank56),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_MIDDLE_AGED_MAN,
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_POKE_DUDE,
		.gender = MALE,
		.otId = 0x4156010,
		.name = sTrainerName_Marlon,
		.spreads =
		{
			[FIVE_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Marlon_Rank56,
		},
		.spreadSizes =
		{
			[FIVE_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Marlon_Rank56),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_BRENDAN,
		.trainerClass = CLASS_PKMN_TRAINER_1,//CLASS_CHAMPION,
		.backSpriteId = TRAINER_BACK_PIC_BRENDAN,
		.gender = MALE,
		.otId = 0x95746426,
		.name = sTrainerName_Jax,
		.spreads =
		{
			[SIX_STAR_RAID] =  sRaidPartnerSpread_Brendan_Rank6,
		},
		.spreadSizes =
		{
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Brendan_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_MAY,
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_MAY,
		.gender = FEMALE,
		.otId = 0x95746426,
		.name = sTrainerName_May,
		.spreads =
		{
			[SIX_STAR_RAID] =  sRaidPartnerSpread_May_Rank6,
		},
		.spreadSizes =
		{
			[SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank6),
		},
	},
};

// #else

// const struct MultiRaidTrainer gRaidPartners[] =
// {
// 	{
// 	},
// };

// #endif

const u8 gNumRaidPartners = NELEMS(gRaidPartners);
