MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
	; scene_var POWER_PLANT,                                 wPowerPlantSceneID
	scene_var CERULEAN_CITY,                               wCeruleanCitySceneID ; Updated R/B
	scene_var ROUTE_24,                                    wRoute24SceneID ; Updated R/B
	scene_var BILLS_HOUSE,                                 wBillsHouseSceneID ; Updated R/B
	scene_var ROUTE_22_GATE,                               wRoute22GateSceneID ; Updated R/B
	; scene_var SAFFRON_MAGNET_TRAIN_STATION,                wSaffronMagnetTrainStationSceneID
	scene_var ROUTE_16_GATE_1F,                            wRoute16Gate1FSceneID ; Updated R/B
	scene_var ROUTE_17_ROUTE_18_GATE,                      wRoute17Route18GateSceneID
	scene_var INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	scene_var WILLS_ROOM,                                  wWillsRoomSceneID
	scene_var KOGAS_ROOM,                                  wKogasRoomSceneID
	scene_var BRUNOS_ROOM,                                 wBrunosRoomSceneID
	scene_var KARENS_ROOM,                                 wKarensRoomSceneID
	scene_var LANCES_ROOM,                                 wLancesRoomSceneID
	scene_var HALL_OF_FAME,                                wHallOfFameSceneID
	; scene_var ROUTE_27,                                    wRoute27SceneID
	; scene_var NEW_BARK_TOWN,                               wNewBarkTownSceneID
	scene_var PALLET_TOWN,                                 wPalletTownSceneID ; Updated R/B
	scene_var BLUES_HOUSE,                                 wBluesHouseSceneID ; Updated R/B
	scene_var OAKS_LAB,                                    wOaksLabSceneID ; Updated R/B
	scene_var PEWTER_CITY,                                 wPewterCitySceneID ; Updated R/B
	scene_var PEWTER_MUSEUM_OF_SCIENCE_1F,                 wPewterMuseumOfScienceSceneID ; Updated R/B
	; scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	scene_var POKEMON_FAN_CLUB,                            wPokemonFanClubSceneID ; Updated R/B
	scene_var VERMILION_CITY,                              wVermilionCitySceneID ; Updated R/B
	scene_var VIRIDIAN_CITY,                               wViridianCitySceneID
	scene_var VIRIDIAN_MART,                               wViridianMartSceneID
	scene_var ROUTE_22,                                    wRoute22SceneID
	; scene_var MR_POKEMONS_HOUSE,                           wMrPokemonsHouseSceneID ;***
	scene_var ROUTE_5_SAFFRON_GATE,                        wRoute5SaffronGateSceneID ; wRoute32SceneID
	scene_var ROUTE_6_SAFFRON_GATE,                        wRoute6SaffronGateSceneID ; wRoute35NationalParkGateSceneID
	scene_var ROUTE_7_SAFFRON_GATE,                        wRoute7SaffronGateSceneID ; wRoute36SceneID
	scene_var ROUTE_8_SAFFRON_GATE,                        wRoute8SaffronGateSceneID ; wRoute36NationalParkGateSceneID
