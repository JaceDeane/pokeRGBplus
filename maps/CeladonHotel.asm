	object_const_def
	const CELADONHOTEL_GRANNY
	const CELADONHOTEL_BEAUTY
	const CELADONHOTEL_SUPER_NERD
	const CELADONHOTEL_SITTING_GUY

CeladonHotel_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonHotelGrannyScript:
	jumptextfaceplayer CeladonHotelGrannyText

CeladonHotelBeautyScript:
	jumptextfaceplayer CeladonHotelBeautyText

CeladonHotelSuperNerdScript:
	jumptextfaceplayer CeladonHotelSuperNerdText

CeladonHotelSittingGuyScript:
	jumptext CeladonHotelSittingGuyText

CeladonHotelGrannyText:
	text "#MON? No, this"
	line "is a hotel for"
	cont "people."

	para "We're full up."
	done

CeladonHotelBeautyText:
	text "I'm on vacation"
	line "with my brother"
	cont "and boyfriend."

	para "CELADON is such a"
	line "pretty city!"
	done

CeladonHotelSuperNerdText:
	text "Why did she bring"
	line "her brother?"
	done

CeladonHotelSittingGuyText:
	text "My sis brought me"
	line "on this vacation!"
	done

CeladonHotel_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 13
	warp_event  4,  7, CELADON_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonHotelGrannyScript, -1
	object_event  2,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonHotelBeautyScript, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonHotelSuperNerdScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonHotelSittingGuyScript, -1

