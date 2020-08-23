#include "../config.h"
#include "../../include/global.h"
#include "../../include/constants/maps.h"
#include "../../include/wild_encounter.h"
#include "../../include/constants/region_map_sections.h"
#include "../../include/constants/species.h"

/*
wild_encounter_tables.c
	day/night and/or regular map wild encounter species

tables to edit:
	gWildMonMorningHeaders
	gWildMonEveningHeaders
	gWildMonNightHeaders
	gSwarmTable

*/

#ifndef UNBOUND //Modify this section

static const struct WildPokemon gRoute1_LandMonsNight[] =
{
	{2, 2, SPECIES_SENTRET},
	{2, 2, SPECIES_HOOTHOOT},
	{3, 3, SPECIES_BIDOOF},
	{3, 3, SPECIES_PIDGEY},
	{2, 2, SPECIES_SEEDOT},
	{2, 2, SPECIES_RATTATA_A},
	{3, 3, SPECIES_POOCHYENA},
	{3, 3, SPECIES_POOCHYENA},
	{4, 4, SPECIES_LILLIPUP},
	{4, 4, SPECIES_LILLIPUP},
	{5, 5, SPECIES_PANPOUR},
	{5, 5, SPECIES_PANPOUR},
};

static const struct WildPokemonInfo gRoute1_LandMonsInfoNight = {20, gRoute1_LandMonsNight};

static const struct WildPokemon gRoute2_LandMonsNight[] =
{
	{4, 4, SPECIES_POOCHYENA},
	{4, 4, SPECIES_WINGULL},
	{4, 4, SPECIES_SHINX},
	{4, 4, SPECIES_MAREEP},
	{3, 3, SPECIES_ODDISH},
	{3, 4, SPECIES_HOUNDOUR},
	{5, 5, SPECIES_PIDOVE},
	{5, 5, SPECIES_PATRAT},
	{5, 5, SPECIES_BURMY},
	{5, 6, SPECIES_BURMY},
	{5, 5, SPECIES_PANSAGE},
	{5, 5, SPECIES_PANSAGE},
};

static const struct WildPokemonInfo gRoute2_LandMonsInfoNight = {20, gRoute2_LandMonsNight};

static const struct WildPokemon gRoute22_LandMonsNight[] =
{
	{4, 4, SPECIES_RATTATA_A},
	{3, 3, SPECIES_MANKEY},
	{4, 4, SPECIES_SPEAROW},
	{4, 4, SPECIES_STARLY},
	{3, 3, SPECIES_HOOTHOOT},
	{2, 3, SPECIES_KRICKETOT},
	{5, 5, SPECIES_SPINARAK},
	{5, 5, SPECIES_PIKIPEK},
	{4, 4, SPECIES_PIKIPEK},
	{4, 4, SPECIES_ROCKRUFF},
	{5, 5, SPECIES_PANSEAR},
	{5, 5, SPECIES_PANSEAR},
};

static const struct WildPokemonInfo gRoute22_LandMonsInfoNight = {20, gRoute22_LandMonsNight};

static const struct WildPokemon gViridianFor_LandMonsNight[] =
{
	{5, 6, SPECIES_SPINARAK},
	{5, 6, SPECIES_WURMPLE},
	{5, 6, SPECIES_SEEDOT},
	{5, 5, SPECIES_WEEDLE},
	{5, 5, SPECIES_CATERPIE},
	{6, 6, SPECIES_KRICKETOT},
	{5, 6, SPECIES_PIKACHU},
	{5, 5, SPECIES_SPINARAK},
	{5, 6, SPECIES_GRUBBIN},
	{5, 6, SPECIES_JOLTIK},
	{6, 6, SPECIES_MURKROW},
	{7, 7, SPECIES_MURKROW},
};

static const struct WildPokemonInfo gViridianFor_LandMonsInfoNight = {12, gViridianFor_LandMonsNight};

static const struct WildPokemon gRoute3_LandMonsNight[] =
{
	{8, 8, SPECIES_STUNKY},
	{8, 8, SPECIES_EKANS},
	{8, 9, SPECIES_SPEAROW},
	{9, 9, SPECIES_NIDORAN_F},
	{8, 9, SPECIES_FLABEBE},
	{8, 8, SPECIES_NIDORAN_M},
	{10, 10, SPECIES_MEOWTH_A},
	{8, 9, SPECIES_SHROOMISH},
	{10, 10, SPECIES_SHROOMISH},
	{9, 9, SPECIES_GLAMEOW},
	{6, 6, SPECIES_JIGGLYPUFF},
	{7, 7, SPECIES_JIGGLYPUFF},
};

static const struct WildPokemonInfo gRoute3_LandMonsInfoNight = {20, gRoute3_LandMonsNight};

static const struct WildPokemon gMtMoon_LandMonsNight[] =
{
	{9, 9, SPECIES_GEODUDE_A},
	{10, 10, SPECIES_ZUBAT},
	{9, 9, SPECIES_ROCKRUFF},
	{9, 9, SPECIES_MACHOP},
	{11, 11, SPECIES_NOIBAT},
	{9, 9, SPECIES_TYMPOLE},
	{10, 10, SPECIES_MAKUHITA},
	{9, 9, SPECIES_MAKUHITA},
	{8, 8, SPECIES_TYROGUE},
	{8, 8, SPECIES_CLEFAIRY},
	{8, 8, SPECIES_TRAPINCH},
	{9, 9, SPECIES_TRAPINCH},
};

static const struct WildPokemonInfo gMtMoon_LandMonsInfoNight = {4, gMtMoon_LandMonsNight};

static const struct WildPokemon gMtMoonTunn_LandMonsNight[] =
{
	{9, 9, SPECIES_PARAS},
	{10, 10, SPECIES_PARAS},
	{9, 9, SPECIES_SLUGMA},
	{9, 9, SPECIES_PARAS},
	{11, 11, SPECIES_ROCKRUFF},
	{9, 9, SPECIES_TEDDIURSA},
	{10, 10, SPECIES_DUNSPARCE},
	{9, 9, SPECIES_SANDILE},
	{8, 8, SPECIES_DUSKULL},
	{8, 8, SPECIES_DUSKULL},
	{8, 8, SPECIES_MAWILE},
	{10, 10, SPECIES_MAWILE},
};

static const struct WildPokemonInfo gMtMoonTunn_LandMonsInfoNight = {4, gMtMoonTunn_LandMonsNight};

static const struct WildPokemon gMtMoonBase_LandMonsNight[] =
{
	{12, 14, SPECIES_GEODUDE_A},
	{12, 14, SPECIES_ZUBAT},
	{13, 14, SPECIES_MACHOP},
	{12, 14, SPECIES_ROCKRUFF},
	{12, 12, SPECIES_NOIBAT},
	{12, 14, SPECIES_DRILBUR},
	{14, 14, SPECIES_WHISMUR},
	{12, 12, SPECIES_SMOOCHUM},
	{13, 13, SPECIES_SMOOCHUM},
	{13, 13, SPECIES_CLEFAIRY},
	{14, 14, SPECIES_ONIX},
	{12, 15, SPECIES_ONIX},
};

static const struct WildPokemonInfo gMtMoonBase_LandMonsInfoNight = {4, gMtMoonBase_LandMonsNight};

static const struct WildPokemon gRoute4_LandMonsNight[] =
{
	{15, 15, SPECIES_SANDSHREW},
	{14, 15, SPECIES_ODDISH},
	{14, 15, SPECIES_MAREEP},
	{14, 15, SPECIES_PACHIRISU},
	{14, 16, SPECIES_STUNKY},
	{14, 15, SPECIES_BUNEARY},
	{14, 16, SPECIES_PHANTUMP},
	{14, 14, SPECIES_FLABEBE},
	{15, 15, SPECIES_SHROOMISH},
	{15, 15, SPECIES_SHROOMISH},
	{15, 15, SPECIES_YANMA},
	{15, 15, SPECIES_YANMA},
};

