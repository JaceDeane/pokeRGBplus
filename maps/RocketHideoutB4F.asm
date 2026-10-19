	object_const_def
	const ROCKETHIDEOUTB4F_GIOVANNI
	const ROCKETHIDEOUTB4F_ROCKET1
	const ROCKETHIDEOUTB4F_ROCKET2
	const ROCKETHIDEOUTB4F_ROCKET3
	const ROCKETHIDEOUTB4F_HP_UP
	const ROCKETHIDEOUTB4F_TM_RAZOR_WIND
	const ROCKETHIDEOUTB4F_IRON
	const ROCKETHIDEOUTB4F_SILPH_SCOPE
	const ROCKETHIDEOUTB4F_LIFT_KEY

RocketHideoutB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RocketHideoutB4FShutterCallback
	callback MAPCALLBACK_OBJECTS, RocketHideoutB4FSilphScopeLiftKeyCallback
	; callback MAPCALLBACK_OBJECTS, RocketHideoutB4FLiftKeyCallback

RocketHideoutB4FShutterCallback:
	checkevent EVENT_ROCKET_HIDEOUT_B4F_DOOR_UNLOCKED
	iftrue .Change
	endcallback

.Change:
	changeblock 24, 10, $0e ; floor
	endcallback

RocketHideoutB4FSilphScopeLiftKeyCallback:
	checkevent EVENT_BEAT_GIOVANNI_ROCKET_HIDEOUT
	iftrue .ShowSilphScope
	disappear ROCKETHIDEOUTB4F_SILPH_SCOPE
	sjump .SilphScopeDone

.ShowSilphScope
	checkevent EVENT_GOT_SILPH_SCOPE
	iftrue .SilphScopeDone
	appear ROCKETHIDEOUTB4F_SILPH_SCOPE
.SilphScopeDone
	;endcallback
;RocketHideoutB4FLiftKeyCallback:
	checkevent EVENT_BEAT_ROCKET_GRUNTM_18
	iftrue .ShowLiftKey
	disappear ROCKETHIDEOUTB4F_LIFT_KEY
	sjump .End

.ShowLiftKey
	checkevent EVENT_GOT_LIFT_KEY
	iftrue .End
	appear ROCKETHIDEOUTB4F_LIFT_KEY
.End
	endcallback

RocketHideoutB4FGiovanniScript:
	faceplayer
	opentext
	writetext RocketHideoutB4FGiovanniPreBattleText
	playmusic MUSIC_ROCKET_ENCOUNTER ; MUSIC_EVIL_TRAINER_ENCOUNTER
	waitbutton
	closetext
	winlosstext RocketHideoutB4FGiovanniBeatenText, -1
	loadtrainer BOSS_GIOVANNI, GIOVANNI1
	startbattle
	reloadmapafterbattle
	writetext RocketHideoutB4FGiovanniAfterBattleText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear ROCKETHIDEOUTB4F_GIOVANNI
	appear ROCKETHIDEOUTB4F_SILPH_SCOPE
	pause 15
	special FadeInFromBlack
	setevent EVENT_BEAT_GIOVANNI_ROCKET_HIDEOUT
	end

TrainerRocketGrunt16:
	trainer GRUNTM, GRUNTM_16, EVENT_BEAT_ROCKET_GRUNTM_16, TrainerRocketGrunt16SeenText, TrainerRocketGrunt16BeatenText, 0, .Script

.Script:
	checkevent EVENT_ROCKET_HIDEOUT_B4F_DOOR_UNLOCKED
	iftrue .door_unlocked
	scall RocketHideoutB4FShutter.Script
	endifjustbattled
.door_unlocked
	opentext
	writetext TrainerRocketGrunt16AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt17:
	trainer GRUNTM, GRUNTM_17, EVENT_BEAT_ROCKET_GRUNTM_17, TrainerRocketGrunt17SeenText, TrainerRocketGrunt17BeatenText, 0, .Script

.Script:
	checkevent EVENT_ROCKET_HIDEOUT_B4F_DOOR_UNLOCKED
	iftrue .door_unlocked
	scall RocketHideoutB4FShutter.Script
	endifjustbattled
.door_unlocked
	opentext
	writetext TrainerRocketGrunt17AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt18:
	trainer GRUNTM, GRUNTM_18, EVENT_BEAT_ROCKET_GRUNTM_18, TrainerRocketGrunt18SeenText, TrainerRocketGrunt18BeatenText, 0, .Script

.Script:
	; endifjustbattled
	faceplayer
	opentext
	writetext TrainerRocketGrunt18AfterBattleText
	waitbutton
	appear ROCKETHIDEOUTB4F_LIFT_KEY
	closetext
	end

RocketHideoutB4FShutter:
	conditional_event EVENT_ROCKET_HIDEOUT_B4F_DOOR_UNLOCKED, .Script

