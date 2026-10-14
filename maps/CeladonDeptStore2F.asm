	object_const_def
	const CELADONDEPTSTORE2F_CLERK1
	const CELADONDEPTSTORE2F_CLERK2
	const CELADONDEPTSTORE2F_POKEFAN_M
	const CELADONDEPTSTORE2F_GIRL

CeladonDeptStore2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore2FClerk1Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .BeatenEliteFour
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_CLERK1
	sjump .done

.BeatenEliteFour:
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_CLERK1_2
.done:
	closetext
	end

CeladonDeptStore2FClerk2Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .BeatenEliteFour
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_CLERK2
	sjump .done

.BeatenEliteFour:
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_CLERK2_2
.done:
	closetext
	end

CeladonDeptStore2FPokefanMScript:
	jumptextfaceplayer CeladonDeptStore2FPokefanMText

CeladonDeptStore2FGirlScript:
	jumptextfaceplayer CeladonDeptStore2FGirlText

CeladonDeptStore2FDirectory:
	jumptext CeladonDeptStore2FDirectoryText

CeladonDeptStore2FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore2FPokefanMText:
	text "SUPER REPEL keeps"
	line "weak #MON away…"

	para "Hmm, it's a more"
	line "powerful REPEL!"
	done

CeladonDeptStore2FGirlText:
	text "For long outings,"
	line "you should buy"
	cont "REVIVE."
	done

CeladonDeptStore2FDirectoryText:
	text "Top Grade Items"
	line "for Trainers!"

	para "2F: TRAINER'S"
	line "    MARKET"
	done

CeladonDeptStore2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, CELADON_DEPT_STORE_3F, 1
	warp_event 12,  1, CELADON_DEPT_STORE_1F, 5
	warp_event  1,  1, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore2FDirectory
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore2FElevatorButton

	def_object_events
	object_event  5,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FClerk1Script, -1
	object_event  6,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FClerk2Script, -1
	object_event 19,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FPokefanMScript, -1
	object_event 14,  4, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FGirlScript, -1
