	object_const_def
	const VERMILIONPIDGEYHOUSE_YOUNGSTER
	const VERMILIONPIDGEYHOUSE_PIDGEY
	const VERMILIONPIDGEYHOUSE_LETTER

VermilionPidgeyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPidgeyHouseYoungsterScript:
	jumptextfaceplayer VermilionPidgeyHouseYoungsterText

VermilionPidgeyHousePidgeyScript:
	faceplayer
	opentext
	writetext VermilionPidgeyHousePidgeyText
	cry PIDGEY
	waitbutton
	closetext
	end

VermilionPidgeyHouseLetterScript:
	opentext
	writetext VermilionPidgeyHouseLetterText
	waitbutton
	closetext
	end

VermilionPidgeyHouseYoungsterText:
	text "I'm getting my"
	line "PIDGEY to fly a"

	para "letter to SAFFRON"
	line "in the north!"
	done

VermilionPidgeyHousePidgeyText:
	text "PIDGEY: Kurukkoo!"
	done

VermilionPidgeyHouseLetterText:
	text "Dear PIPPI, I hope"
	line "to see you soon."

	para "I heard SAFFRON"
	line "has problems with"
	cont "TEAM ROCKET."

	para "VERMILION appears"
	line "to be safe."
	done

VermilionPidgeyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHouseYoungsterScript, -1
	object_event  3,  5, SPRITE_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHousePidgeyScript, -1
	object_event  4,  3, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionPidgeyHouseLetterScript, -1
