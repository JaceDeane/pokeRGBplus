	object_const_def
	const FUCHSIAGOODRODHOUSE_FISHING_GURU

FuchsiaGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGoodRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .GotOldRod
	writetext FuchsiaGoodRodHouseFishingGuruText
	yesorno
	iffalse .Refused
	writetext FuchsiaGoodRodHouseFishingGuruTakeThisText
	promptbutton
	verbosegiveitem GOOD_ROD ; syntax? "recieved a GOOD ROD!"
	iffalse .BagFull
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.Refused:
	writetext FuchsiaGoodRodHouseFishingGuruThatsSoDisappointingText
	waitbutton
	closetext
	end

.GotOldRod:
	writetext FuchsiaGoodRodHouseFishingGuruHowAreTheFishText
	waitbutton
	closetext
	end

.BagFull:
	writetext FuchsiaGoodRodHouseFishingGuruNoRoomText
	waitbutton
	closetext
	end

GoodRodHousePhoto:
	jumpstd FishingGuruPhotoScript

FuchsiaGoodRodHouseFishingGuruText:
	text "I'm the FISHING"
	line "GURU's older"
	cont "brother!"

	para "I simply looove"
	line "fishing!"

	para "Do you like to"
	line "fish?"
	done

FuchsiaGoodRodHouseFishingGuruTakeThisText:
	text "Grand! I like"
	line "your style!"

	para "Take this and"
	line "fish, young one!"
	done

FuchsiaGoodRodHouseFishingGuruThatsSoDisappointingText:
	text "Oh… That's so"
	line "disappointing…"
	done

FuchsiaGoodRodHouseFishingGuruHowAreTheFishText:
	text "Hello there,"
	line "<PLAYER>!"

	para "How are the fish"
	line "biting?"
	done

FuchsiaGoodRodHouseFishingGuruNoRoomText:
	text "Oh no!"

	para "You have no room"
	line "for my gift!"
	done

FuchsiaGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, FUCHSIA_CITY, 8
	warp_event  2,  7, FUCHSIA_CITY, 9
	warp_event  3,  7, FUCHSIA_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, GoodRodHousePhoto

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaGoodRodHouseFishingGuruScript, -1
