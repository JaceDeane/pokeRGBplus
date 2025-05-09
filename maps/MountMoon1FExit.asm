	object_const_def

MountMoon1FExit_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoon1FExit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, MOUNT_MOON_B1F, 8
	warp_event  3,  5, ROUTE_4, 3

	def_coord_events

	def_bg_events

	def_object_events
