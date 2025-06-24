OlivineLighthouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineLighthouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 11, OLIVINE_LIGHTHOUSE_1F, 3
	warp_event  5,  3, OLIVINE_LIGHTHOUSE_3F, 2
	warp_event 16, 13, OLIVINE_LIGHTHOUSE_1F, 4
	warp_event 17, 13, OLIVINE_LIGHTHOUSE_1F, 5
	warp_event 16, 11, OLIVINE_LIGHTHOUSE_3F, 4
	warp_event 17, 11, OLIVINE_LIGHTHOUSE_3F, 5

	def_coord_events

	def_bg_events

	def_object_events
