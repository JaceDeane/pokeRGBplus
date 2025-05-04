	object_const_def
	const PEWTERMUSEUMOFSCIENCE2F_GRAMPS

PewterMuseumOfScience2F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseumOfScience2FGrampsScript:
	jumptextfaceplayer PewterMuseumOfScience2FGrampsText

PewterMuseumOfScience2FGrampsText:
	text "I like snoozing"
	line "with the radio on…"
	cont "…Zzzz…"
	done

PewterMuseumOfScience2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience2FGrampsScript, -1
