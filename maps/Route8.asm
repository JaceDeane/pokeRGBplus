	object_const_def
	const ROUTE8_SUPER_NERD1
	const ROUTE8_GAMBLER1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_COOLTRAINER_F1
	const ROUTE8_SUPER_NERD3
	const ROUTE8_COOLTRAINER_F2
	const ROUTE8_COOLTRAINER_F3
	const ROUTE8_GAMBLER2
	const ROUTE8_COOLTRAINER_F4

Route8_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSuperNerdAidan:
	trainer SUPER_NERD, AIDAN, EVENT_BEAT_SUPER_NERD_AIDAN, SuperNerdAidanSeenText, SuperNerdAidanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdAidanAfterBattleText
	waitbutton
	closetext
	end

TrainerGamblerStan:
	trainer GAMBLER, STAN, EVENT_BEAT_GAMBLER_STAN, GamblerStanSeenText, GamblerStanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GamblerStanAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdGlenn:
	trainer SUPER_NERD, GLENN, EVENT_BEAT_SUPER_NERD_GLENN, SuperNerdGlennSeenText, SuperNerdGlennBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdGlennAfterBattleText
	waitbutton
	closetext
	end

TrainerLassPaige:
	trainer LASS, PAIGE, EVENT_BEAT_LASS_PAIGE, LassPaigeSeenText, LassPaigeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassPaigeAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdLeslie:
	trainer SUPER_NERD, LESLIE, EVENT_BEAT_SUPER_NERD_LESLIE, SuperNerdLeslieSeenText, SuperNerdLeslieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdLeslieAfterBattleText
	waitbutton
	closetext
	end

TrainerLassAndrea:
	trainer LASS, ANDREA, EVENT_BEAT_LASS_ANDREA, LassAndreaSeenText, LassAndreaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassAndreaAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMegan:
	trainer LASS, MEGAN, EVENT_BEAT_LASS_MEGAN, LassMeganSeenText, LassMeganBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMeganAfterBattleText
	waitbutton
	closetext
	end

TrainerGamblerRich:
	trainer GAMBLER, RICH, EVENT_BEAT_GAMBLER_RICH, GamblerRichSeenText, GamblerRichBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GamblerRichAfterBattleText
	waitbutton
	closetext
	end

TrainerLassJulia:
	trainer LASS, JULIA, EVENT_BEAT_LASS_JULIA, LassJuliaSeenText, LassJuliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassJuliaAfterBattleText
	waitbutton
	closetext
	end

; TrainerBikerHarris:
	; ;trainer BIKER, HARRIS, EVENT_BEAT_BIKER_HARRIS, BikerHarrisSeenText, BikerHarrisBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext BikerHarrisAfterBattleText
	; waitbutton
	; closetext
	; end

; TrainerBikerZeke:
	; ;trainer BIKER, ZEKE, EVENT_BEAT_BIKER_ZEKE, BikerZekeSeenText, BikerZekeBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext BikerZekeAfterBattleText
	; waitbutton
	; closetext
	; end

; TrainerSupernerdSam:
	; ;trainer SUPER_NERD, SAM, EVENT_BEAT_SUPER_NERD_SAM, SupernerdSamSeenText, SupernerdSamBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext SupernerdSamAfterBattleText
	; waitbutton
	; closetext
	; end

; TrainerSupernerdTom:
	; ;trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SupernerdTomSeenText, SupernerdTomBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext SupernerdTomAfterBattleText
	; waitbutton
	; closetext
	; end

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText

SuperNerdAidanSeenText:
	text "You look good at"
	line "#MON, but"
	cont "how's your chem?"
	done

SuperNerdAidanBeatenText:
	text "Ow! Meltdown!"
	done

SuperNerdAidanAfterBattleText:
	text "I am better at"
	line "school than this!"
	done

GamblerStanSeenText:
	text "All right! Let's"
	line "roll the dice!"
	done

GamblerStanBeatenText:
	text "Drat!"
	line "Came up short!"
	done

GamblerStanAfterBattleText:
	text "Lady Luck's not"
	line "with me today!"
	done

SuperNerdGlennSeenText:
	text "You need strategy"
	line "to win at this!"
	done

SuperNerdGlennBeatenText:
	text "It's not logical!"
	done

SuperNerdGlennAfterBattleText:
	text "Go with GRIMER"
	line "first…and…"
	cont "…and…then…"
	done

LassPaigeSeenText:
	text "I like NIDORAN, so"
	line "I collect them!"
	done

LassPaigeBeatenText:
	text "Why? Why??"
	done

LassPaigeAfterBattleText:
	text "When #MON grow"
	line "up they get ugly!"

	para "They shouldn't"
	line "evolve!"
	done

SuperNerdLeslieSeenText:
	text "School is fun, but"
	line "so are #MON."
	done

SuperNerdLeslieBeatenText: ;syntax grammar
	text "I'll stay with"
	line "school."
	done

SuperNerdLeslieAfterBattleText:
	text "We're stuck here"
	line "because of the"
	cont "gates at SAFFRON."
	done

LassAndreaSeenText:
	text "MEOWTH is so cute,"
	line "meow, meow, meow!"
	done

LassAndreaBeatenText:
	text "Meow!"
	done

LassAndreaAfterBattleText:
	text "I think PIDGEY"
	line "and RATTATA"
	cont "are cute too!"
	done

LassMeganSeenText:
	text "We must look"
	line "silly standing"
	cont "here like this!"
	done

LassMeganBeatenText:
	text "Look what you did!"
	done

LassMeganAfterBattleText:
	text "SAFFRON's gate"
	line "keeper won't let"
	cont "us through."

	para "He's so mean!"
	done

GamblerRichSeenText:
	text "I'm a rambling,"
	line "gambling dude!"
	done

GamblerRichBeatenText:
	text "Missed the big"
	line "score!"
	done

GamblerRichAfterBattleText:
	text "Gambling and"
	line "#MON are like"
	cont "eating peanuts!"

	para "I just can't stop!"
	done

LassJuliaSeenText:
	text "What's a cute,"
	line "round and fluffy"
	cont "#MON?"
	done

LassJuliaBeatenText:
	text "Stop!"

	para "Don't be so mean"
	line "to my CLEFAIRY!"
	done

LassJuliaAfterBattleText:
	text "I heard that"
	line "CLEFAIRY evolves"

	para "when it's exposed"
	line "to a MOON STONE."
	done

Route8UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "LAVENDER TOWN -"
	line "CELADON CITY"
	done


Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 10, ROUTE_8_SAFFRON_GATE, 3
	warp_event  6, 11, ROUTE_8_SAFFRON_GATE, 4
	warp_event 13,  3, ROUTE_8_UNDERGROUND_PATH_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event 17,  3, BGEVENT_READ, Route8UndergroundPathSign

	def_object_events
	object_event  8,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdAidan, -1 ;(3)
	object_event 13,  9, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGamblerStan, -1 ;(5)
	object_event 42,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdGlenn, -1 ;(4)
	object_event 26,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassPaige, -1 ;(13)
	object_event 26,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdLeslie, -1 ;(5)
	object_event 26,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassAndrea, -1 ;(14)
	object_event 26,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassMegan, -1 ;(15)
	object_event 46, 13, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGamblerRich, -1 ;(7)
	object_event 51, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassJulia, -1 ;(16)