static const struct WildPokemonInfo gRoute4_LandMonsInfoNight = {20, gRoute4_LandMonsNight};

static const struct WildPokemon gRoute24_LandMonsNight[] =
{
	{15, 16, SPECIES_SNUBBULL},
	{15, 16, SPECIES_COTTONEE},
	{14, 16, SPECIES_WHISMUR},
	{14, 14, SPECIES_ABRA},
	{16, 16, SPECIES_KARRABLAST},
	{14, 16, SPECIES_ILLUMISE},
	{15, 16, SPECIES_MAGBY},
	{15, 15, SPECIES_FARFETCHD},
	{15, 16, SPECIES_RALTS},
	{15, 16, SPECIES_RALTS},
	{15, 16, SPECIES_PONYTA},
	{15, 15, SPECIES_PONYTA},
};

static const struct WildPokemonInfo gRoute24_LandMonsInfoNight = {20, gRoute24_LandMonsNight};

static const struct WildPokemon gRoute25_LandMonsNight[] =
{
	{16, 18, SPECIES_SWABLU},
	{16, 18, SPECIES_TAILLOW},
	{16, 18, SPECIES_VENONAT},
	{16, 18, SPECIES_PSYDUCK},
	{16, 19, SPECIES_BUIZEL},
	{15, 19, SPECIES_MURKROW},
	{16, 17, SPECIES_PURRLOIN},
	{16, 17, SPECIES_PURRLOIN},
	{15, 17, SPECIES_SLAKOTH},
	{15, 17, SPECIES_SLAKOTH},
	{18, 18, SPECIES_SEVIPER},
	{18, 18, SPECIES_SEVIPER},
};

static const struct WildPokemonInfo gRoute25_LandMonsInfoNight = {20, gRoute25_LandMonsNight};

static const struct WildPokemon gRoute5_LandMonsNight[] =
{
	{18, 19, SPECIES_MEOWTH_A},
	{18, 20, SPECIES_NIDORAN_M},
	{19, 20, SPECIES_GOTHITA},
	{19, 21, SPECIES_VULPIX_A},
	{19, 21, SPECIES_SPRITZEE},
	{19, 21, SPECIES_MORELULL},
	{18, 20, SPECIES_GROWLITHE},
	{18, 20, SPECIES_GOTHITA},
	{18, 20, SPECIES_GRIMER_A},
	{18, 21, SPECIES_GRIMER_A},
	{18, 21, SPECIES_DRIFLOON},
	{18, 21, SPECIES_DRIFLOON},
};

static const struct WildPokemonInfo gRoute5_LandMonsInfoNight = {20, gRoute5_LandMonsNight};

static const struct WildPokemon gRoute6_LandMonsNight[] =
{
	{16, 18, SPECIES_BOUNSWEET},
	{17, 18, SPECIES_BELLSPROUT},
	{16, 16, SPECIES_TRUBBISH},
	{17, 17, SPECIES_FURFROU},
	{17, 17, SPECIES_LITLEO},
	{18, 18, SPECIES_DEDENNE},
	{17, 17, SPECIES_KOMALA},
	{18, 18, SPECIES_KOMALA},
	{17, 19, SPECIES_MEDITITE},
	{16, 19, SPECIES_MEDITITE},
	{16, 18, SPECIES_TOGEPI},
	{18, 18, SPECIES_TOGEPI},
};

static const struct WildPokemonInfo gRoute6_LandMonsInfoNight = {20, gRoute6_LandMonsNight};

static const struct WildPokemon gRoute11_LandMonsNight[] =
{
	{22, 24, SPECIES_PANCHAM},
	{22, 24, SPECIES_DUCKLETT},
	{20, 23, SPECIES_DROWZEE},
	{23, 25, SPECIES_BALTOY},
	{23, 25, SPECIES_CACNEA},
	{23, 25, SPECIES_BUNNELBY},
	{24, 26, SPECIES_SCRAGGY},
	{23, 25, SPECIES_SCRAGGY},
	{23, 25, SPECIES_GOLETT},
	{23, 25, SPECIES_GOLETT},
	{23, 25, SPECIES_SIGILYPH},
	{23, 25, SPECIES_SIGILYPH},
};

static const struct WildPokemonInfo gRoute11_LandMonsInfoNight = {20, gRoute11_LandMonsNight};

static const struct WildPokemon gDiglettCave_LandMonsNight[] =
{
	{22, 24, SPECIES_DIGLETT_A},
	{22, 24, SPECIES_DIGLETT_A},
	{22, 24, SPECIES_STUNFISK},
	{22, 25, SPECIES_PHANPY},
	{22, 25, SPECIES_SHELLOS},
	{22, 25, SPECIES_SANDILE},
	{24, 25, SPECIES_PHANPY},
	{24, 26, SPECIES_GLIGAR},
	{24, 25, SPECIES_DUGTRIO_A},
	{24, 25, SPECIES_DUGTRIO_A},
	{24, 25, SPECIES_HIPPOPOTAS},
	{24, 25, SPECIES_HIPPOPOTAS},
};

static const struct WildPokemonInfo gDiglettCave_LandMonsInfoNight = {4, gDiglettCave_LandMonsNight};

static const struct WildPokemon gRoute9_LandMonsNight[] =
{
	{24, 27, SPECIES_SHELMET},
	{25, 27, SPECIES_EXEGGCUTE_A},
	{25, 28, SPECIES_SALANDIT},
	{25, 28, SPECIES_DEWPIDER},
	{25, 28, SPECIES_MANKEY},
	{25, 28, SPECIES_CHATOT},
	{24, 27, SPECIES_ESPURR},
	{27, 27, SPECIES_ESPURR},
	{24, 27, SPECIES_TROPIUS},
	{24, 26, SPECIES_TROPIUS},
	{24, 26, SPECIES_SKORUPI},
	{24, 26, SPECIES_SKORUPI},
};

static const struct WildPokemonInfo gRoute9_LandMonsInfoNight = {20, gRoute9_LandMonsNight};

static const struct WildPokemon gRoute10_LandMonsNight[] =
{
	{25, 28, SPECIES_VOLTORB},
	{25, 28, SPECIES_ELECTRIKE},
	{26, 29, SPECIES_ELECTRIKE},
	{25, 30, SPECIES_CHARJABUG},
	{25, 29, SPECIES_MINUN},
	{25, 30, SPECIES_SKITTY},
	{25, 30, SPECIES_EMOLGA},
	{25, 30, SPECIES_EMOLGA},
	{25, 28, SPECIES_MAGNEMITE},
	{25, 28, SPECIES_MAGNEMITE},
	{25, 28, SPECIES_CROAGUNK},
	{25, 29, SPECIES_CROAGUNK},
};

static const struct WildPokemonInfo gRoute10_LandMonsInfoNight = {20, gRoute10_LandMonsNight};

static const struct WildPokemon gRockTunnel1F_LandMonsNight[] =
{
	{28, 31, SPECIES_GRAVELER_A},
	{28, 31, SPECIES_ARON},
	{27, 31, SPECIES_DWEBBLE},
	{28, 31, SPECIES_LUNATONE},
	{27, 31, SPECIES_ZUBAT},
	{28, 31, SPECIES_CARBINK},
	{27, 31, SPECIES_MINIOR_SHIELD},
	{28, 31, SPECIES_FERROSEED},
	{30, 31, SPECIES_DURANT},
	{30, 31, SPECIES_HEATMOR},
	{28, 28, SPECIES_HONEDGE},
	{28, 28, SPECIES_HONEDGE},
};

static const struct WildPokemonInfo gRockTunnel1F_LandMonsInfoNight = {4, gRockTunnel1F_LandMonsNight};

static const struct WildPokemon gRockTunnelB1F_LandMonsNight[] =
{
	{28, 31, SPECIES_SANDSLASH_A},
	{28, 31, SPECIES_RHYHORN},
	{27, 31, SPECIES_SWINUB},
	{28, 32, SPECIES_SWINUB},
	{27, 32, SPECIES_BONSLY},
	{28, 32, SPECIES_BRONZOR},
	{27, 32, SPECIES_ONIX},
	{28, 32, SPECIES_ONIX},
	{30, 31, SPECIES_SNEASEL},
	{30, 31, SPECIES_SNEASEL},
	{28, 28, SPECIES_KLINK},
	{28, 28, SPECIES_KLINK},
};

