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
	landmark  36, 100, PalletTownName
	landmark  36,  88, Route1Name
	landmark  36,  76, ViridianCityName
	landmark  36,  64, Route2Name
	landmark  36,  60, ViridianForestName
	landmark  36,  52, DiglettsCaveName
	landmark  36,  44, PewterCityName
	landmark  52,  44, Route3Name
	landmark  60,  36, MtMoonName
	landmark  80,  36, Route4Name
	landmark 100,  36, CeruleanCityName
	landmark 100,  28, Route24Name
	landmark 108,  20, Route25Name
	landmark 116,  20, SeaCottageName
	landmark 100,  48, Route5Name
	landmark 108,  52, UndergroundName
	landmark 100,  72, Route6Name
	landmark 100,  84, VermilionCityName
	landmark 108,  84, DiglettsCaveName
	landmark 116,  36, Route9Name
	landmark 132,  40, Route10Name
	landmark 132,  36, RockTunnelName
	landmark 132,  44, PowerPlantName
	landmark 132,  60, LavenderTownName
	landmark 134,  58, PokemonTowerName
	landmark 116,  60, Route8Name
	landmark 108,  68, UndergroundName ; 2nd Underground Path
	landmark  88,  60, Route7Name
	landmark  76,  60, CeladonCityName
	landmark 100,  60, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  72, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 100, 116, Route15Name
	landmark  60,  60, Route16Name
	landmark  60,  92, Route17Name
	landmark  72, 116, Route18Name
	landmark  84, 116, FuchsiaCityName
	landmark  84, 114, SafariZoneName
	landmark  84, 128, Route19Name
	landmark  68, 132, Route20Name
	landmark  60, 132, SeafoamIslandsName
	landmark  36, 132, CinnabarIslandName
	landmark  34, 130, PokemonMansionName
	landmark  36, 116, Route21Name
	landmark  20,  76, Route22Name
	landmark  20,  60, Route23Name
	landmark  20,  52, VictoryRoadName
	landmark  20,  36, IndigoPlateauName
	landmark  28,  92, Route26Name  ; KANTO EXPANSION
	landmark  20, 100, Route27Name ; KANTO EXPANSION
	landmark  12, 100, TohjoFallsName ; KANTO EXPANSION
	landmark  20,  68, Route28Name ; KANTO EXPANSION
	landmark 140, 116, FastShipName ; KANTO EXPANSION
	; landmark 100,  92, SSAnneName ; On it to see it
	; landmark  88,  48, DiglettsCaveName ; Inside Diglett's Cave - Near Celadon
	; landmark  76,  60, RocketHQName ; On it to see it
	; landmark 100,  60, SilphCoName ; On it to see it
	; landmark  92,  28, CeruleanCaveName ; On it to see it

	
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
LavRadioTowerName:   db "N/A@" ; unused Gen II
PokemonTowerName:    db "#MON<BSP>TOWER@"
SilphCoName:         db "SILPH CO.@" ; unreferenced
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM<BSP>ISLANDS@"
PokemonMansionName:  db "#MON<BSP>MANSION@"
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
