UndergroundPathNorthSouth_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathNorthSouthHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_UNDERGROUND_PATH_HIDDEN_FULL_RESTORE

UndergroundPathNorthSouthHiddenXSpecial:
	hiddenitem X_SPECIAL, EVENT_UNDERGROUND_PATH_HIDDEN_X_SPECIAL

UndergroundPathNorthSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  2, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event  2, 43, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  5,  9, BGEVENT_ITEM, UndergroundPathNorthSouthHiddenFullRestore
	bg_event  2, 19, BGEVENT_ITEM, UndergroundPathNorthSouthHiddenXSpecial

	def_object_events
