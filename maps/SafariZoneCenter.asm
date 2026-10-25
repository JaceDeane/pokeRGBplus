	object_const_def
	const SAFARIZONECENTER_NUGGET

SafariZoneCenter_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneCenterRestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneCenterTrainerTipsSignText:
	text "TRAINER TIPS"

	para "Press the START"
	line "Button to check"
	cont "remaining time!"
	done

SafariZoneCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 25, SAFARI_ZONE_GATE, 3
	warp_event 15, 25, SAFARI_ZONE_GATE, 4
	
	warp_event  0, 10, SAFARI_ZONE_WEST, 5
	warp_event  0, 11, SAFARI_ZONE_WEST, 6
	warp_event 14,  0, SAFARI_ZONE_NORTH, 5
	warp_event 15,  0, SAFARI_ZONE_NORTH, 6
	warp_event 29, 10, SAFARI_ZONE_EAST, 3
	warp_event 29, 11, SAFARI_ZONE_EAST, 4
	warp_event 17, 19, SAFARI_ZONE_CENTER_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	;

	; bg_event 18, 20, TEXT_SAFARIZONECENTER_REST_HOUSE_SIGN
	; bg_event 14, 22, TEXT_SAFARIZONECENTER_TRAINER_TIPS_SIGN

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	; object_event 14, 10, SPRITE_POKE_BALL,

	; object_event 14, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONECENTER_NUGGET, NUGGET
