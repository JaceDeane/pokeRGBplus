	object_const_def
	const LAVENDERCUBONEHOUSE_CUBONE
	const LAVENDERCUBONEHOUSE_BRUNETTE_GIRL

LavenderCuboneHouse_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderCuboneHouseCuboneScript:
	opentext
	writetext LavenderCuboneHouseCuboneText
	cry CUBONE
	waitbutton
	closetext
	end

LavenderCuboneHouseBrunetteGirlScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GHOST_MAROWAK
	iftrue .ghost_gone
	writetext LavenderCuboneHouseBrunetteGirlPoorCubonesMotherText
	waitbutton
	closetext
	end

.ghost_gone:
	writetext LavenderCuboneHouseBrunetteGirlGhostIsGoneText
	waitbutton
	closetext
	end

LavenderCuboneHouseBookshelf:
	jumpstd PictureBookshelfScript

LavenderCuboneHouseCuboneText:
	text "CUBONE: Kyarugoo!"
	done

LavenderCuboneHouseBrunetteGirlPoorCubonesMotherText:
	text "I hate those"
	line "horrible ROCKETS!"

	para "That poor CUBONE's"
	line "mother…"

	para "It was killed"
	line "trying to escape"
	cont "from TEAM ROCKET!"
	done

LavenderCuboneHouseBrunetteGirlGhostIsGoneText:
	text "The GHOST of"
	line "#MON TOWER is"
	cont "gone!"

	para "Someone must have"
	line "soothed its"
	cont "restless soul!"
	done

LavenderCuboneHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 3
	warp_event  3,  7, LAVENDER_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, LavenderCuboneHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, LavenderCuboneHouseBookshelf

	def_object_events
	object_event  3,  5, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LavenderCuboneHouseCuboneScript, -1
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavenderCuboneHouseBrunetteGirlScript, -1
