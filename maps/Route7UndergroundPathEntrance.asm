	object_const_def
	; const ROUTE7UNDERGROUNDPATHENTRANCE_TEACHER

Route7UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

; Route7UndergroundPathEntranceTeacherScript:
	; jumptextfaceplayer Route7UndergroundPathEntranceTeacherText

; Route7UndergroundPathEntranceTeacherText:
	; text "Many cities in"
	; line "JOHTO have long"

	; para "histories. I'd"
	; line "love to visit!"
	; done

Route7UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_7, 3
	warp_event  4,  7, ROUTE_7, 3
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 1

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route7UndergroundPathEntranceTeacherScript, -1
