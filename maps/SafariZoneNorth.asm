	object_const_def
	const SAFARIZONENORTH_PROTEIN
	const SAFARIZONENORTH_TM_SKULL_BASH

SafariZoneNorth_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneNorthRestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneNorthTrainerTips1Text:
	text "TRAINER TIPS"

	para "The SECRET HOUSE"
	line "is still ahead!"
	done

SafariZoneNorthSignText:
	text "AREA 2"
	done

SafariZoneNorthTrainerTips2Text:
	text "TRAINER TIPS"

	para "#MON hide in"
	line "tall grass!"

	para "Zigzag through"
	line "grassy areas to"
	cont "flush them out."
	done

SafariZoneNorthTrainerTips3Text:
	text "TRAINER TIPS"

	para "Win a free HM for"
	line "finding the"
	cont "SECRET HOUSE!"
	done

SafariZoneNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 35, SAFARI_ZONE_WEST, 1
	warp_event  3, 35, SAFARI_ZONE_WEST, 2
	warp_event  8, 35, SAFARI_ZONE_WEST, 3
	warp_event  9, 35, SAFARI_ZONE_WEST, 4
	warp_event 20, 35, SAFARI_ZONE_CENTER, 5
	warp_event 21, 35, SAFARI_ZONE_CENTER, 6
	warp_event 39, 30, SAFARI_ZONE_EAST, 1
	warp_event 39, 31, SAFARI_ZONE_EAST, 2
	warp_event 35,  3, SAFARI_ZONE_NORTH_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	;

	; bg_event 36,  4, TEXT_SAFARIZONENORTH_REST_HOUSE_SIGN
	; bg_event  4, 25, TEXT_SAFARIZONENORTH_TRAINER_TIPS_1
	; bg_event 13, 31, TEXT_SAFARIZONENORTH_SIGN
	; bg_event 19, 33, TEXT_SAFARIZONENORTH_TRAINER_TIPS_2
	; bg_event 26, 28, TEXT_SAFARIZONENORTH_TRAINER_TIPS_3

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event 25,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONENORTH_PROTEIN, PROTEIN
	; object_event 19,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_SAFARIZONENORTH_TM_SKULL_BASH, TM_SKULL_BASH
