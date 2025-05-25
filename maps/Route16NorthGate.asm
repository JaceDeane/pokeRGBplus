Route16NorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route16NorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_16, 6
	warp_event  0,  5, ROUTE_16, 7
	warp_event  3,  4, ROUTE_16, 8
	warp_event  3,  5, ROUTE_16, 9

	def_coord_events

	def_bg_events

	def_object_events
