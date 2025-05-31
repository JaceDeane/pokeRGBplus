	object_const_def
	const ROUTE6UNDERGROUNDPATHENTRANCE_GIRL

Route6UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route6UndergroundPathEntranceGirlScript:
	jumptextfaceplayer Route6UndergroundPathEntranceGirlText

Route6UndergroundPathEntranceGirlText:
	text "People often lose"
	line "things in that"
	cont "UNDERGROUND PATH."
	done

Route6UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_6, 1
	warp_event  4,  7, ROUTE_6, 1
	warp_event  4,  4, UNDERGROUND_PATH_NORTH_SOUTH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route6UndergroundPathEntranceGirlScript, -1
