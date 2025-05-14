	object_const_def
	const CERULEANPOKECENTER_NURSE
	const CERULEANPOKECENTER_LINK_RECEPTIONIST
	const CERULEANPOKECENTER_SITTING_GUY
	const CERULEANPOKECENTER_SUPER_NERD
	const CERULEANPOKECENTER_GENTLEMAN

CeruleanPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenterNurseScript:
	jumpstd PokecenterNurseScript

CeruleanPokecenterLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

CeruleanPokecenterSuperNerdScript:
	jumptextfaceplayer CeruleanPokecenterSuperNerdText

CeruleanPokecenterGentlemanScript:
	jumptextfaceplayer CeruleanPokecenterGentlemanText

CeruleanPokecenterSittingGuyScript:
	jumptextfaceplayer CeruleanPokecenterSittingGuyText

CeruleanPokecenterSuperNerdText:
	text "That BILL!"

	para "I heard that"
	line "he'll do whatever"
	cont "it takes to get"
	cont "rare #MON!"
	done

CeruleanPokecenterGentlemanText:
	text "Have you heard"
	line "about BILL?"

	para "Everyone calls"
	line "him a #MANIAC!"

	para "I think people"
	line "are just jealous"
	cont "of BILL, though."

	para "Who wouldn't want"
	line "to boast about"
	cont "their #MON?"
	done

CeruleanPokecenterSittingGuyText:
	text "BILL has lots of"
	line "#MON!"

	para "He collects rare"
	line "ones too!"
	done

CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 4
	warp_event  4,  7, CERULEAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterSittingGuyScript, -1
	object_event 10,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterSuperNerdScript, -1
	object_event  4,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenterGentlemanScript, -1
