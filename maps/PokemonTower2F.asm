	object_const_def
	const POKEMONTOWER2F_RIVAL
	const POKEMONTOWER2F_CHANNELER

PokemonTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_3F, 1
	warp_event 18,  9, POKEMON_TOWER_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1
	
	; object_event 14,  5, SPRITE_BLUE, STAY, NONE, TEXT_POKEMONTOWER2F_RIVAL
	; object_event  3,  7, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER2F_CHANNELER
