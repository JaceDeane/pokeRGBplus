	object_const_def
	const CELADONCAFE_COOK
	const CELADONCAFE_MIDDLE_AGED_WOMAN
	const CELADONCAFE_MIDDLE_AGED_MAN
	const CELADONCAFE_FISHER
	const CELADONCAFE_GYM_GUIDE

CeladonCafe_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonCafeChefScript:
	jumptextfaceplayer CeladonCafeChefText

CeladonCafeMiddleAgedWomanScript:
	jumptextfaceplayer CeladonCafeMiddleAgedWomanText

CeladonCafeMiddleAgedManScript:
	jumptextfaceplayer CeladonCafeMiddleAgedManText

CeladonCafeFisherScript:
	jumptextfaceplayer CeladonCafeFisherText
	; opentext
	; writetext Fisher3Text_MunchMunch
	; waitbutton
	; closetext
	; faceplayer
	; opentext
	; writetext Fisher3Text_GoldenrodIsBest
	; waitbutton
	; closetext
	; turnobject CELADONCAFE_FISHER3, RIGHT
	; end

EatathonContestPoster:
	jumptext EatathonContestPosterText

; CeladonCafeTrashcan:
	; checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	; iftrue .TrashEmpty
	; giveitem LEFTOVERS
	; iffalse .PackFull
	; opentext
	; getitemname STRING_BUFFER_3, LEFTOVERS
	; writetext FoundLeftoversText
	; playsound SFX_ITEM
	; waitsfx
	; itemnotify
	; closetext
	; setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	; end

; .PackFull:
	; opentext
	; getitemname STRING_BUFFER_3, LEFTOVERS
	; writetext FoundLeftoversText
	; promptbutton
	; writetext NoRoomForLeftoversText
	; waitbutton
	; closetext
	; end

; .TrashEmpty:
	; jumpstd TrashCanScript

CeladonCafeGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COIN_CASE
	iftrue .GotItem
	writetext CeladonCafeGymGuideImFlatOutBustedText
	promptbutton
	waitsfx
	giveitem COIN_CASE
	iffalse .BagFull
	writetext CeladonCafeGymGuideReceivedCoinCaseText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_COIN_CASE
	waitbutton ; is wait sfx enough?
	closetext
	end

.GotItem:
	writetext CeladonCafeGymGuideWinItBackText
	waitbutton
	closetext
	end

.BagFull:
	writetext CeladonCafeGymGuideCoinCaseNoRoomText
	waitbutton
	closetext
	end

EatathonContestPosterText:
	text "Eatathon Contest!"
	line "Coming Soon!"
	done

; FoundLeftoversText:
	; text "<PLAYER> found"
	; line "@"
	; text_ram wStringBuffer3
	; text "!"
	; done

; NoRoomForLeftoversText:
	; text "But <PLAYER> can't"
	; line "hold another item…"
	; done

CeladonCafeChefText:
	text "Hi!"

	para "We're taking a"
	line "break now. Sorry."
	done

CeladonCafeMiddleAgedWomanText:
	text "My #MON are"
	line "weak, so I often"

	para "have to go to the"
	line "DEPT. STORE." ;DRUG STORE (R/B)
	done

CeladonCafeMiddleAgedManText:
	text "Psst! There's a"
	line "basement under"
	cont "the GAME CORNER."
	done

CeladonCafeFisherText:
	text "Munch, munch…"

	para "The man at that"
	line "table lost it all"
	cont "at the slots."
	done

CeladonCafeGymGuideImFlatOutBustedText:
	text "Go ahead! Laugh!"

	para "I'm flat out"
	line "busted!"

	para "No more slots for"
	line "me! I'm going"
	cont "straight!"

	para "Here! I won't be"
	line "needing this any-"
	cont "more!"
	done ;prompt

CeladonCafeGymGuideReceivedCoinCaseText:
	text "<PLAYER> received"
	line "a COIN CASE!"
	done

CeladonCafeGymGuideCoinCaseNoRoomText:
	text "Make room for"
	line "this!"
	done

CeladonCafeGymGuideWinItBackText:
	text "I always thought"
	line "I was going to"
	cont "win it back…"
	done

CeladonCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, CELADON_CITY, 11
	warp_event  7,  7, CELADON_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, EatathonContestPoster
	; bg_event  7,  1, BGEVENT_READ, CeladonCafeTrashcan

	def_object_events
	object_event  8,  5, SPRITE_COOK, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCafeChefScript, -1
	object_event  7,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeMiddleAgedWomanScript, -1
	object_event  1,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeMiddleAgedManScript, -1
	object_event  5,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisherScript, -1
	object_event  0,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeGymGuideScript, -1