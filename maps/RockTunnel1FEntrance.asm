	object_const_def

RockTunnel1FEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnel1FEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, ROCK_TUNNEL_1F, 1
	warp_event  3,  5, ROUTE_10, 2

	def_coord_events

	def_bg_events

	def_object_events
