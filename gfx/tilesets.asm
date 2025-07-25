MACRO tilecoll
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

TilesetKantoGFX::
INCBIN "gfx/tilesets/kanto.2bpp.lz"

TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin"

TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

Tileset0GFX::
TilesetJohtoGFX::
INCBIN "gfx/tilesets/johto.2bpp.lz"

Tileset0Meta::
TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin"

Tileset0Coll::
TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

TilesetPlayersRoomGFX::
INCBIN "gfx/tilesets/players_room.2bpp.lz"

TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin"

TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetPokecenterGFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPortGFX::
INCBIN "gfx/tilesets/port.2bpp.lz"

TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin"

TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

TilesetPlayersHouseGFX::
INCBIN "gfx/tilesets/players_house.2bpp.lz"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetMansionGFX::
INCBIN "gfx/tilesets/mansion.2bpp.lz"

TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin"

TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetCaveGFX::
INCBIN "gfx/tilesets/cave.2bpp.lz"

TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin"

TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetTowerGFX::
INCBIN "gfx/tilesets/tower.2bpp.lz"

TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin"

TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

TilesetLabGFX::
INCBIN "gfx/tilesets/lab.2bpp.lz"

TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin"

TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

TilesetMartGFX::
INCBIN "gfx/tilesets/mart.2bpp.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetGameCornerGFX::
INCBIN "gfx/tilesets/game_corner.2bpp.lz"

TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin"

TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

TilesetTrainStationGFX::
INCBIN "gfx/tilesets/train_station.2bpp.lz"

TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin"

TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"


SECTION "Tileset Data 4", ROMX

TilesetEliteFourRoomGFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetParkGFX::
INCBIN "gfx/tilesets/park.2bpp.lz"

TilesetParkMeta::
INCBIN "data/tilesets/park_metatiles.bin"

TilesetParkColl::
INCLUDE "data/tilesets/park_collision.asm"

TilesetRadioTowerGFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.lz"

TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin"

TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetUndergroundGFX::
INCBIN "gfx/tilesets/underground.2bpp.lz"

TilesetUndergroundMeta::
INCBIN "data/tilesets/underground_metatiles.bin"

TilesetUndergroundColl::
INCLUDE "data/tilesets/underground_collision.asm"

TilesetDarkCaveGFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.lz"

UnusedTilesetJohtoMeta:: ; unreferenced
INCBIN "data/tilesets/unused_johto_metatiles.bin"

UnusedTilesetJohtoColl:: ; unreferenced
INCLUDE "data/tilesets/unused_johto_collision.asm"

TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin"


SECTION "Tileset Data 5", ROMX

TilesetPokeComCenterGFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.lz"

TilesetPokeComCenterMeta::
INCBIN "data/tilesets/pokecom_center_metatiles.bin"

TilesetPokeComCenterColl::
INCLUDE "data/tilesets/pokecom_center_collision.asm"

TilesetBattleTowerInsideGFX::
INCBIN "gfx/tilesets/battle_tower_inside.2bpp.lz"

TilesetBattleTowerInsideMeta::
INCBIN "data/tilesets/battle_tower_inside_metatiles.bin"

TilesetBattleTowerInsideColl::
INCLUDE "data/tilesets/battle_tower_inside_collision.asm"

TilesetGateGFX::
INCBIN "gfx/tilesets/gate.2bpp.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetJohtoModernGFX::
TilesetBattleTowerOutsideGFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.lz"

TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin"

TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"

TilesetTraditionalHouseGFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.lz"

TilesetTraditionalHouseMeta::
INCBIN "data/tilesets/traditional_house_metatiles.bin"

TilesetTraditionalHouseColl::
INCLUDE "data/tilesets/traditional_house_collision.asm"


SECTION "Tileset Data 6", ROMX

TilesetForestGFX::
INCBIN "gfx/tilesets/forest.2bpp.lz"

TilesetChampionsRoomGFX::
INCBIN "gfx/tilesets/champions_room.2bpp.lz"

TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin"

TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetHouseGFX::
INCBIN "gfx/tilesets/house.2bpp.lz"

TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin"

TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

TilesetShipGFX::
TilesetShipDeckGFX::
INCBIN "gfx/tilesets/ship.2bpp.lz"

TilesetShipMeta::
TilesetShipDeckMeta::
INCBIN "data/tilesets/ship_metatiles.bin"

TilesetShipColl::
TilesetShipDeckColl::
INCLUDE "data/tilesets/ship_collision.asm"

TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"

TilesetFacilityGFX::
INCBIN "gfx/tilesets/facility.2bpp.lz"

TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin"

TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

TilesetBattleTowerOutsideMeta::
INCBIN "data/tilesets/battle_tower_outside_metatiles.bin"

