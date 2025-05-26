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

Route24Scene2:
	;disappear ROUTE24_COOLTRAINER_M1 ; Ensures the Rocket Recruiter disappears
	end

; Route24RocketScript:
	; faceplayer
	; playmusic MUSIC_ROCKET_ENCOUNTER
	; opentext
	; writetext Route24RocketSeenText
	; waitbutton
	; closetext
	; winlosstext Route24RocketBeatenText, -1
	; loadtrainer GRUNTM, GRUNTM_31
	; startbattle
	; dontrestartmapmusic
	; reloadmapafterbattle
	; playmusic MUSIC_ROCKET_ENCOUNTER
	; opentext
	; writetext Route24RocketAfterBattleText
	; promptbutton
	; special FadeOutMusic
	; writetext Route24RocketDisappearsText
	; waitbutton
	; closetext
	; special FadeOutToBlack
	; special ReloadSpritesNoPalettes
	; disappear ROUTE24_ROCKET
	; pause 25
	; special FadeInFromBlack
	; playmapmusic
	; end

; Route24CooltrainerM1Text:
	; text_asm
	; ResetEvent EVENT_NUGGET_REWARD_AVAILABLE
	; CheckEvent EVENT_GOT_NUGGET
	; jr nz, .got_item
	; ld hl, .YouBeatOurContestText
	; call PrintText
	; lb bc, NUGGET, 1
	; call GiveItem
	; jr nc, .bag_full
	; SetEvent EVENT_GOT_NUGGET
	; ld hl, .ReceivedNuggetText
	; call PrintText
	; ld hl, .JoinTeamRocketText
	; call PrintText
	; ld hl, wStatusFlags3
	; set BIT_TALKED_TO_TRAINER, [hl]
	; set BIT_PRINT_END_BATTLE_TEXT, [hl]
	; ld hl, .DefeatedText
	; ld de, .DefeatedText
	; call SaveEndBattleTextPointers
	; ldh a, [hSpriteIndex]
	; ld [wSpriteIndex], a
	; call EngageMapTrainer
	; call InitBattleEnemyParameters
	; xor a
	; ldh [hJoyHeld], a
	; ld a, SCRIPT_ROUTE24_AFTER_ROCKET_BATTLE
	; ld [wRoute24CurScript], a
	; ld [wCurMapScript], a
	; jp TextScriptEnd
; .got_item
	; ld hl, .YouCouldBecomeATopLeaderText
	; call PrintText
	; jp TextScriptEnd
; .bag_full
	; ld hl, .NoRoomText
	; call PrintText
	; SetEvent EVENT_NUGGET_REWARD_AVAILABLE
	; jp TextScriptEnd

; .YouBeatOurContestText:
	; text_far _Route24CooltrainerM1YouBeatOurContestText
	; sound_get_item_1
	; text_far _Route24CooltrainerM1YouJustEarnedAPrizeText
	; text_end

; .ReceivedNuggetText:
	; text_far _Route24CooltrainerM1ReceivedNuggetText
	; sound_get_item_1
	; text_promptbutton
	; text_end

; .NoRoomText:
	; text_far _Route24CooltrainerM1NoRoomText
	; text_end

; .JoinTeamRocketText:
	; text_far _Route24CooltrainerM1JoinTeamRocketText
	; text_end

; .DefeatedText:
	; text_far _Route24CooltrainerM1DefeatedText
	; text_end

; .YouCouldBecomeATopLeaderText:
	; text_far _Route24CooltrainerM1YouCouldBecomeATopLeaderText
	; text_end

; Route24AfterRocketBattleScript:
	; ld a, [wIsInBattle]
	; cp $ff
	; jp z, Route24SetDefaultScript
	; call UpdateSprites
	; ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	; ld [wJoyIgnore], a
	; SetEvent EVENT_BEAT_ROUTE24_ROCKET
	; ld a, TEXT_ROUTE24_COOLTRAINER_M1
	; ldh [hTextID], a
	; call DisplayTextID
	; xor a
	; ld [wJoyIgnore], a
	; ld a, SCRIPT_ROUTE24_DEFAULT
	; ld [wRoute24CurScript], a
	; ld [wCurMapScript], a
	; ret

; Trainer***___:
	; trainer BUG_CATCHER, COLTON, EVENT_BEAT_BUG_CATCHER_COLTON, BugCatcherColtonSeenText, BugCatcherColtonBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext BugCatcherColtonAfterBattleText
	; waitbutton
	; closetext
	; end

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
	trainer LASS, ALI, EVENT_BEAT_LASS_ALI, Route24CooltrainerF1BattleText, Route24CooltrainerF1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24CooltrainerF1AfterBattleText
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

Route24ThunderWaveTM:
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

; Route24CooltrainerM1ReceivedNuggetText:
	; text "<PLAYER> received"
	; line "a @"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

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
	coord_event 10, 15, SCENE_ROUTE24_NOOP, ObjectEvent ; Route24...CooltrainerM1/Rocket...Script

	def_bg_events

	def_object_events
	; object_event  9, 15, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
	object_event 11, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_24_ROCKET ; Route24Rocket6Event
	object_event  5, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperShane, -1
	object_event 11, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperEthan, -1
	object_event 10, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassReli, -1
	object_event 11, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerYoungsterTimmy, -1
	object_event 10, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassAli, -1
	object_event 11, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherCale, -1
	object_event 10,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route24ThunderWaveTM, EVENT_GOT_TM49_FURY_CUTTER ; TODO -- THUNDER_WAVE
	;Picnicker
