DEF WEST_EAST 			EQU 0
DEF NORTH_SOUTH 		EQU 1
DEF SPRITE_SPLIT_LENGTH EQU 8

MACRO spr_split
; map, axis, boundary coordinate, list if coord < boundary, list otherwise
	map_id \1
	db \2, \3
	dw \4, \5
ENDM

SplitMapSprites:
	spr_split ROUTE_2,  NORTH_SOUTH, 37, PewterGroupSprites,    ViridianGroupSprites
	spr_split ROUTE_5,  NORTH_SOUTH, 33, CeruleanGroupSprites,  SaffronGroupSprites
	; spr_split ROUTE_6,  NORTH_SOUTH,  2, SaffronGroupSprites,   VermilionGroupSprites
	spr_split ROUTE_7,  WEST_EAST,   10, CeladonGroupSprites,   SaffronGroupSprites
	; spr_split ROUTE_8,  WEST_EAST,    3, SaffronGroupSprites,   LavenderGroupSprites
	spr_split ROUTE_10, NORTH_SOUTH, 50, CeruleanGroupSprites,  LavenderGroupSprites
	spr_split ROUTE_11, WEST_EAST,   57, VermilionGroupSprites, SilenceBridgeSprites
	spr_split ROUTE_12, NORTH_SOUTH, 21, LavenderGroupSprites,  SilenceBridgeSprites
	spr_split ROUTE_15, WEST_EAST,    8, FuchsiaGroupSprites,   SilenceBridgeSprites
	spr_split ROUTE_16, WEST_EAST,   24, CyclingRoadSprites,    CeladonGroupSprites
	spr_split ROUTE_18, WEST_EAST,   34, CyclingRoadSprites,    FuchsiaGroupSprites
	spr_split ROUTE_20, WEST_EAST,   53, CinnabarGroupSprites,  FuchsiaGroupSprites
	db -1

; same format as OutdoorSprites *GroupSprites lists
; Route20WestSprites:
	; db SPRITE_X
	; db SPRITE_X
	; db 0

; Route20EastSprites:
	; db SPRITE_X
	; db 0
