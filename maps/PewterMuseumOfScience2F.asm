	object_const_def
	const PEWTERMUSEUMOFSCIENCE2F_YOUNGSTER
	const PEWTERMUSEUMOFSCIENCE2F_GRAMPS
	const PEWTERMUSEUMOFSCIENCE2F_SCIENTIST
	const PEWTERMUSEUMOFSCIENCE2F_BRUNETTE_GIRL
	const PEWTERMUSEUMOFSCIENCE2F_HIKER

PewterMuseumOfScience2F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseumOfScience2FYoungsterScript:
	jumptextfaceplayer PewterMuseumOfScience2FYoungsterText

PewterMuseumOfScience2FGrampsScript:
	jumptextfaceplayer PewterMuseumOfScience2FGrampsText

PewterMuseumOfScience2FScientistScript:
	jumptextfaceplayer PewterMuseumOfScience2FScientistText

PewterMuseumOfScience2FLassScript:
	jumptextfaceplayer PewterMuseumOfScience2FLassText

PewterMuseumOfScience2FHikerScript:
	jumptextfaceplayer PewterMuseumOfScience2FHikerText

PewterMuseumOfScience2FSpaceShuttleSign:
	jumptext PewterMuseumOfScience2FSpaceShuttleSignText
	
PewterMuseumOfScience2FMoonStoneSign:
	jumptext PewterMuseumOfScience2FMoonStoneSignText

PewterMuseumOfScience2FYoungsterText:
	text "MOON STONE?"

	para "What's so special"
	line "about it?"
	done

PewterMuseumOfScience2FGrampsText:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

PewterMuseumOfScience2FScientistText:
	text "We have a space"
	line "exhibit now."
	done

PewterMuseumOfScience2FLassText:
	text "I want a PIKACHU!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

PewterMuseumOfScience2FHikerText:
	text "Yeah, a PIKACHU"
	line "soon, I promise!"
	done
	
PewterMuseumOfScience2FSpaceShuttleSignText:
	text "SPACE SHUTTLE"
	line "COLUMBIA"
	done

PewterMuseumOfScience2FMoonStoneSignText:
	text "Meteorite that"
	line "fell on MT.MOON."
	cont "(MOON STONE?)"
	done

PewterMuseumOfScience2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 3

	def_coord_events

	def_bg_events
	bg_event 11,  2, BGEVENT_READ, PewterMuseumOfScience2FSpaceShuttleSign
	bg_event  2,  5, BGEVENT_READ, PewterMuseumOfScience2FMoonStoneSign

	def_object_events
	object_event  1,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience2FYoungsterScript, -1
	object_event  0,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience2FGrampsScript, -1
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience2FScientistScript, -1
	object_event 11,  5, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience2FLassScript, -1
	object_event 12,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience2FHikerScript, -1
