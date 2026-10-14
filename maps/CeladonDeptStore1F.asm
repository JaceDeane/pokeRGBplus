	object_const_def
	const CELADONDEPTSTORE1F_RECEPTIONIST

CeladonDeptStore1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore1FReceptionistScript:
	jumptextfaceplayer CeladonDeptStore1FReceptionistText

CeladonDeptStore1FDirectory:
	jumptext CeladonDeptStore1FDirectoryText

CeladonDeptStore1FCurrentFloorSign:
	jumptext CeladonDeptStore1FCurrentFloorText

CeladonDeptStore1FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore1FReceptionistText:
	text "Hello! Welcome to"
	line "CELADON DEPT."
	cont "STORE!"

	para "The directory sign"
	line "to your right"

	para "describes the"
	line "store layout."
	done

CeladonDeptStore1FDirectoryText:
	text "1F: SERVICE"
	line "    COUNTER"

	para "2F: TRAINER'S"
	line "    MARKET"

	para "3F: TM SHOP"

	para "4F: WISEMAN GIFTS"

	para "5F: MEDICINE BOX"

	para "ROOFTOP SQUARE:"
	line "VENDING MACHINES"
	done

CeladonDeptStore1FCurrentFloorText:
	text "1F: SERVICE"
	line "    COUNTER"
	done

CeladonDeptStore1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_CITY, 1
	warp_event  3,  7, CELADON_CITY, 1
	warp_event 16,  7, CELADON_CITY, 2
	warp_event 17,  7, CELADON_CITY, 2
	warp_event 12,  1, CELADON_DEPT_STORE_2F, 2
	warp_event  1,  1, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 11,  4, BGEVENT_READ, CeladonDeptStore1FDirectory
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore1FCurrentFloorSign
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore1FElevatorButton

	def_object_events
	object_event  8,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore1FReceptionistScript, -1