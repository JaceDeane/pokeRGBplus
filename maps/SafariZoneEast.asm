	object_const_def
	const SAFARIZONEEAST_FULL_RESTORE
	const SAFARIZONEEAST_MAX_RESTORE
	const SAFARIZONEEAST_CARBOS
	const SAFARIZONEEAST_TM_EGG_BOMB

SafariZoneEast_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneEastRestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneEastTrainerTipsText:
	text "TRAINER TIPS"

	para "The remaining time"
	line "declines only"
	cont "while you walk!"
	done

SafariZoneEastSignText:
	text "CENTER AREA"
	line "NORTH: AREA 2"
	done

SafariZoneEast_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, SAFARI_ZONE_NORTH, 7
	warp_event  0,  5, SAFARI_ZONE_NORTH, 8
	warp_event  0, 22, SAFARI_ZONE_CENTER, 7
	warp_event  0, 23, SAFARI_ZONE_CENTER, 7
	warp_event 25,  9, SAFARI_ZONE_EAST_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	

	; bg_event 26, 10, TEXT_SAFARIZONEEAST_REST_HOUSE_SIGN
	; bg_event  6,  4, TEXT_SAFARIZONEEAST_TRAINER_TIPS
	; bg_event  5, 23, TEXT_SAFARIZONEEAST_SIGN

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event 21, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEEAST_FULL_RESTORE, FULL_RESTORE
	; object_event  3,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEEAST_MAX_RESTORE, MAX_POTION
	; object_event 20, 13, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEEAST_CARBOS, CARBOS
	; object_event 15, 12, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONEEAST_TM_EGG_BOMB, TM_EGG_BOMB
