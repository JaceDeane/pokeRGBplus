	object_const_def
	const ROUTE16_BIKER1
	const ROUTE16_BIKER2 ; CUE_BALL
	const ROUTE16_BIKER3 ; CUE_BALL
	const ROUTE16_BIKER4
	const ROUTE16_BIKER5 ; CUE_BALL
	const ROUTE16_BIKER6
	const ROUTE16_SNORLAX

Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 9, .CanWalk
	readvar VAR_XCOORD
	ifgreater 23, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

TrainerBikerLao:
	trainer BIKER, LAO, EVENT_BEAT_BIKER_LAO, BikerLaoSeenText, BikerLaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerLaoAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallKoji:
	trainer CUE_BALL, KOJI, EVENT_BEAT_CUE_BALL_KOJI, CueBallKojiSeenText, CueBallKojiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallKojiAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallLuke:
	trainer CUE_BALL, LUKE, EVENT_BEAT_CUE_BALL_LUKE, CueBallLukeSeenText, CueBallLukeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallLukeAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHideo:
	trainer BIKER, HIDEO, EVENT_BEAT_BIKER_HIDEO, BikerHideoSeenText, BikerHideoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerHideoAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallCamron:
	trainer CUE_BALL, CAMRON, EVENT_BEAT_CUE_BALL_CAMRON, CueBallCamronSeenText, CueBallCamronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallCamronAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRuben:
	trainer BIKER, RUBEN, EVENT_BEAT_BIKER_RUBEN, BikerRubenSeenText, BikerRubenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRubenAfterBattleText
	waitbutton
	closetext
	end

Route16SnorlaxScript:
	opentext
	farwritetext SleepingSnorlaxText
	checkitem POKE_FLUTE
	iftrue .Fight
	waitbutton
	sjump Route16DidntCatchSnorlax.end

.Fight:
	promptbutton
	farwritetext UseThePokeFluteText
	yesorno
	iffalse Route16DidntCatchSnorlax.end
	musicfadeout MUSIC_NONE, 1
	farwritetext Text_PlayedPokeFlute
	waitsfx
	playsound SFX_POKEFLUTE
	waitsfx
	closetext
	;fallthrough
PokeFluteSnorlaxRoute16:: ; export (for when you use Poké Flute from pack)
	playmapmusic
	opentext
	farwritetext SnorlaxWokeUpText
	cry SNORLAX
	promptbutton
	farwritetext SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 30
	startbattle
	setevent EVENT_BEAT_ROUTE16_SNORLAX
	disappear ROUTE16_SNORLAX
	ifequal DRAW, Route16DidntCatchSnorlax
	reloadmapafterbattle
	end

Route16DidntCatchSnorlax:
	reloadmapafterbattle
	opentext
	farwritetext SnorlaxCalmedDownText
	waitbutton
.end
	closetext
	end

Route16CyclingRoadSign:
	jumptext Route16CyclingRoadSignText

Route16SignScript:
	jumptext Route16SignText

BikerLaoSeenText:
	text "What do you want?"
	done

BikerLaoBeatenText:
	text "Don't you"
	line "dare laugh!"
	done ; prompt

BikerLaoAfterBattleText:
	text "We like just"
	line "hanging here,"
	cont "what's it to you?"
	done

CueBallKojiSeenText:
	text "Nice BIKE!"
	line "Hand it over!"
	done

CueBallKojiBeatenText:
	text "Knock out!"
	done ; prompt

CueBallKojiAfterBattleText:
	text "Forget it, who"
	line "needs your BIKE!"
	done

CueBallLukeSeenText:
	text "Come out and play,"
	line "little mouse!"
	done

CueBallLukeBeatenText:
	text "You little rat!"
	done ; prompt

CueBallLukeAfterBattleText:
	text "I hate losing!"
	line "Get away from me!"
	done

BikerHideoSeenText:
	text "Hey, you just"
	line "bumped me!"
	done

BikerHideoBeatenText:
	text "Kaboom!"
	done ; prompt

BikerHideoAfterBattleText:
	text "You can also get"
	line "to FUCHSIA from"

	para "VERMILION using a"
	line "coastal road."
	done

CueBallCamronSeenText:
	text "I'm feeling"
	line "hungry and mean!"
	done

CueBallCamronBeatenText:
	text "Bad, bad, bad!"
	done ; prompt

CueBallCamronAfterBattleText:
	text "I like my #MON"
	line "ferocious!"

	para "They tear up"
	line "enemies!"
	done

BikerRubenSeenText:
	text "Sure, I'll go!"
	done

BikerRubenBeatenText:
	text "Don't make me mad!"
	done ; prompt

BikerRubenAfterBattleText:
	text "I like harassing"
	line "people with my"
	cont "vicious #MON!"
	done

Route16CyclingRoadSignText:
	text "Enjoy the slope!"
	line "CYCLING ROAD"
	done

Route16SignText:
	text "ROUTE 16"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done

Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, ROUTE_16_FLY_HOUSE, 1
	warp_event 17, 10, ROUTE_16_GATE_1F, 1
	warp_event 17, 11, ROUTE_16_GATE_1F, 2
	warp_event 24, 10, ROUTE_16_GATE_1F, 3
	warp_event 24, 11, ROUTE_16_GATE_1F, 4
	warp_event 17,  4, ROUTE_16_NORTH_GATE, 1
	warp_event 17,  5, ROUTE_16_NORTH_GATE, 2
	warp_event 24,  4, ROUTE_16_NORTH_GATE, 3
	warp_event 24,  5, ROUTE_16_NORTH_GATE, 4
	
	def_coord_events

	def_bg_events
	bg_event 27, 11, BGEVENT_READ, Route16CyclingRoadSign
	bg_event  5, 17, BGEVENT_READ, Route16SignScript

	def_object_events
	object_event 17, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBikerLao, -1 ; OPP_BIKER, 5
	object_event 14, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCueBallKoji, -1 ; OPP_CUE_BALL, 1
	object_event 11, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCueBallLuke, -1 ; OPP_CUE_BALL, 2
	object_event  9, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBikerHideo, -1 ; OPP_BIKER, 6
	object_event  6, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCueBallCamron, -1 ; OPP_CUE_BALL, 3
	object_event  3, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBikerRuben, -1 ; OPP_BIKER, 7
	object_event 26, 10, SPRITE_SNORLAX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, Route16SnorlaxScript, -1

;SPRITEMOVEDATA_SPINRANDOM_FAST
