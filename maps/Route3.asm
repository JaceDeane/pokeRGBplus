	object_const_def
	const ROUTE3_SUPER_NERD
	const ROUTE3_BUG_CATCHER1
	const ROUTE3_YOUNGSTER1
	const ROUTE3_LASS1
	const ROUTE3_BUG_CATCHER2
	const ROUTE3_LASS2
	const ROUTE3_YOUNGSTER2
	const ROUTE3_BUG_CATCHER3
	const ROUTE3_LASS3

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherColton:
	trainer BUG_CATCHER, COLTON, EVENT_BEAT_BUG_CATCHER_COLTON, BugCatcherColtonSeenText, BugCatcherColtonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherColtonAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterBen:
	trainer YOUNGSTER, BEN, EVENT_BEAT_YOUNGSTER_BEN, YoungsterBenSeenText, YoungsterBenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterBenAfterBattleText
	waitbutton
	closetext
	end

TrainerLassJanice:
	trainer LASS, JANICE, EVENT_BEAT_LASS_JANICE, LassJaniceSeenText, LassJaniceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassJaniceAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherGreg:
	trainer BUG_CATCHER, GREG, EVENT_BEAT_BUG_CATCHER_GREG, BugCatcherGregSeenText, BugCatcherGregBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherGregAfterBattleText
	waitbutton
	closetext
	end

TrainerLassSally:
	trainer LASS, SALLY, EVENT_BEAT_LASS_SALLY, LassSallySeenText, LassSallyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassSallyAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterCalvin:
	trainer YOUNGSTER, CALVIN, EVENT_BEAT_YOUNGSTER_CALVIN, YoungsterCalvinSeenText, YoungsterCalvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterCalvinAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherJames:
	trainer BUG_CATCHER, JAMES, EVENT_BEAT_BUG_CATCHER_JAMES, BugCatcherJamesSeenText, BugCatcherJamesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherJamesAfterBattleText
	waitbutton
	closetext
	end

TrainerLassRobin:
	trainer LASS, ROBIN, EVENT_BEAT_LASS_ROBIN, LassRobinSeenText, LassRobinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassRobinAfterBattleText
	waitbutton
	closetext
	end

Route3SuperNerdScript:
	jumptextfaceplayer Route3SuperNerdText

Route3MtMoonSign:
	jumptext Route3MtMoonSignText

Route3SuperNerdText:
	text "Whew… I better"
	line "take a rest…"
	cont "Groan…"

	para "That tunnel from"
	line "CERULEAN takes a"
	cont "lot out of you!"
	done

BugCatcherColtonSeenText:
	text "Hey! I met you in"
	line "VIRIDIAN FOREST!"
	done

BugCatcherColtonBeatenText:
	text "You beat"
	line "me again!"
	done

BugCatcherColtonAfterBattleText:
	text "There are other"
	line "kinds of #MON"
	cont "than those found"
	cont "in the forest!"
	done

YoungsterBenSeenText:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

YoungsterBenBeatenText:
	text "I don't"
	line "believe it!"
	done

YoungsterBenAfterBattleText:
	text "Are you storing"
	line "your #MON on"
	cont "PC? Each BOX can"
	cont "hold 20 #MON!"
	done

LassJaniceSeenText:
	text "You looked at me,"
	line "didn't you?"
	done

LassJaniceBeatenText:
	text "You're mean!"
	done

LassJaniceAfterBattleText:
	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

BugCatcherGregSeenText:
	text "Are you a trainer?"
	line "Let's fight!"
	done

BugCatcherGregBeatenText:
	text "If I"
	line "had new #MON I"
	cont "would've won!"
	done

BugCatcherGregAfterBattleText:
	text "If a #MON BOX"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another BOX!"
	done

LassSallySeenText:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

LassSallyBeatenText:
	text "Be nice!"
	done

LassSallyAfterBattleText:
	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

YoungsterCalvinSeenText:
	text "Hey! You're not"
	line "wearing shorts!"
	done

YoungsterCalvinBeatenText:
	text "Lost!"
	line "Lost! Lost!"
	done

YoungsterCalvinAfterBattleText:
	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

BugCatcherJamesSeenText:
	text "You can fight my"
	line "new #MON!"
	done

BugCatcherJamesBeatenText:
	text "Done like dinner!"
	done

BugCatcherJamesAfterBattleText:
	text "Trained #MON"
	line "are stronger than"
	cont "the wild ones!"
	done

LassRobinSeenText:
	text "Eek! Did you"
	line "touch me?"
	done

LassRobinBeatenText:
	text "That's it?"
	done

LassRobinAfterBattleText:
	text "ROUTE 4 is at the"
	line "foot of MT.MOON."
	done

Route3MtMoonSignText:
	text "ROUTE 3"
	line "MT.MOON AHEAD"
	done

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 59,  9, BGEVENT_READ, Route3MtMoonSign

	def_object_events
	object_event 57, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route3SuperNerdScript, -1
	object_event 10,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherColton, -1
	object_event 14,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterBen, -1
	object_event 16,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassJanice, -1
	object_event 19,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherGreg, -1
	object_event 23,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassSally, -1
	object_event 22,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterCalvin, -1
	object_event 24,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJames, -1
	object_event 33, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassRobin, -1
