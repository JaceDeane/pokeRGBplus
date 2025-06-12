	object_const_def
	const VERMILIONPOKECENTER_NURSE
	const VERMILIONPOKECENTER_LINK_RECEPTIONIST
	const VERMILIONPOKECENTER_SITTING_GUY
	const VERMILIONPOKECENTER_FISHING_GURU
	const VERMILIONPOKECENTER_SAILOR

VermilionPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

VermilionPokecenterLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

VermilionPokecenterFishingGuruScript:
	jumptextfaceplayer VermilionPokecenterFishingGuruText

VermilionPokecenterSailorScript:
	jumptextfaceplayer VermilionPokecenterSailorText

VermilionPokecenterSittingGuyScript:
	jumptextfaceplayer VermilionPokecenterSittingGuyText

VermilionPokecenterFishingGuruText:
	text "Even if they are"
	line "the same level,"

	para "#MON can have"
	line "very different"
	cont "abilities."

	para "A #MON raised"
	line "by a trainer is"

	para "stronger than one"
	line "in the wild."
	done

VermilionPokecenterSailorText:
	text "My #MON was"
	line "poisoned! It"

	para "fainted while we"
	line "were walking!"
	done

VermilionPokecenterSittingGuyText:
	text "It is true that a"
	line "higher level"

	para "#MON will be"
	line "more powerful…"

	para "But, all #MON"
	line "will have weak"

	para "points against"
	line "specific types."

	para "So, there is no"
	line "universally"
	cont "strong #MON."
	done

VermilionPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 1
	warp_event  4,  7, VERMILION_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events	
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterSittingGuyScript, -1
	object_event 10,  5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterFishingGuruScript, -1
	object_event  5,  4, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenterSailorScript, -1
