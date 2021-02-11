#ifdef TRAINERS_WITH_EVS
/*
trainers_with_evs_table.h
	defining the EV/IV/ability/ball type to be assigned to trainer pokemon
*/

const struct TrainersWithEvs gTrainersWithEvsSpreads[] =
{
	[0] = {0}, //Empty Spread
	[1] =
	{ //Physical Sweeper: Power Based
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[2] =
	{ //Physical Sweeper: Speed Based
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[3] =
	{ //Special Sweeper: Power Based
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[4] =
	{ //Special Sweeper: Speed Based
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[5] =
	{ //Bulky Physical Attacker 
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[6] =
	{ //Bulky Physical Attacker 
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[7] =
	{ //Bulky Physical Attacker 
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[8] =
	{ //Bulky Special Attacker 
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[9] =
	{ //Bulky Special Attacker 
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[10] =
	{ //Bulky Special Attacker 
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[11] =
	{ //Physical Wall 
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[12] =
	{ //Physical Wall 
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[13] =
	{ //Special Wall: Less Attack
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[14] =
	{ //Special Wall: Less Special Attack
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.atkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[15] =
	{ //Mixed Attacker: Attack Based, Less Defense
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[16] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[17] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[18] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[19] =
	{ //Mixed Attacker: Speed Based, Less Defense
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[20] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[21] =
	{ //Mixed Wall: Defense Based, Less Attack
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[22] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[23] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[24] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[25] =
	{ //Fast Wall: HP Based, Less Attack
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[26] =
	{ //Fast Wall: HP Based, Less Sp. Attack
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[27] =
	{ //Fast Wall: Defense Based, Less Attack
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[28] =
	{ //Fast Wall: Defense Based, Less Sp. Attack
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[29] =
	{ //Fast Wall: Sp. Defense Based, Less Attack
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[30] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[31] =
	{ //Physical Sweeper: Power Based - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[32] =
	{ //Physical Sweeper: Speed Based - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[33] =
	{ //Special Sweeper: Power Based - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[34] =
	{ //Special Sweeper: Speed Based - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[35] =
	{ //Bulky Physical Attacker - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[36] =
	{ //Bulky Physical Attacker - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[37] =
	{ //Bulky Physical Attacker - Ability_1
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[38] =
	{ //Bulky Special Attacker - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[39] =
	{ //Bulky Special Attacker - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[40] =
	{ //Bulky Special Attacker - Ability_1
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[41] =
	{ //Physical Wall - Ability_1
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[42] =
	{ //Physical Wall - Ability_1
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[43] =
	{ //Special Wall - Ability_1
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[44] =
	{ //Special Wall - Ability_1
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 4, 
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[45] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_1
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[46] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense - Ability_1
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[47] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense - Ability_1
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[48] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense - Ability_1
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[49] =
	{ //Mixed Attacker: Speed Based, Less Defense - Ability_1
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[50] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense - Ability_1
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[51] =
	{ //Mixed Wall: Defense Based, Less Attack - Ability_1
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[52] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[53] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack - Ability_1
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[54] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[55] =
	{ //Fast Wall: HP Based, Less Attack - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[56] =
	{ //Fast Wall: HP Based, Less Sp. Attack - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[57] =
	{ //Fast Wall: Defense Based, Less Attack - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[58] =
	{ //Fast Wall: Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[59] =
	{ //Fast Wall: Sp. Defense Based, Less Attack - Ability_1
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[60] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack - Ability_1
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[61] =
	{ //Physical Sweeper: Power Based - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[62] =
	{ //Physical Sweeper: Speed Based - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[63] =
	{ //Special Sweeper: Power Based - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[64] =
	{ //Special Sweeper: Speed Based - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[65] =
	{ //Bulky Physical Attacker - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[66] =
	{ //Bulky Physical Attacker - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[67] =
	{ //Bulky Physical Attacker - Ability_2
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[68] =
	{ //Bulky Special Attacker - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[69] =
	{ //Bulky Special Attacker - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[70] =
	{ //Bulky Special Attacker - Ability_2
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[71] =
	{ //Physical Wall - Ability_2
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[72] =
	{ //Physical Wall - Ability_2
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[73] =
	{ //Special Wall - Ability_2
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[74] =
	{ //Special Wall - Ability_2
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[75] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_2
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[76] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense - Ability_2
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[77] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense - Ability_2
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[78] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense - Ability_2
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[79] =
	{ //Mixed Attacker: Speed Based, Less Defense - Ability_2
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[80] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense - Ability_2
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[81] =
	{ //Mixed Wall: Defense Based, Less Attack - Ability_2
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[82] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[83] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack - Ability_2
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[84] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[85] =
	{ //Fast Wall: HP Based, Less Attack - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[86] =
	{ //Fast Wall: HP Based, Less Sp. Attack - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[87] =
	{ //Fast Wall: Defense Based, Less Attack - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[88] =
	{ //Fast Wall: Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[89] =
	{ //Fast Wall: Sp. Defense Based, Less Attack - Ability_2
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[90] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack - Ability_2
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[91] =
	{ //Physical Sweeper: Power Based - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[92] =
	{ //Physical Sweeper: Speed Based - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[93] =
	{ //Special Sweeper: Power Based - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[94] =
	{ //Special Sweeper: Speed Based - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[95] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.spdEv = 6,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[96] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[97] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_ADAMANT,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[98] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[99] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.defEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[100] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_MODEST,
		.ivs = 31,
		.hpEv = 6,
		.spAtkEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[101] =
	{ //Physical Wall - Ability_Hidden
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[102] =
	{ //Physical Wall - Ability_Hidden
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[103] =
	{ //Special Wall - Ability_Hidden
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[104] =
	{ //Special Wall - Ability_Hidden
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[105] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_Hidden
		.nature = NATURE_LONELY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[106] =
	{ //Mixed Attacker: Attack Based, Less Sp. Defense - Ability_Hidden
		.nature = NATURE_NAUGHTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[107] =
	{ //Mixed Attacker: Sp. Attack Based, Less Defense - Ability_Hidden
		.nature = NATURE_MILD,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[108] =
	{ //Mixed Attacker: Sp. Attack Based, Less Sp. Defense - Ability_Hidden
		.nature = NATURE_RASH,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[109] =
	{ //Mixed Attacker: Speed Based, Less Defense - Ability_Hidden
		.nature = NATURE_HASTY,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[110] =
	{ //Mixed Attacker: Speed Based, Less Sp. Defense - Ability_Hidden
		.nature = NATURE_NAIVE,
		.ivs = 31,
		.hpEv = 6,
		.atkEv = 128,
		.spdEv = 252,
		.spAtkEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[111] =
	{ //Mixed Wall: Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[112] =
	{ //Mixed Wall: Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_IMPISH,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[113] =
	{ //Mixed Wall: Sp. Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_CALM,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[114] =
	{ //Mixed Wall: Sp. Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_CAREFUL,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 128,
		.spdEv = 4,
		.spDefEv = 128,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[115] =
	{ //Fast Wall: HP Based, Less Attack - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 252,
		.spdEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[116] =
	{ //Fast Wall: HP Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 4,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[117] =
	{ //Fast Wall: Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[118] =
	{ //Fast Wall: Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.defEv = 252,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[119] =
	{ //Fast Wall: Sp. Defense Based, Less Attack - Ability_Hidden
		.nature = NATURE_TIMID,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[120] =
	{ //Fast Wall: Sp. Defense Based, Less Sp. Attack - Ability_Hidden
		.nature = NATURE_JOLLY,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 252,
		.spDefEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[121] =
	{ //Early mons, just max IVs not much investment otherwise 
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 40,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[122] =
	{ //Early mons, just max IVs not much investment otherwise 
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 40,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[123] =
	{ //Early mons, just max IVs not much investment otherwise 
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 100,
		.spdEv = 40,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[124] =
	{ //Early mons, just max IVs not much investment otherwise mistys starmie brendans lunatone
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 24,
		.atkEv = 16,
		.spAtkEv = 40,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[125] =
	{ //Early mons, just max IVs not much investment otherwise grovyle
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 4,
		.atkEv = 100,
		.spAtkEv = 16,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[126] =
	{ //Early mons, just max IVs not much investment otherwise Bugsy specifically 
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.atkEv = 4,
		.spAtkEv = 16,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_2,
	},
	[127] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_Hidden Old floatzel
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.atkEv = 8,
		.spdEv = 252,
		.spAtkEv = 8,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[128] =
	{ //Early mons, just max IVs not much investment otherwise 
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 4,
		.atkEv = 100,
		.spAtkEv = 100,
		.spdEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[129] =
	{ //Early mons, just max IVs not much investment otherwise vikavolt
		.nature = NATURE_BASHFUL,
		.ivs = 31,
		.hpEv = 200,
		.atkEv = 0,
		.spAtkEv = 100,
		.spdEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[130] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_QUIET,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 4,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[131] =
	{ //Bulky Physical Attacker - Ability_Hidden
		.nature = NATURE_BRAVE,
		.ivs = 31,
		.hpEv = 252,
		.atkEv = 252,
		.defEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[132] =
	{ //Bulky Special Attacker - Ability_Hidden
		.nature = NATURE_BOLD,
		.ivs = 31,
		.hpEv = 252,
		.spAtkEv = 4,
		.defEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_1,
	},
	[133] =
	{ //Bulky Defense Trick Room - Ability_Hidden
		.nature = NATURE_RELAXED,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 252,
		.spAtkEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[134] = //rotom-c surge rematch
	{
		.nature = NATURE_TIMID,
		.hiddenPower = TYPE_ICE,
		.ivs = 31,
		.spdEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[135] = 
	{
		.nature = NATURE_TIMID,
		.hiddenPower = TYPE_GRASS,
		.ivs = 31,
		.spdEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[136] =
	{ //Lt Surge Manectric
		.nature = NATURE_BASHFUL,
		.hiddenPower = TYPE_GRASS,
		.ivs = 31,
		.hpEv = 100,
		.atkEv = 100,
		.spAtkEv = 100,
		.spdEv = 40,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[137] = //erika serperior , lorelei abomasnow
	{
		.nature = NATURE_TIMID,
		.hiddenPower = TYPE_FIRE,
		.ivs = 31,
		.spdEv = 252,
		.spAtkEv = 252,
		.spDefEv = 4,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[138] =
	{ //Bulky Special Attacker - Ability_Hidden erika meganium
		.nature = NATURE_MODEST,
		.hiddenPower = TYPE_FIRE,
		.ivs = 31,
		.hpEv = 252,
		.defEv = 6,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[139] =
	{ //Special Sweeper: Typhlosion Blaine, Jotard Simisear
		.nature = NATURE_MODEST,
		.hiddenPower = TYPE_ICE,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[140] =
	{ //Special Sweeper: Typhlosion Blaine, Jotard Simisear
		.nature = NATURE_MODEST,
		.hiddenPower = TYPE_FIGHTING,
		.ivs = 31,
		.hpEv = 6,
		.spdEv = 252,
		.spAtkEv = 252,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[141] =
	{ //Mixed Attacker: Attack Based, Less Defense - Ability_Hidden, HP electric Misty floatzel
		.nature = NATURE_BASHFUL,
		.hiddenPower = TYPE_ELECTRIC,
		.ivs = 31,
		.atkEv = 8,
		.spdEv = 252,
		.spAtkEv = 8,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Hidden,
	},
	[142] =
	{ //Early mons, just max IVs. Falkner Emolga
		.nature = NATURE_BASHFUL,
		.hiddenPower = TYPE_GROUND, 
		.ivs = 31,
		.hpEv = 4,
		.spdEv = 40,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
	[143] =
	{ //Archer Houndour, Brock Vulpix
		.nature = NATURE_BASHFUL,
		.hiddenPower = TYPE_GRASS,
		.ivs = 31,
		.hpEv = 60,
		.atkEv = 100,
		.spAtkEv = 100,
		.spdEv = 40,
		.ball = TRAINER_EV_CLASS_BALL,
		.ability = Ability_Random_1_2,
	},
};
#endif

#ifndef UNBOUND //Modify this
const u8 gBaseIVsByTrainerClass[NUM_TRAINER_CLASSES] =
{
	[CLASS_YOUNGSTER] = 5,
	[CLASS_BUG_CATCHER] = 1,
	[CLASS_LASS] =  5,
	[CLASS_SAILOR] = 10,
	[CLASS_CAMPER] = 5,
	[CLASS_PICNICKER] =  5,
	[CLASS_POKEMANIAC] = 10,
	[CLASS_SUPER_NERD] = 15,
	[CLASS_HIKER] = 10,
	[CLASS_BIKER] = 10,
	[CLASS_BURGLAR] = 10,
	[CLASS_ENGINEER] = 10,
	[CLASS_FISHERMAN] = 10,
	[CLASS_SWIMMER_M] = 10,
	[CLASS_CUE_BALL] = 10,
	[CLASS_GAMBLER] = 10,
	[CLASS_BEAUTY] =  10,
	[CLASS_SWIMMER_F] =  10,
	[CLASS_PSYCHIC] = 15,
	[CLASS_ROCKER] = 10,
	[CLASS_JUGGLER] = 10,
	[CLASS_TAMER] = 20,
	[CLASS_BIRD_KEEPER] = 10,
	[CLASS_BLACK_BELT] = 15,
	[CLASS_RIVAL] = 25,
	[CLASS_SCIENTIST] = 15,
	[CLASS_BOSS] = 31,
	[CLASS_LEADER] = 31,
	[CLASS_TEAM_ROCKET] = 15,
	[CLASS_COOLTRAINER] = 25,
	[CLASS_ELITE_4] = 31,
	[CLASS_GENTLEMAN] = 15,
	[CLASS_RIVAL_2] = 31,
	[CLASS_CHAMPION] = 31,
	[CLASS_CHANNELER] = 10,
	[CLASS_TWINS] =  5,
	[CLASS_COOL_COUPLE] = 25,
	[CLASS_YOUNG_COUPLE] = 15,
	[CLASS_CRUSH_KIN] = 15,
	[CLASS_SIS_AND_BRO] =  10,
	[CLASS_PKMN_PROF] = 31,
	[CLASS_PLAYER] = 31,
	[CLASS_CRUSH_GIRL] = 15,
	[CLASS_TUBER] = 5,
	[CLASS_PKMN_BREEDER] = 15,
	[CLASS_PKMN_RANGER] = 20,
	[CLASS_AROMA_LADY] =  10,
	[CLASS_RUIN_MANIAC] = 10,
	[CLASS_LADY] =  20,
	[CLASS_PAINTER] =  10,
};
#else //For Pokemon Unbound
const u8 gBaseIVsByTrainerClass[NUM_TRAINER_CLASSES] =
{
	[CLASS_YOUNGSTER] = 5,
	[CLASS_BUG_CATCHER] = 1,
	[CLASS_LASS] =  5,
	[CLASS_SAILOR] = 10,
	[CLASS_CAMPER] = 5,
	[CLASS_PICNICKER] =  5,
	[CLASS_CAMPING_DUO] = 5,
	[CLASS_POKEMANIAC] = 10,
	[CLASS_SUPER_NERD] = 15,
	[CLASS_HIKER] = 10,
	[CLASS_BIKER] = 10,
	[CLASS_BURGLAR] = 10,
	[CLASS_WORKER] = 10,
	[CLASS_FISHERMAN] = 10,
	[CLASS_SWIMMER_M] = 10,
	[CLASS_SWIMMER_F] = 10,
	[CLASS_TUBER] = 5,
	[CLASS_SIS_AND_BRO] = 10,
	[CLASS_ROUGHNECK] = 10,
	[CLASS_GAMBLER] = 10,
	[CLASS_BEAUTY] =  10,
	[CLASS_PSYCHIC] = 15,
	[CLASS_ROCKER] = 10,
	[CLASS_JUGGLER] = 10,
	[CLASS_TAMER] = 20,
	[CLASS_BIRD_KEEPER] = 10,
	[CLASS_BLACK_BELT] = 15,
	[CLASS_CRUSH_GIRL] = 15,
	[CLASS_CRUSH_KIN] = 15,
	[CLASS_RIVAL] = 25,
	[CLASS_SCIENTIST] = 15,
	[CLASS_GENTLEMAN] = 15,
	[CLASS_MEDIUM] = 10,
	[CLASS_TWINS] = 5,
	[CLASS_YOUNG_COUPLE] = 15,
	[CLASS_PKMN_BREEDER] = 15,
	[CLASS_PKMN_RANGER] = 20,
	[CLASS_AROMA_LADY] = 10,
	[CLASS_RUIN_MANIAC] = 10,
	[CLASS_LADY] = 20,
	[CLASS_PAINTER] = 10,
	[CLASS_IDOL] = 20,
	[CLASS_WAITER] = 10,
	[CLASS_WAITRESS] = 10,
	[CLASS_INTERVIEWER] = 10,
	[CLASS_CYCLIST] = 10,
	[CLASS_NURSE] = 15,
	[CLASS_POKE_KID] = 5,
	[CLASS_RICH_BOY] = 20,
	[CLASS_SKIIER] = 10,
	[CLASS_GUITARIST] = 10,
	[CLASS_KINDLER] = 10,
	[CLASS_SHOCKER] = 10,
	[CLASS_BUG_MANIAC] = 10,
	[CLASS_POLICEMAN] = 15,
	[CLASS_BOARDER] = 10,
	[CLASS_SCHOOL_KID] = 5,
	[CLASS_COLLECTOR] = 10,
	[CLASS_ACE_TRAINER] = 25,
	[CLASS_ACE_DUO] = 25,
	[CLASS_JOGGER] = 10,
	[CLASS_DRAGON_TAMER] = 25,
	[CLASS_NINJA_BOY] = 10,
	[CLASS_PARASOL_LADY] = 10,
	[CLASS_POKEFAN] = 10,
	[CLASS_RANCHER] = 10,
	[CLASS_EXPERT] = 25,
	[CLASS_OLD_COUPLE] = 25,
	[CLASS_MEGA_TRAINER] = 31,

	[CLASS_SHADOW] = 18,
	[CLASS_SHADOW_ADMIN] = 31,
	[CLASS_BOSS] = 31,
	[CLASS_LOR] = 18,
	[CLASS_LOR_ADMIN] = 31,
	[CLASS_LOR_LEADER] = 31,

	[CLASS_BLACK_EMBOAR] = 18,
	[CLASS_TERROR_GRANBULL] = 18,
	[CLASS_BLACK_FERROTHORN] = 25,
	[CLASS_SCIENCE_SOCIETY] = 25,

	[CLASS_LEADER] = 31,
	[CLASS_SINNOH_LEADER] = 31,
	[CLASS_SUCCESSOR] = 31,
	[CLASS_ELITE_4] = 31,
	[CLASS_PKMN_PROF] = 31,
	[CLASS_DEVELOPER] = 31,
	[CLASS_CHAMPION] = 31,
	[CLASS_FRONTIER_BRAIN] = 31,
	[CLASS_PKMN_TRAINER_1] = 25,
	[CLASS_PKMN_TRAINER_2] = 25,
	[CLASS_PKMN_TRAINER_3] = 25,
};
#endif
