	object_const_def
	const ROUTE25_YOUNGSTER1
	const ROUTE25_YOUNGSTER2
	const ROUTE25_COOLTRAINER_M
	const ROUTE25_COOLTRAINER_F1
	const ROUTE25_YOUNGSTER3
	const ROUTE25_COOLTRAINER_F2
	const ROUTE25_HIKER1
	const ROUTE25_HIKER2
	const ROUTE25_HIKER3
	const ROUTE25_TM_SEISMIC_TOSS

Route25_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoeySeenText, YoungsterJoeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJoeyAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterDan:
	trainer YOUNGSTER, DAN, EVENT_BEAT_YOUNGSTER_DAN, YoungsterDanSeenText, YoungsterDanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterDanAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperFlint:
	trainer CAMPER, FLINT, EVENT_BEAT_CAMPER_FLINT, CamperFlintSeenText, CamperFlintBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperFlintAfterBattleText
	waitbutton
	closetext
	end

TrainerLassKelsey:
	trainer LASS, KELSEY, EVENT_BEAT_LASS_KELSEY, LassKelseySeenText, LassKelseyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassKelseyAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterChad:
	trainer YOUNGSTER, CHAD, EVENT_BEAT_YOUNGSTER_CHAD, YoungsterChadSeenText, YoungsterChadBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterChadAfterBattleText
	waitbutton
	closetext
	end

TrainerLassHaley:
	trainer LASS, HALEY, EVENT_BEAT_LASS_HALEY, LassHaleySeenText, LassHaleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassHaleyAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerFranklin:
	trainer HIKER, FRANKLIN, EVENT_BEAT_HIKER_FRANKLIN, HikerFranklinSeenText, HikerFranklinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerFranklinAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerNob:
	trainer HIKER, NOB, EVENT_BEAT_HIKER_NOB, HikerNobSeenText, HikerNobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerNobAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerWayne:
	trainer HIKER, WAYNE, EVENT_BEAT_HIKER_WAYNE, HikerWayneSeenText, HikerWayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerWayneAfterBattleText
	waitbutton
	closetext
	end

BillsHouseSign:
	jumptext BillsHouseSignText

Route25TMSeismicToss:
	itemball TM_MUD_SLAP ; TM_SEISMIC_TOSS ; TODO -- TMs

; Route25HiddenPotion:
	; hiddenitem POTION, EVENT_ROUTE_25_HIDDEN_POTION

YoungsterJoeySeenText:
	text "Local trainers"
	line "come here to"
	cont "practice!"
	done

YoungsterJoeyBeatenText:
	text "You're decent."
	done

YoungsterJoeyAfterBattleText:
	text "All #MON have"
	line "weaknesses."
	
	para "It's best to raise"
	line "different kinds."
	done

YoungsterDanSeenText:
	text "Dad took me to a"
	line "great party on"
	
	para "the S.S.ANNE at"
	line "VERMILION CITY!"
	done

YoungsterDanBeatenText:
	text "I'm not mad!"
	done

YoungsterDanAfterBattleText:
	text "On the S.S.ANNE, I"
	line "saw trainers from"
	cont "around the world."
	done

CamperFlintSeenText:
	text "I'm a cool guy."
	
	para "I've got a girl-"
	line "friend!"
	done

CamperFlintBeatenText:
	text "Aww, darn…"
	done

CamperFlintAfterBattleText:
	text "Oh well. My girl"
	line "will cheer me up."
	done

LassKelseySeenText:
	text "Hi! My boyfriend"
	line "is cool!"
	done

LassKelseyBeatenText:
	text "I was in bad"
	line "condition!"
	done

LassKelseyAfterBattleText:
	text "I wish my guy was"
	line "as good as you!"
	done

YoungsterChadSeenText:
	text "I knew I had to"
	line "fight you!"
	done

YoungsterChadBeatenText:
	text "I knew I'd lose,"
	line "too!"
	done

YoungsterChadAfterBattleText:
	text "If your #MON"
	line "gets confused or"
	
	para "falls asleep,"
	line "switch it out!"
	done

LassHaleySeenText:
	text "My friend has a"
	line "cute #MON."
	
	para "I'm so jealous!"
	done

LassHaleyBeatenText:
	text "I'm not so jealous!"
	done

LassHaleyAfterBattleText:
	text "You came from MT."
	line "MOON?"
	
	para "May I have a"
	line "CLEFAIRY?"
	done

HikerFranklinSeenText:
	text "I just got down"
	line "from MT.MOON,"
	cont "but I'm ready!"
	done

HikerFranklinBeatenText:
	text "You worked hard!"
	done

HikerFranklinAfterBattleText:
	text "Drat!"
	
	para "A ZUBAT bit me"
	line "back in there."
	done

HikerNobSeenText:
	text "I'm off to see a"
	line "#MON collector"
	cont "at the cape!"
	done

HikerNobBeatenText:
	text "You got me."
	done

HikerNobAfterBattleText:
	text "The collector has"
	line "many rare kinds"
	cont "of #MON."
	done

HikerWayneSeenText:
	text "You're going to"
	line "see BILL?"
	
	para "First, let's fight!"
	done

HikerWayneBeatenText:
	text "You're something."
	done

HikerWayneAfterBattleText:
	text "The trail below"
	line "is a shortcut to"
	cont "CERULEAN CITY."
	done

BillsHouseSignText:
	text "SEA COTTAGE"
	line "BILL's HOUSE"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 45,  5, BILLS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 43,  5, BGEVENT_READ, BillsHouseSign
	; bg_event  2,  5, BGEVENT_ITEM, Route25HiddenPotion

	def_object_events	
	object_event 14,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterJoey, -1 ; Youngster5
	object_event 18,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterDan, -1 ; Youngster6
	object_event 24,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperFlint, -1 ; Camper2 -- Shared party w Route24 Camper in R/B
	object_event 18, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassKelsey, -1 ; Lass9
	object_event 32,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterChad, -1 ; Youngster7
	object_event 37,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassHaley, -1 ; Lass10
	object_event  8,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerHikerFranklin, -1 ; Hiker2 
	object_event 23, 11, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerNob, -1 ; Hiker3
	object_event 13,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerWayne, -1 ; Hiker4
	object_event 22,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25TMSeismicToss, EVENT_GOT_TM19_SEISMIC_TOSS
	