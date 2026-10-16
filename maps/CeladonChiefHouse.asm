	object_const_def
	const CELADONCHIEFHOUSE_CHIEF
	const CELADONCHIEFHOUSE_ROCKET
	const CELADONCHIEFHOUSE_SAILOR

CeladonChiefHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonChiefHouseChiefScript:
	jumptextfaceplayer CeladonChiefHouseChiefText

CeladonChiefHouseRocketScript:
	jumptextfaceplayer CeladonChiefHouseRocketText

CeladonChiefHouseSailorScript:
	jumptextfaceplayer CeladonChiefHouseSailorText

CeladonChiefHouseChiefText:
	text "Hehehe! The slots"
	line "just reel in the"
	cont "dough, big time!"
	done

CeladonChiefHouseRocketText:
	text "CHIEF!"

	para "We just shipped"
	line "2000 #MON as"
	cont "slot prizes!"
	done

CeladonChiefHouseSailorText:
	text "Don't touch the"
	line "poster at the"
	cont "GAME CORNER!"

	para "There's no secret"
	line "switch behind it!"
	done


CeladonChiefHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_CITY, 12
	warp_event  3,  7, CELADON_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouseChiefScript, -1
	object_event  1,  4, SPRITE_ROCKET, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouseRocketScript, -1
	object_event  5,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonChiefHouseSailorScript, -1
