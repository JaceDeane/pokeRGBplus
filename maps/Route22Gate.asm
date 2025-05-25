	object_const_def
	const ROUTE22GATE_OFFICER
	; const ROUTE22GATE_BLACK_BELT1
	; const ROUTE22GATE_BLACK_BELT2

Route22Gate_MapScripts:
	def_scene_scripts
	scene_script Route22GateNoop1Scene, SCENE_ROUTE22GATE_BADGE_CHECK
	scene_script Route22GateNoop2Scene, SCENE_ROUTE22GATE_NOOP

	def_callbacks

Route22GateNoop1Scene:
	end

Route22GateNoop2Scene:
	end

Route22GateBadgeCheckScript:
	turnobject PLAYER, LEFT
	sjump _Route22GateBadgeCheckScript

Route22GateOfficerScript:
	faceplayer
_Route22GateBadgeCheckScript:
	opentext
	writetext Route22GateOfficerText
	promptbutton
	readvar VAR_BADGES
	ifgreater NUM_JOHTO_BADGES - 1, .AllEightBadges
	writetext Route22GateNotEnoughBadgesText
	waitbutton
	closetext
	applymovement PLAYER, Route22GateStepDownMovement
	end

.AllEightBadges:
	writetext Route22GateEightBadgesText
	waitbutton
	closetext
	setscene SCENE_ROUTE22GATE_NOOP
	end

Route22GateLeftBlackBeltScript:
	jumptextfaceplayer Route22GateLeftBlackBeltText

Route22GateRightBlackBeltScript:
	jumptextfaceplayer Route22GateRightBlackBeltText

Route22GateStepDownMovement:
	step DOWN
	step_end

Route22GateOfficerText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

Route22GateNotEnoughBadgesText:
	text "You don't have all"
	line "the GYM BADGES of"
	cont "JOHTO."

	para "I'm sorry, but I"
	line "can't let you go"
	cont "through."
	done

Route22GateEightBadgesText:
	text "Oh! The eight"
	line "BADGES of JOHTO!"

	para "Please, go right"
	line "on through!"
	done

Route22GateLeftBlackBeltText:
	text "This way leads to"
	line "MT.SILVER."

	para "You'll see scary-"
	line "strong #MON out"
	cont "there."
	done

Route22GateRightBlackBeltText:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"

	para "scary, and they're"
	line "ready for you!"
	done

Route22Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_22, 1
	warp_event  5,  7, ROUTE_22, 1
	warp_event  4,  0, ROUTE_23, 3
	warp_event  5,  0, ROUTE_23, 4
	; warp_event  1,  7, ROUTE_28, 2
	; warp_event  2,  7, ROUTE_28, 2

	def_coord_events
	; coord_event  1, 16, SCENE_ROUTE22GATE_BADGE_CHECK, Route22GateBadgeCheckScript

	def_bg_events

	def_object_events
	object_event  0, 16, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route22GateOfficerScript, -1
	; object_event  7,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22GateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
	; object_event 19,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22GateRightBlackBeltScript, EVENT_FOUGHT_SNORLAX
