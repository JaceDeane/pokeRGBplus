	object_const_def
	const ROUTE18GATE2F_LITTLE_BOY

Route18Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route18Gate2FYoungsterScript:
	faceplayer
	opentext
	trade NPC_TRADE_HADEN ; MARC the LICKITUNG
	waitbutton
	closetext
	end

Route18Gate2FLeftBinoculars:
	readvar VAR_FACING
	ifequal UP, .LeftBinocularsText
	jumptext Route18Gate2FBinocularsWrongSideText

.LeftBinocularsText
	jumptext Route18Gate2FLeftBinocularsText

Route18Gate2FRightBinoculars:
	readvar VAR_FACING
	ifequal UP, .RightBinocularsText
	jumptext Route18Gate2FBinocularsWrongSideText

.RightBinocularsText
	jumptext Route18Gate2FRightBinocularsText

Route18Gate2FLeftBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "PALLET TOWN is in"
	line "the west!"
	done

Route18Gate2FRightBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "There are people"
	line "swimming!"
	done

Route18Gate2FBinocularsWrongSideText:
	text "Oops, wrong side."
	done

Route18Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_18_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, Route18Gate2FLeftBinoculars
	bg_event  6,  2, BGEVENT_READ, Route18Gate2FRightBinoculars

	def_object_events
	object_event  4,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route18Gate2FYoungsterScript, -1