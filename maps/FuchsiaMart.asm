	object_const_def
	const FUCHSIAMART_CLERK
	const FUCHSIAMART_POKEFAN_M
	const FUCHSIAMART_COOLTRAINER_F

FuchsiaMart_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_FUCHSIA
	closetext
	end

FuchsiaMartMiddleAgedManScript:
	jumptextfaceplayer FuchsiaMartMiddleAgedManText

FuchsiaMartCooltrainerFScript:
	jumptextfaceplayer FuchsiaMartCooltrainerFText

FuchsiaMartMiddleAgedManText:
	text "Do you have a"
	line "SAFARI ZONE flag?"

	para "What about cards"
	line "or calendars?"
	done

FuchsiaMartCooltrainerFText:
	text "Did you try X"
	line "SPEED?"

	para "It speeds up a"
	line "#MON in battle!"
	done

FuchsiaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 1
	warp_event  3,  7, FUCHSIA_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMartClerkScript, -1
	object_event  4,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaMartMiddleAgedManScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaMartCooltrainerFScript, -1
