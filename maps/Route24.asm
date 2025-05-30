	object_const_def
	const ROUTE24_COOLTRAINER_M1
	const ROUTE24_COOLTRAINER_M2
	const ROUTE24_COOLTRAINER_M3
	const ROUTE24_COOLTRAINER_F1
	const ROUTE24_YOUNGSTER1
	const ROUTE24_COOLTRAINER_F2
	const ROUTE24_YOUNGSTER2
	const ROUTE24_TM_THUNDER_WAVE

Route24_MapScripts:
	def_scene_scripts
	scene_script Route24NoopScene, SCENE_ROUTE24_NOOP
	scene_script Route24NoopScene, SCENE_ROUTE24_ROCKET_DEFEATED

	def_callbacks

Route24NoopScene:
	end

Route24CooltrainerM1Event:
	turnobject PLAYER, RIGHT
Route24CooltrainerM1Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROCKET_GRUNTM_6
	iftrue .beaten_grunt
	checkevent EVENT_GOT_NUGGET
	iftrue .got_item
	writetext Route24CooltrainerM1YouBeatOurContestText
	waitbutton
	writetext Route24CooltrainerM1YouJustEarnedAPrizeText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .bag_full
	setevent EVENT_GOT_NUGGET
.got_item
	writetext Route24CooltrainerM1JoinTeamRocketText
	playmusic MUSIC_EVIL_TRAINER_ENCOUNTER
	waitbutton
	closetext
	winlosstext Route24CooltrainerM1DefeatedText, -1
	loadtrainer GRUNTM, GRUNTM_6
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_GRUNTM_6
	setscene SCENE_ROUTE24_ROCKET_DEFEATED
	; fallthrough
.beaten_grunt
	writetext Route24CooltrainerM1YouCouldBecomeATopLeaderText
	waitbutton
	closetext
	end
.bag_full
	writetext Route24CooltrainerM1NoRoomText
	waitbutton
	closetext
	end

TrainerCamperShane:
	trainer CAMPER, SHANE, EVENT_BEAT_CAMPER_SHANE, Route24CooltrainerM2BattleText, Route24CooltrainerM2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24CooltrainerM2AfterBattleText
	waitbutton
	closetext
	end

TrainerCamperEthan:
	trainer CAMPER, ETHAN, EVENT_BEAT_CAMPER_ETHAN, Route24CooltrainerM3BattleText, Route24CooltrainerM3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24CooltrainerM3AfterBattleText
	waitbutton
	closetext
	end

TrainerLassReli:
	trainer LASS, RELI, EVENT_BEAT_LASS_RELI, Route24CooltrainerF1BattleText, Route24CooltrainerF1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24CooltrainerF1AfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterTimmy:
	trainer YOUNGSTER, TIMMY, EVENT_BEAT_YOUNGSTER_TIMMY, Route24Youngster1BattleText, Route24Youngster1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24Youngster1AfterBattleText
	waitbutton
	closetext
	end

TrainerLassAli:
	trainer LASS, ALI, EVENT_BEAT_LASS_ALI, Route24CooltrainerF2BattleText, Route24CooltrainerF2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24CooltrainerF2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherCale:
	trainer BUG_CATCHER, CALE, EVENT_BEAT_BUG_CATCHER_CALE, Route24Youngster2BattleText, Route24Youngster2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24Youngster2AfterBattleText
	waitbutton
	closetext
	end

Route24ThunderWaveTM45:
	itemball TM_MUD_SLAP ; TODO -- THUNDER_WAVE

Route24CooltrainerM1YouBeatOurContestText:
	text "Congratulations!"
	line "You beat our five"
	cont "contest trainers!"
	done

Route24CooltrainerM1YouJustEarnedAPrizeText:
	text "You just earned a"
	line "fabulous prize!"
	done

Route24CooltrainerM1NoRoomText:
	text "You don't have"
	line "any room!"
	done

Route24CooltrainerM1JoinTeamRocketText:
	text "By the way, would"
	line "you like to join"
	cont "TEAM ROCKET?"

	para "We're a group"
	line "dedicated to evil"
	cont "using #MON!"

	para "Want to join?"

	para "Are you sure?"

	para "Come on, join us!"

	para "I'm telling you"
	line "to join!"

	para "OK, you need"
	line "convincing!"

	para "I'll make you an"
	line "offer you can't"
	cont "refuse!"
	done

Route24CooltrainerM1DefeatedText:
	text "Arrgh!"
	line "You are good!"
	done

Route24CooltrainerM1YouCouldBecomeATopLeaderText:
	text "With your ability,"
	line "you could become"
	cont "a top leader in"
	cont "TEAM ROCKET!"
	done

Route24CooltrainerM2BattleText:
	text "I saw your feat"
	line "from the grass!"
	done

Route24CooltrainerM2EndBattleText:
	text "I thought not!"
	done

Route24CooltrainerM2AfterBattleText:
	text "I hid because the"
	line "people on the"
	cont "bridge scared me!"
	done

Route24CooltrainerM3BattleText:
	text "OK! I'm No. 5!"
	line "I'll stomp you!"
	done

Route24CooltrainerM3EndBattleText:
	text "Whoa!"
	line "Too much!"
	done

Route24CooltrainerM3AfterBattleText:
	text "I did my best, I"
	line "have no regrets!"
	done

Route24CooltrainerF1BattleText:
	text "I'm No. 4!"
	line "Getting tired?"
	done

Route24CooltrainerF1EndBattleText:
	text "I lost too!"
	done

Route24CooltrainerF1AfterBattleText:
	text "I did my best, so"
	line "I've no regrets!"
	done

Route24Youngster1BattleText:
	text "Here's No. 3!"
	line "I won't be easy!"
	done

Route24Youngster1EndBattleText:
	text "Ow!"
	line "Stomped flat!"
	done

Route24Youngster1AfterBattleText:
	text "I did my best, I"
	line "have no regrets!"
	done

Route24CooltrainerF2BattleText:
	text "I'm second!"
	line "Now it's serious!"
	done

Route24CooltrainerF2EndBattleText:
	text "How could I"
	line "lose?"
	done

Route24CooltrainerF2AfterBattleText:
	text "I did my best, I"
	line "have no regrets!"
	done

Route24Youngster2BattleText:
	text "This is NUGGET"
	line "BRIDGE! Beat us 5"
	cont "trainers and win"
	cont "a fabulous prize!"

	para "Think you got"
	line "what it takes?"
	done

Route24Youngster2EndBattleText:
	text "Whoo!"
	line "Good stuff!"
	done

Route24Youngster2AfterBattleText:
	text "I did my best, I"
	line "have no regrets!"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 10, 15, SCENE_ROUTE24_NOOP, Route24CooltrainerM1Event

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24CooltrainerM1Script, -1
	object_event  5, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperShane, -1
	object_event 11, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperEthan, -1
	object_event 10, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassReli, -1
	object_event 11, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerYoungsterTimmy, -1
	object_event 10, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassAli, -1
	object_event 11, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherCale, -1
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route24ThunderWaveTM45, EVENT_GOT_TM45_THUNDER_WAVE
