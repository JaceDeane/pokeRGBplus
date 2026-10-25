	object_const_def
	const SAFARIZONEWESTRESTHOUSE_SCIENTIST
	const SAFARIZONEWESTRESTHOUSE_COOLTRAINER_M
	const SAFARIZONEWESTRESTHOUSE_SILPH_WORKER_F

SafariZoneWestRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneWestRestHouseScientistText:
	text "Tossing ROCKs at"
	line "#MON might"
	cont "make them run,"
	cont "but they'll be"
	cont "easier to catch."
	done

SafariZoneWestRestHouseCooltrainerMText:
	text "Using BAIT will"
	line "make #MON"
	cont "easier to catch."
	done

SafariZoneWestRestHouseSilphWorkerFText:
	text "I hiked a lot, but"
	line "I didn't see any"
	cont "#MON I wanted."
	done

SafariZoneWestRestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 8
	warp_event  3,  7, SAFARI_ZONE_WEST, 8

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event  4,  4, SPRITE_SCIENTIST, WALK, ANY_DIR, TEXT_SAFARIZONEWESTRESTHOUSE_SCIENTIST
	; object_event  0,  2, SPRITE_COOLTRAINER_M, STAY, RIGHT, TEXT_SAFARIZONEWESTRESTHOUSE_COOLTRAINER_M
	; object_event  6,  2, SPRITE_SILPH_WORKER_F, STAY, DOWN, TEXT_SAFARIZONEWESTRESTHOUSE_SILPH_WORKER_F
