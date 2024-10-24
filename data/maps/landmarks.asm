MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 128, 100, Route29Name
	landmark 100, 100, CherrygroveCityName
	landmark 100,  80, Route30Name
	landmark  96,  60, Route31Name
	landmark  84,  60, VioletCityName
	landmark  85,  58, SproutTowerName
	landmark  84,  92, Route32Name
	landmark  76,  76, RuinsOfAlphName
	landmark  84, 124, UnionCaveName
	landmark  82, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  70, 122, SlowpokeWellName
	landmark  52, 120, IlexForestName
	landmark  52, 112, Route34Name
	landmark  52,  92, GoldenrodCityName
	landmark  50,  92, RadioTowerName
	landmark  52,  76, Route35Name
	landmark  52,  60, NationalParkName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  70,  42, TinTowerName
	landmark  66,  42, BurnedTowerName
	landmark  52,  44, Route38Name
	landmark  36,  48, Route39Name
	landmark  36,  60, OlivineCityName
	landmark  38,  62, LighthouseName
	landmark  28,  56, BattleTowerName
	landmark  28,  64, Route40Name
	landmark  28,  92, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  92,  44, Route42Name
	landmark  84,  44, MtMortarName
	landmark 108,  44, MahoganyTownName
	landmark 108,  36, Route43Name
	landmark 108,  28, LakeOfRageName
	landmark 120,  44, Route44Name
	landmark 130,  38, IcePathName
	landmark 132,  44, BlackthornCityName
	landmark 132,  36, DragonsDenName
	landmark 132,  64, Route45Name
	landmark 112,  72, DarkCaveName
	landmark 124,  88, Route46Name
	landmark 148,  68, SilverCaveName
	assert_table_length KANTO_LANDMARK
	landmark  32,  96, PalletTownName
	landmark  32,  88, Route1Name
	landmark  32,  72, ViridianCityName
	landmark  32,  56, Route2Name
	landmark  32,  40, ViridianForestName
	landmark  32,  32, PewterCityName
	landmark  48,  32, Route3Name
	landmark  64,  32, MtMoonName
	landmark  80,  24, Route4Name
	landmark  96,  24, CeruleanCityName
	landmark  96,  16, Route24Name
	landmark 104,   8, Route25Name
	landmark 116,  12, SeaCottageName
	landmark  96,  32, Route5Name
	landmark 108,  76, UndergroundName
	landmark  96,  72, Route6Name
	landmark  96,  80, VermilionCityName
	landmark  48,  64, DiglettsCaveName ; Change Coords to be on Vermilion side, like Gen II
	landmark 120,  24, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 128,  40, Route10Name
	landmark 136,  64, PowerPlantName
	landmark 128,  48, LavenderTownName
	landmark 132,  44, PokemonTowerName ; "POKEMON_TOWER"
	landmark 120,  48, Route8Name
	;landmark 108,  76, UndergroundName ; Add 2nd Underground Path
	landmark  80,  48, Route7Name
	landmark  72,  48, CeladonCityName
	landmark  96,  48, SaffronCityName
	landmark 112,  80, Route11Name
	landmark 128,  80, Route12Name
	landmark 120,  96, Route13Name
	landmark 104, 104, Route14Name
	landmark  96, 112, Route15Name
	landmark  56,  48, Route16Name
	landmark  48,  72, Route17Name
	landmark  64, 112, Route18Name
	landmark  80, 112, FuchsiaCityName
	landmark  80, 104, SafariZoneName
	landmark  64, 128, Route19Name
	landmark  48, 128, Route20Name
	landmark  60, 132, SeafoamIslandsName
	landmark  32, 128, CinnabarIslandName
	; MANSION - TBA
	landmark  32, 112, Route21Name
	landmark  16,  72, Route22Name
	landmark  16,  56, Route23Name
	landmark  16,  64, VictoryRoadName
	landmark  16,  24, IndigoPlateauName
	;CERULEAN CAVE
	landmark  28,  92, Route26Name  ; KANTO EXPANSION
	landmark  20, 100, Route27Name ; KANTO EXPANSION
	landmark  12, 100, TohjoFallsName ; KANTO EXPANSION
	landmark  20,  68, Route28Name ; KANTO EXPANSION
	landmark 140, 116, FastShipName ; KANTO EXPANSION
	
	; ACCOUNTED FOR +4 OFFSET
	
	; internal_map SS_ANNE_B1F_ROOMS,              9, 10, SSAnneName ; On it to see it - same POS as Vermilion + 8-Y
	; internal_map UNDERGROUND_PATH_NORTH_SOUTH,  10,  5, UndergroundPathName
	; internal_map UNDERGROUND_PATH_WEST_EAST,    10,  5, UndergroundPathName
	; landmark  72,  56, RocketHQName ; On it to see it
	; landmark  96,  56, SilphCoName ; On it to see it
	; landmark  92,  20, CeruleanCaveName ; On it to see it

	
	assert_table_length NUM_LANDMARKS

NewBarkTownName:     db "NEW BARK<BSP>TOWN@"
CherrygroveCityName: db "CHERRYGROVE<BSP>CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD<BSP>CITY@"
EcruteakCityName:    db "ECRUTEAK<BSP>CITY@"
OlivineCityName:     db "OLIVINE<BSP>CITY@"
CianwoodCityName:    db "CIANWOOD<BSP>CITY@"
MahoganyTownName:    db "MAHOGANY<BSP>TOWN@"
BlackthornCityName:  db "BLACKTHORN<BSP>CITY@"
LakeOfRageName:      db "LAKE OF<BSP>RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT<BSP>TOWER@"
RuinsOfAlphName:     db "RUINS<BSP>OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE<BSP>WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL<BSP>PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL<BSP>ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S<BSP>DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN<BSP>CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN<BSP>CITY@"
LavenderTownName:    db "LAVENDER<BSP>TOWN@"
VermilionCityName:   db "VERMILION<BSP>CITY@"
CeladonCityName:     db "CELADON<BSP>CITY@"
SaffronCityName:     db "SAFFRON<BSP>CITY@"
FuchsiaCityName:     db "FUCHSIA<BSP>CITY@"
CinnabarIslandName:  db "CINNABAR<BSP>ISLAND@"
IndigoPlateauName:   db "INDIGO<BSP>PLATEAU@"
VictoryRoadName:     db "VICTORY<BSP>ROAD@"
MtMoonName:          db "MT.MOON@"
SeaCottageName:      db "SEA COTTAGE@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV<BSP>RADIO TOWER@" ; unused Gen II
PokemonTowerName:    db "#MON<BSP>TOWER@"
SilphCoName:         db "SILPH CO.@" ; unreferenced
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM<BSP>ISLANDS@"
PokemonMansionName:  db "#MON<BSP>MANSION@" ; unreferenced
CeruleanCaveName:    db "CERULEAN<BSP>CAVE@" ; unreferenced
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX<BSP>FOREST@"
BurnedTowerName:     db "BURNED<BSP>TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN<BSP>FOREST@"
DiglettsCaveName:    db "DIGLETT's<BSP>CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE<BSP>TOWER@"
SpecialMapName:      db "SPECIAL@"