TilesetBattleTowerOutsideColl::
INCLUDE "data/tilesets/battle_tower_outside_collision.asm"


SECTION "Tileset Data 7", ROMX

TilesetBetaWordRoomMeta::
INCBIN "data/tilesets/beta_word_room_metatiles.bin"

TilesetBetaWordRoomColl::
TilesetHoOhWordRoomColl::
TilesetKabutoWordRoomColl::
TilesetOmanyteWordRoomColl::
TilesetAerodactylWordRoomColl::
INCLUDE "data/tilesets/beta_word_room_collision.asm"

TilesetRuinsOfAlphGFX::
TilesetBetaWordRoomGFX::
TilesetHoOhWordRoomGFX::
TilesetKabutoWordRoomGFX::
TilesetOmanyteWordRoomGFX::
TilesetAerodactylWordRoomGFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.lz"

TilesetRuinsOfAlphMeta::
INCBIN "data/tilesets/ruins_of_alph_metatiles.bin"

TilesetRuinsOfAlphColl::
INCLUDE "data/tilesets/ruins_of_alph_collision.asm"

TilesetHoOhWordRoomMeta::
TilesetKabutoWordRoomMeta::
TilesetOmanyteWordRoomMeta::
TilesetAerodactylWordRoomMeta::
INCBIN "data/tilesets/ho_oh_word_room_metatiles.bin"
;INCBIN "data/tilesets/kabuto_word_room_metatiles.bin"
;INCBIN "data/tilesets/omanyte_word_room_metatiles.bin"
;INCBIN "data/tilesets/aerodactyl_word_room_metatiles.bin"


SECTION "Tileset Data 8", ROMX

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin"

TilesetHouseKantoGFX::
INCBIN "gfx/tilesets/house_kanto.2bpp.lz"

TilesetHouseKantoMeta::
INCBIN "data/tilesets/house_kanto_metatiles.bin"

TilesetHouseKantoColl::
INCLUDE "data/tilesets/house_kanto_collision.asm"

TilesetRedsHouseGFX::
INCBIN "gfx/tilesets/reds_house.2bpp.lz"

TilesetRedsHouseMeta::
INCBIN "data/tilesets/reds_house_metatiles.bin"

TilesetRedsHouseColl::
INCLUDE "data/tilesets/reds_house_collision.asm"

TilesetGymGFX::
INCBIN "gfx/tilesets/gym.2bpp.lz"

TilesetGymMeta::
INCBIN "data/tilesets/gym_metatiles.bin"

TilesetGymColl::
INCLUDE "data/tilesets/gym_collision.asm"

TilesetCavernGFX::
INCBIN "gfx/tilesets/cavern.2bpp.lz"

TilesetCavernMeta::
TilesetDarkCavernMeta::
INCBIN "data/tilesets/cavern_metatiles.bin"

TilesetCavernColl::
TilesetDarkCavernColl::
INCLUDE "data/tilesets/cavern_collision.asm"

TilesetDarkCavernGFX::
INCBIN "gfx/tilesets/dark_cavern.2bpp.lz"


SECTION "Tileset Data 9", ROMX

TilesetGateKantoGFX::
INCBIN "gfx/tilesets/gate_kanto.2bpp.lz"

TilesetGateKantoMeta::
INCBIN "data/tilesets/gate_kanto_metatiles.bin"

TilesetGateKantoColl::
INCLUDE "data/tilesets/gate_kanto_collision.asm"

TilesetShipPortGFX::
INCBIN "gfx/tilesets/ship_port.2bpp.lz"

TilesetShipPortMeta::
INCBIN "data/tilesets/ship_port_metatiles.bin"

TilesetShipPortColl::
INCLUDE "data/tilesets/ship_port_collision.asm"

TilesetCemeteryGFX::
INCBIN "gfx/tilesets/cemetery.2bpp.lz"

TilesetCemeteryMeta::
INCBIN "data/tilesets/cemetery_metatiles.bin"

TilesetCemeteryColl::
INCLUDE "data/tilesets/cemetery_collision.asm"


SECTION "Tileset Data 10", ROMX

TilesetInteriorGFX::
INCBIN "gfx/tilesets/interior.2bpp.lz"

TilesetInteriorMeta::
INCBIN "data/tilesets/interior_metatiles.bin"

TilesetInteriorColl::
INCLUDE "data/tilesets/interior_collision.asm"

TilesetIcePathGFX::
INCBIN "gfx/tilesets/ice_path.2bpp.lz"

TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin"

TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"

TilesetPlateauGFX::
INCBIN "gfx/tilesets/plateau.2bpp.lz"

TilesetPlateauMeta::
INCBIN "data/tilesets/plateau_metatiles.bin"

TilesetPlateauColl::
INCLUDE "data/tilesets/plateau_collision.asm"
