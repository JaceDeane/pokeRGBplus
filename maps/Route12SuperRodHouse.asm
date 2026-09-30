	object_const_def
	const ROUTE12SUPERRODHOUSE_FISHING_GURU

Route12SuperRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route12SuperRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
	writetext Route12SuperRodHouseFishingGuruDoYouLikeToFishText
	yesorno
	iffalse .SaidNo
	writetext Route12SuperRodHouseFishingGuruTakeThisText
	promptbutton
	verbosegiveitem SUPER_ROD
	iffalse .BagFull
	writetext Route12SuperRodHouseFishingGuruFishingWayOfLifeText
	waitbutton
	closetext
	setevent EVENT_GOT_SUPER_ROD
	end

.SaidNo:
	writetext Route12SuperRodHouseFishingGuruThatsDisappointingText
	waitbutton
	closetext
	end

.GotSuperRod:
	checkevent EVENT_MAGIKARP_REWARD_ON_STANDBY
	iftrue .GetReward
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .NoMagikarp
	; special GetMagikarpSizeRecordInfo ; FR/LG tells you previous size first
	writetext Route12SuperRodHouseFishingGuruAllowMeToSeeMagikarpText
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort ;NotRecordMagikarp
	; (FR/LG has a tie option -- ?)
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext Route12SuperRodHouseFishingGuruWhoaTakeThisText
	promptbutton
	verbosegiveitem LURE_BALL; ELIXER in Gen II
	iffalse .BagFull_Reward
	writetext Route12SuperRodHouseFishingGuruLookForwardToGreaterRecordsText
	waitbutton
	closetext
	clearevent EVENT_MAGIKARP_REWARD_ON_STANDBY
	end

.NoMagikarp:
	writetext Route12SuperRodHouseFishingGuruTryFishingText
	waitbutton
	closetext
	end

.TooShort:
	writetext Route12SuperRodHouseFishingGuruTooShortText
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext Route12SuperRodHouseFishingGuruNotMagikarpText
	waitbutton
	closetext
	end

.Refused:
	writetext Route12SuperRodHouseFishingGuruRefusedText
	waitbutton
	closetext
	end

.BagFull_Reward:
	setevent EVENT_MAGIKARP_REWARD_ON_STANDBY
.BagFull:
	writetext Route12SuperRodHouseFishingGuruNoRoomText
	waitbutton
	closetext
	end

SuperRodHouseRecordSignScript:
	opentext
	checkevent EVENT_SET_MAGIKARP_RECORD
	iftrue .MagikarpLengthRecord
	writetext Route12SuperRodHouseBlankChartText
	waitbutton
	closetext
	end

.MagikarpLengthRecord:
	special MagikarpHouseSign
	closetext
	end

SuperRodHousePhoto:
	jumpstd FishingGuruPhotoScript

SuperRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

Route12SuperRodHouseFishingGuruDoYouLikeToFishText:
	text "I'm the FISHING"
	line "GURU's younger"
	cont "brother."

	para "I simply looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

Route12SuperRodHouseFishingGuruTakeThisText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

Route12SuperRodHouseFishingGuruFishingWayOfLifeText:
;Route12_FishingHouse_Text_IfYouCatchBigMagikarpShowMe
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"

	para "and land the big"
	line "one!"
; Custom text based on FR/LG and opening lines
	para "Now, if you catch"
	line "a big MAGIKARP,"
	cont "I want to see it."
	
	para "I simply looove"
	line "gigantic MAGIKARP!"
	done

Route12SuperRodHouseFishingGuruThatsDisappointingText:
	text "Oh… That's so"
	line "disappointing…"
	done

Route12SuperRodHouseFishingGuruTryFishingText:
;Route12_FishingHouse_Text_TryFishingBringMeMagikarp
	text "Hello there,"
	line "<PLAYER>!"

	para "Use the SUPER ROD"
	line "in any water!"

	para "You can catch"
	line "different kinds"
	cont "of #MON."

	para "Try fishing"
	line "wherever you can!"
	
	para "Oh, and don't"
	line "forget to bring me"
	cont "gigantic MAGIKARP."
	done

Route12SuperRodHouseFishingGuruAllowMeToSeeMagikarpText:
	text "Oh? <PLAYER>?"

	para "Why, if it isn't a"
	line "MAGIKARP!"

	para "Allow me to see"
	line "it, quick!"
	done

Route12SuperRodHouseFishingGuruWhoaTakeThisText:
	text "… … …Whoa!"
	line "@"
	text_ram wStringBuffer1
	text "!"

	para "It's outstanding!"

	para "You must take"
	line "this. I insist!"
	done

Route12SuperRodHouseFishingGuruLookForwardToGreaterRecordsText:
	text "I'll look forward"
	line "to seeing greater"
	cont "records from you!"
	done

; Route12_FishingHouse_Text_HuhXInchesSameSizeAsLast::
    ; .string "Huh?\n"
    ; .string "{STR_VAR_2} inches?\p"
    ; .string "This is the same size as the one\n"
    ; .string "I saw before.$"

; Route12_FishingHouse_Text_HmmXInchesDoesntMeasureUp::
    ; .string "Hmm…\n"
    ; .string "This one is {STR_VAR_2} inches long.\p"
    ; .string "It doesn't measure up to the\n"
    ; .string "{STR_VAR_3}-inch one you brought before.$"

Route12SuperRodHouseFishingGuruTooShortText:
	text "Hmm… This one"
	line "doesn't measure up."

	para "I've seen a bigger"
	line "one before."
	done

Route12SuperRodHouseFishingGuruNotMagikarpText:
	text "Uh… That's not a"
	line "MAGIKARP!"
	done

Route12SuperRodHouseFishingGuruRefusedText:
	text "Oh…"
	line "Maybe next time."
	done

Route12SuperRodHouseFishingGuruNoRoomText:
	text "Oh no!"

	para "I had a gift for"
	line "you, but you have"
	cont "no room for it!"
	done

Route12SuperRodHouseBlankChartText:
	text "It's a blank chart"
	line "of some sort."

	para "It has spaces for"
	line "writing in records"
	cont "of some kind."
	done

; _FuchsiaGoodRodHouseFishingGuruText::
	; text "I'm the FISHING"
	; line "GURU's older"
	; cont "brother!"
; FuchsiaCity_House2_Text_GoodRodCanCatchBetterMons::
    ; .string "Fishing is a way of life!\n"
    ; .string "It is like the finest poetry.\p"
    ; .string "A crummy OLD ROD could only catch\n"
    ; .string "MAGIKARP, yes?\p"
    ; .string "But with a GOOD ROD, you can\n"
    ; .string "catch much better POKéMON.$"

Route12SuperRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_12, 4
	warp_event  3,  7, ROUTE_12, 4

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, SuperRodHousePhoto

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1
	object_event  4,  3, SPRITE_PAPER, SPRITEMOVEDATA_STILL_ALIGNED, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SuperRodHouseRecordSignScript, -1
