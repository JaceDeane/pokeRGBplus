	object_const_def
	const ROUTE16NORTHGATE_GAMBLER

Route16NorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route16NorthGateGamblerScript:
	jumptextfaceplayer Route16NorthGateGamblerText

Route16NorthGateGamblerText:
	text "How'd you get in?"
	line "Good effort!"
	done

Route16NorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  2, ROUTE_16, 6
	warp_event  0,  3, ROUTE_16, 7
	warp_event  9,  2, ROUTE_16, 8
	warp_event  9,  3, ROUTE_16, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16NorthGateGamblerScript, -1
