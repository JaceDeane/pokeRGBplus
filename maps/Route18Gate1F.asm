	object_const_def
	const ROUTE18GATE1F_OFFICER

Route18Gate1F_MapScripts:
	def_scene_scripts
	scene_script Route18Gate1FNoopScene, SCENE_ROUTE18GATE1F_BICYCLE_CHECK

	def_callbacks

Route18Gate1FNoopScene:
	end

Route18Gate1FOfficerScript:
	jumptextfaceplayer Route18Gate1FOfficerText

Route18Gate1FBicycleCheck:
	checkitem BICYCLE
	iffalse .NoBicycle
	end

.NoBicycle:
	showemote EMOTE_SHOCK, ROUTE18GATE1F_OFFICER, 15
	opentext
	writetext Route18Gate1FOfficerExcuseMeText
	waitbutton
	closetext
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
        ifequal 4, .HigherTile
        ifequal 5, .LowerTile
.HigherTile
	turnobject PLAYER, UP
	sjump .ok
.LowerTile
	applymovement PLAYER, Route18Gate1FPlayerStepUpMovement
.ok
	opentext
	writetext Route18Gate1FOfficerYouNeedABicycleText
	waitbutton
	closetext
	applymovement PLAYER, Route18Gate1FPlayerStepRightMovement
	end

Route18Gate1FPlayerStepUpMovement:
	step UP
	step_end

Route18Gate1FPlayerStepRightMovement:
	step RIGHT
	; turn_head LEFT
	step_end

Route18Gate1FOfficerText:
	text "CYCLING ROAD is"
	line "all uphill from"
	cont "here."
	done

Route18Gate1FOfficerExcuseMeText:
	text "Excuse me!"
	done

Route18Gate1FOfficerYouNeedABicycleText:
	text "You need a BICYCLE"
	line "for CYCLING ROAD!"
	done

Route18Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_18, 1
	warp_event  0,  5, ROUTE_18, 2
	warp_event  9,  4, ROUTE_18, 3
	warp_event  9,  5, ROUTE_18, 4
	warp_event  9,  7, ROUTE_18_GATE_2F, 1

	def_coord_events
	coord_event  5,  4, SCENE_ROUTE18GATE1F_BICYCLE_CHECK, Route18Gate1FBicycleCheck
	coord_event  5,  5, SCENE_ROUTE18GATE1F_BICYCLE_CHECK, Route18Gate1FBicycleCheck

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route18Gate1FOfficerScript, -1
