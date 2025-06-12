	object_const_def
	const VERMILIONOLDRODHOUSE_FISHING_GURU

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
	iffalse .Refused
	writetext VermilionOldRodHouseFishingGuruTakeThisText
	promptbutton
	verbosegiveitem OLD_ROD
	iffalse .BagFull
	writetext VermilionOldRodHouseFishingGuruFishingIsAWayOfLifeText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.Refused:
	writetext VermilionOldRodHouseFishingGuruThatsSoDisappointingText
	waitbutton
	closetext
	end

.GotOldRod:
	writetext VermilionOldRodHouseFishingGuruHowAreTheFishBitingText
	waitbutton
	closetext
	end

.BagFull:
	writetext VermilionOldRodHouseFishingGuruNoRoomText
	waitbutton
	closetext
	end

FishingDudesHousePhoto:
	jumptext FishingDudesHousePhotoText

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
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"

	para "and land the big"
	line "one, young one!"
	done

VermilionOldRodHouseFishingGuruThatsSoDisappointingText:
	text "Oh… That's so"
	line "disappointing…"
	done

VermilionOldRodHouseFishingGuruHowAreTheFishBitingText:
	text "Hello there,"
	line "<PLAYER>!"

	para "How are the fish"
	line "biting?"
	done

VermilionOldRodHouseFishingGuruNoRoomText:
	text "Oh no!"

	para "You have no room"
	line "for my gift!"
	done

FishingDudesHousePhotoText:
	text "It's a photo of"
	line "people fishing…"

	para "They're having a"
	line "great time…"
	done

VermilionOldRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 9
	warp_event  3,  7, VERMILION_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, FishingDudesHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionOldRodHouseFishingGuruScript, -1
