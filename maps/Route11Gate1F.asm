Route11Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks

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
