	object_const_def
	; const ROUTE7UNDERGROUNDPATHENTRANCE_GIRL
	const ROUTE7UNDERGROUNDPATHENTRANCE_MIDDLE_AGED_MAN

Route7UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route7UndergroundPathEntranceMiddleAgedManScript:
	jumptextfaceplayer Route7UndergroundPathEntranceMiddleAgedManText

Route7UndergroundPathEntranceMiddleAgedManText:
	text "I heard a sleepy"
	line "#MON appeared"
	cont "near CELADON CITY."
	done

Route7UndergroundPathEntranceCopyUnusedGirlText:
	text "I want to shop at"
	line "the dept. store"
	cont "in CELADON, but…"

	para "There are so many"
	line "rough looking"
	cont "people there."
	done

Route7UndergroundPathEntranceCopyUnusedTeamRocketHadAHideoutText:
	text "TEAM ROCKET had a"
	line "secret hideout in"
	cont "CELADON CITY?"
	done

Route7UndergroundPathEntranceCopyUnusedMiddleAgedManText:
	text "You're here to"
	line "shop in CELADON?"

	para "Just step outside"
	line "and head west!"
	done

Route7UndergroundPathEntranceCopyUnusedGoesUnderSaffronText:
	text "The UNDERGROUND"
	line "PATH goes beneath"

	para "SAFFRON and leads"
	line "to LAVENDER."

	para "If you're heading"
	line "to CERULEAN, go"

	para "to the building"
	line "across the road."
	done

Route7UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_7, 3
	warp_event  4,  7, ROUTE_7, 3
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 1

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  3,  2, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route7UndergroundPathEntranceGirlScript, -1
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7UndergroundPathEntranceMiddleAgedManScript, -1
