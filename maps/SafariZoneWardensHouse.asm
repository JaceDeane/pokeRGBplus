	object_const_def
	const SAFARIZONEWARDENSHOUSE_WARDEN
	const SAFARIZONEWARDENSHOUSE_RARE_CANDY
	const SAFARIZONEWARDENSHOUSE_BOULDER

SafariZoneWardensHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneWarden:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .got_strength
	checkevent EVENT_GAVE_GOLD_TEETH
	iftrue .gave_gold_teeth
	checkitem GOLD_TEETH
	iftrue .have_gold_teeth
	writetext WardensHouseWardenGibberish1Text
	yesorno
	iftrue .yes
	writetext WardensHouseWardenGibberish3Text
	sjump .done

.yes
	writetext WardensHouseWardenGibberish2Text
	sjump .done

.have_gold_teeth
	writetext WardensHouseWardenGaveTheGoldTeethText
	waitsfx
	playsound SFX_RB_ITEM_1
	takeitem GOLD_TEETH
	waitsfx
		promptbutton
	writetext WardensHouseWardenPoppedInHisTeethText
	promptbutton
	setevent EVENT_GAVE_GOLD_TEETH
.gave_gold_teeth
	writetext WardensHouseWardenThanksText
	promptbutton
	verbosegiveitem HM_STRENGTH
	iffalse .bag_full
	itemnotify
	setevent EVENT_GOT_HM04_STRENGTH
.got_strength
	writetext WardensHouseWardenHM04ExplanationText
	sjump .done

.bag_full
	writetext WardensHouseWardenNoRoomText
.done
	waitbutton
	closetext
	end

; SafariZoneWardenPhoto:
	; jumptext SafariZoneWardenPhotoText

WardensHouseDisplayLeft:
	jumptext WardensHouseDisplayPhotosAndFossilsText

WardensHouseDisplayRight:
	jumptext WardensHouseDisplayMerchandiseText

WardensHouseRareCandy:
	itemball RARE_CANDY

WardensHouseBoulder:
	jumpstd StrengthBoulderScript

SafariZoneWardenPhotoText:
	text "It's a photo of a"
	line "grinning old man"

	para "who's surrounded"
	line "by #MON."
	done

WardensHouseWardenGibberish1Text:
	text "WARDEN: Hif fuff"
	line "hefifoo!"

	para "Ha lof ha feef ee"
	line "hafahi ho. Heff"
	cont "hee fwee!"
	done

WardensHouseWardenGibberish2Text:
	text "Ah howhee ho hoo!"
	line "Eef ee hafahi ho!"
	done

WardensHouseWardenGibberish3Text:
	text "Ha? He ohay heh"
	line "ha hoo ee haheh!"
	done

WardensHouseWardenGaveTheGoldTeethText:
	text "<PLAYER> gave the"
	line "GOLD TEETH to the"
	cont "WARDEN!"
	done ; text_end

WardensHouseWardenPoppedInHisTeethText:
	text "The WARDEN popped"
	line "in his teeth!"
	done ; prompt

WardensHouseWardenThanksText:
	text "WARDEN: Thanks,"
	line "kid! No one could"

	cont "understand a word"
	cont "that I said."

	para "I couldn't work"
	line "that way."

	cont "Let me give you"
	cont "something for"
	cont "your trouble."
	done ; prompt

WardensHouseWardenHM04ExplanationText:
	text "WARDEN: HM04"
	line "teaches STRENGTH!"

	para "It lets #MON"
	line "move boulders"

	para "when you're out-"
	line "side of battle."

	para "Oh, yes, did you"
	line "also find the"

	para "SECRET HOUSE in"
	line "the SAFARI ZONE?"

	para "If you do, you"
	line "win an HM!"

	para "I hear it's the"
	line "rare SURF HM."
	done

WardensHouseWardenNoRoomText:
	text "Your pack is"
	line "stuffed full!"
	done

WardensHouseDisplayPhotosAndFossilsText:
	text "#MON photos"
	line "and fossils."
	done

WardensHouseDisplayMerchandiseText:
	text "Old #MON"
	line "merchandise."
	done

SafariZoneWardensHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 4
	warp_event  5,  7, FUCHSIA_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_READ, WardensHouseDisplayLeft
	bg_event  5,  3, BGEVENT_READ, WardensHouseDisplayRight

	def_object_events
	object_event  2,  3, SPRITE_WARDEN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneWarden, -1
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, WardensHouseRareCandy, EVENT_WARDENS_HOUSE_RARE_CANDY
	object_event  8,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WardensHouseBoulder, -1
