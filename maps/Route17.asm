	object_const_def
	const ROUTE17_BIKER1 ; CUE_BALL
	const ROUTE17_BIKER2 ; CUE_BALL
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4
	const ROUTE17_BIKER5
	const ROUTE17_BIKER6 ; CUE_BALL
	const ROUTE17_BIKER7 ; CUE_BALL
	const ROUTE17_BIKER8 ; CUE_BALL
	const ROUTE17_BIKER9
	const ROUTE17_BIKER10

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17AlwaysOnBikeCallback

Route17AlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

TrainerCueBallRaul:
	trainer CUE_BALL, RAUL, EVENT_BEAT_CUE_BALL_RAUL, CueBallRaulSeenText, CueBallRaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallRaulAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallIsaiah:
	trainer CUE_BALL, ISAIAH, EVENT_BEAT_CUE_BALL_ISAIAH, CueBallIsaiahSeenText, CueBallIsaiahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallIsaiahAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerVirgil:
	trainer BIKER, VIRGIL, EVENT_BEAT_BIKER_VIRGIL, BikerVirgilSeenText, BikerVirgilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerVirgilAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerBilly:
	trainer BIKER, BILLY, EVENT_BEAT_BIKER_BILLY, BikerBillySeenText, BikerBillyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerBillyAfterBattleText
	waitbutton
	closetext
	end


TrainerBikerNikolas:
	trainer BIKER, NIKOLAS, EVENT_BEAT_BIKER_NIKOLAS, BikerNikolasSeenText, BikerNikolasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerNikolasAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallZeek:
	trainer CUE_BALL, ZEEK, EVENT_BEAT_CUE_BALL_ZEEK, CueBallZeekSeenText, CueBallZeekBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallZeekAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallJamal:
	trainer CUE_BALL, JAMAL, EVENT_BEAT_CUE_BALL_JAMAL, CueBallJamalSeenText, CueBallJamalBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallJamalAfterBattleText
	waitbutton
	closetext
	end

TrainerCueBallCorey:
	trainer CUE_BALL, COREY, EVENT_BEAT_CUE_BALL_COREY, CueBallCoreySeenText, CueBallCoreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CueBallCoreyAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJaxon:
	trainer BIKER, JAXON, EVENT_BEAT_BIKER_JAXON, BikerJaxonSeenText, BikerJaxonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJaxonAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerWilliam:
	trainer BIKER, WILLIAM, EVENT_BEAT_BIKER_WILLIAM, BikerWilliamSeenText, BikerWilliamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerWilliamAfterBattleText
	waitbutton
	closetext
	end

Route17NoticeSign1:
	jumptext Route17NoticeSign1Text

Route17TrainerTips1:
	jumptext Route17TrainerTips1Text

Route17TrainerTips2:
	jumptext Route17TrainerTips2Text

Route17SignScript:
	jumptext Route17SignText

Route17NoticeSign2:
	jumptext Route17NoticeSign2Text

Route17CyclingRoadEndsSign:
	jumptext Route17CyclingRoadEndsSignText


; Route17HiddenMaxEther:
	; hiddenitem MAX_ETHER, EVENT_ROUTE_17_HIDDEN_MAX_ETHER

; Route17HiddenMaxElixer:
	; hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

CueBallRaulSeenText:
	text "There's no money"
	line "in fighting kids!"
	done

CueBallRaulBeatenText:
	text "Burned out!"
	done ; prompt

CueBallRaulAfterBattleText:
	text "Good stuff is"
	line "lying around on"
	cont "CYCLING ROAD!"
	done

CueBallIsaiahSeenText:
	text "What do you want,"
	line "kiddo?"
	done

CueBallIsaiahBeatenText:
	text "Whoo!"
	done ; prompt

CueBallIsaiahAfterBattleText:
	text "I could belly-"
	line "bump you outta"
	cont "here!"
	done

BikerVirgilSeenText:
	text "You heading to"
	line "FUCHSIA?"
	done

BikerVirgilBeatenText: ; BikerCharles(?)
	text "Crash and burn!"
	done ; prompt

BikerVirgilAfterBattleText:
	text "I love racing"
	line "downhill!"
	done

BikerBillySeenText: ; BikerCharles(?)
	text "We're BIKERS!"
	line "Highway stars!"
	done

BikerBillyBeatenText:
	text "Smoked!"
	done ; prompt

