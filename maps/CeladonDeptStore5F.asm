	object_const_def
	const CELADONDEPTSTORE5F_CLERK1
	const CELADONDEPTSTORE5F_CLERK2
	const CELADONDEPTSTORE5F_GENTLEMAN
	const CELADONDEPTSTORE5F_SAILOR

CeladonDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore5FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_5F_CLERK1
	closetext
	end

CeladonDeptStore5FClerk2Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .BeatenEliteFour
	pokemart MARTTYPE_STANDARD, MART_CELADON_5F_CLERK2
	sjump .done

.BeatenEliteFour:
	pokemart MARTTYPE_STANDARD, MART_CELADON_5F_CLERK2_2
.done:
	closetext
	end

CeladonDeptStore5FGentlemanScript:
	jumptextfaceplayer CeladonDeptStore5FGentlemanText

CeladonDeptStore5FSailorScript:
	jumptextfaceplayer CeladonDeptStore5FSailorText

CeladonDeptStore5FDirectory:
	jumptext CeladonDeptStore5FDirectoryText

CeladonDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore5FGentlemanText:
	text "#MON stat"
	line "enhancers can be"
	cont "bought only here."

	para "Use CALCIUM to"
	line "increase SPECIAL"
	cont "stats."

	para "Use CARBOS to"
	line "increase SPEED."
	done

CeladonDeptStore5FSailorText:
	text "I'm here for"
	line "#MON stat"
	cont "enhancers."

	para "PROTEIN increases"
	line "ATTACK power,"

	para "and IRON increases"
	line "DEFENSE!"
	done

CeladonDeptStore5FDirectoryText:
	text "Let Us Pump Up"
	line "Your #MON!"
	
	; para "5F: DRUG STORE"
	para "5F: MEDICINE BOX"
	done

CeladonDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, CELADON_DEPT_STORE_4F, 1
	warp_event 12,  1, CELADON_DEPT_STORE_ROOF, 1
	warp_event  1,  1, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore5FDirectory
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore5FElevatorButton

	def_object_events
	object_event  5,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FClerk1Script, -1
	object_event  6,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FClerk2Script, -1
	object_event 14,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FGentlemanScript, -1
	object_event  2,  6, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore5FSailorScript, -1
