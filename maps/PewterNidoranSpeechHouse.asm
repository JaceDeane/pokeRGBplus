	object_const_def
	const PEWTERNIDORANSPEECHHOUSE_MIDDLE_AGED_MAN
	const PEWTERNIDORANSPEECHHOUSE_NIDORAN_M
	const PEWTERNIDORANSPEECHHOUSE_LITTLE_BOY

PewterNidoranSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterNidoranSpeechHouseLittleBoyScript:
	jumptextfaceplayer PewterNidoranSpeechHouseLittleBoyText
	
PewterNidoranSpeechHouseMiddleAgedManScript:
	jumptextfaceplayer PewterNidoranSpeechHouseMiddleAgedManText

PewterNidoran:
	opentext
	writetext PewterNidoranText
	cry NIDORAN_M
	waitbutton
	closetext
	end

PewterNidoranSpeechHouseLittleBoyText:
	text "NIDORAN, sit!"
	done

PewterNidoranText:
	text "NIDORAN: Bowbow!"
	done

PewterNidoranSpeechHouseMiddleAgedManText:
	text "Our #MON's an"
	line "outsider, so it's"
	cont "hard to handle."

	para "An outsider is a"
	line "#MON that you"
	cont "get in a trade."

	para "It grows fast, but"
	line "it may ignore an"
	cont "unskilled trainer"
	cont "in battle!"

	para "If only we had"
	line "some BADGES…"
	done

PewterNidoranSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 1
	warp_event  3,  7, PEWTER_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterNidoran, -1
	object_event  3,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterNidoranSpeechHouseLittleBoyScript, -1
	object_event  1,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterNidoranSpeechHouseMiddleAgedManScript, -1
