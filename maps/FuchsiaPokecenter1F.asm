	object_const_def
	const FUCHSIAPOKECENTER1F_NURSE
	const FUCHSIAPOKECENTER1F_LINK_RECEPTIONIST
	const FUCHSIAPOKECENTER1F_SITTING_GUY
	const FUCHSIAPOKECENTER1F_ROCKER
	const FUCHSIAPOKECENTER1F_COOLTRAINER_F

FuchsiaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script FuchsiaPokeCenter1FNoopScene ; unusable

	def_callbacks

FuchsiaPokeCenter1FNoopScene:
	end

FuchsiaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

FuchsiaPokecenter1FLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

FuchsiaPokecenter1FSittingGuyScript:
	jumptextfaceplayer FuchsiaPokecenter1FSittingGuyText

FuchsiaPokecenter1FRockerScript:
	jumptextfaceplayer FuchsiaPokecenter1FRockerText

FuchsiaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerFText

FuchsiaPokecenter1FRockerText:
	text "You can't win"
	line "with just one"
	cont "strong #MON."

	para "It's tough, but"
	line "you have to raise"
	cont "them evenly."
	done

FuchsiaPokecenter1FCooltrainerFText:
	text "There's a narrow"
	line "trail west of"
	cont "VIRIDIAN CITY."

	para "It goes to #MON"
	line "LEAGUE HQ."

	para "The HQ governs"
	line "all trainers."
	done

FuchsiaPokecenter1FSittingGuyText:
	text "If you're studying "
	line "#MON, visit"
	cont "the SAFARI ZONE."

	para "It has all sorts"
	line "of rare #MON."
	done

FuchsiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 3
	warp_event  4,  7, FUCHSIA_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FSittingGuyScript, -1
	object_event  2,  3, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FRockerScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerFScript, -1
