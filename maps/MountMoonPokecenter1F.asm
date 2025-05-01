	object_const_def
	const MOUNTMOONPOKECENTER1F_NURSE
	const MOUNTMOONPOKECENTER1F_LINK_RECEPTIONIST
	const MOUNTMOONPOKECENTER1F_SITTING_GUY
	const MOUNTMOONPOKECENTER1F_YOUNGSTER
	const MOUNTMOONPOKECENTER1F_GENTLEMAN
	const MOUNTMOONPOKECENTER1F_MAGIKARP_SALESMAN
	const MOUNTMOONPOKECENTER1F_CLIPBOARD

MountMoonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
MountMoonPokecenter1FLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

MountMoonPokecenter1FYoungsterScript:
	jumptextfaceplayer MountMoonPokecenter1FYoungsterText

MountMoonPokecenter1FGentlemanScript:
	jumptextfaceplayer MountMoonPokecenter1FGentlemanText

MountMoonPokecenter1FSittingGuyScript:
	jumptextfaceplayer MountMoonPokecenter1FSittingGuyText
	
MountMoonPokecenter1FMagikarpSalesmanScript:
	;
	end

MountMoonPokecenter1FYoungsterText:
	text "I've six # BALLS"
	line "set in my belt."

	para "At most, you can"
	line "carry six #MON."
	done

MountMoonPokecenter1FGentlemanText:
	text "TEAM ROCKET"
	line "attacks CERULEAN"
	cont "citizens…"

	para "TEAM ROCKET is"
	line "always in the"
	cont "news!"
	done
	
MountMoonPokecenter1FClipboardText:
	text "You can use that"
	line "PC in the corner."

	para "The receptionist"
	line "told me. So kind!"
	done

MountMoonPokecenter1FSittingGuyText:
	text "If you have too"
	line "many #MON, you"
	cont "should store them"
	cont "via PC!"
	done

MountMoonPokecenterMagikarpSalesmanGotADealText:
	text "MAN: Hello, there!"
	line "Have I got a deal"
	cont "just for you!"

	para "I'll let you have"
	line "a swell MAGIKARP"
	cont "for just ¥500!"
	
	para "What do you say?"
	done

MountMoonPokecenterMagikarpSalesmanNoText:
	text "No? I'm only"
	line "doing this as a"
	cont "favor to you!"
	done

MountMoonPokecenterMagikarpSalesmanNoMoneyText:
	text "You'll need more"
	line "money than that!"
	done

MountMoonPokecenterMagikarpSalesmanNoRefundsText:
	text "MAN: Well, I don't"
	line "give refunds!"
	done

MountMoonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_4, 1
	warp_event  4,  7, ROUTE_4, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1FLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1FSittingGuyScript, -1
	object_event  4,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1FYoungsterScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1FGentlemanScript, -1
	object_event 10,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MountMoonPokecenter1FMagikarpSalesmanScript, -1
	object_event  7,  2, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1