; Unused in R/B
	; scene_var AZALEA_TOWN,                                 wAzaleaTownSceneID
	; scene_var GOLDENROD_GYM,                               wGoldenrodGymSceneID
	; scene_var GOLDENROD_MAGNET_TRAIN_STATION,              wGoldenrodMagnetTrainStationSceneID
	; scene_var GOLDENROD_POKECENTER_1F,                     wGoldenrodPokecenter1FSceneID
	; scene_var OLIVINE_CITY,                                wOlivineCitySceneID
	; scene_var ROUTE_34,                                    wRoute34SceneID ; unused
	; scene_var ROUTE_34_ILEX_FOREST_GATE,                   wRoute34IlexForestGateSceneID ; unused
	; scene_var ECRUTEAK_TIN_TOWER_ENTRANCE,                 wEcruteakTinTowerEntranceSceneID
	; scene_var WISE_TRIOS_ROOM,                             wWiseTriosRoomSceneID
	; scene_var ECRUTEAK_POKECENTER_1F,                      wEcruteakPokecenter1FSceneID
	; scene_var ECRUTEAK_GYM,                                wEcruteakGymSceneID
	; scene_var MAHOGANY_TOWN,                               wMahoganyTownSceneID
	; scene_var ROUTE_42,                                    wRoute42SceneID
	; scene_var CIANWOOD_CITY,                               wCianwoodCitySceneID
	; scene_var BATTLE_TOWER_1F,                             wBattleTower1FSceneID
	; scene_var BATTLE_TOWER_BATTLE_ROOM,                    wBattleTowerBattleRoomSceneID
	; scene_var BATTLE_TOWER_ELEVATOR,                       wBattleTowerElevatorSceneID
	; scene_var BATTLE_TOWER_HALLWAY,                        wBattleTowerHallwaySceneID
	; scene_var BATTLE_TOWER_OUTSIDE,                        wBattleTowerOutsideSceneID ; unused
	; scene_var ROUTE_43_GATE,                               wRoute43GateSceneID
	scene_var MOUNT_MOON_B2F,                              wMountMoonB2FSceneID
; Unused in R/B
	; scene_var SPROUT_TOWER_3F,                             wSproutTower3FSceneID
	; scene_var TIN_TOWER_1F,                                wTinTower1FSceneID
	; scene_var BURNED_TOWER_1F,                             wBurnedTower1FSceneID
	; scene_var BURNED_TOWER_B1F,                            wBurnedTowerB1FSceneID
	; scene_var RADIO_TOWER_5F,                              wRadioTower5FSceneID
	; scene_var RUINS_OF_ALPH_OUTSIDE,                       wRuinsOfAlphOutsideSceneID
	; scene_var RUINS_OF_ALPH_RESEARCH_CENTER,               wRuinsOfAlphResearchCenterSceneID
	; scene_var RUINS_OF_ALPH_HO_OH_CHAMBER,                 wRuinsOfAlphHoOhChamberSceneID
	; scene_var RUINS_OF_ALPH_KABUTO_CHAMBER,                wRuinsOfAlphKabutoChamberSceneID
	; scene_var RUINS_OF_ALPH_OMANYTE_CHAMBER,               wRuinsOfAlphOmanyteChamberSceneID
	; scene_var RUINS_OF_ALPH_AERODACTYL_CHAMBER,            wRuinsOfAlphAerodactylChamberSceneID
	; scene_var RUINS_OF_ALPH_INNER_CHAMBER,                 wRuinsOfAlphInnerChamberSceneID
	; scene_var MAHOGANY_MART_1F,                            wMahoganyMart1FSceneID
	; scene_var TEAM_ROCKET_BASE_B1F,                        wTeamRocketBaseB1FSceneID
	; scene_var TEAM_ROCKET_BASE_B2F,                        wTeamRocketBaseB2FSceneID
	; scene_var TEAM_ROCKET_BASE_B3F,                        wTeamRocketBaseB3FSceneID
	; scene_var GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, wGoldenrodUndergroundSwitchRoomEntrancesSceneID
	; scene_var SILVER_CAVE_ROOM_3,                          wSilverCaveRoom3SceneID
	; scene_var VICTORY_ROAD,                                wVictoryRoadSceneID
	; scene_var DRAGONS_DEN_B1F,                             wDragonsDenB1FSceneID
	; scene_var DRAGON_SHRINE,                               wDragonShrineSceneID
	; scene_var OLIVINE_PORT,                                wOlivinePortSceneID
	scene_var VERMILION_DOCK,                              wVermilionDockSceneID
	scene_var SS_ANNE_2F,                                  wSSAnne2FSceneID ; wFastShip1FSceneID
	scene_var SS_ANNE_CAPTAINS_CABIN,                      wSSAnneCaptainsCabinSceneID ; wFastShipB1FSceneID
; Unused in R/B
	; scene_var MOUNT_MOON_SQUARE,                           wMountMoonSquareSceneID
	scene_var MOBILE_TRADE_ROOM,                           wMobileTradeRoomSceneID
	scene_var MOBILE_BATTLE_ROOM,                          wMobileBattleRoomSceneID
	db -1 ; end
