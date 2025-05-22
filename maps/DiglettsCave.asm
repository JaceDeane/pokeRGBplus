	object_const_def
	const DIGLETTSCAVE_FISHER
	const DIGLETTSCAVE_GAMBLER

DiglettsCave_MapScripts:
	def_scene_scripts

	def_callbacks

DiglettsCaveFisherScript:
	jumptextfaceplayer DiglettsCaveFisherText

DiglettsCaveGamblerScript:
	jumptextfaceplayer DiglettsCaveGamblerText

; DiglettsCaveHiddenMaxRevive:
	; hiddenitem MAX_REVIVE, EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REVIVE

DiglettsCaveFisherText:
	text "I went to ROCK"
	line "TUNNEL, but it's"
	cont "dark and scary."

	para "If a #MON's"
	line "FLASH could light"
	cont "it up…"
	done

DiglettsCaveGamblerText:
	text "What a surprise!"
	
	para "DIGLETT dug this"
	line "long tunnel!"

	para "It goes right to"
	line "VIRIDIAN CITY!"
	done

DiglettsCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, ROUTE_11, 1
	warp_event  5, 31, DIGLETTS_CAVE, 5
	warp_event 35,  5, ROUTE_2, 5
	warp_event 37,  3, DIGLETTS_CAVE, 6
	warp_event 37, 31, DIGLETTS_CAVE, 2
	warp_event  5,  5, DIGLETTS_CAVE, 4

	def_coord_events

	def_bg_events
	; bg_event  0,  0, BGEVENT_ITEM, DiglettsCaveHiddenMaxRevive

	def_object_events
	object_event 36,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCaveFisherScript, -1
	object_event  3, 30, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DiglettsCaveGamblerScript, -1