.Script:
	; checkitem CARD_KEY
	checkevent EVENT_BEAT_ROCKET_GRUNTM_16
	iffalse .end
	checkevent EVENT_BEAT_ROCKET_GRUNTM_17
	iffalse .end
	; opentext
	; writetext InsertedTheCardKeyText
	; waitbutton
	setevent EVENT_ROCKET_HIDEOUT_B4F_DOOR_UNLOCKED
	playsound SFX_ENTER_DOOR
	changeblock 24, 10, $0e ; floor
	refreshmap
	; closetext
	waitsfx
.end
	end

RocketHideoutB4FHPUP:
	itemball HP_UP

RocketHideoutB4FRazorWind:
	itemball TM_RAZOR_WIND

RocketHideoutB4FIron:
	itemball IRON

RocketHideoutB4FSilphScope:
	itemball SILPH_SCOPE

RocketHideoutB4FLiftKey:
	itemball LIFT_KEY

TrainerRocketGrunt16SeenText:
	text "I know you! You"
	line "ruined our plans"
	cont "at MT.MOON!"
	done

TrainerRocketGrunt16BeatenText:
	text "Burned again!"
	done

TrainerRocketGrunt16AfterBattleText:
	text "Do you have"
	line "something against"
	cont "TEAM ROCKET?"
	done

TrainerRocketGrunt17SeenText:
	text "How can you not"
	line "see the beauty of"
	cont "our evil?"
	done

TrainerRocketGrunt17BeatenText:
	text "Ayaya!"
	done

TrainerRocketGrunt17AfterBattleText:
	text "BOSS! I'm sorry I"
	line "failed you!"
	done

TrainerRocketGrunt18SeenText:
	text "The elevator"
	line "doesn't work? Who"
	cont "has the LIFT KEY?"
	done

TrainerRocketGrunt18BeatenText:
	text "No!"
	done

TrainerRocketGrunt18AfterBattleText:
	text "Oh no! I dropped"
	line "the LIFT KEY!"
	done

RocketHideoutB4FGiovanniPreBattleText:
	text "So! I must say,"
	line "I am impressed you"
	cont "got here."

	para "TEAM ROCKET"
	line "captures #MON"

	para "from around the"
	line "world."

	para "They're important"
	line "tools for keeping"

	para "our criminal"
	line "enterprise going."

	para "And I, GIOVANNI,"
	line "am the leader!"

	para "Now… for your"
	line "insolence,"

	para "you will feel"
	line "a world of pain!"
	done

RocketHideoutB4FGiovanniBeatenText:
	text "WHAT!"
	line "This cannot be!"
	done

RocketHideoutB4FGiovanniAfterBattleText:
	text "I see that you"
	line "raise #MON"
	cont "with utmost care."

	para "A child like you"
	line "would never"

	para "understand what I"
	line "hope to achieve."

	para "<……> <……> <……>"

	para "I shall step"
	line "aside this time!"

	para "I hope we meet"
	line "again…"
	done

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 24, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 25, 15, ROCKET_HIDEOUT_ELEVATOR, 2

	def_coord_events

	def_bg_events
	; bg_event 24, 11, BGEVENT_IFNOTSET, RocketHideoutB4FShutter
	; bg_event 25, 11, BGEVENT_IFNOTSET, RocketHideoutB4FShutter

	def_object_events
	object_event 25,  3, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FGiovanniScript, EVENT_BEAT_GIOVANNI_ROCKET_HIDEOUT
	object_event 23, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGrunt16, -1
	object_event 26, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketGrunt17, -1
	object_event 11,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGrunt18, -1
	object_event 10, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FHPUP, EVENT_ROCKET_HIDEOUT_B4F_HP_UP
	object_event  9,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FRazorWind, EVENT_GOT_TM02_RAZOR_WIND
	object_event 12, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FIron, EVENT_ROCKET_HIDEOUT_B4F_IRON
	object_event 25,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FSilphScope, EVENT_GOT_SILPH_SCOPE
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FLiftKey, EVENT_GOT_LIFT_KEY


	; object_event 25,  3, SPRITE_GIOVANNI, STAY, DOWN, TEXT_ROCKETHIDEOUTB4F_GIOVANNI, OPP_GIOVANNI, 1
	; object_event 23, 12, SPRITE_ROCKET, STAY, DOWN, TEXT_ROCKETHIDEOUTB4F_ROCKET1, OPP_ROCKET, 16
	; object_event 26, 12, SPRITE_ROCKET, STAY, DOWN, TEXT_ROCKETHIDEOUTB4F_ROCKET2, OPP_ROCKET, 17
	; object_event 11,  2, SPRITE_ROCKET, STAY, DOWN, TEXT_ROCKETHIDEOUTB4F_ROCKET3, OPP_ROCKET, 18
	; object_event 10, 12, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKETHIDEOUTB4F_HP_UP, HP_UP
	; object_event  9,  4, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKETHIDEOUTB4F_TM_RAZOR_WIND, TM_RAZOR_WIND
	; object_event 12, 20, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKETHIDEOUTB4F_IRON, IRON
	; object_event 25,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKETHIDEOUTB4F_SILPH_SCOPE, SILPH_SCOPE
	; object_event 10,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROCKETHIDEOUTB4F_LIFT_KEY, LIFT_KEY
