	object_const_def
	const ROCKTUNNELPOKECENTER_NURSE
	const ROCKTUNNELPOKECENTER_LINK_RECEPTIONIST
	const ROCKTUNNELPOKECENTER_SITTING_GUY
	const ROCKTUNNELPOKECENTER_GENTLEMAN
	const ROCKTUNNELPOKECENTER_FISHER

RockTunnelPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnelPokecenterNurseScript:
	jumpstd PokecenterNurseScript

RockTunnelPokecenterLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

RockTunnelPokecenterGentlemanScript:
	jumptextfaceplayer RockTunnelPokecenterGentlemanText

RockTunnelPokecenterFisherScript:
	jumptextfaceplayer RockTunnelPokecenterFisherText

RockTunnelPokecenterSittingGuyScript:
	jumptextfaceplayer RockTunnelPokecenterSittingGuyText

RockTunnelPokecenterGentlemanText:
	text "The element types"
	line "of #MON make"

	para "them stronger"
	line "than some types"

	para "and weaker than"
	line "others!"
	done

RockTunnelPokecenterFisherText:
	text "I sold a useless"
	line "NUGGET for ¥5000!"
	done

RockTunnelPokecenterSittingGuyText:
	text "I heard that"
	line "GHOSTS haunt"
	cont "LAVENDER TOWN!"
	done

RockTunnelPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_10, 1
	warp_event  4,  7, ROUTE_10, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterSittingGuyScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterGentlemanScript, -1
	object_event  2,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnelPokecenterFisherScript, -1
