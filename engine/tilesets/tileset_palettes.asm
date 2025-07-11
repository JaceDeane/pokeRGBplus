LoadSpecialMapPalette:
	ld a, [wMapTileset]
	cp TILESET_POKECENTER
	jr z, .pokecom_2f
	cp TILESET_BATTLE_TOWER_INSIDE
	jr z, .battle_tower_inside
	cp TILESET_ICE_PATH
	jr z, .ice_path
	cp TILESET_HOUSE
	jr z, .house
	cp TILESET_RADIO_TOWER
	jr z, .radio_tower
	cp TILESET_MANSION
	jr z, .mansion_mobile
	cp TILESET_HOUSE_KANTO
	jr z, .redshouse
	cp TILESET_REDS_HOUSE
	jr z, .redshouse
	cp TILESET_GYM
	jr z, .gym
	cp TILESET_SHIP_PORT
	jr z, .ship_port
	cp TILESET_INTERIOR
	jr z, .interior
	jr .do_nothing

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret

.battle_tower_inside
	call LoadBattleTowerInsidePalette
	scf
	ret

.ice_path
	ld a, [wEnvironment]
	and $7
	cp INDOOR ; Hall of Fame
	jr z, .do_nothing
	call LoadIcePathPalette
	scf
	ret

.house
	call LoadHousePalette
	scf
	ret

.radio_tower
	call LoadRadioTowerPalette
	scf
	ret

.mansion_mobile
	call LoadMansionPalette
	scf
	ret
	
.redshouse
	call LoadRedsHousePalette
	scf
	ret

.gym
	call LoadGymPalette
	scf
	ret

.ship_port
	ld a, [wCurTimeOfDay]
	cp NITE_F
	jr z, .ship_port_nite
	call LoadShipPortDayPalette
	scf
	ret

.ship_port_nite
	call LoadShipPortNitePalette
	scf
	ret

.interior
	ld a, [wMapNumber]
	cp MAP_BILLS_HOUSE
	jr z, .do_nothing
	call LoadInteriorPalette
	scf
	ret

.do_nothing
	and a
	ret

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadBattleTowerInsidePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BattleTowerInsidePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

BattleTowerInsidePalette:
INCLUDE "gfx/tilesets/battle_tower_inside.pal"

LoadIcePathPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, IcePathPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

IcePathPalette:
INCLUDE "gfx/tilesets/ice_path.pal"

LoadHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, HousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

HousePalette:
INCLUDE "gfx/tilesets/house.pal"

LoadRadioTowerPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RadioTowerPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RadioTowerPalette:
INCLUDE "gfx/tilesets/radio_tower.pal"

MansionPalette1:
INCLUDE "gfx/tilesets/mansion_1.pal"

LoadMansionPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MansionPalette1
	ld bc, 8 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_YELLOW
	ld hl, MansionPalette2
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_WATER
	ld hl, MansionPalette1 palette 6
	ld bc, 1 palettes
	call FarCopyWRAM
	ld a, BANK(wBGPals1)
	ld de, wBGPals1 palette PAL_BG_ROOF
	ld hl, MansionPalette1 palette 8
	ld bc, 1 palettes
	call FarCopyWRAM
	ret

MansionPalette2:
INCLUDE "gfx/tilesets/mansion_2.pal"

LoadRedsHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RedsHousePalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

RedsHousePalette:
INCLUDE "gfx/tilesets/reds_house.pal"

LoadGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, GymPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

GymPalette:
INCLUDE "gfx/tilesets/gym.pal"

LoadShipPortDayPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ShipPortPalette_Day
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

LoadShipPortNitePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, ShipPortPalette_Nite
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

;ShipPortPalette:
INCLUDE "gfx/tilesets/ship_port.pal"

LoadInteriorPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, InteriorPalette
	ld bc, 8 palettes
	call FarCopyWRAM
	ret

InteriorPalette:
INCLUDE "gfx/tilesets/interior.pal"