	object_const_def
	const SAFARIZONEMAINOFFICE_SAFARI_ZONE_WORKER1
	const SAFARIZONEMAINOFFICE_SAFARI_ZONE_WORKER2
	const SAFARIZONEMAINOFFICE_SAFARI_ZONE_WORKER3

SafariZoneMainOffice_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneMainOfficeWorker1Script:
	jumptextfaceplayer SafariZoneMainOfficeWorker1Text

SafariZoneMainOfficeWorker2Script:
	jumptextfaceplayer SafariZoneMainOfficeWorker2Text

SafariZoneMainOfficeWorker3Script:
	jumptextfaceplayer SafariZoneMainOfficeWorker3Text

SafariZonePhoto:
	jumptext SafariZonePhotoText

SafariZoneMainOfficeWorker1Text:
	text "We nicknamed the"
	line "WARDEN SLOWPOKE."

	para "He and SLOWPOKE"
	line "both look vacant!"
	done

SafariZoneMainOfficeWorker2Text:
	text "SLOWPOKE is very"
	line "knowledgeable"
	cont "about #MON!"

	para "He even has some"
	line "fossils of rare,"
	cont "extinct #MON!"
	done

SafariZoneMainOfficeWorker3Text:
	text "SLOWPOKE came in,"
	line "but I couldn't"
	cont "understand him."

	para "I think he's got"
	line "a speech problem!"
	done

SafariZonePhotoText:
	text "It's a photo of a"
	line "huge grassy plain"

	para "with rare #MON"
	line "frolicking in it."
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, SafariZonePhoto ; lifted from Gen II

	def_object_events
	object_event  4,  1, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeWorker1Script, -1
	object_event  0,  2, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeWorker2Script, -1
	object_event 10,  1, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeWorker3Script, -1
