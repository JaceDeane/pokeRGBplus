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
	writetext Route12SuperRodHouseFishingGuruTryFishingText
	waitbutton
	closetext
	end

.BagFull:
	writetext Route12SuperRodHouseFishingGuruNoRoomText
	waitbutton
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
	text "Fishing is a way"
	line "of life!"

	para "From the seas to"
	line "rivers, go out"

	para "and land the big"
	line "one!"
	done

Route12SuperRodHouseFishingGuruThatsDisappointingText:
	text "Oh… That's so"
	line "disappointing…"
	done

Route12SuperRodHouseFishingGuruTryFishingText:
	text "Hello there,"
	line "<PLAYER>!"

	para "Use the SUPER ROD"
	line "in any water!"

	para "You can catch"
	line "different kinds"
	cont "of #MON."

	para "Try fishing"
	line "wherever you can!"
	done

Route12SuperRodHouseFishingGuruNoRoomText:
	text "Oh no!"

	para "I had a gift for"
	line "you, but you have"
	cont "no room for it!"
	done

Route12SuperRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_12, 4
	warp_event  3,  7, ROUTE_12, 4

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, SuperRodHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1