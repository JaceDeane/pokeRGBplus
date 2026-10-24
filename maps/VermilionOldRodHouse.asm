	object_const_def
	const VERMILIONOLDRODHOUSE_FISHING_GURU
	const VERMILIONOLDRODHOUSE_PAPER

VermilionOldRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionOldRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	writetext VermilionOldRodHouseFishingGuruDoYouLikeToFishText
	yesorno
	iffalse .SaidNo
	writetext VermilionOldRodHouseFishingGuruTakeThisText
	promptbutton
	verbosegiveitem OLD_ROD ; syntax? "recieved a OLD ROD!"
	iffalse .BagFull
	writetext VermilionOldRodHouseFishingGuruFishingIsAWayOfLifeText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.SaidNo:
	writetext VermilionOldRodHouseFishingGuruThatsSoDisappointingText
	waitbutton
	closetext
	end

.GotOldRod:
	; writetext VermilionOldRodHouseFishingGuruHowAreTheFishBitingText
	; waitbutton
	; closetext
	; end
	checkevent EVENT_MAGIKARP_REWARD_ON_STANDBY
	iftrue .GetReward
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .NoMagikarp
	; special GetMagikarpSizeRecordInfo ; FR/LG tells you previous size first
	writetext MagikarpMeasure_FishingGuruAllowMeToSeeMagikarpText
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort ;NotRecordMagikarp
	; (FR/LG has a tie option -- ?)
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagikarpMeasure_FishingGuruWhoaTakeThisText
	promptbutton
	verbosegiveitem LURE_BALL; ELIXER in Gen II
	iffalse .BagFull_Reward
	writetext MagikarpMeasure_FishingGuruLookForwardToGreaterRecordsText
	waitbutton
	closetext
	setevent EVENT_SET_MAGIKARP_RECORD
	clearevent EVENT_MAGIKARP_REWARD_ON_STANDBY
	end

.NoMagikarp:
	writetext VermilionOldRodHouseFishingGuruHowAreTheFishBitingText
	waitbutton
	closetext
	end

.TooShort:
	writetext MagikarpMeasure_FishingGuruTooShortText
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext MagikarpMeasure_FishingGuruNotMagikarpText
	waitbutton
	closetext
	end

.Refused:
	writetext MagikarpMeasure_FishingGuruRefusedText
	waitbutton
	closetext
	end

.BagFull_Reward:
	setevent EVENT_MAGIKARP_REWARD_ON_STANDBY
.BagFull:
	writetext VermilionOldRodHouseFishingGuruNoRoomText
	waitbutton
	closetext
	end

MagikarpMeasure_RecordSignScript:
	opentext
	checkevent EVENT_SET_MAGIKARP_RECORD
	iftrue .MagikarpLengthRecord
	writetext MagikarpMeasure_BlankChartText
	waitbutton
	closetext
	end

.MagikarpLengthRecord:
	special MagikarpHouseSign
	closetext
	end

OldRodHousePhoto:
	jumpstd FishingGuruPhotoScript

; FishingDudeText:
	; text "I am the FISHING"
	; line "DUDE, the elder of"
	; cont "the FISHING BROS."

VermilionOldRodHouseFishingGuruDoYouLikeToFishText:
	text "I'm the FISHING"
	line "GURU!"

	para "I simply looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

VermilionOldRodHouseFishingGuruTakeThisText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

VermilionOldRodHouseFishingGuruFishingIsAWayOfLifeText:
;Route12_FishingHouse_Text_IfYouCatchBigMagikarpShowMe
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"

	para "and land the big"
	line "one, young one!"
; Custom text based on FR/LG and opening lines
	para "Now, if you catch"
	line "a big MAGIKARP,"
	cont "I want to see it."
	
	para "I simply looove"
	line "gigantic MAGIKARP!"
	done

VermilionOldRodHouseFishingGuruThatsSoDisappointingText:
	text "Oh… That's so"
	line "disappointing…"
	done

VermilionOldRodHouseFishingGuruHowAreTheFishBitingText:
;Route12_FishingHouse_Text_TryFishingBringMeMagikarp
	text "Hello there,"
	line "<PLAYER>!"

	para "How are the fish"
	line "biting?"

	para "Oh, don't forget"
	line "to bring me any"
	cont "gigantic MAGIKARP."
	done

VermilionOldRodHouseFishingGuruNoRoomText:
	text "Oh no!"

	para "You have no room"
	line "for my gift!"
	done

MagikarpMeasure_FishingGuruAllowMeToSeeMagikarpText:
	text "Oh? <PLAYER>?"

	para "Why, if it isn't a"
	line "MAGIKARP!"

	para "Allow me to see"
	line "it, quick!"
	done

MagikarpMeasure_FishingGuruWhoaTakeThisText:
	text "… … …Whoa!"
	line "@"
	text_ram wStringBuffer1
	text "!"

	para "It's outstanding!"

	para "You must take"
	line "this. I insist!"
	done

MagikarpMeasure_FishingGuruLookForwardToGreaterRecordsText:
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

MagikarpMeasure_FishingGuruTooShortText:
	text "Hmm… This one"
	line "doesn't measure up."

	para "I've seen a bigger"
	line "one before."
	done

MagikarpMeasure_FishingGuruNotMagikarpText:
	text "Uh… That's not a"
	line "MAGIKARP!"
	done

MagikarpMeasure_FishingGuruRefusedText:
	text "Oh…"
	line "Maybe next time."
	done

MagikarpMeasure_BlankChartText:
	text "It's a blank chart"
	line "of some sort."

	para "It has spaces for"
	line "writing in records"
	cont "of some kind."
	done

VermilionOldRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 9
	warp_event  3,  7, VERMILION_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, OldRodHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionOldRodHouseFishingGuruScript, -1
	object_event  4,  3, SPRITE_PAPER, SPRITEMOVEDATA_STILL_ALIGNED, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MagikarpMeasure_RecordSignScript, -1
