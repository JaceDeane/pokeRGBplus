	object_const_def
	const ROUTE6_COOLTRAINER_M1
	const ROUTE6_LASS1
	const ROUTE6_YOUNGSTER1
	const ROUTE6_COOLTRAINER_M2
	const ROUTE6_LASS2
	const ROUTE6_YOUNGSTER2

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCamperRicky:
	trainer CAMPER, RICKY, EVENT_BEAT_CAMPER_RICKY, CamperRickySeenText, CamperRickyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperRickyAndPicnickerNancyAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerNancy:
	trainer PICNICKER, NANCY, EVENT_BEAT_PICNICKER_NANCY, PicnickerNancySeenText, PicnickerNancyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperRickyAndPicnickerNancyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherKeigo:
	trainer BUG_CATCHER, KEIGO, EVENT_BEAT_BUG_CATCHER_KEIGO, BugCatcherKeigoSeenText, BugCatcherKeigoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherKeigoAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperJeff:
	trainer CAMPER, JEFF, EVENT_BEAT_CAMPER_JEFF, CamperJeffSeenText, CamperJeffBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJeffAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerIsabelle:
	trainer PICNICKER, ISABELLE, EVENT_BEAT_PICNICKER_ISABELLE, PicnickerIsabelleSeenText, PicnickerIsabelleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerIsabelleAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherElijah:
	trainer BUG_CATCHER, ELIJAH, EVENT_BEAT_BUG_CATCHER_ELIJAH, BugCatcherElijahSeenText, BugCatcherElijahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherElijahAfterBattleText
	waitbutton
	closetext
	end

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

CamperRickySeenText:
	text "Who's there?"
	line "Quit listening in"
	cont "on us!"
	done

CamperRickyBeatenText:
	text "I just can't win!"
	done

PicnickerNancySeenText:
	text "Excuse me! This"
	line "is a private"
	cont "conversation!"
	done

PicnickerNancyBeatenText:
	text "Ugh!"
	line "I hate losing!"
	done

CamperRickyAndPicnickerNancyAfterBattleText:
	text "Whisper…"
	line "whisper…"
	done

BugCatcherKeigoSeenText:
	text "There aren't many"
	line "bugs out here."
	done

BugCatcherKeigoBeatenText:
	text "No!"
	line "You're kidding!"
	done

BugCatcherKeigoAfterBattleText:
	text "I like bugs, so"
	line "I'm going back to"
	cont "VIRIDIAN FOREST."
	done

CamperJeffSeenText:
	text "Huh? You want"
	line "to talk to me?"
	done

CamperJeffBeatenText:
	text "I didn't start it!"
	done

CamperJeffAfterBattleText:
	text "I should carry"
	line "more #MON with"
	cont "me for safety."
	done

PicnickerIsabelleSeenText:
	text "Me? Well, OK."
	line "I'll play!"
	done

PicnickerIsabelleBeatenText:
	text "Just didn't work!"
	done

PicnickerIsabelleAfterBattleText:
	text "I want to get"
	line "stronger! What's"
	cont "your secret?"
	done

BugCatcherElijahSeenText:
	text "I've never seen"
	line "you around!"
	cont "Are you good?"
	done

BugCatcherElijahBeatenText:
	text "You are too good!"
	done

BugCatcherElijahAfterBattleText:
	text "Are my #MON"
	line "weak? Or, am I"
	cont "just bad?"
	done

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 13, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event 10,  5, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19, 15, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events	
	object_event 10, 21, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCamperRicky, -1
	object_event 11, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerPicnickerNancy, -1
	object_event  0, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherKeigo, -1
	object_event 11, 31, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJeff, -1
	object_event 11, 30, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerIsabelle, -1
	object_event 19, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherElijah, -1
