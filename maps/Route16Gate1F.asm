	object_const_def
	const ROUTE16GATE1F_OFFICER

Route16Gate1F_MapScripts:
	def_scene_scripts
	scene_script Route16Gate1FNoopScene, SCENE_ROUTE161FGATE_BICYCLE_CHECK

	def_callbacks

Route16Gate1FNoopScene:
	end

Route16Gate1FOfficerScript:
	jumptextfaceplayer Route16Gate1FOfficerText

Route16Gate1FBicycleCheck:
	checkitem BICYCLE
	iffalse .NoBicycle
	end

.NoBicycle:
	showemote EMOTE_SHOCK, ROUTE16GATE1F_OFFICER, 15
	opentext
	writetext Route16Gate1FOfficerWaitUpText
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
	applymovement PLAYER, Route16Gate1FPlayerStepUpMovement
.ok
	opentext
	writetext Route16Gate1FOfficerNoPedestriansText
	waitbutton
	closetext
	applymovement PLAYER, Route16Gate1FPlayerStepRightMovement
	end

Route16Gate1FPlayerStepUpMovement:
	step UP
	step_end

Route16Gate1FPlayerStepRightMovement:
	step RIGHT
	; turn_head LEFT
	step_end

Route16Gate1FOfficerText:
	text "CYCLING ROAD is a"
	line "downhill course"
	cont "by the sea."

	para "It's a great ride."
	done

Route16Gate1FOfficerWaitUpText:
	text "Excuse me!"
	line "Wait up please!"
	done

Route16Gate1FOfficerNoPedestriansText:
	text "No pedestrians"
	line "are allowed on"
	cont "CYCLING ROAD!"
	done

Route16Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_16, 2
	warp_event  0,  5, ROUTE_16, 3
	warp_event  9,  4, ROUTE_16, 4
	warp_event  9,  5, ROUTE_16, 5
	warp_event  9,  7, ROUTE_16_GATE_2F, 1

	def_coord_events
	coord_event  5,  4, SCENE_ROUTE161FGATE_BICYCLE_CHECK, Route16Gate1FBicycleCheck
	coord_event  5,  5, SCENE_ROUTE161FGATE_BICYCLE_CHECK, Route16Gate1FBicycleCheck

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route16Gate1FOfficerScript, -1
