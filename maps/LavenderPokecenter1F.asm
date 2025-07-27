	object_const_def
	const LAVENDERPOKECENTER1F_NURSE
	const LAVENDERPOKECENTER1F_LINK_RECEPTIONIST
	const LAVENDERPOKECENTER1F_SITTING_GUY
	const LAVENDERPOKECENTER1F_GENTLEMAN
	const LAVENDERPOKECENTER1F_LITTLE_GIRL

LavenderPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LavenderPokecenter1FLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

LavenderPokecenter1FGentlemanScript:
	jumptextfaceplayer LavenderPokecenter1FGentlemanText

LavenderPokecenter1FLittleGirlScript:
	jumptextfaceplayer LavenderPokecenter1FLittleGirlText

LavenderPokecenter1FSittingGuyScript:
	jumptextfaceplayer LavenderPokecenter1FSittingGuyText

; LavenderPokecenter1FYoungsterScript:
	; faceplayer
	; opentext
	; checkevent EVENT_RETURNED_MACHINE_PART
	; iftrue .ReturnedMachinePart
	; writetext LavenderPokecenter1FYoungsterText
	; waitbutton
	; closetext
	; end

; .ReturnedMachinePart:
	; writetext LavenderPokecenter1FYoungsterText_ReturnedMachinePart
	; waitbutton
	; closetext
	; end

LavenderPokecenter1FGentlemanText:
	text "TEAM ROCKET will"
	line "do anything for"
	cont "the sake of money!"
	done

LavenderPokecenter1FLittleGirlText:
	text "I saw CUBONE's"
	line "mother die trying"

	para "to escape from"
	line "TEAM ROCKET!"
	done

LavenderPokecenter1FSittingGuyText:
	text "CUBONE wear"
	line "skulls, right?"

	para "People will pay a"
	line "lot for one!"
	done

LavenderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FSittingGuyScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGentlemanScript, -1
	object_event  2,  6, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FLittleGirlScript, -1
