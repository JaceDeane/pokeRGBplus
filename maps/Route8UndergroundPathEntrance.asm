	object_const_def
	; const ROUTE8UNDERGROUNDPATHENTRANCE_TEACHER

Route8UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

; Route8UndergroundPathEntranceTeacherScript:
	; jumptextfaceplayer Route8UndergroundPathEntranceTeacherText

; Route8UndergroundPathEntranceTeacherText:
	; text "Many cities in"
	; line "JOHTO have long"

	; para "histories. I'd"
	; line "love to visit!"
	; done

Route8UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_8, 3
	warp_event  4,  7, ROUTE_8, 3
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 2

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route8UndergroundPathEntranceTeacherScript, -1
