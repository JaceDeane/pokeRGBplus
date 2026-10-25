	object_const_def
	const SAFARIZONESECRETHOUSE_FISHING_GURU

SafariZoneSecretHouse_MapScripts:
	def_scene_scripts

	def_callbacks

;

SafariZoneSecretHouseFishingGuruYouHaveWonText:
	text "Ah! Finally!"

	para "You're the first"
	line "person to reach"
	cont "the SECRET HOUSE!"

	para "I was getting"
	line "worried that no"
	cont "one would win our"
	cont "campaign prize."

	para "Congratulations!"
	line "You have won!"
	prompt

; SafariZoneSecretHouseFishingGuruReceivedHM03Text:
	; text "<PLAYER> received"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

SafariZoneSecretHouseFishingGuruHM03ExplanationText:
	text "HM03 is SURF!"

	para "#MON will be"
	line "able to ferry you"
	cont "across water!"

	para "And, this HM isn't"
	line "disposable! You"
	cont "can use it over"
	cont "and over!"

	para "You're super lucky"
	line "for winning this"
	cont "fabulous prize!"
	done

SafariZoneSecretHouseFishingGuruHM03NoRoomText:
	text "You don't have"
	line "room for this"
	cont "fabulous prize!"
	done

SafariZoneSecretHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 7
	warp_event  3,  7, SAFARI_ZONE_WEST, 7

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1
	; object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ***Script, -1

	;

	; object_event  3,  3, SPRITE_FISHING_GURU, STAY, DOWN, TEXT_SAFARIZONESECRETHOUSE_FISHING_GURU
