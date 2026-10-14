	object_const_def
	const CELADONDEPTSTORE4F_CLERK
	const CELADONDEPTSTORE4F_SUPER_NERD
	const CELADONDEPTSTORE4F_YOUNGSTER

CeladonDeptStore4F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore4FClerkScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .BeatenEliteFour
	pokemart MARTTYPE_STANDARD, MART_CELADON_4F
	sjump .done

.BeatenEliteFour:
	pokemart MARTTYPE_STANDARD, MART_CELADON_4F_2
.done:
	closetext
	end

CeladonDeptStore4FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore4FSuperNerdText

CeladonDeptStore4FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore4FYoungsterText

CeladonDeptStore4FDirectory:
	jumptext CeladonDeptStore4FDirectoryText

CeladonDeptStore4FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore4FSuperNerdText:
	text "I'm going to buy"
	line "a # DOLL for"
	cont "my girlfriend!"
	done

CeladonDeptStore4FYoungsterText:
	text "I heard something"
	line "useful."

	para "You can run from"
	line "wild #MON by"

	para "distracting them"
	line "with a # DOLL!"
	done

CeladonDeptStore4FDirectoryText:
	text "Express Yourself"
	line "With Gifts!"

	para "4F: WISEMAN GIFTS"
	
	para "Evolution Special!"
	line "ELEMENTAL STONES"
	cont "on sale now!"
	done

CeladonDeptStore4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, CELADON_DEPT_STORE_5F, 1
	warp_event 12,  1, CELADON_DEPT_STORE_3F, 2
	warp_event  1,  1, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore4FDirectory
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore4FElevatorButton

	def_object_events
	object_event  5,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FClerkScript, -1
	object_event 15,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FSuperNerdScript, -1
	object_event  5,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore4FYoungsterScript, -1
