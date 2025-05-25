Route7_MapScripts:
	def_scene_scripts

	def_callbacks

Route7UndergroundPathSign:
	jumptext Route7UndergroundPathSignText

Route7UndergroundPathSignText:
	text "What's this flyer?"

	para "… Uncouth trainers"
	line "have been holding"

	para "battles in the"
	line "UNDERGROUND PATH."

	para "Because of rising"
	line "complaints by lo-"
	cont "cal residents, the"
	cont "UNDERGROUND PATH"
	cont "has been sealed"
	cont "indefinitely."

	para "CELADON POLICE"
	done

Route7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 10, ROUTE_7_SAFFRON_GATE, 1
	warp_event 13, 11, ROUTE_7_SAFFRON_GATE, 2
	warp_event  5, 13, ROUTE_7_UNDERGROUND_PATH_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, Route7UndergroundPathSign

	def_object_events
