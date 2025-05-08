	object_const_def
	const PEWTERCITY_COOLTRAINER_F
	const PEWTERCITY_COOLTRAINER_M
	const PEWTERCITY_SUPER_NERD1
	const PEWTERCITY_SUPER_NERD2
	const PEWTERCITY_YOUNGSTER
	const PEWTERCITY_FRUIT_TREE1
	const PEWTERCITY_FRUIT_TREE2

PewterCity_MapScripts:
	def_scene_scripts
	scene_script PewterCityNoopScene, SCENE_PEWTERCITY_NOOP
	scene_script PewterCityNoopScene, SCENE_PEWTERCITY_NOOP2

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlypointCallback

PewterCityNoopScene:
	setmapscene PEWTER_MUSEUM_OF_SCIENCE_1F, SCENE_PEWTERMUSEUMOFSCIENCE1F_NO_TICKET
	end

PewterCityFlypointCallback:
	setflag ENGINE_FLYPOINT_PEWTER
	endcallback

PewterCityCooltrainerFScript:
	jumptextfaceplayer PewterCityCooltrainerFText
	
PewterCityCooltrainerMScript:
	jumptextfaceplayer PewterCityCooltrainerMText
	
PewterCitySuperNerd1Script:
	faceplayer
	opentext
	writetext PewterCitySuperNerd1DidYouCheckOutMuseumText
	yesorno
	iffalse .No
	writetext PewterCitySuperNerd1WerentThoseFossilsAmazingText
	waitbutton
	closetext
	end
	
.No
	writetext PewterCitySuperNerd1YouHaveToGoText
	promptbutton
	closetext
	playmusic MUSIC_FOLLOW_ME
	readvar VAR_FACING
	ifnotequal DOWN, .NotFacingDown
	applymovement PLAYER, PewterMuseumGuidePlayerMovement
.NotFacingDown
	follow PEWTERCITY_SUPER_NERD1, PLAYER
	applymovement PEWTERCITY_SUPER_NERD1, PewterMuseumGuideMovement1
	stopfollow
	special RestartMapMusic
	opentext
	writetext PewterCitySuperNerd1ItsRightHereText
	waitbutton
	closetext
	applymovement PEWTERCITY_SUPER_NERD1, PewterMuseumGuideMovement2
	disappear PEWTERCITY_SUPER_NERD1
	moveobject PEWTERCITY_SUPER_NERD1, 27, 17
	appear PEWTERCITY_SUPER_NERD1
	end
	
PewterCitySuperNerd2Script:
	faceplayer
	opentext
	writetext PewterCitySuperNerd2DoYouKnowWhatImDoingText
	yesorno
	iffalse .No
	writetext PewterCitySuperNerd2ThatsRightText
	waitbutton
	closetext
	end

.No
	writetext PewterCitySuperNerd2ImSprayingRepelText
	waitbutton
	closetext
	end

PewterCityYoungsterScript:
	faceplayer
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 15
	opentext
	writetext PewterCityYoungsterYoureATrainerFollowMeText
	promptbutton
	closetext
	playmusic MUSIC_FOLLOW_ME
	follow PEWTERCITY_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterLeftMovement
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement1
	stopfollow
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement2
	disappear PEWTERCITY_YOUNGSTER
	moveobject PEWTERCITY_YOUNGSTER, 35, 16
	appear PEWTERCITY_YOUNGSTER
	end
	
PewterCityYoungsterEvent:
	faceplayer
	showemote EMOTE_SHOCK, PEWTERCITY_YOUNGSTER, 15
	turnobject PLAYER, UP
	opentext
	writetext PewterCityYoungsterYoureATrainerFollowMeText
	waitbutton
	closetext
	readvar VAR_YCOORD
        getnum STRING_BUFFER_3
		ifequal 17, .FirstDown
		ifequal 18, .SecondDown
		ifequal 19, .ThirdDown

.FirstDown
	playmusic MUSIC_FOLLOW_ME
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterLeftMovement
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	follow PEWTERCITY_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement1
	stopfollow
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement2
	disappear PEWTERCITY_YOUNGSTER
	moveobject PEWTERCITY_YOUNGSTER, 35, 16
	appear PEWTERCITY_YOUNGSTER
	end

.SecondDown
	playmusic MUSIC_FOLLOW_ME
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterLeftMovement
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	turnobject PLAYER, LEFT
	follow PEWTERCITY_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement1
	stopfollow
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement2
	disappear PEWTERCITY_YOUNGSTER
	moveobject PEWTERCITY_YOUNGSTER, 35, 16
	appear PEWTERCITY_YOUNGSTER
	end

.ThirdDown
	playmusic MUSIC_FOLLOW_ME
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterDownMovement
	follow PEWTERCITY_YOUNGSTER, PLAYER
	applymovement PEWTERCITY_YOUNGSTER,PewterMuseumYoungsterLeftMovement
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement1
	stopfollow
	special RestartMapMusic
	opentext
	writetext PewterCityYoungsterGoTakeOnBrockText
	waitbutton
	closetext
	applymovement PEWTERCITY_YOUNGSTER, PewterMuseumYoungsterMovement2
	disappear PEWTERCITY_YOUNGSTER
	moveobject PEWTERCITY_YOUNGSTER, 35, 16
	appear PEWTERCITY_YOUNGSTER
	end

