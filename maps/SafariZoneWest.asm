	object_const_def
	const SAFARIZONEWEST_MAX_POTION
	const SAFARIZONEWEST_TM_DOUBLE_TEAM
	const SAFARIZONEWEST_MAX_REVIVE
	const SAFARIZONEWEST_GOLD_TEETH

SafariZoneWest_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneWestRestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneWestFindWardensTeethSignText:
	text "REQUEST NOTICE"

	para "Please find the"
	line "SAFARI WARDEN's"
	cont "lost GOLD TEETH."

	para "They're around"
	line "here somewhere."

	para "Reward offered!"
	line "Contact: WARDEN"
	done

SafariZoneWestTrainerTipsText:
	text "TRAINER TIPS"

	para "Zone Exploration"
	line "Campaign!"

	para "The Search for"
	line "the SECRET HOUSE!"
	done

SafariZoneWestSignText:
	text "AREA 3"
	line "EAST: CENTER AREA"
	done

SafariZoneWest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  0, SAFARI_ZONE_NORTH, 1
	warp_event 21,  0, SAFARI_ZONE_NORTH, 2
	warp_event 26,  0, SAFARI_ZONE_NORTH, 3
	warp_event 27,  0, SAFARI_ZONE_NORTH, 4
	warp_event 29, 22, SAFARI_ZONE_CENTER, 3
	warp_event 29, 23, SAFARI_ZONE_CENTER, 4
	warp_event  3,  3, SAFARI_ZONE_SECRET_HOUSE, 1
	warp_event 11, 11, SAFARI_ZONE_WEST_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	;

	; bg_event 12, 12, TEXT_SAFARIZONEWEST_REST_HOUSE_SIGN
	; bg_event 17,  3, TEXT_SAFARIZONEWEST_FIND_WARDENS_TEETH_SIGN
	; bg_event 26,  4, TEXT_SAFARIZONEWEST_TRAINER_TIPS
	; bg_event 24, 22, TEXT_SAFARIZONEWEST_SIGN

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event  8, 20, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEWEST_MAX_POTION, MAX_POTION
	; object_event  9,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEWEST_TM_DOUBLE_TEAM, TM_DOUBLE_TEAM
	; object_event 18, 18, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEWEST_MAX_REVIVE, MAX_REVIVE
	; object_event 19,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEWEST_GOLD_TEETH, GOLD_TEETH
