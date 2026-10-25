	object_const_def
	const SAFARIZONECENTERRESTHOUSE_GIRL
	const SAFARIZONECENTERRESTHOUSE_SCIENTIST

SafariZoneCenterRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneCenterRestHouseGirlText:
	text "SARA: Where did"
	line "my boy friend,"
	cont "ERIK, go?"
	done

SafariZoneCenterRestHouseScientistText:
	text "I'm catching"
	line "#MON to take"
	cont "home as gifts!"
	done

SafariZoneCenterRestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_CENTER, 9
	warp_event  3,  7, SAFARI_ZONE_CENTER, 9

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event  3,  2, SPRITE_GIRL, STAY, DOWN, TEXT_SAFARIZONECENTERRESTHOUSE_GIRL
	; object_event  1,  4, SPRITE_SCIENTIST, WALK, UP_DOWN, TEXT_SAFARIZONECENTERRESTHOUSE_SCIENTIST
