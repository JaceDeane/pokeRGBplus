	object_const_def
	const ROUTE22GATE_OFFICER

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
	turnobject ROUTE22GATE_OFFICER, LEFT
	turnobject PLAYER, RIGHT
	sjump _Route22GateBadgeCheckScript

Route22GateOfficerScript:
	faceplayer
_Route22GateBadgeCheckScript:
	opentext
	writetext Route22GateOfficerText
	promptbutton
	;readvar VAR_BADGES
	;ifgreater NUM_JOHTO_BADGES - 1, .AllEightBadges
	checkflag ENGINE_BOULDERBADGE
	iftrue .HasBoulderBadge
	writetext Route22GateOfficerNoBoulderBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route22GateOfficerCantPassText
	waitbutton
	closetext
	turnobject ROUTE22GATE_OFFICER, DOWN
	applymovement PLAYER, Route22GateStepDownMovement
	end

.HasBoulderBadge:
	writetext Route22GateOfficerGoAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE22GATE_OFFICER, DOWN
	setscene SCENE_ROUTE22GATE_NOOP
	end

Route22GateStepDownMovement:
	step DOWN
	step_end

Route22GateOfficerText:
	text "Only truly skilled"
	line "trainers are"
	cont "allowed through."
	done

Route22GateOfficerNoBoulderBadgeText:
	text "You don't have the"
	line "BOULDERBADGE yet!"
	done

Route22GateOfficerCantPassText:
	text "The rules are"
	line "the rules."

	para "I can't let you"
	line "pass."
	done

Route22GateOfficerGoAheadText:
	text "Oh! That is the"
	line "BOULDERBADGE!"

	para "Go right ahead!"
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
	coord_event  4,  2, SCENE_ROUTE22GATE_BADGE_CHECK, Route22GateBadgeCheckScript
	coord_event  5,  2, SCENE_ROUTE22GATE_BADGE_CHECK, Route22GateBadgeCheckScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route22GateOfficerScript, -1
	; object_event  7,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22GateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
	; object_event 19,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22GateRightBlackBeltScript, EVENT_FOUGHT_SNORLAX
