	object_const_def
	const CERULEANGYM_MISTY
	const CERULEANGYM_LASS
	const CERULEANGYM_SWIMMER_GUY
	const CERULEANGYM_GYM_GUIDE

CeruleanGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymMistyScript:
	faceplayer
	opentext
	;checkflag ENGINE_CASCADEBADGE
	checkevent EVENT_BEAT_MISTY
	iftrue .FightDone
	writetext MistyIntroText
	waitbutton
	closetext
	winlosstext MistyWinLossText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_PICNICKER_DIANA
	setevent EVENT_BEAT_SWIMMERM_LUIS
	opentext
	writetext ReceivedCascadeBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	checkevent EVENT_GOT_TM11_BUBBLEBEAM
	iftrue .SpeechAfterTM
	writetext MistyFightDoneText
	promptbutton
	verbosegiveitem TM_MUD_SLAP ; TODO TM_BUBBLEBEAM
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM11_BUBBLEBEAM
.SpeechAfterTM:
	writetext MistyTMExplanationText
	waitbutton
	closetext
	end

.NoRoomForTM:
	writetext MistyTMNoRoomText
	waitbutton
	closetext
	end


TrainerPicnickerDiana:
	trainer PICNICKER, DIANA, EVENT_BEAT_PICNICKER_DIANA, PicnickerDianaSeenText, PicnickerDianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerDianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermLuis:
	trainer SWIMMERM, LUIS, EVENT_BEAT_SWIMMERM_LUIS, SwimmermLuisSeenText, SwimmermLuisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermLuisAfterBattleText
	waitbutton
	closetext
	end

CeruleanGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuideWinScript
	writetext CeruleanGymGuideText
	waitbutton
	closetext
	end

.CeruleanGymGuideWinScript:
	writetext CeruleanGymGuideWinText
	waitbutton
	closetext
	end

CeruleanGymStatue:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

MistyIntroText:
	text "MISTY: Hi, you're"
	line "a new face!"

	para "Trainers who want"
	line "to turn pro have"
	
	para "to have a policy"
	line "about #MON!"

	para "What is your"
	line "approach when you"
	cont "catch #MON?"

	para "My policy is an"
	line "all-out offensive"
	
	para "with water-type"
	line "#MON!"
	done

MistyWinLossText:
	text "MISTY: Wow!"
	line "You're too much!"

	para "All right!"

	para "You can have the"
	line "CASCADEBADGE to"
	cont "show you beat me!"
	done

ReceivedCascadeBadgeText:
	text "<PLAYER> received"
	line "the CASCADEBADGE."
	done

MistyFightDoneText:
	text "MISTY: The CASCADE"
	line "BADGE makes all"
	
	para "#MON up to Lv30"
	line "obey!"

	para "That includes"
	line "even outsiders!"

	para "There's more, you"
	line "can now use CUT"
	cont "any time!"

	para "You can CUT down"
	line "small bushes to"
	cont "open new paths!"

	para "You can also have"
	line "my favorite TM!"
	done

MistyTMNoRoomText:
	text "You better make"
	line "room for this!"
	done

MistyTMExplanationText:
	text "MISTY: TM11 tea-"
	line "ches BUBBLEBEAM!"

	para "Use it on an"
	line "aquatic #MON!"
	done

PicnickerDianaSeenText:
	text "I'm more than good"
	line "enough for you!"

	para "MISTY can wait!"
	done

PicnickerDianaBeatenText:
	text "You overwhelmed"
	line "me!"
	done

PicnickerDianaAfterBattleText:
	text "You have to face"
	line "other trainers to"
	cont "find out how good"
	cont "you really are."
	done

SwimmermLuisSeenText:
	text "Splash!"

	para "I'm first up!"
	line "Let's do it!"
	done

SwimmermLuisBeatenText:
	text "This can't be!"
	done

SwimmermLuisAfterBattleText:
	text "MISTY is going to"
	line "keep improving!"

	para "She won't lose to"
	line "someone like you!"
	done

CeruleanGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "Here's my advice!"

	para "The LEADER, MISTY,"
	line "is a pro who uses"
	cont "water #MON!"

	para "You can drain all"
	line "their water with"
	cont "plant #MON!"

	para "Or, zap them with"
	line "electricity!"
	done

CeruleanGymGuideWinText:
	text "You beat MISTY!"
	line "What'd I tell ya?"

	para "You and me kid,"
	line "we make a pretty"
	cont "darn good team!"
	done

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, CERULEAN_CITY, 4
	warp_event  5, 13, CERULEAN_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  3, 11, BGEVENT_READ, CeruleanGymStatue
	bg_event  6, 11, BGEVENT_READ, CeruleanGymStatue

	def_object_events
	object_event  4,  2, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymMistyScript, -1
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerDiana, -1
	object_event  8,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermLuis, -1
	object_event  7, 10, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuideScript, -1
