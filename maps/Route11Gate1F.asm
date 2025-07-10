	object_const_def
	const ROUTE11GATE1F_GUARD

Route11Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route11Gate1FGateGuardScript:
	jumptextfaceplayer Route11Gate1FGateGuardText

Route11Gate1FGateGuardText:
	text "When you catch"
	line "lots of #MON,"

	para "isn't it hard to"
	line "think up names?"

	para "In LAVENDER TOWN,"
	line "there's a man who"

	para "rates #MON"
	line "nicknames."

	para "He'll help you"
	line "rename them too!"
	done

Route11Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_11, 2
	warp_event  0,  5, ROUTE_11, 3
	warp_event  9,  4, ROUTE_11, 4
	warp_event  9,  5, ROUTE_11, 5
	warp_event  9,  7, ROUTE_11_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Gate1FGateGuardScript, -1