static const struct WildPokemonInfo gRockTunnelB1F_LandMonsInfoNight = {4, gRockTunnelB1F_LandMonsNight};

static const struct WildPokemon gRoute7_LandMonsNight[] =
{
	{33, 37, SPECIES_DEERLING_WINTER},
	{34, 38, SPECIES_INKAY},
	{35, 39, SPECIES_VULLABY},
	{35, 39, SPECIES_VULLABY},
	{34, 39, SPECIES_CUTIEFLY},
	{34, 38, SPECIES_SCRAGGY},
	{35, 38, SPECIES_ORANGURU},
	{35, 38, SPECIES_ORANGURU},
	{35, 38, SPECIES_MIENFOO},
	{34, 38, SPECIES_MIENFOO},
	{35, 35, SPECIES_PORYGON},
	{35, 35, SPECIES_PORYGON},
};

static const struct WildPokemonInfo gRoute7_LandMonsInfoNight = {20, gRoute7_LandMonsNight};


static const struct WildPokemon gRoute8_LandMonsNight[] =
{
	{33, 35, SPECIES_LOMBRE},
	{33, 35, SPECIES_MINCCINO},
	{34, 34, SPECIES_GROWLITHE},
	{34, 34, SPECIES_KIRLIA},
	{35, 35, SPECIES_VENIPEDE},
	{33, 35, SPECIES_VENIPEDE},
	{34, 34, SPECIES_COMFEY},
	{34, 34, SPECIES_COMFEY},
	{35, 35, SPECIES_GIRAFARIG},
	{35, 35, SPECIES_GIRAFARIG},
	{36, 36, SPECIES_MILTANK},
	{36, 36, SPECIES_MILTANK},
};

static const struct WildPokemonInfo gRoute8_LandMonsInfoNight = {20, gRoute8_LandMonsNight};

static const struct WildPokemon gRoute16_LandMonsNight[] =
{
	{34, 38, SPECIES_MUDBRAY},
	{34, 38, SPECIES_GOTHORITA},
	{35, 38, SPECIES_DODRIO},
	{34, 36, SPECIES_CRABRAWLER},
	{35, 35, SPECIES_TRUBBISH},
	{34, 37, SPECIES_TOGEDEMARU},
	{35, 35, SPECIES_AUDINO},
	{34, 37, SPECIES_TOGEDEMARU},
	{35, 36, SPECIES_ELGYEM},
	{35, 35, SPECIES_ELGYEM},
	{38, 38, SPECIES_HAWLUCHA},
	{38, 38, SPECIES_HAWLUCHA},
};

static const struct WildPokemonInfo gRoute16_LandMonsInfoNight = {20, gRoute16_LandMonsNight};

static const struct WildPokemon gRoute17_LandMonsNight[] =
{
	{47, 49, SPECIES_WEEZING},
	{46, 49, SPECIES_ZEBSTRIKA},
	{47, 49, SPECIES_MUK_A},
	{47, 50, SPECIES_HYPNO},
	{46, 48, SPECIES_GRUMPIG},
	{47, 49, SPECIES_TORKOAL},
	{45, 45, SPECIES_AUDINO},
	{45, 45, SPECIES_AUDINO},
	{46, 46, SPECIES_TURTONATOR},
	{46, 46, SPECIES_TURTONATOR},
	{45, 45, SPECIES_SKARMORY},
	{45, 45, SPECIES_SKARMORY},
};

static const struct WildPokemonInfo gRoute17_LandMonsInfoNight = {20, gRoute17_LandMonsNight};

static const struct WildPokemon gRoute18_LandMonsNight[] =
{
	{50, 53, SPECIES_XATU},
	{50, 53, SPECIES_VIGOROTH},
	{50, 52, SPECIES_LEAVANNY},
	{49, 51, SPECIES_ABOMASNOW},
	{50, 50, SPECIES_ALTARIA},
	{52, 52, SPECIES_ORICORIO_Y},
	{49, 51, SPECIES_DRAPION},
	{50, 50, SPECIES_DRAPION},
	{48, 49, SPECIES_BISHARP},
	{49, 49, SPECIES_BISHARP},
	{45, 45, SPECIES_EEVEE},
	{45, 45, SPECIES_EEVEE},
};

static const struct WildPokemonInfo gRoute18_LandMonsInfoNight = {20, gRoute18_LandMonsNight};

static const struct WildPokemon gRoute13_LandMonsNight[] =
{
	{49, 50, SPECIES_TANGROWTH},
	{50, 53, SPECIES_VANILLUXE},
	{50, 52, SPECIES_NUZLEAF},
	{49, 51, SPECIES_LURANTIS},
	{50, 50, SPECIES_SIMISAGE},
	{52, 52, SPECIES_ORICORIO_P},
	{49, 51, SPECIES_MILTANK},
	{50, 50, SPECIES_MILTANK},
	{48, 49, SPECIES_SEVIPER},
	{49, 49, SPECIES_SEVIPER},
	{45, 45, SPECIES_CHARMANDER},
	{45, 45, SPECIES_CHARMANDER},
};

static const struct WildPokemonInfo gRoute13_LandMonsInfoNight = {20, gRoute13_LandMonsNight};

static const struct WildPokemon gRoute14_LandMonsNight[] =
{
	{50, 50, SPECIES_PELIPPER},
	{50, 53, SPECIES_LEAVANNY},
	{50, 52, SPECIES_TORKOAL},
	{49, 51, SPECIES_TORKOAL},
	{50, 50, SPECIES_PALOSSAND},
	{52, 52, SPECIES_PALOSSAND},
	{49, 51, SPECIES_VIKAVOLT},
	{50, 50, SPECIES_VIKAVOLT},
	{48, 49, SPECIES_DURANT},
	{49, 49, SPECIES_DURANT},
	{45, 45, SPECIES_GOLISOPOD},
	{45, 45, SPECIES_GOLISOPOD},
};

static const struct WildPokemonInfo gRoute14_LandMonsInfoNight = {20, gRoute14_LandMonsNight};

static const struct WildPokemon gRoute15_LandMonsNight[] =
{
	{50, 52, SPECIES_AMOONGUSS},
	{50, 53, SPECIES_AMBIPOM},
	{50, 52, SPECIES_BEEDRILL},
	{49, 51, SPECIES_GALVANTULA},
	{52, 52, SPECIES_SIMIPOUR},
	{49, 51, SPECIES_ORICORIO},
	{50, 50, SPECIES_SIGILYPH},
	{48, 49, SPECIES_SIGILYPH},
	{49, 49, SPECIES_FERROTHORN},
	{49, 49, SPECIES_FERROTHORN},
	{45, 45, SPECIES_GOLISOPOD},
	{45, 45, SPECIES_GOLISOPOD},
};

static const struct WildPokemonInfo gRoute15_LandMonsInfoNight = {20, gRoute15_LandMonsNight};

static const struct WildPokemon gSafariZone1_LandMonsNight[] = 
{
	{50, 52, SPECIES_KECLEON},
	{50, 53, SPECIES_SPINDA},
	{50, 52, SPECIES_ABSOL},
	{50, 52, SPECIES_ABSOL},
	{49, 51, SPECIES_MELTAN},
	{52, 52, SPECIES_MELTAN},
	{49, 51, SPECIES_PORYGON},
	{50, 50, SPECIES_PORYGON},
	{48, 49, SPECIES_HERACROSS},
	{49, 49, SPECIES_HERACROSS},
	{45, 45, SPECIES_CHANSEY},
	{45, 45, SPECIES_CHANSEY},
};

static const struct WildPokemonInfo gSafariZone1_LandMonsInfoNight = {20, gSafariZone1_LandMonsNight};

