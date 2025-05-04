	object_const_def
	const ROUTE2GATE_OAKS_AIDE
	const ROUTE2GATE_YOUNGSTER

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	jumptextfaceplayer Route2GateScientistText
Route2GateOaksAideScript:
	end


	para "I work as PROF."
	line "OAK's AIDE."
Route2GateYoungsterScript:
	jumptextfaceplayer Route2GateYoungsterText

Route2GateOaksAideFlashExplainText:
	text "The HM FLASH"
	line "lights even the"
	cont "darkest dungeons."
	done

Route2GateYoungsterText:
	text "Once a #MON"
	line "learns FLASH, you"
	cont "can get through"
	cont "ROCK TUNNEL."
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateOaksAideScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2GateYoungsterScript, -1
