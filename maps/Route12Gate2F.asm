	object_const_def
	const ROUTE12GATE2F_LASS

Route12Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route12Gate2FLassScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM39_SWIFT
	iftrue .AlreadyGotTM
	writetext Route12Gate2FLassYouCanHaveThisText
	promptbutton
	verbosegiveitem TM_SWIFT
	iffalse .NoRoom
	setevent EVENT_GOT_TM39_SWIFT
.AlreadyGotTM:
	writetext Route12Gate2FLassTM39ExplanationText
	waitbutton
	closetext
	end

.NoRoom:
	writetext Route12Gate2FLassTM39NoRoomText
	waitbutton
	closetext
	end

Route12Gate2FLeftBinoculars:
	readvar VAR_FACING
	ifequal UP, .LeftBinocularsText
	jumptext Route12Gate2FBinocularsWrongSideText

.LeftBinocularsText
	jumptext Route12Gate2FLeftBinocularsText

Route12Gate2FRightBinoculars:
	readvar VAR_FACING
	ifequal UP, .RightBinocularsText
	jumptext Route12Gate2FBinocularsWrongSideText

.RightBinocularsText
	jumptext Route12Gate2FRightBinocularsText

Route12Gate2FLassYouCanHaveThisText:
	text "My #MON's"
	line "ashes are stored"
	cont "in #MON TOWER."

	para "You can have this"
	line "TM. I don't need"
	cont "it any more…"
	done

Route12Gate2FLassTM39ExplanationText:
	text "TM39 is a move"
	line "called SWIFT."

	para "It's very accurate,"
	line "so use it during"

	para "battles you can't"
	line "afford to lose."
	done

Route12Gate2FLassTM39NoRoomText:
	text "You don't have"
	line "room for this."
	done

Route12Gate2FLeftBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "A man fishing!"
	done

Route12Gate2FRightBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "It's #MON TOWER!"
	done

Route12Gate2FBinocularsWrongSideText:
	text "Oops, wrong side."
	done

Route12Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_12_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, Route12Gate2FLeftBinoculars
	bg_event  6,  2, BGEVENT_READ, Route12Gate2FRightBinoculars

	def_object_events
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route12Gate2FLassScript, -1
