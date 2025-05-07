	object_const_def
	const PEWTERGYM_BROCK
	const PEWTERGYM_CAMPER
	const PEWTERGYM_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_LIAM
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	; clearevent EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	setmapscene ROUTE_22, SCENE_ROUTE22_NOOP ; No longer able to fight Rival on Route 22
	setmapscene PEWTER_CITY, SCENE_PEWTERCITY_NOOP2
	writetext BrockBoulderBadgeText
	waitbutton
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP ; TODO -- New TM
	iftrue .SpeechAfterTM
	writetext BrockWaitTakeThisText
	promptbutton
	verbosegiveitem TM_MUD_SLAP ; TODO -- New TM
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM31_MUD_SLAP ; TODO -- New TM
	writetext BrockTMExplanationText
	waitbutton
	writetext BrockFightDoneText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext BrockFightDoneText
	waitbutton
.NoRoomForTM:
	closetext
	end

TrainerCamperLiam:
	trainer CAMPER, LIAM, EVENT_BEAT_CAMPER_LIAM, CamperLiamSeenText, CamperLiamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperLiamAfterBattleText
	waitbutton
	closetext
	end

PewterGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	writetext PewterGymGuideText
	yesorno
	iffalse .PewterGymGuideDeclinedScript
	writetext PewterGymGuideBeginAdviceText
	waitbutton
	writetext PewterGymGuideAdviceText
	waitbutton
	closetext
	end
	
.PewterGymGuideDeclinedScript:
	writetext PewterGymGuideFreeServiceText
	waitbutton
	closetext
	end

.PewterGymGuideWinScript:
	writetext PewterGymGuideWinText
	waitbutton
	closetext
	end

PewterGymStatue:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

BrockIntroText:
	text "I'm BROCK!"
	line "I'm PEWTER's GYM"
	cont "LEADER!"

	para "I believe in rock-"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#MON are all"
	cont "the rock-type!"

	para "Do you still want"
	line "to challenge me?"
	
	para "Fine then! Show"
	line "me your best!"
	done

BrockWinLossText:
	text "BROCK: I took"
	line "you for granted."

	para "As proof of your"
	line "victory, here's"
	cont "the BOULDERBADGE!"
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> received"
	line "the BOULDERBADGE!"
	done

BrockBoulderBadgeText:
	text "That's an official"
	line "#MON LEAGUE"
	cont "BADGE!"

	para "Its bearer's"
	line "#MON become"
	cont "more powerful!"

	para "The technique"
	line "FLASH can now be"
	cont "used any time!"
	done
	
BrockWaitTakeThisText:
	text "Wait! Take this"
	line "with you!"
	done

BrockTMExplanationText:
	text "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#MON!"

	para "A TM is good only"
	line "once! So when you"
	cont "use one to teach"
	
	para "a new technique,"
	line "pick the #MON"
	cont "carefully!"

	; para "TM34 contains"
	; line "BIDE!"

	; para "Your #MON will"
	; line "absorb damage in"
	; cont "battle, then pay"
	; cont "it back double!"
	
	para "TM31 contains" ; TEMP TEXT
	line "MUD-SLAP."

	para "It reduces the"
	line "enemy's accuracy"

	para "while it causes"
	line "damage."
	done

BrockFightDoneText:
	text "There are all"
	line "kinds of trainers"
	cont "in the world!"

	para "You appear to be"
	line "very gifted as a"
	cont "#MON trainer!"

	para "Go to the GYM in"
	line "CERULEAN and test"
	cont "your abilities!"
	done

CamperLiamSeenText:
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

CamperLiamBeatenText:
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	done

CamperLiamAfterBattleText:
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done

PewterGymGuideText:
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#MON champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"
	done

PewterGymGuideBeginAdviceText:
	text "All right! Let's"
	line "get happening!"
	done

PewterGymGuideAdviceText:
	text "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	cont "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	cont "made easier!"
	done

PewterGymGuideFreeServiceText:
	text "It's a free"
	line "service! Let's"
	cont "get happening!"
	done

PewterGymGuideWinText:
	text "Just as I thought!"
	line "You're #MON"
	cont "champ material!"
	done

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  4,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  3,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperLiam, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