BikerBillyAfterBattleText:
	text "Are you looking"
	line "for adventure?"
	done

BikerNikolasSeenText:
	text "Let VOLTORB"
	line "electrify you!"
	done

BikerNikolasBeatenText:
	text "Grounded out!"
	done ; prompt

BikerNikolasAfterBattleText:
	text "I got my VOLTORB"
	line "at the abandoned"
	cont "POWER PLANT."
	done

CueBallZeekSeenText:
	text "My #MON won't"
	line "evolve! Why?"
	done

CueBallZeekBeatenText:
	text "Why, you…!"
	done ; prompt

CueBallZeekAfterBattleText:
	text "Maybe some #MON"
	line "need ELEMENTAL"
	cont "STONES to evolve."
	done

CueBallJamalSeenText:
	text "I need a little"
	line "exercise!"
	done

CueBallJamalBeatenText:
	text "Whew!"
	line "Good workout!"
	done ; prompt

CueBallJamalAfterBattleText:
	text "I'm sure I lost"
	line "weight there!"
	done

CueBallCoreySeenText:
	text "Be a rebel!"
	done

CueBallCoreyBeatenText:
	text "Aaaargh!"
	done ; prompt

CueBallCoreyAfterBattleText:
	text "Be ready to fight"
	line "for your beliefs!"
	done

BikerJaxonSeenText:
	text "Nice BIKE!"
	line "How's it handle?"
	done

BikerJaxonBeatenText:
	text "Shoot!"
	done ; prompt

BikerJaxonAfterBattleText:
	text "This slope makes"
	line "it hard to steer!"
	done

BikerWilliamSeenText:
	text "Get lost kid!"
	line "I'm bushed!"
	done

BikerWilliamBeatenText:
	text "Are you satisfied?"
	done ; prompt

BikerWilliamAfterBattleText:
	text "I need to catch"
	line "a few Zs!"
	done

Route17NoticeSign1Text:
	text "It's a notice!"

	para "Watch out for"
	line "discarded items!"
	done

Route17TrainerTips1Text:
	text "TRAINER TIPS"

	para "All #MON are"
	line "unique."

	para "Even #MON of"
	line "the same type and"

	para "level grow at"
	line "different rates."
	done

Route17TrainerTips2Text:
	text "TRAINER TIPS"

	para "Hold either the A"
	line "or B Button to"

	para "stay in place"
	line "while on a slope."
	done

Route17SignText:
	text "ROUTE 17"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done

Route17NoticeSign2Text:
	text "It's a notice!"

	para "Don't throw the"
	line "game, throw #"
	cont "BALLS instead!"
	done

Route17CyclingRoadEndsSignText:
	text "CYCLING ROAD"
	line "slope ends here!"
	done

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	; bg_event  9, 54, BGEVENT_ITEM, Route17HiddenMaxEther
	; bg_event  8, 77, BGEVENT_ITEM, Route17HiddenMaxElixer
	bg_event  9,  51, BGEVENT_READ, Route17NoticeSign1
	bg_event  9,  63, BGEVENT_READ, Route17TrainerTips1
	bg_event  9,  75, BGEVENT_READ, Route17TrainerTips2
	bg_event  9,  87, BGEVENT_READ, Route17SignScript
	bg_event  9, 111, BGEVENT_READ, Route17NoticeSign2
	bg_event  9, 141, BGEVENT_READ, Route17CyclingRoadEndsSign

	def_object_events
	object_event 12,  19, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerCueBallRaul, -1 ; OPP_CUE_BALL, 4
	object_event 11,  16, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerCueBallIsaiah, -1 ; OPP_CUE_BALL, 5
	object_event  4,  18, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBikerVirgil, -1 ; OPP_BIKER, 8
	object_event  7,  32, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBikerBilly, -1 ; OPP_BIKER, 9
	object_event 14,  34, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBikerNikolas, -1 ;, OPP_BIKER, 10
	object_event 17,  58, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCueBallZeek, -1 ; OPP_CUE_BALL, 6
	object_event  2,  68, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerCueBallJamal, -1 ; OPP_CUE_BALL, 7
	object_event 14,  98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCueBallCorey, -1 ; OPP_CUE_BALL, 8
	object_event  5,  98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBikerJaxon, -1 ; OPP_BIKER, 11
	object_event 10, 118, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBikerWilliam, -1 ; OPP_BIKER, 12
