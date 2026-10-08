	object_const_def
	const ROUTE12GATE1F_GUARD

Route12Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route12Gate1FGateGuardScript:
	jumptextfaceplayer Route12Gate1FGateGuardText

Route12Gate1FGateGuardText:
	text "There's a lookout"
	line "spot upstairs."
	done

Route12Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_12, 1
	warp_event  5,  0, ROUTE_12, 2
	warp_event  4,  7, ROUTE_12, 3
	warp_event  5,  7, ROUTE_12, 3
	warp_event  9,  7, ROUTE_12_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route12Gate1FGateGuardScript, -1
