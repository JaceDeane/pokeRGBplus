	object_const_def
	const SAFARIZONEEASTRESTHOUSE_SCIENTIST
	const SAFARIZONEEASTRESTHOUSE_ROCKER
	const SAFARIZONEEASTRESTHOUSE_SILPH_WORKER_M

SafariZoneEastRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneEastRestHouseScientistText:
	text "How many did you"
	line "catch? I'm bushed"
	cont "from the work!"
	done

SafariZoneEastRestHouseRockerText:
	text "I caught a"
	line "CHANSEY!"

	para "That makes this"
	line "all worthwhile!"
	done

SafariZoneEastRestHouseSilphWorkerMText:
	text "Whew! I'm tired"
	line "from all the fun!"
	done

SafariZoneEastRestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_EAST, 5
	warp_event  3,  7, SAFARI_ZONE_EAST, 5

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event  1,  3, SPRITE_SCIENTIST, WALK, UP_DOWN, TEXT_SAFARIZONEEASTRESTHOUSE_SCIENTIST
	; object_event  4,  2, SPRITE_ROCKER, STAY, NONE, TEXT_SAFARIZONEEASTRESTHOUSE_ROCKER
	; object_event  5,  2, SPRITE_SILPH_WORKER_M, STAY, NONE, TEXT_SAFARIZONEEASTRESTHOUSE_SILPH_WORKER_M
