	object_const_def
	const ROUTE5UNDERGROUNDPATHENTRANCE_LITTLE_GIRL

Route5UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route5UndergroundPathEntranceLittleGirlScript:
	faceplayer
	opentext
	trade NPC_TRADE_SAIGE ; SPOT the NIDORAN_M/NIDORAN_F
	waitbutton
	closetext
	end

Route5UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_5, 1
	warp_event  4,  7, ROUTE_5, 1
	warp_event  4,  4, UNDERGROUND_PATH_NORTH_SOUTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route5UndergroundPathEntranceLittleGirlScript, -1