PewterCitySign:
	jumptext PewterCitySignText

PewterCityGymSign:
	jumptext PewterCityGymSignText

PewterCityMuseumSign:
	jumptext PewterCityMuseumSignText

PewterCityPoliceNoticeSign:
	jumptext PewterCityPoliceNoticeSignText

PewterCityTrainerTipsSign:
	jumptext PewterCityTrainerTipsText

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

PewterCityFruitTree1:
	fruittree FRUITTREE_PEWTER_CITY_1

PewterCityFruitTree2:
	fruittree FRUITTREE_PEWTER_CITY_2

PewterMuseumGuidePlayerMovement:
	step LEFT
	step DOWN
	turn_head RIGHT
	step_end

PewterMuseumGuideMovement1:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

PewterMuseumGuideMovement2:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PewterMuseumYoungsterDownMovement:
	step DOWN
	step_end
	
PewterMuseumYoungsterLeftMovement:
	step LEFT
	step_end

PewterMuseumYoungsterMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

PewterMuseumYoungsterMovement2:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

PewterCityCooltrainerFText:
	text "It's rumored that"
	line "CLEFAIRY came"
	cont "from the moon!"

	para "They appeared "
	line "after MOON STONE"
	cont "fell on MT.MOON."
	done

PewterCityCooltrainerMText:
	text "There aren't many"
	line "serious #MON"
	cont "trainers here!"

	para "They're all like"
	line "BUG CATCHERS,"
	
	para "but PEWTER GYM's"
	line "BROCK is totally"
	cont "into it!"
	done

PewterCitySuperNerd1DidYouCheckOutMuseumText:
	text "Did you check out"
	line "the MUSEUM?"
	done

PewterCitySuperNerd1WerentThoseFossilsAmazingText:
	text "Weren't those"
	line "fossils from MT."
	cont "MOON amazing?"
	done

PewterCitySuperNerd1YouHaveToGoText:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	done

PewterCitySuperNerd1ItsRightHereText:
	text "It's right here!"
	
	para "You have to pay"
	line "to get in, but"
	cont "it's worth it!"
	
	para "See you around!"
	done

PewterCitySuperNerd2DoYouKnowWhatImDoingText:
	text "Psssst!"
	
	para "Do you know what"
	line "I'm doing?"
	done

PewterCitySuperNerd2ThatsRightText:
	text "That's right!"
	line "It's hard work!"
	done

PewterCitySuperNerd2ImSprayingRepelText:
	text "I'm spraying REPEL"
	line "to keep #MON"
	cont "out of my garden!"
	done

PewterCityYoungsterYoureATrainerFollowMeText:
	text "You're a trainer"
	line "right?"

	para "BROCK's looking for"
	line "new challengers!"

	para "Follow me!"
	done

PewterCityYoungsterGoTakeOnBrockText:
	text "If you have the"
	line "right stuff, go"
	cont "take on BROCK!"
	done

PewterCityTrainerTipsText:
	text "TRAINER TIPS"

	para "Any #MON that"
	line "takes part in"
	cont "battle, however"
	cont "short, earns EXP!"
	done

PewterCityPoliceNoticeSignText:
	text "NOTICE!"

	para "Thieves have been"
	line "stealing #MON"
	
	para "fossils at MT."
	line "MOON! Please call"
	
	para "PEWTER POLICE"
	line "with any info!"
	done

PewterCityMuseumSignText:
	text "PEWTER MUSEUM"
	line "OF SCIENCE"
	done

PewterCityGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer!"
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray City"
	done

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 29, 13, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 16, 17, PEWTER_GYM, 1
	warp_event 23, 17, PEWTER_MART, 1
	warp_event 13, 25, PEWTER_POKECENTER_1F, 1
	warp_event  7, 29, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 14,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 1
	warp_event 19,  5, PEWTER_MUSEUM_OF_SCIENCE_1F, 4

	def_coord_events
	coord_event 35, 17, SCENE_PEWTERCITY_NOOP, PewterCityYoungsterEvent
	coord_event 35, 18, SCENE_PEWTERCITY_NOOP, PewterCityYoungsterEvent
	coord_event 35, 19, SCENE_PEWTERCITY_NOOP, PewterCityYoungsterEvent

	def_bg_events
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 11, 17, BGEVENT_READ, PewterCityGymSign
	bg_event 15,  9, BGEVENT_READ, PewterCityMuseumSign
	bg_event 33, 19, BGEVENT_READ, PewterCityPoliceNoticeSign
	bg_event 19, 29, BGEVENT_READ, PewterCityTrainerTipsSign
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign

	def_object_events
	object_event  8, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerFScript, -1
	object_event 17, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityCooltrainerMScript, -1
	object_event 27, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerd1Script, -1
	object_event 26, 25, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCitySuperNerd2Script, -1
	object_event 35, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterCityYoungsterScript, SCENE_PEWTERCITY_NOOP
	object_event 32,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree1, -1
	object_event 30,  3, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterCityFruitTree2, -1