static const struct WildPokemon gSafariZone2_LandMonsNight[] = 
{
	{50, 52, SPECIES_HAWLUCHA},
	{50, 53, SPECIES_CASTFORM},
	{50, 52, SPECIES_TAUROS},
	{50, 52, SPECIES_TAUROS},
	{49, 51, SPECIES_WOBBUFFET},
	{52, 52, SPECIES_WOBBUFFET},
	{49, 51, SPECIES_ZORUA},
	{50, 50, SPECIES_ZORUA},
	{48, 49, SPECIES_PINSIR},
	{49, 49, SPECIES_PINSIR},
	{45, 45, SPECIES_KANGASKHAN},
	{45, 45, SPECIES_KANGASKHAN},
};

static const struct WildPokemonInfo gSafariZone2_LandMonsInfoNight = {20, gSafariZone2_LandMonsNight};

static const struct WildPokemon gSafariZone3_LandMonsNight[] = 
{
	{50, 52, SPECIES_KLEFKI},
	{50, 53, SPECIES_KLEFKI},
	{50, 52, SPECIES_THROH},
	{50, 52, SPECIES_THROH},
	{49, 51, SPECIES_BISHARP},
	{52, 52, SPECIES_BISHARP},
	{49, 51, SPECIES_SKARMORY},
	{50, 50, SPECIES_SKARMORY},
	{48, 49, SPECIES_BINACLE},
	{49, 49, SPECIES_BINACLE},
	{45, 45, SPECIES_AXEW},
	{45, 45, SPECIES_AXEW},
};

static const struct WildPokemonInfo gSafariZone3_LandMonsInfoNight = {20, gSafariZone3_LandMonsNight};

static const struct WildPokemon gRoute21_LandMonsNight[] = 
{
	{50, 52, SPECIES_KINGLER},
	{50, 53, SPECIES_KINGLER},
	{50, 52, SPECIES_WEEPINBELL},
	{50, 52, SPECIES_WEEPINBELL},
	{49, 51, SPECIES_NIDORINO},
	{52, 52, SPECIES_NIDORINO},
	{49, 51, SPECIES_KRICKETUNE},
	{50, 50, SPECIES_KRICKETUNE},
	{48, 49, SPECIES_ARIADOS},
	{49, 49, SPECIES_ARIADOS},
	{45, 45, SPECIES_VICTREEBEL},
	{45, 45, SPECIES_VICTREEBEL},
};

static const struct WildPokemonInfo gRoute21_LandMonsInfoNight = {20, gRoute21_LandMonsNight};

static const struct WildPokemon gSeafoam1_LandMonsNight[] = 
{
	{62, 64, SPECIES_SANDSLASH_A},
	{65, 65, SPECIES_SNORUNT},
	{63, 63, SPECIES_BEARTIC},
	{63, 63, SPECIES_BEARTIC},
	{62, 64, SPECIES_WALREIN},
	{63, 63, SPECIES_WALREIN},
	{65, 65, SPECIES_GOLBAT},
	{63, 63, SPECIES_GOLBAT},
	{65, 65, SPECIES_AVALUGG},
	{66, 66, SPECIES_AVALUGG},
	{64, 64, SPECIES_JYNX},
	{64, 64, SPECIES_JYNX},
};

static const struct WildPokemonInfo gSeafoam1_LandMonsInfoNight = {7, gSeafoam1_LandMonsNight};

static const struct WildPokemon gSeafoam2_LandMonsNight[] = 
{
	{62, 64, SPECIES_SANDSLASH_A},
	{65, 65, SPECIES_SNORUNT},
	{63, 63, SPECIES_VANILLUXE},
	{63, 63, SPECIES_VANILLUXE},
	{62, 64, SPECIES_GOLDUCK},
	{63, 63, SPECIES_GOLDUCK},
	{65, 65, SPECIES_GOLBAT},
	{63, 63, SPECIES_GOLBAT},
	{65, 65, SPECIES_CRYOGONAL},
	{66, 66, SPECIES_CRYOGONAL},
	{64, 64, SPECIES_DELIBIRD},
	{64, 64, SPECIES_DELIBIRD},
};

static const struct WildPokemonInfo gSeafoam2_LandMonsInfoNight = {7, gSeafoam2_LandMonsNight};

static const struct WildPokemon gSeafoam3_LandMonsNight[] = 
{
	{62, 64, SPECIES_ABOMASNOW},
	{65, 65, SPECIES_SNORUNT},
	{63, 63, SPECIES_NINETALES_A},
	{63, 63, SPECIES_NINETALES_A},
	{62, 64, SPECIES_KINGLER},
	{63, 63, SPECIES_KINGLER},
	{65, 65, SPECIES_GOLBAT},
	{63, 63, SPECIES_GOLBAT},
	{65, 65, SPECIES_SNEASEL},
	{66, 66, SPECIES_SNEASEL},
	{64, 64, SPECIES_DELIBIRD},
	{64, 64, SPECIES_DELIBIRD},
};

static const struct WildPokemonInfo gSeafoam3_LandMonsInfoNight = {7, gSeafoam3_LandMonsNight};

static const struct WildPokemon gSeafoam4_LandMonsNight[] = 
{
	{62, 64, SPECIES_SANDSLASH_A},
	{65, 65, SPECIES_SNOVER},
	{63, 63, SPECIES_NINETALES_A},
	{63, 63, SPECIES_NINETALES_A},
	{62, 64, SPECIES_GOLDUCK},
	{63, 63, SPECIES_GOLDUCK},
	{65, 65, SPECIES_GOLBAT},
	{63, 63, SPECIES_GOLBAT},
	{65, 65, SPECIES_CRYOGONAL},
	{66, 66, SPECIES_CRYOGONAL},
	{64, 64, SPECIES_DELIBIRD},
	{64, 64, SPECIES_DELIBIRD},
};

static const struct WildPokemonInfo gSeafoam4_LandMonsInfoNight = {7, gSeafoam4_LandMonsNight};

static const struct WildPokemon gPkmnMansion1_LandMonsNight[] = 
{
	{62, 64, SPECIES_RATICATE_A},
	{65, 65, SPECIES_WEEZING},
	{63, 63, SPECIES_MUK_A},
	{63, 63, SPECIES_MUK_A},
	{62, 64, SPECIES_MAGMAR},
	{63, 63, SPECIES_LIEPARD},
	{65, 65, SPECIES_NINETALES},
	{63, 63, SPECIES_NINETALES},
	{65, 65, SPECIES_SABLEYE},
	{66, 66, SPECIES_SABLEYE},
	{64, 64, SPECIES_DITTO},
	{64, 64, SPECIES_DITTO},
};

static const struct WildPokemonInfo gPkmnMansion1_LandMonsInfoNight = {7, gPkmnMansion1_LandMonsNight};

static const struct WildPokemon gPkmnMansion2_LandMonsNight[] = 
{
	{64, 66, SPECIES_LINOONE},
	{65, 65, SPECIES_GARBODOR},
	{63, 63, SPECIES_SWALOT},
	{63, 63, SPECIES_SWALOT},
	{62, 64, SPECIES_HEATMOR},
	{63, 63, SPECIES_MIGHTYENA},
	{65, 65, SPECIES_SALAZZLE},
	{63, 63, SPECIES_SALAZZLE},
	{65, 65, SPECIES_BANETTE},
	{66, 66, SPECIES_BANETTE},
	{64, 64, SPECIES_DITTO},
	{64, 64, SPECIES_DITTO},
};

static const struct WildPokemonInfo gPkmnMansion2_LandMonsInfoNight = {7, gPkmnMansion2_LandMonsNight};

static const struct WildPokemon gPkmnMansion3_LandMonsNight[] = 
{
	{64, 66, SPECIES_KOMALA},
	{65, 65, SPECIES_SEVIPER},
	{63, 63, SPECIES_ARIADOS},
	{63, 63, SPECIES_ARIADOS},
	{62, 64, SPECIES_RAPIDASH},
	{63, 63, SPECIES_SKUNTANK},
	{65, 65, SPECIES_CHANDELURE},
	{63, 63, SPECIES_CHANDELURE},
	{65, 65, SPECIES_KROOKODILE},
	{66, 66, SPECIES_KROOKODILE},
	{64, 64, SPECIES_DITTO},
	{64, 64, SPECIES_DITTO},
};

