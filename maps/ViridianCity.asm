	object_const_def
	const VIRIDIANCITY_GRAMPS1
	const VIRIDIANCITY_GRAMPS2
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_LASS
	const VIRIDIANCITY_GRAMPS_ASLEEP
	const VIRIDIANCITY_YOUNGSTER
	const VIRIDIANCITY_YOUNGSTER2
	const VIRIDIANCITY_HIDDEN_POTION

ViridianCity_MapScripts:
	def_scene_scripts
	scene_script ViridianCityOldManScene,   SCENE_VIRIDIAN_CITY_CANT_PASS
	scene_script ViridianCityNoopScene, SCENE_VIRIDIAN_CITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlypointCallback

ViridianCityOldManScene:
	clearevent EVENT_GAMBLER_ASLEEP
	end

ViridianCityNoopScene:
	end

ViridianCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCityGrampsNearGym:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR ; TODO
	iftrue .BlueReturned
	writetext ViridianCityGrampsGymAlwaysClosedText
	waitbutton
	closetext
	end

.BlueReturned:
	writetext ViridianCityGrampsGymLeaderReturnedText
	waitbutton
	closetext
	end

ViridianCityDreamEaterFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityDreamEaterFisherText
	promptbutton
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityDreamEaterFisherGotDreamEaterText
	waitbutton
.NoRoomForDreamEater:
	closetext
	end

ViridianCityOldManScript1:
	opentext
	applymovement PLAYER, ViridianCity_TurnLeftMovement
	writetext ViridianCityOldManSleepyPrivatePropertyText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_TurnStepDownMovement
	end
	
ViridianCityOldManScript2:
	opentext
	writetext ViridianCityOldManSleepyPrivatePropertyText
	waitbutton
	applymovement PLAYER, ViridianCity_TurnDownMovement
	closetext
	end

ViridianCity_TurnLeftMovement:
	turn_head LEFT
	step_end
	
ViridianCity_TurnDownMovement:
	turn_head DOWN
	step_end
	
ViridianCity_TurnStepDownMovement:
	turn_head DOWN
	step DOWN
	step_end
	
; ViridianCity_TurnDownMovement3:
	; jump_step DOWN
	; step_end
	
ViridianCityGirlScript:
	checkevent EVENT_GAMBLER_AWAKE
	iffalse ViridianCityGirlWindingTrailScript
	iftrue ViridianCityGirlHasntHadHisCoffeeYetScript
	end
	
ViridianCityGirlHasntHadHisCoffeeYetScript:
	faceplayer
	opentext
	writetext ViridianCityGirlHasntHadHisCoffeeYetText
	waitbutton
	closetext
	turnobject VIRIDIANCITY_LASS, RIGHT
	end
	
ViridianCityGirlWindingTrailScript:
	faceplayer
	opentext
	writetext ViridianCityGirlWhenIGoShopText
	waitbutton
	closetext
	setevent EVENT_GAMBLER_ASLEEP
	clearevent EVENT_GAMBLER_AWAKE
	end

ViridianCityOldManCatchingTutorialScript:
	faceplayer
	opentext
	writetext ViridianCityOldManHadMyCoffeeNow
	yesorno
	iftrue .Declined
	writetext ViridianCityOldManKnowHowToCatchPokemonText
	waitbutton
	closetext
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext ViridianCityOldManYouNeedToWeakenTheTargetText
	waitbutton
	closetext
	setevent EVENT_LEARNED_TO_CATCH_POKEMON
	end

.Declined:
	writetext ViridianCityOldManTimeIsMoneyText
	waitbutton
	closetext
	end
	
ViridianGymLockedDoorScript:
	pause 5
	turnobject PLAYER, UP
	pause 5
	opentext
	writetext ViridianCityGymLockedText
	waitbutton
	closetext
	applymovement PLAYER, ViridianCity_TurnStepDownMovement
	;playsound SFX_LEDGE_1
	;applymovement PLAYER, ViridianCity_TurnDownMovement3
	;waitsfx
	end
	
ViridianCityYoungster2Script:
	faceplayer
	opentext
	writetext ViridianCityYoungster2YouWantToKnowAboutText
	yesorno
	iffalse .no
	writetext ViridianCityYoungster2CaterpieAndWeedleDescriptionText
	waitbutton
	closetext
	end

.no:
	writetext ViridianCityYoungster2OkThenText
	waitbutton
	closetext
	end

ViridianCityYoungsterScript:
	jumptextfaceplayer ViridianCityYoungster1Text

ViridianCitySign:
	jumptext ViridianCitySignText

ViridianGymSign:
	jumptext ViridianGymSignText
	
ViridianCityTrainerTips1Sign:
	jumptext ViridianCityTrainerTips1Text
	
ViridianCityTrainerTips2Sign:
	jumptext ViridianCityTrainerTips2Text

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

ViridianCityMartSign:
	jumpstd MartSignScript
	
ViridianCityHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_CITY_HIDDEN_POTION

; ViridianCityCoffeeGrampsQuestionText:
	; text "Hey, kid! I just"
	; line "had a double shot"

	; para "of espresso, and"
	; line "I am wired!"

	; para "I need to talk to"
	; line "someone, so you'll"
	; cont "have to do!"

	; para "I might not look"
	; line "like much now, but"

	; para "I was an expert at"
	; line "catching #MON."

	; para "Do you believe me?"
	; done

