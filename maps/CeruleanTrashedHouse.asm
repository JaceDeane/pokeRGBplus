	object_const_def
	const CERULEANTRASHEDHOUSE_FISHING_GURU
	const CERULEANTRASHEDHOUSE_POKEFAN_F
	const CERULEANTRASHEDHOUSE_DIGLETT

CeruleanTrashedHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTrashedHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROCKET_GRUNTM_5
	iffalse .no_dig_tm
	writetext CeruleanTrashedHouseFishingGuruWhatsLostIsLostText
	waitbutton
	closetext
	end

.no_dig_tm
	writetext CeruleanTrashedHouseFishingGuruTheyStoleATMText
	waitbutton
	closetext
	end

CeruleanTrashedHouseGirlScript:
	jumptextfaceplayer CeruleanTrashedHouseGirlText

CeruleanDiglett:
	opentext
	writetext CeruleanDiglettText
	cry DIGLETT
	waitbutton
	closetext
	end

CeruleanTrashedHouseWallHole:
	jumptext CeruleanTrashedHouseWallHoleText

CeruleanTrashedHouseFishingGuruTheyStoleATMText:
	text "Those miserable"
	line "ROCKETS!"

	para "Look what they"
	line "did here!"

	para "They stole a TM"
	line "for teaching"
	
	para "#MON how to"
	line "DIG holes!"

	para "That cost me a"
	line "bundle, it did!"
	done

CeruleanTrashedHouseFishingGuruWhatsLostIsLostText:
	text "I figure what's"
	line "lost is lost!"

	para "I decided to teach"
	line "DIGLETT how to"
	cont "DIG without a TM!"
	done

CeruleanTrashedHouseGirlText:
	text "TEAM ROCKET must"
	line "be trying to DIG"
	
	para "their way into no"
	line "good!"
	done

CeruleanTrashedHouseWallHoleText:
	text "TEAM ROCKET left"
	line "a way out!"
	done

CeruleanDiglettText:
	text "DIGLETT: Dug dug."
	done

CeruleanTrashedHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1
	warp_event  3,  0, CERULEAN_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, CeruleanTrashedHouseWallHole

	def_object_events
	object_event  2,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseFishingGuruScript, -1
	object_event  5,  6, SPRITE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTrashedHouseGirlScript, -1
	object_event  3,  5, SPRITE_DIGLETT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanDiglett, -1