static const struct WildPokemonInfo gPkmnMansion3_LandMonsInfoNight = {7, gPkmnMansion3_LandMonsNight};

static const struct WildPokemon gPkmnMansionB1_LandMonsNight[] = 
{
	{64, 66, SPECIES_RATICATE_A},
	{65, 65, SPECIES_GARBODOR},
	{63, 63, SPECIES_ARIADOS},
	{63, 63, SPECIES_ARIADOS},
	{62, 64, SPECIES_MAGMAR},
	{63, 63, SPECIES_MIGHTYENA},
	{65, 65, SPECIES_NINETALES},
	{63, 63, SPECIES_NINETALES},
	{65, 65, SPECIES_BANETTE},
	{66, 66, SPECIES_BANETTE},
	{64, 64, SPECIES_DITTO},
	{64, 64, SPECIES_DITTO},
};

static const struct WildPokemonInfo gPkmnMansionB1_LandMonsInfoNight = {7, gPkmnMansionB1_LandMonsNight};

static const struct WildPokemon gPowerPlant_LandMonsNight[] = 
{
	{64, 66, SPECIES_MAGNETON},
	{65, 65, SPECIES_ELECTRODE},
	{63, 63, SPECIES_MANECTRIC},
	{63, 63, SPECIES_VIKAVOLT},
	{62, 64, SPECIES_AMPHAROS},
	{63, 63, SPECIES_AMPHAROS},
	{65, 65, SPECIES_TOGEDEMARU},
	{63, 63, SPECIES_TOGEDEMARU},
	{65, 65, SPECIES_ELECTABUZZ},
	{66, 66, SPECIES_ELECTABUZZ},
	{66, 66, SPECIES_ELECTABUZZ},
	{66, 66, SPECIES_ELECTABUZZ},
};

static const struct WildPokemonInfo gPowerPlant_LandMonsInfoNight = {7, gPowerPlant_LandMonsNight};

static const struct WildPokemon gCeruleanCave1_LandMonsNight[] = 
{
	// {68, 71, SPECIES_PARASECT},
	{68, 71, SPECIES_SILVALLY_FIGHT},
	{68, 71, SPECIES_GOLBAT},
	{67, 67, SPECIES_CONKELDURR},
	{67, 68, SPECIES_CONKELDURR},
	{69, 70, SPECIES_MAGNETON},
	{69, 70, SPECIES_MAGNETON},
	{69, 72, SPECIES_SEISMITOAD},
	{66, 69, SPECIES_SEISMITOAD},
	{64, 64, SPECIES_DITTO},
	{64, 64, SPECIES_DITTO},
	{66, 66, SPECIES_TYPE_NULL},
	{66, 66, SPECIES_TYPE_NULL},
};

static const struct WildPokemonInfo gCeruleanCave1_LandMonsInfoNight = {7, gCeruleanCave1_LandMonsNight};

static const struct WildPokemon gCeruleanCave2_LandMonsNight[] = 
{
	{69, 71, SPECIES_AMOONGUSS},
	{69, 71, SPECIES_SWOOBAT},
	{68, 68, SPECIES_PANGORO},
	{69, 69, SPECIES_PANGORO},
	{70, 71, SPECIES_ELECTRODE},
	{70, 71, SPECIES_ELECTRODE},
	{69, 70, SPECIES_REUNICLUS},
	{69, 70, SPECIES_REUNICLUS},
	{64, 64, SPECIES_DITTO},
	{64, 64, SPECIES_DITTO},
	{68, 68, SPECIES_TYPE_NULL},
	{68, 68, SPECIES_TYPE_NULL},
};

static const struct WildPokemonInfo gCeruleanCave2_LandMonsInfoNight = {7, gCeruleanCave2_LandMonsNight};

static const struct WildPokemon gCeruleanCave3_LandMonsNight[] = 
{
	{69, 71, SPECIES_SHIINOTIC},
	{69, 71, SPECIES_NOIVERN},
	{69, 70, SPECIES_TOXICROAK},
	{69, 70, SPECIES_TOXICROAK},
	{69, 71, SPECIES_LOPUNNY},
	{69, 71, SPECIES_GARDEVOIR},
	{69, 71, SPECIES_LOPUNNY},
	{69, 72, SPECIES_GARDEVOIR},
	{70, 72, SPECIES_EXCADRILL},
	{70, 72, SPECIES_EXCADRILL},
	{68, 69, SPECIES_TYPE_NULL},
	{69, 69, SPECIES_TYPE_NULL},
};

static const struct WildPokemonInfo gCeruleanCave3_LandMonsInfoNight = {7, gCeruleanCave3_LandMonsNight};



const struct WildPokemonHeader gWildMonMorningHeaders[] =
{
	{
		.mapGroup = 0xFF,
		.mapNum = 0xFF,
		.landMonsInfo = NULL,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	}
};

const struct WildPokemonHeader gWildMonEveningHeaders[] =
{
	{
		.mapGroup = 0xFF,
		.mapNum = 0xFF,
		.landMonsInfo = NULL,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	}
};