; ViridianCityCoffeeGrampsBelievedText:
	; text "Good, good. Yes, I"
	; line "was something out"

	; para "of the ordinary,"
	; line "let me tell you!"
	; done

; ViridianCityCoffeeGrampsDoubtedText:
	; text "What? You little"
	; line "whelp!"

	; para "If I were just a"
	; line "bit younger, I'd"

	; para "show you a thing"
	; line "or two. Humph!"
	; done

ViridianCityGrampsGymAlwaysClosedText:
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

ViridianCityGrampsGymLeaderReturnedText:
	text "VIRIDIAN GYM's"
	line "LEADER returned!"
	done

ViridianCityDreamEaterFisherText:
	text "Yawn!"

	para "I must have dozed"
	line "off in the sun."

	para "…I had this dream"
	line "about a DROWZEE"

	para "eating my dream."
	line "Weird, huh?"

	para "Huh?"
	line "What's this?"

	para "Where did this TM"
	line "come from?"

	para "This is spooky!"
	line "Here, you can have"
	cont "this TM."
	done

ViridianCityDreamEaterFisherGotDreamEaterText:
	text "TM42 contains"
	line "DREAM EATER…"

	para "…Zzzzz…"
	done

ViridianCityFisherTM42NoRoomText:
	text "You have too much"
	line "stuff already."
	done

ViridianCityYoungsterText:
	text "I heard that there"
	line "are many items on"

	para "the ground in"
	line "VIRIDIAN FOREST."
	done

ViridianCitySignText:
	text "VIRIDIAN CITY"

	para "The Eternally"
	line "Green Paradise"
	done

ViridianGymSignText:
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "LEADER: …"

	para "The rest of the"
	line "text is illegible…"
	done

ViridianCityYoungster1Text:
	text "Those # BALLs"
	line "at your waist!"
	cont "You have #MON!"

	para "It's great that"
	line "you can carry and"
	cont "use #MON any"
	cont "time, anywhere!"
	done

ViridianCityYoungster2YouWantToKnowAboutText:
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#MON?"
	done

ViridianCityYoungster2OkThenText:
	text "Oh, OK then!"
	done

ViridianCityYoungster2CaterpieAndWeedleDescriptionText:
	text "CATERPIE has no"
	line "poison, but"
	cont "WEEDLE does."

	para "Watch out for its"
	line "POISON STING!"
	done

ViridianCityGirlHasntHadHisCoffeeYetText:
	text "Oh Grandpa! Don't"
	line "be so mean!"
	
	para "He hasn't had his"
	line "coffee yet."
	done

ViridianCityGirlWhenIGoShopText:
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	
	para "winding trail in"
	line "VIRIDIAN FOREST."
	done

ViridianCityOldManSleepyPrivatePropertyText:
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCityOldManHadMyCoffeeNow:
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure you can go"
	line "through!"

	para "Are you in a"
	line "hurry?"
	done

ViridianCityOldManKnowHowToCatchPokemonText:
	text "I see you're using"
	line "a #DEX."

	para "When you catch a"
	line "#MON, #DEX"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#MON?"

	para "I'll show you"
	line "how to then."
	done

ViridianCityOldManTimeIsMoneyText:
	text "Time is money…"
	line "Go along then."
	done

ViridianCityOldManYouNeedToWeakenTheTargetText:
	text "First, you need"
	line "to weaken the"
	cont "target #MON."
	done

ViridianCityTrainerTips1Text:
	text "TRAINER TIPS"

	para "Catch #MON"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianCityTrainerTips2Text:
	text "TRAINER TIPS"

	para "The battle moves"
	line "of #MON are"
	cont "limited by their"
	cont "POWER POINTs, PP."

	para "To replenish PP,"
	line "rest your tired"
	cont "#MON at a"
	cont "#MON CENTER!"
	done

ViridianCityGymLockedText:
	text "The GYM's doors"
	line "are locked…"
	done

ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 21, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1

	def_coord_events
	coord_event  19,  9, SCENE_VIRIDIAN_CITY_CANT_PASS, ViridianCityOldManScript1
	coord_event  32,  8, SCENE_VIRIDIAN_CITY_NOOP, ViridianGymLockedDoorScript

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 27,  7, BGEVENT_READ, ViridianGymSign
	bg_event 19,  1, BGEVENT_READ, ViridianCityTrainerTips1Sign
	bg_event 21, 29, BGEVENT_READ, ViridianCityTrainerTips2Sign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign
	bg_event 14,  4, BGEVENT_ITEM, ViridianCityHiddenPotion

	def_object_events
	object_event 17,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityOldManCatchingTutorialScript, EVENT_GAMBLER_AWAKE
	object_event 30,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, -1
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 17,  9, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityGirlScript, -1
	object_event 18,  9, SPRITE_GRAMPS_ASLEEP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityOldManScript2, EVENT_GAMBLER_ASLEEP
	object_event 13, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungsterScript, -1
	object_event 30, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungster2Script, -1
