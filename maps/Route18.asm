	object_const_def
	const ROUTE18_COOLTRAINER_M1
	const ROUTE18_COOLTRAINER_M2
	const ROUTE18_COOLTRAINER_M3

Route18_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route18AlwaysOnBikeCallback

Route18AlwaysOnBikeCallback:
	readvar VAR_XCOORD
	ifgreater 34, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

TrainerBirdKeeperWilton:
	trainer BIRD_KEEPER, WILTON, EVENT_BEAT_BIRD_KEEPER_WILTON, BirdKeeperWiltonSeenText, BirdKeeperWiltonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperWiltonAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRamiro:
	trainer BIRD_KEEPER, RAMIRO, EVENT_BEAT_BIRD_KEEPER_RAMIRO, BirdKeeperRamiroSeenText, BirdKeeperRamiroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRamiroAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperJacob:
	trainer BIRD_KEEPER, JACOB, EVENT_BEAT_BIRD_KEEPER_JACOB, BirdKeeperJacobSeenText, BirdKeeperJacobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperJacobAfterBattleText
	waitbutton
	closetext
	end

Route18Sign:
	jumptext Route18SignText

Route18CyclingRoadSign:
	jumptext Route18CyclingRoadSignText

BirdKeeperWiltonSeenText:
	text "I always check"
	line "every grassy area"
	cont "for new #MON."
	done

BirdKeeperWiltonBeatenText:
	text "Tch!"
	done ; prompt

BirdKeeperWiltonAfterBattleText:
	text "I wish I had a"
	line "BIKE!"
	done

BirdKeeperRamiroSeenText:
	text "Kurukkoo!"

	para "How do you like"
	line "my bird call?"
	done

BirdKeeperRamiroBeatenText:
	text "I had to bug you!"
	done ; prompt

BirdKeeperRamiroAfterBattleText:
	text "I also collect sea"
	line "#MON on"
	cont "weekends!"
	done

BirdKeeperJacobSeenText:
	text "This is my turf!"
	line "Get out of here!"
	done

BirdKeeperJacobBeatenText:
	text "Darn!"
	done ; prompt

BirdKeeperJacobAfterBattleText:
	text "This is my fave"
	line "#MON hunting"
	cont "area!"
	done

Route18SignText:
	text "ROUTE 18"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done

Route18CyclingRoadSignText:
	text "CYCLING ROAD"

	para "No pedestrians"
	line "permitted!"
	done

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33,  8, ROUTE_18_GATE_1F, 1
	warp_event 33,  9, ROUTE_18_GATE_1F, 2
	warp_event 40,  8, ROUTE_18_GATE_1F, 3
	warp_event 40,  9, ROUTE_18_GATE_1F, 4

	def_coord_events

	def_bg_events
	bg_event 43,  7, BGEVENT_READ, Route18Sign
	bg_event 33,  5, BGEVENT_READ, Route18CyclingRoadSign

	def_object_events
	object_event 36, 11, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperWilton, -1 ; OPP_BIRD_KEEPER, 8
	object_event 40, 15, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRamiro, -1 ; OPP_BIRD_KEEPER, 9
	object_event 42, 13, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperJacob, -1 ; OPP_BIRD_KEEPER, 10