const struct WildPokemonHeader gWildMonNightHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(ROUTE_1),
		.mapNum = MAP_NUM(ROUTE_1),
		.landMonsInfo = &gRoute1_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_2),
		.mapNum = MAP_NUM(ROUTE_2),
		.landMonsInfo = &gRoute2_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_22),
		.mapNum = MAP_NUM(ROUTE_22),
		.landMonsInfo = &gRoute22_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(VIRIDIAN_FOREST),
		.mapNum = MAP_NUM(VIRIDIAN_FOREST),
		.landMonsInfo = &gViridianFor_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_3),
		.mapNum = MAP_NUM(ROUTE_3),
		.landMonsInfo = &gRoute3_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(MT_MOON_1F),
		.mapNum = MAP_NUM(MT_MOON_1F),
		.landMonsInfo = &gMtMoon_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(MT_MOON_B1F),
		.mapNum = MAP_NUM(MT_MOON_B1F),
		.landMonsInfo = &gMtMoonTunn_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(MT_MOON_B2F),
		.mapNum = MAP_NUM(MT_MOON_B2F),
		.landMonsInfo = &gMtMoonBase_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_4),
		.mapNum = MAP_NUM(ROUTE_4),
		.landMonsInfo = &gRoute4_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_24),
		.mapNum = MAP_NUM(ROUTE_24),
		.landMonsInfo = &gRoute24_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_25),
		.mapNum = MAP_NUM(ROUTE_25),
		.landMonsInfo = &gRoute25_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_5),
		.mapNum = MAP_NUM(ROUTE_5),
		.landMonsInfo = &gRoute5_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &gRoute6_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_11),
		.mapNum = MAP_NUM(ROUTE_11),
		.landMonsInfo = &gRoute11_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(DIGLETTS_CAVE_B1F),
		.mapNum = MAP_NUM(DIGLETTS_CAVE_B1F),
		.landMonsInfo = &gDiglettCave_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_9),
		.mapNum = MAP_NUM(ROUTE_9),
		.landMonsInfo = &gRoute9_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_10),
		.mapNum = MAP_NUM(ROUTE_10),
		.landMonsInfo = &gRoute10_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROCK_TUNNEL_1F),
		.mapNum = MAP_NUM(ROCK_TUNNEL_1F),
		.landMonsInfo = &gRockTunnel1F_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROCK_TUNNEL_B1F),
		.mapNum = MAP_NUM(ROCK_TUNNEL_B1F),
		.landMonsInfo = &gRockTunnelB1F_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_7),
		.mapNum = MAP_NUM(ROUTE_7),
		.landMonsInfo = &gRoute7_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_8),
		.mapNum = MAP_NUM(ROUTE_8),
		.landMonsInfo = &gRoute8_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_16),
		.mapNum = MAP_NUM(ROUTE_16),
		.landMonsInfo = &gRoute16_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_17),
		.mapNum = MAP_NUM(ROUTE_17),
		.landMonsInfo = &gRoute17_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_18),
		.mapNum = MAP_NUM(ROUTE_18),
		.landMonsInfo = &gRoute18_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_13),
		.mapNum = MAP_NUM(ROUTE_13),
		.landMonsInfo = &gRoute13_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_14),
		.mapNum = MAP_NUM(ROUTE_14),
		.landMonsInfo = &gRoute14_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_15),
		.mapNum = MAP_NUM(ROUTE_15),
		.landMonsInfo = &gRoute15_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SAFARI_ZONE_CENTER),
		.mapNum = MAP_NUM(SAFARI_ZONE_CENTER),
		.landMonsInfo = &gSafariZone1_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SAFARI_ZONE_EAST),
		.mapNum = MAP_NUM(SAFARI_ZONE_EAST),
		.landMonsInfo = &gSafariZone2_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SAFARI_ZONE_NORTH),
		.mapNum = MAP_NUM(SAFARI_ZONE_NORTH),
		.landMonsInfo = &gSafariZone3_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_21_A),
		.mapNum = MAP_NUM(ROUTE_21_A),
		.landMonsInfo = &gRoute21_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SEAFOAM_ISLANDS_1F),
		.mapNum = MAP_NUM(SEAFOAM_ISLANDS_1F),
		.landMonsInfo = &gSeafoam1_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SEAFOAM_ISLANDS_B1F),
		.mapNum = MAP_NUM(SEAFOAM_ISLANDS_B1F),
		.landMonsInfo = &gSeafoam2_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SEAFOAM_ISLANDS_B2F),
		.mapNum = MAP_NUM(SEAFOAM_ISLANDS_B2F),
		.landMonsInfo = &gSeafoam3_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(SEAFOAM_ISLANDS_B3F),
		.mapNum = MAP_NUM(SEAFOAM_ISLANDS_B3F),
		.landMonsInfo = &gSeafoam4_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(POKEMON_MANSION_1F),
		.mapNum = MAP_NUM(POKEMON_MANSION_1F),
		.landMonsInfo = &gPkmnMansion1_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(POKEMON_MANSION_2F),
		.mapNum = MAP_NUM(POKEMON_MANSION_2F),
		.landMonsInfo = &gPkmnMansion2_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(POKEMON_MANSION_3F),
		.mapNum = MAP_NUM(POKEMON_MANSION_3F),
		.landMonsInfo = &gPkmnMansion3_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(POKEMON_MANSION_B1F),
		.mapNum = MAP_NUM(POKEMON_MANSION_B1F),
		.landMonsInfo = &gPkmnMansionB1_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(POWER_PLANT),
		.mapNum = MAP_NUM(POWER_PLANT),
		.landMonsInfo = &gPowerPlant_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(CERULEAN_CAVE_1F),
		.mapNum = MAP_NUM(CERULEAN_CAVE_1F),
		.landMonsInfo = &gCeruleanCave1_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(CERULEAN_CAVE_2F),
		.mapNum = MAP_NUM(CERULEAN_CAVE_2F),
		.landMonsInfo = &gCeruleanCave2_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(CERULEAN_CAVE_B1F),
		.mapNum = MAP_NUM(CERULEAN_CAVE_B1F),
		.landMonsInfo = &gCeruleanCave3_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = 0xFF,
		.mapNum = 0xFF,
		.landMonsInfo = NULL,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	}
};

const struct SwarmData gSwarmTable[] =
{
	/*{
		.mapName = 0xFF,
		.species = 0xFFFF,
	},*/
};




#else //Below is for Pokemon Unbound. Feel free to remove.

static const struct WildPokemon sRoute2_LandMonsNight[] =
{
	{9, 11, SPECIES_HOOTHOOT},
	{9, 11, SPECIES_RATTATA},
	{9, 11, SPECIES_RATTATA},
	{9, 11, SPECIES_HOOTHOOT},
	{9, 11, SPECIES_ELECTRIKE},
	{9, 11, SPECIES_AZURILL},
	{9, 11, SPECIES_STUFFUL},
	{9, 11, SPECIES_STUFFUL},
	{10, 11, SPECIES_SCRAGGY},
	{10, 11, SPECIES_RIOLU},
	{11, 11, SPECIES_SCRAGGY},
	{11, 11, SPECIES_RIOLU},
};

static const struct WildPokemonInfo sRoute2_LandMonsInfoNight = {21, gRoute1_LandMonsNight};

static const struct WildPokemon sRoute3_LandMonsNight[] =
{
	{10, 12, SPECIES_WINGULL},
	{10, 12, SPECIES_SENTRET},
	{10, 12, SPECIES_BIDOOF},
	{10, 12, SPECIES_BIDOOF},
	{10, 12, SPECIES_BUIZEL},
	{10, 12, SPECIES_SHELLOS},
	{10, 12, SPECIES_SURSKIT},
	{10, 12, SPECIES_KRABBY},
	{11, 12, SPECIES_KRABBY},
	{11, 12, SPECIES_KRABBY},
	{12, 12, SPECIES_KRABBY},
	{12, 12, SPECIES_KRABBY},
};

static const struct WildPokemonInfo sRoute3_LandMonsInfoNight = {20, sRoute3_LandMonsNight};

static const struct WildPokemon sRoute4_LandMonsNight[] =
{
	{15, 17, SPECIES_HOOTHOOT},
	{15, 17, SPECIES_HOOTHOOT},
	{15, 17, SPECIES_LILLIPUP},
	{15, 17, SPECIES_LILLIPUP},
	{15, 17, SPECIES_EKANS},
	{15, 17, SPECIES_NUMEL},
	{15, 17, SPECIES_MANKEY},
	{15, 17, SPECIES_MANKEY},
	{15, 17, SPECIES_NUMEL},
	{15, 17, SPECIES_RALTS},
	{17, 17, SPECIES_NUMEL},
	{17, 17, SPECIES_RALTS},
};

static const struct WildPokemonInfo sRoute4_LandMonsInfoNight = {20, sRoute4_LandMonsNight};

static const struct WildPokemon sGrimWoods_LandMonsNight[] =
{
	{13, 16, SPECIES_WEEDLE},
	{14, 16, SPECIES_SEEDOT},
	{14, 16, SPECIES_PUMPKABOO},
	{14, 16, SPECIES_PUMPKABOO_M},
	{14, 16, SPECIES_PUMPKABOO_L},
	{14, 16, SPECIES_PUMPKABOO_XL},
	{15, 16, SPECIES_GASTLY},
	{15, 16, SPECIES_SHUPPET},
	{15, 16, SPECIES_DUSKULL},
	{15, 16, SPECIES_PHANTUMP},
	{16, 16, SPECIES_DUSKULL},
	{16, 16, SPECIES_PHANTUMP},
};

static const struct WildPokemonInfo sGrimWoods_LandMonsInfoNight = {20, sGrimWoods_LandMonsNight};

static const struct WildPokemon sRoute5_LandMonsNight[] =
{
	{15, 18, SPECIES_MURKROW},
	{15, 18, SPECIES_ZUBAT},
	{15, 18, SPECIES_NIDORAN_M},
	{15, 18, SPECIES_NIDORAN_F},
	{16, 19, SPECIES_HOUNDOUR},
	{15, 18, SPECIES_ZUBAT},
	{15, 18, SPECIES_NIDORAN_M},
	{15, 18, SPECIES_NIDORAN_F},
	{17, 19, SPECIES_MURKROW},
	{17, 19, SPECIES_DEDENNE},
	{19, 19, SPECIES_NIDORINA},
	{19, 19, SPECIES_NIDORINO},
};

static const struct WildPokemonInfo sRoute5_LandMonsInfoNight = {20, sRoute5_LandMonsNight};

