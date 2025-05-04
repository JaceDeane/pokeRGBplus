	object_const_def
	const PEWTERMUSEUMOFSCIENCE1F_GRAMPS

PewterMuseumOfScience1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseumOfScience1FGrampsScript:
	jumptextfaceplayer PewterMuseumOfScience1FGrampsText

PewterMuseumOfScience1FBookshelf:
	jumpstd PictureBookshelfScript

PewterMuseumOfScience1FGrampsText:
	text "I like snoozing"
	line "with the radio on…"
	cont "…Zzzz…"
	done

PewterMuseumOfScience1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7

	def_coord_events

	def_bg_events
	bg_event 12,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf
	bg_event 13,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience1FGrampsScript, -1
