#include "../config.h"

static const struct BattleTowerSpread sRaidPartnerSpread_Catherine_Rank3[] =
{
	{
		.species = SPECIES_GASTRODON_EAST,
		.nature = NATURE_BOLD,
		.level = 8,
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
		.level = 8,
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
		.level = 8,
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

static const struct BattleTowerSpread sRaidPartnerSpread_Xan_Rank12[] =
{
	{
		.species = SPECIES_TEDDIURSA,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_2, //ABILITY_QUICKFEET
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_BODYSLAM,
			MOVE_CRUNCH,
			MOVE_METALCLAW,
			MOVE_YAWN,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_CHARMANDER,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_BLAZE
		.item = ITEM_CHARCOAL,
		.moves =
		{
			MOVE_FIRELASH,
			MOVE_FLAMEBURST,
			MOVE_CRUNCH,
			MOVE_ANCIENTPOWER,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_ELECTABUZZ,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.hpEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_VITALSPIRIT
		.item = ITEM_EVIOLITE,
		.moves =
		{
			MOVE_THUNDERPUNCH,
			MOVE_THUNDERWAVE,
			MOVE_FIREPUNCH,
			MOVE_ICEPUNCH,
		},
		.ball = BALL_TYPE_DUSK_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Xan_Rank3[] =
{
	{
		.species = SPECIES_PERSIAN_A,
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
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_FELINE POWER 
		.item = ITEM_SITRUS_BERRY,
		.moves =
		{
			MOVE_DARKPULSE,
			MOVE_POWERGEM,
			MOVE_SWIFT,
			MOVE_ICYWIND,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_GOLISOPOD,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_BLAZE
		.item = ITEM_MYSTIC_WATER,
		.moves =
		{
			MOVE_AQUAJET,
			MOVE_FIRSTIMPRESSION,
			MOVE_LIQUIDATION,
			MOVE_LEECHLIFE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_LUCARIO,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.spAtkEv = 252,
		.hpEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_VITALSPIRIT
		.item = ITEM_FOCUS_SASH,
		.moves =
		{
			MOVE_AURASPHERE,
			MOVE_VACUUMWAVE,
			MOVE_FLASHCANNON,
			MOVE_CLOSECOMBAT,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Xan_Rank456[] =
{
	{
		.species = SPECIES_URSARING,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_2, //ABILITY_QUICK_FEET
		.item = ITEM_TOXIC_ORB,
		.moves =
		{
			MOVE_FACADE,
			MOVE_SUCKERPUNCH,
			MOVE_CLOSECOMBAT,
			MOVE_PLAYROUGH,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_ELECTIVIRE,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_IRONFIST
		.item = ITEM_MAGNET,
		.moves =
		{
			MOVE_PLASMAFISTS,
			MOVE_CLOSECOMBAT,
			MOVE_MACHPUNCH,
			MOVE_ICEPUNCH,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_LUCARIO,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.spAtkEv = 252,
		.hpEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_VITALSPIRIT
		.item = ITEM_LUCARIONITE,
		.moves =
		{
			MOVE_AURASPHERE,
			MOVE_VACUUMWAVE,
			MOVE_FLASHCANNON,
			MOVE_BULLETPUNCH,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

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
		.atkIv = 31,
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
		.spdIv = 31,
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
		// .gigantamax = TRUE,
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

static const struct BattleTowerSpread sRaidPartnerSpread_Gold_Rank12[] =
{
	{
		.species = SPECIES_QUILAVA,
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
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_IRONFIST
		.item = ITEM_CHARCOAL,
		.moves =
		{
			MOVE_FLAMEBURST,
			MOVE_QUICKATTACK,
			MOVE_WILLOWISP,
			MOVE_CRUSHCLAW,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_SUNFLORA,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.spAtkEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY Solar Power or some shit
		.item = ITEM_MIRACLE_SEED,
		.moves =
		{
			MOVE_MEGADRAIN,
			MOVE_SLUDGEBOMB,
			MOVE_MORNINGSUN,
			MOVE_LIGHTSCREEN,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_AIPOM,
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
		.ability = FRONTIER_ABILITY_1, //ABILITY_LEVITTE
		.item = ITEM_SILK_SCARF,
		.moves =
		{
			MOVE_DOUBLEHIT,
			MOVE_FIREPUNCH,
			MOVE_ICEPUNCH,
			MOVE_AERIALACE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Gold_Rank34[] =
{
	{
		.species = SPECIES_TYPHLOSION,
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
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_IRONFIST
		.item = ITEM_CHARCOAL,
		.moves =
		{
			MOVE_FLAMETHROWER,
			MOVE_SCORCHINGSANDS,
			MOVE_WILLOWISP,
			MOVE_FOCUSBLAST,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_AZUMARILL,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.ability = FRONTIER_ABILITY_2, //ABILITY_ADAPTABILITY
		.item = ITEM_MYSTIC_WATER,
		.moves =
		{
			MOVE_WATERFALL,
			MOVE_PLAYROUGH,
			MOVE_AQUAJET,
			MOVE_BRICKBREAK,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_AMBIPOM,
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
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_LEVITTE
		.item = ITEM_SILK_SCARF,
		.moves =
		{
			MOVE_TAILSLAP,
			MOVE_ARMTHRUST,
			MOVE_ICEPUNCH,
			MOVE_FIREPUNCH,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Gold_Rank56[] =
{
	{
		.species = SPECIES_TYPHLOSION,
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
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_BLAZINGSOUL
		.item = ITEM_CHARCOAL,
		.moves =
		{
			MOVE_FLAMETHROWER,
			MOVE_SCORCHINGSANDS,
			MOVE_ERUPTION,
			MOVE_FOCUSBLAST,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_AZUMARILL,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.ability = FRONTIER_ABILITY_2, //ABILITY_HUGEPOWER
		.item = ITEM_MYSTIC_WATER,
		.moves =
		{
			MOVE_WATERFALL,
			MOVE_PLAYROUGH,
			MOVE_AQUAJET,
			MOVE_BRICKBREAK,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_RAIKOU,
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
		.ability = FRONTIER_ABILITY_HIDDEN, 
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_THUNDERBOLT,
			MOVE_EXTRASENSORY,
			MOVE_SIGNALBEAM,
			MOVE_AURASPHERE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};


static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank12[] =
{
	{
		.species = SPECIES_GROVYLE,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spDefEv = 4,
		.ability = FRONTIER_ABILITY_1, //ABILITY_IRONFIST
		.item = ITEM_MIRACLE_SEED,
		.moves =
		{
			MOVE_LEAFBLADE,
			MOVE_BRICKBREAK,
			MOVE_AERIALACE,
			MOVE_QUICKATTACK,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_CORPHISH,
		.nature = NATURE_ADAMANT,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 252,
		.atkEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_ADAPTABILITY
		.item = ITEM_MYSTIC_WATER,
		.moves =
		{
			MOVE_AQUAJET,
			MOVE_NIGHTSLASH,
			MOVE_BRICKBREAK,
			MOVE_WATERPULSE,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_LUNATONE,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.spAtkEv = 252,
		.spDefEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_LEVITTE
		.item = ITEM_TWISTED_SPOON,
		.moves =
		{
			MOVE_PSYBEAM,
			MOVE_ANCIENTPOWER,
			MOVE_TOXIC,
			MOVE_CHARGEBEAM,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Brendan_Rank3[] =
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
		.item = ITEM_MIRACLE_SEED,
		.moves =
		{
			MOVE_GIGADRAIN,
			MOVE_LEAFSTORM,
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
		.species = SPECIES_CRAWDAUNT,
		.nature = NATURE_JOLLY,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.atkEv = 252,
		.defEv = 4,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_LEVITTE
		.item = ITEM_MYSTIC_WATER,
		.moves =
		{
			MOVE_AQUAJET,
			MOVE_CRUNCH,
			MOVE_LIQUIDATION,
			MOVE_SUPERPOWER,
		},
		.ball = BALL_TYPE_POKE_BALL,
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
		.spAtkEv = 252,
		.defEv = 4,
		.spdEv = 252,
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

static const struct BattleTowerSpread sRaidPartnerSpread_May_Rank12[] =
{
	{
		.species = SPECIES_COMBUSKEN,
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
		.item = ITEM_CHARCOAL,
		.moves =
		{
			MOVE_FIREPUNCH,
			MOVE_DOUBLEKICK,
			MOVE_NIGHTSLASH,
			MOVE_ROCKTOMB,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_LOMBRE,
		.nature = NATURE_MODEST,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 4,
		.atkEv = 252,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_1, //ABILITY_TINTEDLENS
		.item = ITEM_MYSTIC_WATER,
		.moves =
		{
			MOVE_BUBBLEBEAM,
			MOVE_MEGADRAIN,
			MOVE_ICYWIND,
			MOVE_LEECHSEED,
		},
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
		// .gigantamax = TRUE,
	},
	{
		.species = SPECIES_ELECTRIKE,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 4,
		.spAtkEv = 252,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_2, //ABILITY_LIGHTNINGROD
		.item = ITEM_MAGNET,
		.moves =
		{
			MOVE_SHOCKWAVE,
			MOVE_FLAMEBURST,
			MOVE_HYPERVOICE,
			MOVE_CHARGEBEAM,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_May_Rank3[] =
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
		.ball = BALL_TYPE_GREAT_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
		// .gigantamax = TRUE,
	},
	{
		.species = SPECIES_MANECTRIC,
		.nature = NATURE_TIMID,
		.hpIv = 31,
		.atkIv = 31,
		.defIv = 31,
		.spAtkIv = 31,
		.spDefIv = 31,
		.spdIv = 31,
		.hpEv = 4,
		.spAtkEv = 252,
		.spdEv = 252,
		.ability = FRONTIER_ABILITY_HIDDEN, 
		.item = ITEM_MAGNET,
		.moves =
		{
			MOVE_THUNDERBOLT,
			MOVE_FLAMETHROWER,
			MOVE_HYPERVOICE,
			MOVE_CHARGEBEAM,
		},
		.ball = BALL_TYPE_ULTRA_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};

static const struct BattleTowerSpread sRaidPartnerSpread_Lance_Rank5[] =
{
	{
		.species = SPECIES_AERODACTYL,
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
		.ability = FRONTIER_ABILITY_1, 
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_STONEEDGE,
			MOVE_EARTHQUAKE,
			MOVE_DUALWINGBEAT,
			MOVE_ROOST,
		},
		.ball = BALL_TYPE_POKE_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_SALAMENCE,
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
		.ability = FRONTIER_ABILITY_1, //ABILITY_TINTEDLENS
		.item = ITEM_SALAMENCITE,
		.moves =
		{
			MOVE_DOUBLEEDGE,
			MOVE_EARTHQUAKE,
			MOVE_ROOST,
			MOVE_DRAGONDANCE,
		},
		.ball = BALL_TYPE_MASTER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_DIALGA,
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
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_DRAGONPULSE,
			MOVE_FLASHCANNON,
			MOVE_THUNDERBOLT,
			MOVE_FLAMETHROWER,
		},
		.ball = BALL_TYPE_MASTER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
};


static const struct BattleTowerSpread sRaidPartnerSpread_Lance_Rank6[] =
{
	{
		.species = SPECIES_DRAGONITE,
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
		.ability = FRONTIER_ABILITY_HIDDEN, //ABILITY_MULTISCALE
		.item = ITEM_LEFTOVERS,
		.moves =
		{
			MOVE_OUTRAGE,
			MOVE_EARTHQUAKE,
			MOVE_DUALWINGBEAT,
			MOVE_FIREPUNCH,
		},
		.ball = BALL_TYPE_MASTER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_SALAMENCE,
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
		.ability = FRONTIER_ABILITY_1, //ABILITY_TINTEDLENS
		.item = ITEM_SALAMENCITE,
		.moves =
		{
			MOVE_DOUBLEEDGE,
			MOVE_EARTHQUAKE,
			MOVE_ROOST,
			MOVE_DRAGONDANCE,
		},
		.ball = BALL_TYPE_MASTER_BALL,
		.forSingles = TRUE,
		.forDoubles = TRUE,
		.modifyMovesDoubles = FALSE,
	},
	{
		.species = SPECIES_DIALGA,
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
		.item = ITEM_ADAMANT_ORB,
		.moves =
		{
			MOVE_DRAGONPULSE,
			MOVE_FLASHCANNON,
			MOVE_THUNDERBOLT,
			MOVE_FLAMETHROWER,
		},
		.ball = BALL_TYPE_MASTER_BALL,
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
		// .gigantamax = TRUE,
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
			MOVE_DRAGONPULSE,
			MOVE_PSYCHIC,
			MOVE_SURF,
			MOVE_AURASPHERE,
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
extern const u8 sTrainerName_Xan[]; 
extern const u8 sTrainerName_Lance[]; 
extern const u8 sTrainerName_Gold[];

const struct MultiRaidTrainer gRaidPartners[] =
{
	{
		.owNum = EVENT_OBJ_GFX_OLD_MAN,
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_OLD_MAN,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_Mahina,
		.spreads =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] = sRaidPartnerSpread_Mahina_Rank23,
			[FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Mahina_Rank456,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... THREE_STAR_RAID] =  NELEMS(sRaidPartnerSpread_Mahina_Rank23),
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Mahina_Rank456),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_MIDDLE_AGED_MAN, //XAN KEK 
		.trainerClass = CLASS_PKMN_TRAINER_1,
		.backSpriteId = TRAINER_BACK_PIC_POKE_DUDE,
		.gender = MALE,
		.otId = 0x87116209,
		.name = sTrainerName_Xan,
		.spreads =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] = sRaidPartnerSpread_Xan_Rank12,
			[THREE_STAR_RAID] = sRaidPartnerSpread_Xan_Rank3,		
			[FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Xan_Rank456,
		},
		.spreadSizes =
		{ 
			[ONE_STAR_RAID ... TWO_STAR_RAID]  = NELEMS(sRaidPartnerSpread_Xan_Rank12),
			[THREE_STAR_RAID]				   = NELEMS(sRaidPartnerSpread_Xan_Rank3),
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Xan_Rank456),
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
		.otId = 0x4156010,
		.name = sTrainerName_Marlon,
		.spreads =
		{
			[FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Marlon_Rank56,
		},
		.spreadSizes =
		{
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_Marlon_Rank56),
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
			[ONE_STAR_RAID ... TWO_STAR_RAID] =	  sRaidPartnerSpread_Brendan_Rank12,
			[THREE_STAR_RAID] = 				  sRaidPartnerSpread_Brendan_Rank3,
			[FOUR_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Brendan_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID]   = NELEMS(sRaidPartnerSpread_Brendan_Rank12),
			[THREE_STAR_RAID] 					= NELEMS(sRaidPartnerSpread_Brendan_Rank3),
			[FOUR_STAR_RAID ... SIX_STAR_RAID]  = NELEMS(sRaidPartnerSpread_Brendan_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_GOLD,
		.trainerClass = CLASS_PKMN_TRAINER_1,//CLASS_CHAMPION,
		.backSpriteId = TRAINER_BACK_PIC_GOLD, //TRAINER_BACK_PIC_GOLD,
		.gender = MALE,
		.otId = 0x95746422,
		.name = sTrainerName_Gold,
		.spreads =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID] =	  sRaidPartnerSpread_Gold_Rank12,
			[THREE_STAR_RAID ... FOUR_STAR_RAID] = sRaidPartnerSpread_Gold_Rank34,
			[FIVE_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_Gold_Rank56,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID]   = NELEMS(sRaidPartnerSpread_Gold_Rank12),
			[THREE_STAR_RAID ... FOUR_STAR_RAID] = NELEMS(sRaidPartnerSpread_Gold_Rank34),
			[FIVE_STAR_RAID ... SIX_STAR_RAID]  = NELEMS(sRaidPartnerSpread_Gold_Rank56),
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
			[ONE_STAR_RAID ... TWO_STAR_RAID] =	  sRaidPartnerSpread_May_Rank12,
			[THREE_STAR_RAID] = 				  sRaidPartnerSpread_May_Rank3,
			[FIVE_STAR_RAID ... SIX_STAR_RAID] =  sRaidPartnerSpread_May_Rank6,
		},
		.spreadSizes =
		{
			[ONE_STAR_RAID ... TWO_STAR_RAID]   = NELEMS(sRaidPartnerSpread_May_Rank12),
			[THREE_STAR_RAID] 					= NELEMS(sRaidPartnerSpread_May_Rank3),
			[FOUR_STAR_RAID ... SIX_STAR_RAID] = NELEMS(sRaidPartnerSpread_May_Rank6),
		},
	},
	{
		.owNum = EVENT_OBJ_GFX_LANCE,
		.trainerClass = CLASS_ELITE_4,
		.backSpriteId = TRAINER_BACK_PIC_LANCE,
		.gender = MALE,
		.otId = 0x95746422,
		.name = sTrainerName_Lance,
		.spreads =
		{
			[FIVE_STAR_RAID] =  sRaidPartnerSpread_Lance_Rank5,
			[SIX_STAR_RAID] =  sRaidPartnerSpread_Lance_Rank6,
		},
		.spreadSizes =
		{
			[FIVE_STAR_RAID]   = NELEMS(sRaidPartnerSpread_Lance_Rank5),
			[SIX_STAR_RAID]    = NELEMS(sRaidPartnerSpread_Lance_Rank6),
		},
	},
};

const u8 gNumRaidPartners = NELEMS(gRaidPartners);
