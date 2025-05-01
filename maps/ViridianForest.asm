	object_const_def
	; const VIRIDIANFOREST_YOUNGSTER1
	; const VIRIDIANFOREST_YOUNGSTER2
	; const VIRIDIANFOREST_YOUNGSTER3
	; const VIRIDIANFOREST_YOUNGSTER4
	; const VIRIDIANFOREST_POKE_BALL1
	; const VIRIDIANFOREST_POKE_BALL2
	; const VIRIDIANFOREST_POKE_BALL3
	; const VIRIDIANFOREST_YOUNGSTER5

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

; ViridianForest***:
	; itemball ***
	
; ViridianForest***:
	; itemball ***
	
; ViridianForest***:
	; itemball ***

ViridianForestYoungster1Text:
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done

ViridianForestYoungster2BattleText:
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle 'em!"
	done

ViridianForestYoungster2EndBattleText:
	text "No!"
	line "CATERPIE can't"
	cont "cut it!"
	done

ViridianForestYoungster2AfterBattleText:
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

ViridianForestYoungster3BattleText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

ViridianForestYoungster3EndBattleText:
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	done

ViridianForestYoungster3AfterBattleText:
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

ViridianForestYoungster4BattleText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

ViridianForestYoungster4EndBattleText:
	text "I give! You're"
	line "good at this!"
	done

ViridianForestYoungster4AfterBattleText:
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

ViridianForestYoungster5Text:
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
	text "For poison, use"
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
	cont "Catch only wild"
	cont "#MON!"
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
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 16, 51, VIRIDIAN_FOREST_SOUTH_GATE, 1
	warp_event 17, 51, VIRIDIAN_FOREST_SOUTH_GATE, 2

	def_coord_events

	def_bg_events
	;bg_event 11, 30, BGEVENT_ITEM, Route2HiddenRevive ; Correct formatting
	;----------------
	; bg_event 24, 40, TEXT_VIRIDIANFOREST_TRAINER_TIPS1
	; bg_event 16, 32, TEXT_VIRIDIANFOREST_USE_ANTIDOTE_SIGN
	; bg_event 26, 17, TEXT_VIRIDIANFOREST_TRAINER_TIPS2
	; bg_event  4, 24, TEXT_VIRIDIANFOREST_TRAINER_TIPS3
	; bg_event 18, 45, TEXT_VIRIDIANFOREST_TRAINER_TIPS4
	; bg_event  2,  1, TEXT_VIRIDIANFOREST_LEAVING_SIGN

	def_object_events
	;object_event  8, 4, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForest***Script, -1 ; NON-TRAINER
	;object_event 10, 45, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcher***, -1 ; TRAINER
	;object_event 13, 45, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForest***, EVENT_VIRIDIAN_FOREST_*** ; ITEM BALL
	;
	; object_event 16, 43, SPRITE_YOUNGSTER, STAY, NONE, TEXT_VIRIDIANFOREST_YOUNGSTER1
	; object_event 30, 33, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_VIRIDIANFOREST_YOUNGSTER2, OPP_BUG_CATCHER, 1
	; object_event 30, 19, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_VIRIDIANFOREST_YOUNGSTER3, OPP_BUG_CATCHER, 2
	; object_event  2, 18, SPRITE_YOUNGSTER, STAY, LEFT, TEXT_VIRIDIANFOREST_YOUNGSTER4, OPP_BUG_CATCHER, 3
	; object_event 25, 11, SPRITE_POKE_BALL, STAY, NONE, TEXT_VIRIDIANFOREST_ANTIDOTE, ANTIDOTE
	; object_event 12, 29, SPRITE_POKE_BALL, STAY, NONE, TEXT_VIRIDIANFOREST_POTION, POTION
	; object_event  1, 31, SPRITE_POKE_BALL, STAY, NONE, TEXT_VIRIDIANFOREST_POKE_BALL, POKE_BALL
	; object_event 27, 40, SPRITE_YOUNGSTER, STAY, NONE, TEXT_VIRIDIANFOREST_YOUNGSTER5