static const struct WildPokemon sRoute6_LandMonsMorning[] =
{
	{20, 22, SPECIES_ZIGZAGOON},
	{20, 22, SPECIES_LEDYBA},
	{20, 22, SPECIES_SHINX},
	{20, 22, SPECIES_DEERLING},
	{20, 22, SPECIES_ZIGZAGOON},
	{20, 22, SPECIES_KRICKETOT},
	{21, 22, SPECIES_KRICKETOT},
	{21, 22, SPECIES_KRICKETOT},
	{21, 22, SPECIES_DEERLING},
	{21, 22, SPECIES_KRICKETOT},
	{22, 22, SPECIES_LEDIAN},
	{22, 22, SPECIES_LUXIO},
};

static const struct WildPokemonInfo sRoute6_LandMonsInfoMorning = {20, sRoute6_LandMonsMorning};

static const struct WildPokemon sRoute6_LandMonsNight[] =
{
	{20, 22, SPECIES_ZIGZAGOON},
	{20, 22, SPECIES_SPINARAK},
	{20, 22, SPECIES_SHINX},
	{20, 22, SPECIES_DEERLING},
	{20, 22, SPECIES_ZIGZAGOON},
	{20, 22, SPECIES_KRICKETOT},
	{21, 22, SPECIES_KRICKETOT},
	{21, 22, SPECIES_KRICKETOT},
	{21, 22, SPECIES_DEERLING},
	{21, 22, SPECIES_KRICKETOT},
	{22, 22, SPECIES_ARIADOS},
	{22, 22, SPECIES_LUXIO},
};

static const struct WildPokemonInfo sRoute6_LandMonsInfoNight = {20, sRoute6_LandMonsNight};

static const struct WildPokemon sRoute7_LandMonsNight[] =
{
	{21, 23, SPECIES_YUNGOOS},
	{21, 23, SPECIES_DODUO},
	{21, 23, SPECIES_BUNEARY},
	{21, 23, SPECIES_ESPURR},
	{21, 23, SPECIES_ABRA},
	{21, 23, SPECIES_MAREEP},
	{21, 23, SPECIES_SHINX},
	{21, 23, SPECIES_SHINX},
	{22, 23, SPECIES_YUNGOOS},
	{22, 23, SPECIES_BUNEARY},
	{23, 23, SPECIES_LUXIO},
	{23, 23, SPECIES_GUMSHOOS},
};

static const struct WildPokemonInfo sRoute7_LandMonsInfoNight = {20, sRoute7_LandMonsNight};

static const struct WildPokemon sRoute8_LandMonsNight[] =
{
	{22, 25, SPECIES_SNOVER},
	{22, 25, SPECIES_SNORUNT},
	{22, 25, SPECIES_SNEASEL},
	{22, 25, SPECIES_SNORUNT},
	{22, 25, SPECIES_CUBCHOO},
	{22, 25, SPECIES_DEERLING_WINTER},
	{22, 25, SPECIES_FURRET},
	{22, 25, SPECIES_FLAAFFY},
	{23, 25, SPECIES_SNOVER},
	{23, 25, SPECIES_SNORUNT},
	{23, 25, SPECIES_MINIOR_SHIELD},
	{23, 25, SPECIES_MINIOR_SHIELD},
};

static const struct WildPokemonInfo sRoute8_LandMonsInfoNight = {20, sRoute8_LandMonsNight};

static const struct WildPokemon sFrozenForest_LandMonsNight[] =
{
	{23, 26, SPECIES_SNOVER},
	{23, 26, SPECIES_SNOVER},
	{23, 26, SPECIES_SNEASEL},
	{23, 26, SPECIES_CUBCHOO},
	{23, 26, SPECIES_CUBCHOO},
	{23, 26, SPECIES_CUBCHOO},
	{23, 26, SPECIES_SNOVER},
	{23, 26, SPECIES_SNEASEL},
	{23, 26, SPECIES_CUBCHOO},
	{23, 26, SPECIES_CUBCHOO},
	{26, 26, SPECIES_CUBCHOO},
	{26, 26, SPECIES_CUBCHOO},
};

static const struct WildPokemonInfo sFrozenForest_LandMonsInfoNight = {20, sFrozenForest_LandMonsNight};

static const struct WildPokemon sRoute11_LandMonsNight[] =
{
	{26, 29, SPECIES_EXEGGCUTE},
	{26, 29, SPECIES_MEOWTH},
	{26, 29, SPECIES_VENONAT},
	{26, 29, SPECIES_VENONAT},
	{26, 29, SPECIES_SPOINK},
	{26, 29, SPECIES_MEDITITE},
	{27, 29, SPECIES_SPOINK},
	{27, 29, SPECIES_MEDITITE},
	{29, 29, SPECIES_PERSIAN},
	{29, 29, SPECIES_ABSOL},
	{29, 29, SPECIES_PERSIAN},
	{29, 29, SPECIES_ABSOL},
};

static const struct WildPokemonInfo sRoute11_LandMonsInfoNight = {20, sRoute11_LandMonsNight};

static const struct WildPokemon sRoute12_LandMonsNight[] =
{
	{29, 32, SPECIES_HOOTHOOT},
	{33, 36, SPECIES_ROCKRUFF},
	{33, 36, SPECIES_INKAY},
	{33, 36, SPECIES_MIENFOO},
	{33, 36, SPECIES_PONYTA},
	{33, 36, SPECIES_SNUBBULL},
	{34, 36, SPECIES_INKAY},
	{34, 36, SPECIES_MIENFOO},
	{34, 36, SPECIES_NOCTOWL},
	{33, 36, SPECIES_TOGEDEMARU},
	{34, 36, SPECIES_NOCTOWL},
	{35, 36, SPECIES_TOGEDEMARU},
};

static const struct WildPokemonInfo sRoute12_LandMonsInfoNight = {20, sRoute12_LandMonsNight};

static const struct WildPokemon sRoute14_LandMonsNight[] =
{
	{37, 40, SPECIES_PELIPPER},
	{37, 40, SPECIES_BIBAREL},
	{37, 40, SPECIES_GOLDUCK},
	{37, 40, SPECIES_GASTRODON},
	{37, 40, SPECIES_FLOATZEL},
	{36, 40, SPECIES_SLOWPOKE},
	{37, 40, SPECIES_GLOOM},
	{37, 40, SPECIES_GLOOM},
	{38, 40, SPECIES_FLOATZEL},
	{37, 40, SPECIES_SLOWPOKE},
	{25, 30, SPECIES_ODDISH},
	{25, 30, SPECIES_ODDISH},
};

static const struct WildPokemonInfo sRoute14_LandMonsInfoNight = {20, sRoute14_LandMonsNight};

static const struct WildPokemon sVivillWoods_LandMonsNight[] =
{
	{30, 35, SPECIES_WEEDLE},
	{30, 35, SPECIES_WURMPLE},
	{30, 35, SPECIES_SCATTERBUG},
	{38, 41, SPECIES_COTTONEE},
	{39, 41, SPECIES_SWADLOON},
	{38, 41, SPECIES_PETILIL},
	{39, 41, SPECIES_SPEWPA},
	{39, 41, SPECIES_KAKUNA},
	{39, 41, SPECIES_SILCOON},
	{39, 41, SPECIES_CASCOON},
	{39, 41, SPECIES_SILCOON},
	{39, 41, SPECIES_CASCOON},
};

static const struct WildPokemonInfo sVivillWoods_LandMonsInfoNight = {20, sVivillWoods_LandMonsNight};

static const struct WildPokemon sRoute17_LandMonsNight[] =
{
	{47, 50, SPECIES_NOCTOWL},
	{47, 50, SPECIES_PELIPPER},
	{47, 50, SPECIES_NOCTOWL},
	{47, 50, SPECIES_PELIPPER},
	{47, 50, SPECIES_NOCTOWL},
	{47, 50, SPECIES_NOCTOWL},
	{47, 50, SPECIES_NOCTOWL},
	{47, 50, SPECIES_NOCTOWL},
	{48, 50, SPECIES_ZANGOOSE},
	{48, 50, SPECIES_SEVIPER},
	{40, 45, SPECIES_BAGON},
	{40, 45, SPECIES_BAGON},
};

