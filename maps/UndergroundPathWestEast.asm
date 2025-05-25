UndergroundPathWestEast_MapScripts:
	def_scene_scripts

	def_callbacks

; UndergroundPathWestEastHiddenFullRestore:
	; hiddenitem FULL_RESTORE, EVENT_UNDERGROUND_PATH_HIDDEN_FULL_RESTORE

; UndergroundPathWestEastHiddenXSpecial:
	; hiddenitem X_SPECIAL, EVENT_UNDERGROUND_PATH_HIDDEN_X_SPECIAL

UndergroundPathWestEast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, ROUTE_7_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event 47,  2, ROUTE_8_UNDERGROUND_PATH_ENTRANCE, 3

	def_coord_events

	def_bg_events
	; bg_event  5,  9, BGEVENT_ITEM, UndergroundPathWestEastHiddenFullRestore
	; bg_event  2, 19, BGEVENT_ITEM, UndergroundPathWestEastHiddenXSpecial

	def_object_events
