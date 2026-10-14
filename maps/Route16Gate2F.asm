	object_const_def
	const ROUTE16GATE2F_LITTLE_BOY
	const ROUTE16GATE2F_LITTLE_GIRL

Route16Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route16Gate2FLittleBoyScript:
	jumptextfaceplayer Route16Gate2FLittleBoyText

Route16Gate2FLittleGirlScript:
	jumptextfaceplayer Route16Gate2FLittleGirlText

Route16Gate2FLeftBinoculars:
	readvar VAR_FACING
	ifequal UP, .LeftBinocularsText
	jumptext Route16Gate2FBinocularsWrongSideText

.LeftBinocularsText
	jumptext Route16Gate2FLeftBinocularsText

Route16Gate2FRightBinoculars:
	readvar VAR_FACING
	ifequal UP, .RightBinocularsText
	jumptext Route16Gate2FBinocularsWrongSideText

.RightBinocularsText
	jumptext Route16Gate2FRightBinocularsText

Route16Gate2FLittleBoyText:
	text "I'm going for a"
	line "ride with my girl-"
	cont "friend!"
	done

Route16Gate2FLittleGirlText:
	text "We're going"
	line "riding together!"
	done

Route16Gate2FLeftBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "It's CELADON DEPT."
	line "STORE!"
	done

Route16Gate2FRightBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "There's a long"
	line "path over water!"
	done

Route16Gate2FBinocularsWrongSideText:
	text "Oops, wrong side."
	done

Route16Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_16_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, Route16Gate2FLeftBinoculars
	bg_event  6,  2, BGEVENT_READ, Route16Gate2FRightBinoculars

	def_object_events
	object_event  4,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Gate2FLittleBoyScript, -1
	object_event  2,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route16Gate2FLittleGirlScript, -1
