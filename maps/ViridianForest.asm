	object_const_def
	const VIRIDIANFOREST_BUG_CATCHER1
	const VIRIDIANFOREST_BUG_CATCHER2
	const VIRIDIANFOREST_BUG_CATCHER3
	const VIRIDIANFOREST_BUG_CATCHER4
	const VIRIDIANFOREST_POKE_BALL1
	const VIRIDIANFOREST_POKE_BALL2
	const VIRIDIANFOREST_POKE_BALL3
	const VIRIDIANFOREST_BUG_CATCHER5

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestBugCatcher1Script:
	jumptextfaceplayer ViridianForestBugCatcher1Text

TrainerBugCatcherRick:
	trainer BUG_CATCHER, RICK, EVENT_BEAT_BUG_CATCHER_RICK, BugCatcherRickSeenText, BugCatcherRickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRickAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBugCatcherSammy:
	trainer BUG_CATCHER, SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, BugCatcherSammySeenText, BugCatcherSammyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherSammyAfterBattleText
	waitbutton
	closetext
	end

ViridianForestBugCatcher5Script:
	jumptextfaceplayer ViridianForestBugCatcher5Text

ViridianForestAntidote:
	itemball ANTIDOTE

ViridianForestPotion:
	itemball POTION

ViridianForestPokeBall:
	itemball POKE_BALL

ViridianForestHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION
	
ViridianForestHiddenAntidote:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

ViridianForestTrainerTips1:
	jumptext ViridianForestTrainerTips1Text
	
ViridianForestUseAntidoteSign:
	jumptext ViridianForestUseAntidoteSignText
	
ViridianForestTrainerTips2:
	jumptext ViridianForestTrainerTips2Text

ViridianForestTrainerTips3:
	jumptext ViridianForestTrainerTips3Text
	
ViridianForestTrainerTips4:
	jumptext ViridianForestTrainerTips4Text

ViridianForestLeavingSign:
	jumptext ViridianForestLeavingSignText

ViridianForestBugCatcher1Text:
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done

BugCatcherRickSeenText:
	text "Hey! You have"
	line "#MON! Come on!"
	
	para "Let's battle 'em!"
	done

BugCatcherRickBeatenText:
	text "No!"
	line "CATERPIE can't"
	cont "hack it!"
	done

BugCatcherRickAfterBattleText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

BugCatcherDougSeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

BugCatcherDougBeatenText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	done

BugCatcherDougAfterBattleText:
	text "Darn! I'm going"
	line "to go catch some"
	cont "stronger ones!"
	done

BugCatcherSammySeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

BugCatcherSammyBeatenText:
	text "I give! You're"
	line "good at this!"
	done

BugCatcherSammyAfterBattleText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

ViridianForestBugCatcher5Text:
	text "I ran out of #"
	line "BALLS to catch"
	cont "#MON with!"

	para "You should carry"
	line "extras!"
	done

ViridianForestTrainerTips1Text:
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForestUseAntidoteSignText:
	text "For poison, use an"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTS!"
	done

ViridianForestTrainerTips2Text:
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

ViridianForestTrainerTips3Text:
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	
	para "Catch only wild"
	line "#MON!"
	done

ViridianForestTrainerTips4Text:
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForestLeavingSignText:
	text "NOW LEAVING"
	line "VIRIDIAN FOREST"
	
	para "PEWTER CITY AHEAD"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 16, 51, VIRIDIAN_FOREST_SOUTH_GATE, 1
	warp_event 17, 51, VIRIDIAN_FOREST_SOUTH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 24, 44, BGEVENT_READ, ViridianForestTrainerTips1
	bg_event 16, 36, BGEVENT_READ, ViridianForestUseAntidoteSign
	bg_event 26, 21, BGEVENT_READ, ViridianForestTrainerTips2
	bg_event  4, 28, BGEVENT_READ, ViridianForestTrainerTips3
	bg_event 18, 49, BGEVENT_READ, ViridianForestTrainerTips4
	bg_event  2,  5, BGEVENT_READ, ViridianForestLeavingSign
	bg_event  1, 22, BGEVENT_ITEM, ViridianForestHiddenPotion
	bg_event 16, 46, BGEVENT_ITEM, ViridianForestHiddenAntidote

	def_object_events
	object_event 16, 47, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestBugCatcher1Script, -1
	object_event 30, 37, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRick, -1
	object_event 30, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherDoug, -1
	object_event  2, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherSammy, -1
	object_event 25, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestAntidote, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, EVENT_VIRIDIAN_FOREST_POTION
	object_event  1, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeBall, EVENT_VIRIDIAN_FOREST_POKE_BALL
	object_event 27, 44, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestBugCatcher5Script, -1
