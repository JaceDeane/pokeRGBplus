	object_const_def
	const BILLSGRANDPASHOUSE_POKEFAN_F
	const BILLSGRANDPASHOUSE_GRAMPS
	const BILLSGRANDPASHOUSE_YOUNGSTER

BillsGrandpasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillsGrandpasHousePokefanFScript:
	jumptextfaceplayer BillsGrandpasHousePokefanFText

BillsGrandpasHouseBillsGrandpaScript:
	jumptextfaceplayer BillsGrandpasHouseBillsGrandpaText

BillsGrandpasHouseYoungsterScript:
	jumptextfaceplayer BillsGrandpasHouseYoungsterText

BillsGrandpasHousePokefanFText:
	text "SAFARI ZONE's"
	line "WARDEN is old,"
	cont "but still active!"

	para "All his teeth are"
	line "false, though."
	done

BillsGrandpasHouseBillsGrandpaText:
	text "Hmm? You've met"
	line "BILL?"

	para "He's my grandson!"

	para "He always liked"
	line "collecting things"
	cont "even as a child!"
	done

BillsGrandpasHouseYoungsterText:
	text "BILL files his"
	line "own #MON data"
	cont "on his PC!"

	para "Did he show you?"
	done

BillsGrandpasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillsGrandpasHousePokefanFScript, -1
	object_event  7,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsGrandpasHouseBillsGrandpaScript, -1
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsGrandpasHouseYoungsterScript, -1
