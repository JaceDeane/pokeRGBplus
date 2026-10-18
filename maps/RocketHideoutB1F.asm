	object_const_def
	const ROCKETHIDEOUTB1F_ROCKET1
	const ROCKETHIDEOUTB1F_ROCKET2
	const ROCKETHIDEOUTB1F_ROCKET3
	const ROCKETHIDEOUTB1F_ROCKET4
	const ROCKETHIDEOUTB1F_ROCKET5
	const ROCKETHIDEOUTB1F_ESCAPE_ROPE
	const ROCKETHIDEOUTB1F_HYPER_POTION

RocketHideoutB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RocketHideoutB1FShutterCallback

RocketHideoutB1FShutterCallback:
	checkevent EVENT_ROCKET_HIDEOUT_B1F_DOOR_UNLOCKED
	iftrue .Change
	endcallback

.Change:
	changeblock 12, 8, $0e ; floor
	endcallback

TrainerRocketGrunt8:
	trainer GRUNTM, GRUNTM_8, EVENT_BEAT_ROCKET_GRUNTM_8, TrainerRocketGrunt8SeenText, TrainerRocketGrunt8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt8AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt9:
	trainer GRUNTM, GRUNTM_9, EVENT_BEAT_ROCKET_GRUNTM_9, TrainerRocketGrunt9SeenText, TrainerRocketGrunt9BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt9AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt10:
	trainer GRUNTM, GRUNTM_10, EVENT_BEAT_ROCKET_GRUNTM_10, TrainerRocketGrunt10SeenText, TrainerRocketGrunt10BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt10AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt11:
	trainer GRUNTM, GRUNTM_11, EVENT_BEAT_ROCKET_GRUNTM_11, TrainerRocketGrunt11SeenText, TrainerRocketGrunt11BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt11AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt12:
	trainer GRUNTM, GRUNTM_12, EVENT_BEAT_ROCKET_GRUNTM_12, TrainerRocketGrunt12SeenText, TrainerRocketGrunt12BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt12AfterBattleText
	waitbutton
	closetext
	end

RocketHideoutB1FShutter:
	conditional_event EVENT_ROCKET_HIDEOUT_B1F_DOOR_UNLOCKED, .Script

.Script:
	; checkitem CARD_KEY
	checkevent EVENT_BEAT_ROCKET_GRUNTM_12
	iffalse .end
	; opentext
	; writetext InsertedTheCardKeyText
	; waitbutton
	setevent EVENT_ROCKET_HIDEOUT_B1F_DOOR_UNLOCKED
	playsound SFX_ENTER_DOOR
	changeblock 12, 8, $0e ; floor
	refreshmap
	; closetext
	waitsfx
.end
	end

RocketHideoutB1FEscapeRope:
	itemball ESCAPE_ROPE

RocketHideoutB1FHyperPotion:
	itemball HYPER_POTION

TrainerRocketGrunt8SeenText:
	text "Who are you? How"
	line "did you get here?"
	done

TrainerRocketGrunt8BeatenText:
	text "Oww!"
	line "Beaten!"
	done ; prompt

TrainerRocketGrunt8AfterBattleText:
	text "Are you dissing"
	line "TEAM ROCKET?"
	done

TrainerRocketGrunt9SeenText:
	text "You broke into"
	line "our operation?"
	done

TrainerRocketGrunt9BeatenText:
	text "Burnt!"
	done ; prompt

TrainerRocketGrunt9AfterBattleText:
	text "You're not going"
	line "to get away with"
	cont "this, brat!"
	done

TrainerRocketGrunt10SeenText:
	text "Intruder alert!"
	done

TrainerRocketGrunt10BeatenText:
	text "I can't do it!"
	done ; prompt

TrainerRocketGrunt10AfterBattleText:
	text "SILPH SCOPE?"

	para "I don't know"
	line "where it is!"
	done

TrainerRocketGrunt11SeenText:
	text "Why did you come"
	line "here?"
	done

TrainerRocketGrunt11BeatenText:
	text "This won't do!"
	done ; prompt

TrainerRocketGrunt11AfterBattleText:
	text "OK, I'll talk!"

	line "Take the elevator"
	para "to see the BOSS!"
	done

TrainerRocketGrunt12SeenText:
	text "Are you lost, you"
	line "little rat?"
	done

TrainerRocketGrunt12BeatenText:
	text "Why…?"
	done

TrainerRocketGrunt12AfterBattleText:
	text "Uh-oh, that fight"
	line "opened the door!"
	done

RocketHideoutB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 21,  2, CELADON_GAME_CORNER, 3
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 24, ROCKET_HIDEOUT_B2F, 4
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 2

	def_coord_events

	def_bg_events
	bg_event 24, 16, BGEVENT_IFNOTSET, RocketHideoutB1FShutter
	bg_event 25, 16, BGEVENT_IFNOTSET, RocketHideoutB1FShutter

	def_object_events
	object_event 26,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt8, -1
	object_event 12,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt9, -1
	object_event 18, 17, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt10, -1
	object_event 15, 25, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt11, -1
	object_event 28, 18, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt12, -1
	object_event 11, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FEscapeRope, EVENT_ROCKET_HIDEOUT_B1F_ESCAPE_ROPE
	object_event  9, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB1FHyperPotion, EVENT_ROCKET_HIDEOUT_B1F_HYPER_POTION
