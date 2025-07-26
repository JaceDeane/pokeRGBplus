	object_const_def
	const ROUTE9_LASS1
	const ROUTE9_COOLTRAINER_M1
	const ROUTE9_COOLTRAINER_M2
	const ROUTE9_LASS2
	const ROUTE9_HIKER1
	const ROUTE9_HIKER2
	const ROUTE9_YOUNGSTER1
	const ROUTE9_HIKER3
	const ROUTE9_YOUNGSTER2
	const ROUTE9_TM_TELEPORT

Route9_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPicnickerAlicia:
	trainer PICNICKER, ALICIA, EVENT_BEAT_PICNICKER_ALICIA, PicnickerAliciaSeenText, PicnickerAliciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerAliciaAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperChris:
	trainer CAMPER, CHRIS, EVENT_BEAT_CAMPER_CHRIS, CamperChrisSeenText, CamperChrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperChrisAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperDrew:
	trainer CAMPER, DREW, EVENT_BEAT_CAMPER_DREW, CamperDrewSeenText, CamperDrewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDrewAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerCaitlin:
	trainer PICNICKER, CAITLIN, EVENT_BEAT_PICNICKER_CAITLIN, PicnickerCaitlinSeenText, PicnickerCaitlinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerCaitlinAfterBattleText
	waitbutton
	closetext
	end

; TrainerPicnickerHeidi:
	; trainer PICNICKER, HEIDI, EVENT_BEAT_PICNICKER_HEIDI, PicnickerHeidiSeenText, PicnickerHeidiBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext PicnickerHeidiAfterBattleText
	; waitbutton
	; closetext
	; end

TrainerHikerEric:
	trainer HIKER, ERIC, EVENT_BEAT_HIKER_ERIC, HikerEricSeenText, HikerEricBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerEricAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerBrice:
	trainer HIKER, BRICE, EVENT_BEAT_HIKER_BRICE, HikerBriceSeenText, HikerBriceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerBriceAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherBrent:
	trainer BUG_CATCHER, BRENT, EVENT_BEAT_BUG_CATCHER_BRENT, BugCatcherBrentSeenText, BugCatcherBrentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherBrentAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerAlan:
	trainer HIKER, ALAN, EVENT_BEAT_HIKER_ALAN, HikerAlanSeenText, HikerAlanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerAlanAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherConner:
	trainer BUG_CATCHER, CONNER, EVENT_BEAT_BUG_CATCHER_CONNER, BugCatcherConnerSeenText, BugCatcherConnerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherConnerAfterBattleText
	waitbutton
	closetext
	end

Route9Sign:
	jumptext Route9SignText

Route9TMTeleport:
	itemball TM_TELEPORT

; Route9HiddenEther:
	; hiddenitem ETHER, EVENT_ROUTE_9_HIDDEN_ETHER

PicnickerAliciaSeenText:
	text "You have #MON"
	line "with you!"

	para "You're mine!"
	done

PicnickerAliciaBeatenText:
	text "You deceived me!"
	done

PicnickerAliciaAfterBattleText:
	text "You need light to"
	line "get through that"
	cont "dark tunnel ahead."
	done

CamperChrisSeenText:
	text "Who's that walking"
	line "with those good"
	cont "looking #MON?"
	done

CamperChrisBeatenText:
	text "Out like a light!"
	done

CamperChrisAfterBattleText:
	text "Keep walking!"
	done

CamperDrewSeenText:
	text "I'm taking ROCK"
	line "TUNNEL to go to"
	cont "LAVENDER TOWN…"
	done

CamperDrewBeatenText:
	text "I can't measure up!"
	done

CamperDrewAfterBattleText:
	text "Are you off to"
	line "ROCK TUNNEL too?"
	done

PicnickerCaitlinSeenText:
	text "Don't you dare"
	line "condescend me!"
	done

PicnickerCaitlinBeatenText:
	text "No!"
	line "You're too much!"
	done

PicnickerCaitlinAfterBattleText:
	text "You're obviously"
	line "talented! Good"
	cont "luck to you!"
	done

HikerEricSeenText:
	text "Bwahaha!"

	para "Great! I was"
	line "bored, eh!"
	done

HikerEricBeatenText:
	text "Keep it coming,"
	line "eh!"

	para "Oh wait. I'm out"
	line "of #MON!"
	done

HikerEricAfterBattleText:
	text "You sure had guts"
	line "standing up to me"
	cont "there, eh?"
	done

HikerBriceSeenText:
	text "Hahaha!"

	para "Aren't you a"
	line "little toughie!"
	done

HikerBriceBeatenText:
	text "What's that?"
	done

HikerBriceAfterBattleText:
	text "Hahaha! Kids"
	line "should be tough!"
	done

BugCatcherBrentSeenText:
	text "I got up early"
	line "every day to"

	para "raise my #MON"
	line "from cocoons!"
	done

BugCatcherBrentBeatenText:
	text "WHAT?"

	para "What a total"
	line "waste of time!"
	done

BugCatcherBrentAfterBattleText:
	text "I have to collect"
	line "more than bugs to"
	cont "get stronger…"
	done

HikerAlanSeenText:
	text "Hahahaha!"
	line "Come on, dude!"
	done

HikerAlanBeatenText:
	text "Hahahaha!"
	line "You beat me fair!"
	done

HikerAlanAfterBattleText:
	text "Hahahaha!"

	para "Us hearty guys"
	line "always laugh!"
	done

BugCatcherConnerSeenText:
	text "Go, my super bug"
	line "#MON!"
	done

BugCatcherConnerBeatenText:
	text "My bugs…"
	done

BugCatcherConnerAfterBattleText:
	text "If you don't like"
	line "bug #MON, you"
	cont "bug me!"
	done

Route9SignText:
	text "ROUTE 9"

	para "CERULEAN CITY -"
	line "ROCK TUNNEL"
	done

Route9_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 25,  7, BGEVENT_READ, Route9Sign
	; bg_event  0,  0, BGEVENT_ITEM, Route9HiddenEther

	def_object_events
	object_event 13, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerAlicia, -1 ;(5)
	object_event 24,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperChris, -1;(7) FR/LG "Chris" (8)
	object_event 31,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperDrew, -1;(8) FR/LG "Drew" (9)
	object_event 48,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerCaitlin, -1 ;(6) "Heidi" in G/S
	object_event 16, 15, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerEric, -1;(11) FR/LG "Jeremy" chkT
	object_event 43,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerBrice, -1 ;(6)
	object_event 22,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherBrent, -1 ;13
	object_event 45, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerAlan, -1 ;(5)
	object_event 40,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherConner, -1 ;(14)
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9TMTeleport, EVENT_GOT_TM30_TELEPORT