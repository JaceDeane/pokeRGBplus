	object_const_def
	const SAFARIZONENORTHRESTHOUSE_SCIENTIST
	const SAFARIZONENORTHRESTHOUSE_SAFARI_ZONE_WORKER
	const SAFARIZONENORTHRESTHOUSE_GENTLEMAN

SafariZoneNorthRestHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneNorthRestHouseScientistText:
	text "You can keep any"
	line "item you find on"
	cont "the ground here."

	para "But, you'll run"
	line "out of time if"
	cont "you try for all"
	cont "of them at once!"
	done

SafariZoneNorthRestHouseSafariZoneWorkerText:
	text "Go to the deepest"
	line "part of the"
	cont "SAFARI ZONE. You"
	cont "will win a prize!"
	done

SafariZoneNorthRestHouseGentlemanText:
	text "My EEVEE evolved"
	line "into FLAREON!"

	para "But a friend's"
	line "EEVEE turned into"
	cont "a VAPOREON!"
	cont "I wonder why?"
	done

SafariZoneNorthRestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_NORTH, 9
	warp_event  3,  7, SAFARI_ZONE_NORTH, 9

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event  6,  3, SPRITE_SCIENTIST, WALK, LEFT_RIGHT, TEXT_SAFARIZONENORTHRESTHOUSE_SCIENTIST
	; object_event  3,  4, SPRITE_SAFARI_ZONE_WORKER, STAY, NONE, TEXT_SAFARIZONENORTHRESTHOUSE_SAFARI_ZONE_WORKER
	; object_event  1,  5, SPRITE_GENTLEMAN, WALK, UP_DOWN, TEXT_SAFARIZONENORTHRESTHOUSE_GENTLEMAN