static const struct WildPokemonInfo sRoute17_LandMonsInfoNight = {20, sRoute17_LandMonsNight};

static const struct WildPokemon sCootesBog_LandMonsNight[] =
{
	{48, 52, SPECIES_CROAGUNK},
	{49, 52, SPECIES_QUAGSIRE},
	{48, 52, SPECIES_CROAGUNK},
	{50, 52, SPECIES_SLIGGOO},
	{50, 52, SPECIES_SLIGGOO},
	{51, 52, SPECIES_DRAPION},
	{49, 52, SPECIES_CARNIVINE},
	{49, 52, SPECIES_GLOOM},
	{49, 52, SPECIES_GLOOM},
	{52, 52, SPECIES_TOXICROAK},
	{49, 52, SPECIES_GLOOM},
	{52, 52, SPECIES_TOXICROAK},
};

static const struct WildPokemonInfo sCootesBog_LandMonsInfoNight = {20, sCootesBog_LandMonsNight};

static const struct WildPokemon sRoute18_LandMonsNight[] =
{
	{53, 57, SPECIES_NOCTOWL},
	{53, 57, SPECIES_SKUNTANK},
	{53, 57, SPECIES_NOCTOWL},
	{53, 57, SPECIES_SKUNTANK},
	{53, 57, SPECIES_BOUFFALANT},
	{53, 57, SPECIES_BOUFFALANT},
	{53, 57, SPECIES_NOCTOWL},
	{53, 57, SPECIES_SKUNTANK},
	{53, 57, SPECIES_SUDOWOODO},
	{53, 57, SPECIES_AUDINO},
	{53, 57, SPECIES_SUDOWOODO},
	{53, 57, SPECIES_AUDINO},
};

static const struct WildPokemonInfo sRoute18_LandMonsInfoNight = {20, sRoute18_LandMonsNight};

const struct WildPokemonHeader gWildMonMorningHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &sRoute6_LandMonsInfoMorning,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = 0xFF,
		.mapNum = 0xFF,
		.landMonsInfo = NULL,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	}
};

const struct WildPokemonHeader gWildMonEveningHeaders[] =
{
	{
		.mapGroup = 0xFF,
		.mapNum = 0xFF,
		.landMonsInfo = NULL,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	}
};

const struct WildPokemonHeader gWildMonNightHeaders[] =
{
	{
		.mapGroup = MAP_GROUP(ROUTE_2),
		.mapNum = MAP_NUM(ROUTE_2),
		.landMonsInfo = &sRoute2_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_3),
		.mapNum = MAP_NUM(ROUTE_3),
		.landMonsInfo = &sRoute3_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_4),
		.mapNum = MAP_NUM(ROUTE_4),
		.landMonsInfo = &sRoute4_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(GRIM_WOODS),
		.mapNum = MAP_NUM(GRIM_WOODS),
		.landMonsInfo = &sGrimWoods_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_5),
		.mapNum = MAP_NUM(ROUTE_5),
		.landMonsInfo = &sRoute5_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_6),
		.mapNum = MAP_NUM(ROUTE_6),
		.landMonsInfo = &sRoute6_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_7),
		.mapNum = MAP_NUM(ROUTE_7),
		.landMonsInfo = &sRoute7_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_8),
		.mapNum = MAP_NUM(ROUTE_8),
		.landMonsInfo = &sRoute8_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(FROZEN_FOREST),
		.mapNum = MAP_NUM(FROZEN_FOREST),
		.landMonsInfo = &sFrozenForest_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_11),
		.mapNum = MAP_NUM(ROUTE_11),
		.landMonsInfo = &sRoute11_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_12),
		.mapNum = MAP_NUM(ROUTE_12),
		.landMonsInfo = &sRoute12_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_14_B),
		.mapNum = MAP_NUM(ROUTE_14_B),
		.landMonsInfo = &sRoute14_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_14_C),
		.mapNum = MAP_NUM(ROUTE_14_C),
		.landMonsInfo = &sRoute14_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(VIVILL_WOODS),
		.mapNum = MAP_NUM(VIVILL_WOODS),
		.landMonsInfo = &sVivillWoods_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_17),
		.mapNum = MAP_NUM(ROUTE_17),
		.landMonsInfo = &sRoute17_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(COOTES_BOG),
		.mapNum = MAP_NUM(COOTES_BOG),
		.landMonsInfo = &sCootesBog_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = MAP_GROUP(ROUTE_18_B),
		.mapNum = MAP_NUM(ROUTE_18_B),
		.landMonsInfo = &sRoute18_LandMonsInfoNight,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	},
	{
		.mapGroup = 0xFF,
		.mapNum = 0xFF,
		.landMonsInfo = NULL,
		.waterMonsInfo = NULL,
		.rockSmashMonsInfo = NULL,
		.fishingMonsInfo = NULL,
	}
};

const struct SwarmData gSwarmTable[] =
{
	{
		.mapName = MAPSEC_ROUTE_1,
		.species = SPECIES_SNEASEL,
	},
	{
		.mapName = MAPSEC_ROUTE_2,
		.species = SPECIES_BURMY,
	},
	{
		.mapName = MAPSEC_FLOWER_PARADISE,
		.species = SPECIES_CHERUBI,
	},
	{
		.mapName = MAPSEC_GRIM_WOODS,
		.species = SPECIES_NINCADA,
	},
	{
		.mapName = MAPSEC_ROUTE_4,
		.species = SPECIES_LITLEO,
	},
	{
		.mapName = MAPSEC_CINDER_VOLCANO,
		.species = SPECIES_VULPIX,
	},
	{
		.mapName = MAPSEC_ROUTE_5,
		.species = SPECIES_PURRLOIN,
	},
	{
		.mapName = MAPSEC_VALLEY_CAVE,
		.species = SPECIES_DUNSPARCE,
	},
	{
		.mapName = MAPSEC_ROUTE_6,
		.species = SPECIES_SMEARGLE,
	},
	{
		.mapName = MAPSEC_ROUTE_7,
		.species = SPECIES_MR_MIME,
	},
	{
		.mapName = MAPSEC_ROUTE_8,
		.species = SPECIES_STANTLER,
	},
	{
		.mapName = MAPSEC_ROUTE_9,
		.species = SPECIES_KARRABLAST,
	},
	{
		.mapName = MAPSEC_ROUTE_10,
		.species = SPECIES_SHELMET,
	},
	{
		.mapName = MAPSEC_ROUTE_11,
		.species = SPECIES_GLAMEOW,
	},
	{
		.mapName = MAPSEC_THUNDERCAP_MOUNTAIN,
		.species = SPECIES_JOLTIK,
	},
	{
		.mapName = MAPSEC_THUNDERCAP_MOUNTAIN,
		.species = SPECIES_FERROSEED,
	},
	{
		.mapName = MAPSEC_ROUTE_12,
		.species = SPECIES_SWIRLIX,
	},
	{
		.mapName = MAPSEC_ROUTE_12,
		.species = SPECIES_SPRITZEE,
	},
	{
		.mapName = MAPSEC_VIVILL_WOODS,
		.species = SPECIES_PIKACHU,
	},
	{
		.mapName = MAPSEC_ROUTE_16,
		.species = SPECIES_GOTHORITA,
	},
	{
		.mapName = MAPSEC_ROUTE_16,
		.species = SPECIES_DUOSION,
	},
	{
		.mapName = MAPSEC_ROUTE_17,
		.species = SPECIES_VOLBEAT,
	},
	{
		.mapName = MAPSEC_ROUTE_17,
		.species = SPECIES_ILLUMISE,
	},
	{
		.mapName = MAPSEC_COOTES_BOG,
		.species = SPECIES_CROCONAW,
	},
	{
		.mapName = MAPSEC_ROUTE_18,
		.species = SPECIES_BAYLEEF,
	}
};

#endif

const u16 gSwarmTableLength = NELEMS(gSwarmTable);
