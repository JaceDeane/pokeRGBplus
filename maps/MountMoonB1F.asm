	object_const_def

MountMoonB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, MOUNT_MOON_1F, 2
	warp_event 17, 11, MOUNT_MOON_B2F, 1
	warp_event 25,  9, MOUNT_MOON_1F, 3
	warp_event 25, 15, MOUNT_MOON_1F, 4
	warp_event 21, 17, MOUNT_MOON_B2F, 2
	warp_event 13, 27, MOUNT_MOON_B2F, 3
	warp_event 23,  3, MOUNT_MOON_B2F, 4
	warp_event 27,  3, MOUNT_MOON_1F_EXIT, 1

	def_coord_events

	def_bg_events

	def_object_events