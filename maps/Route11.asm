	object_const_def
	const ROUTE11_GAMBLER1
	const ROUTE11_GAMBLER2
	const ROUTE11_YOUNGSTER1
	const ROUTE11_SUPER_NERD1
	const ROUTE11_YOUNGSTER2
	const ROUTE11_GAMBLER3
	const ROUTE11_GAMBLER4
	const ROUTE11_YOUNGSTER3
	const ROUTE11_SUPER_NERD2
	const ROUTE11_YOUNGSTER4

Route11_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGamblerHugo:
	trainer GAMBLER, HUGO, EVENT_BEAT_GAMBLER_HUGO, GamblerHugoSeenText, GamblerHugoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GamblerHugoAfterBattleText
	waitbutton
	closetext
	end

TrainerGamblerJasper:
	trainer GAMBLER, JASPER, EVENT_BEAT_GAMBLER_JASPER, GamblerJasperSeenText, GamblerJasperBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GamblerJasperAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterEddie:
	trainer YOUNGSTER, EDDIE, EVENT_BEAT_YOUNGSTER_EDDIE, YoungsterEddieSeenText, YoungsterEddieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterEddieAfterBattleText
	waitbutton
	closetext
	end

TrainerEngineerBraxton:
	trainer ENGINEER, BRAXTON, EVENT_BEAT_ENGINEER_BRAXTON, EngineerBraxtonSeenText, EngineerBraxtonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EngineerBraxtonAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterDillon:
	trainer YOUNGSTER, DILLON, EVENT_BEAT_YOUNGSTER_DILLON, YoungsterDillonSeenText, YoungsterDillonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterDillonAfterBattleText
	waitbutton
	closetext
	end

TrainerGamblerDirk:
	trainer GAMBLER, DIRK, EVENT_BEAT_GAMBLER_DIRK, GamblerDirkSeenText, GamblerDirkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GamblerDirkAfterBattleText
	waitbutton
	closetext
	end

TrainerGamblerDarian:
	trainer GAMBLER, DARIAN, EVENT_BEAT_GAMBLER_DARIAN, GamblerDarianSeenText, GamblerDarianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GamblerDarianAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterYasu:
	trainer YOUNGSTER, YASU, EVENT_BEAT_YOUNGSTER_YASU, YoungsterYasuSeenText, YoungsterYasuBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterYasuAfterBattleText
	waitbutton
	closetext
	end

TrainerEngineerBernie:
	trainer ENGINEER, BERNIE, EVENT_BEAT_ENGINEER_BERNIE, EngineerBernieSeenText, EngineerBernieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EngineerBernieAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterDave:
	trainer YOUNGSTER, DAVE, EVENT_BEAT_YOUNGSTER_DAVE, YoungsterDaveSeenText, YoungsterDaveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterDaveAfterBattleText
	waitbutton
	closetext
	end

DiglettsCaveSign:
	jumptext DiglettsCaveSignText

; Route11FruitTree:
	; fruittree FRUITTREE_ROUTE_11

; Route11HiddenRevive:
	; hiddenitem REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

GamblerHugoSeenText:
	text "Win, lose or draw!"
	done

GamblerHugoBeatenText:
	text "Atcha!"
	line "Didn't go my way!"
	done

GamblerHugoAfterBattleText:
	text "#MON is life!"
	line "And to live is to"
	cont "gamble!"
	done

GamblerJasperSeenText:
	text "Competition!"
	line "I can't get enough!"
	done

GamblerJasperBeatenText:
	text "I had a chance!"
	done

GamblerJasperAfterBattleText:
	text "You can't be a"
	line "coward in the"
	cont "world of #MON!"
	done

YoungsterEddieSeenText:
	text "Let's go, but"
	line "don't cheat!"
	done

YoungsterEddieBeatenText:
	text "Huh?"
	line "That's not right!"
	done

YoungsterEddieAfterBattleText:
	text "I did my best!"
	line "I have no regrets!"
	done

EngineerBraxtonSeenText:
	text "Careful!"
	line "I'm laying down"
	cont "some cables!"
	done

EngineerBraxtonBeatenText:
	text "That was electric!"
	done

EngineerBraxtonAfterBattleText:
	text "Spread the word"
	line "to save energy!"
	done

YoungsterDillonSeenText:
	text "I just became a"
	line "trainer! But, I"
	cont "think I can win!"
	done

YoungsterDillonBeatenText:
	text "My #MON"
	line "couldn't win!"
	done

YoungsterDillonAfterBattleText:
	text "What do you want?"
	line "Leave me alone!"
	done

GamblerDirkSeenText:
	text "Fwahaha!"
	line "I have never lost!"
	done

GamblerDirkBeatenText:
	text "My first loss!"
	done

GamblerDirkAfterBattleText:
	text "Luck of the draw!"
	line "Just luck!"
	done

GamblerDarianSeenText:
	text "I have never won"
	line "before…"
	done

GamblerDarianBeatenText:
	text "I saw this coming…"
	done

GamblerDarianAfterBattleText:
	text "It's just luck."
	line "Luck of the draw."
	done

YoungsterYasuSeenText:
	text "I'm the best in"
	line "my class!"
	done

YoungsterYasuBeatenText:
	text "Darn!"
	line "I need to make my"
	cont "#MON stronger!"
	done

YoungsterYasuAfterBattleText:
	text "There's a fat"
	line "#MON that"
	cont "comes down from"
	cont "the mountains."

	para "It's strong if you"
	line "can catch it."
	done

EngineerBernieSeenText:
	text "Watch out for"
	line "live wires!"
	done

EngineerBernieBeatenText:
	text "Whoa!"
	line "You spark plug!"
	done

EngineerBernieAfterBattleText:
	text "Well, better get"
	line "back to work."
	done

YoungsterDaveSeenText:
	text "My #MON should"
	line "be ready by now!"
	done

YoungsterDaveBeatenText:
	text "Too much, too"
	line "young!"
	done

YoungsterDaveAfterBattleText:
	text "I better go find"
	line "stronger ones!"
	done

DiglettsCaveSignText:
	text "DIGLETT's CAVE"
	done

Route11_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, DIGLETTS_CAVE, 1
	warp_event 51,  8, ROUTE_11_GATE_1F, 1
	warp_event 51,  9, ROUTE_11_GATE_1F, 2
	warp_event 58,  8, ROUTE_11_GATE_1F, 3
	warp_event 58,  9, ROUTE_11_GATE_1F, 4

	def_coord_events

	def_bg_events
	bg_event  1,  5, BGEVENT_READ, DiglettsCaveSign
	; bg_event 48,  5, BGEVENT_ITEM, Route11HiddenRevive

	def_object_events	
	object_event 10, 14, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGamblerHugo, -1
	object_event 26,  9, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGamblerJasper, -1
	object_event 13,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterEddie, -1
	object_event 36, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerEngineerBraxton, -1
	object_event 22,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterDillon, -1
	object_event 45,  7, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGamblerDirk, -1
	object_event 33,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGamblerDarian, -1
	object_event 43,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterYasu, -1
	object_event 45, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerEngineerBernie, -1
	object_event 22, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerYoungsterDave, -1
