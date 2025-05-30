	object_const_def

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

HouseForSaleSignText:
	text "What's this?"

	para "House for Sale…"
	line "Nobody lives here."
	done

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 27, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 31, ROUTE_5_SAFFRON_GATE, 1
	warp_event  9, 31, ROUTE_5_SAFFRON_GATE, 2
	warp_event 10, 21, ROUTE_5_CLEANSE_TAG_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 29, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 21, BGEVENT_READ, HouseForSaleSign

	def_object_events
