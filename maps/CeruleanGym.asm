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
	checkflag ENGINE_CASCADEBADGE
	iftrue .FightDone
	writetext MistyIntroText
	waitbutton
	closetext
	winlosstext MistyWinLossText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	; setevent EVENT_BEAT_PICNICKER_???
	; setevent EVENT_BEAT_SWIMMERM_???
	opentext
	writetext ReceivedCascadeBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	writetext MistyFightDoneText
	waitbutton
	closetext
	end

TrainerPicnickerNAME:
	;trainer PICNICKER, NAME, EVENT_BEAT_PICNICKER_???, SwimmerfDianaSeenText, SwimmerfDianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	;writetext SwimmerfDianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermNAME:
	;trainer SWIMMERM, NAME, EVENT_BEAT_SWIMMERM_???, SwimmermParkerSeenText, SwimmermParkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	;writetext SwimmermParkerAfterBattleText
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

; CeruleanGymStatue1:
	; checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	; iffalse CeruleanGymStatue
	; opentext
	; writetext CeruleanGymNote1Text
	; waitbutton
	; closetext
	; end

; CeruleanGymStatue2:
	; checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	; iffalse CeruleanGymStatue
	; opentext
	; writetext CeruleanGymNote2Text
	; waitbutton
	; closetext
	; end

CeruleanGymStatue:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

CeruleanGymNote1Text:
	text "Sorry, I'll be out"
	line "for a while."
	cont "MISTY, GYM LEADER"
	done

CeruleanGymNote2Text:
	text "Since MISTY's out,"
	line "we'll be away too."
	cont "GYM TRAINERS"
	done

MistyIntroText:
	text "MISTY: I was ex-"
	line "pecting you, you"
	cont "pest!"

	para "You may have a"
	line "lot of JOHTO GYM"

	para "BADGES, but you'd"
	line "better not take me"
	cont "too lightly."

	para "My water-type"
	line "#MON are tough!"
	done

MistyWinLossText:
	text "MISTY: You really"
	line "are good…"

	para "I'll admit that"
	line "you are skilled…"

	para "Here you go. It's"
	line "CASCADEBADGE."
	done

ReceivedCascadeBadgeText:
	text "<PLAYER> received"
	line "CASCADEBADGE."
	done

MistyFightDoneText:
	text "MISTY: Are there"
	line "many strong train-"
	cont "ers in JOHTO? Like"
	cont "you, I mean."

	para "I'm going to"
	line "travel one day, so"

	para "I can battle some"
	line "skilled trainers."
	done

SwimmerfDianaSeenText:
	text "Sorry about being"
	line "away. Let's get on"
	cont "with it!"
	done

SwimmerfDianaBeatenText:
	text "I give up! You're"
	line "the winner!"
	done

SwimmerfDianaAfterBattleText:
	text "I'll be swimming"
	line "quietly."
	done

SwimmerfBrianaSeenText:
	text "Don't let my ele-"
	line "gant swimming un-"
	cont "nerve you."
	done

SwimmerfBrianaBeatenText:
	text "Ooh, you calmly"
	line "disposed of me…"
	done

SwimmerfBrianaAfterBattleText:
	text "Don't be too smug"
	line "about beating me."

	para "MISTY will destroy"
	line "you if you get"
	cont "complacent."
	done

SwimmermParkerSeenText:
	text "Glub…"

	para "I'm first! Come"
	line "and get me!"
	done

SwimmermParkerBeatenText:
	text "This can't be…"
	done

SwimmermParkerAfterBattleText:
	text "MISTY has gotten"
	line "much better in the"
	cont "past few years."

	para "Don't let your"
	line "guard down, or"
	cont "you'll be crushed!"
	done

CeruleanGymGuideText:
	text "Yo! CHAMP in"
	line "making!"

	para "Since MISTY was"
	line "away, I went out"

	para "for some fun too."
	line "He-he-he."
	done

CeruleanGymGuideWinText:
	text "Hoo, you showed me"
	line "how tough you are."

	para "As always, that"
	line "was one heck of a"
	cont "great battle!"
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
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerNAME, -1
	object_event  8,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermNAME, -1
	object_event  7, 10, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuideScript, -1
