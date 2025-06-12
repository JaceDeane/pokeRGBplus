	object_const_def
	const POKEMONFANCLUB_PIKACHU_FAN
	const POKEMONFANCLUB_SEEL_FAN
	const POKEMONFANCLUB_PIKACHU
	const POKEMONFANCLUB_SEEL
	const POKEMONFANCLUB_CHAIRMAN
	const POKEMONFANCLUB_RECEPTIONIST

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClubChairmanScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BIKE_VOUCHER
	iftrue .HeardSpeech
	writetext PokemonFanClubChairmanIntroText
	yesorno
	iffalse .NotListening
	writetext PokemonFanClubChairmanStoryText
	promptbutton
	waitsfx
	giveitem BIKE_VOUCHER
	iffalse .BagFull
	writetext PokemonFanClubReceivedBikeVoucherText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_BIKE_VOUCHER
	writetext PokemonFanClubExplainBikeVoucherText
	waitbutton
	closetext
	end

.HeardSpeech:
	writetext PokemonFanClubChairFinalText
	waitbutton
	closetext
	end

.NotListening:
	writetext PokemonFanClubNoStoryText
	waitbutton
	closetext
	end

.BagFull:
	writetext PokemonFanClubBagFullText
	waitbutton
	closetext
	end

PokemonFanClubReceptionistScript:
	jumptextfaceplayer PokemonFanClubReceptionistText

; PokemonFanClubClefairyGuyScript:
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	; iftrue .GotLostItem
	; checkevent EVENT_RETURNED_MACHINE_PART
	; iftrue .FoundClefairyDoll
	; writetext PokemonFanClubClefairyGuyClefairyIsSoAdorableText
	; waitbutton
	; closetext
	; end

; .FoundClefairyDoll:
	; writetext PokemonFanClubClefairyGuyMakingDoWithADollIFoundText
	; checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	; iftrue .MetCopycat
	; waitbutton
	; closetext
	; end

; .MetCopycat:
	; promptbutton
	; writetext PokemonFanClubClefairyGuyTakeThisDollBackToGirlText
	; promptbutton
	; waitsfx
	; giveitem LOST_ITEM
	; iffalse .NoRoom
	; disappear POKEMONFANCLUB_FAIRY
	; writetext PokemonFanClubPlayerReceivedDollText
	; playsound SFX_KEY_ITEM
	; waitsfx
	; itemnotify
	; setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	; closetext
	; end

; .GotLostItem:
	; writetext PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	; waitbutton
	; closetext
	; end

; .NoRoom:
	; writetext PokemonFanClubClefairyGuyPackIsJammedFullText
	; waitbutton
	; closetext
	; end

PokemonFanClubSeelFanScript:
	faceplayer
	opentext
	checkevent EVENT_SEEL_FAN_BOAST
	iftrue .mine_is_better
	writetext PokemonFanClubSeelFanNormalText
	waitbutton
	closetext
	setevent EVENT_PIKACHU_FAN_BOAST
	end
	
.mine_is_better
	writetext PokemonFanClubSeelFanBetterText
	waitbutton
	closetext
	clearevent EVENT_SEEL_FAN_BOAST
	end

PokemonFanClubSeelScript:
	opentext
	writetext PokemonFanClubSeelText
	cry SEEL
	waitbutton
	closetext
	end

PokemonFanClubPikachuFanScript:
	faceplayer
	opentext
	checkevent EVENT_PIKACHU_FAN_BOAST
	iftrue .mine_is_better
	writetext PokemonFanClubPikachuFanNormalText
	waitbutton
	closetext
	setevent EVENT_SEEL_FAN_BOAST
	end
	
.mine_is_better
	writetext PokemonFanClubPikachuFanBetterText
	waitbutton
	closetext
	clearevent EVENT_PIKACHU_FAN_BOAST
	end

PokemonFanClubPikachuScript:
	opentext
	writetext PokemonFanClubPikachuText
	cry PIKACHU
	waitbutton
	closetext
	end

PokemonFanClubListenSign:
	jumptext PokemonFanClubListenSignText

PokemonFanClubBraggingSign:
	jumptext PokemonFanClubBraggingSignText

PokemonFanClubChairmanIntroText:
	text "I'm the CHAIRMAN"
	line "of the #MON FAN"
	cont "CLUB!"

	para "I have collected"
	line "over 100 #MON!"

	para "I'm very fussy"
	line "when it comes to"
	cont "#MON!"

	para "So…"

	para "Did you come"
	line "visit to hear"
	cont "about my #MON?"
	done

PokemonFanClubChairmanStoryText:
	text "Good!"
	line "Then listen up!"

	para "So… my favorite,"
	line "RAPIDASH…"

	para "It… cute… lovely…"
	line "smart… unbearably…"
	cont "plus… amazing… oh…"
	cont "you think so?…"

	para "Oh, yes… it…"
	line "stunning… kindly…"
	cont "love it!"

	para "Hug it… when…"
	line "sleeping… warm and"
	cont "cuddly… Oh, and…"
	cont "spectacular…"
	cont "ravishing… simply"
	cont "divine…"

	para "Oops! Look at the"
	line "time! I've kept"
	cont "you too long!"

	para "Thanks for hearing"
	line "me out. I want you"
	cont "to have this!"
	done

PokemonFanClubReceivedBikeVoucherText:
	text "<PLAYER> received"
	line "a BIKE VOUCHER!"
	done

PokemonFanClubExplainBikeVoucherText:
	text "Exchange that for"
	line "a BICYCLE!"

	para "Don't worry, my"
	line "FEAROW will FLY"
	cont "me anywhere!"

	para "So, I don't need a"
	line "BICYCLE!"

	para "I hope you like"
	line "cycling!"
	done

PokemonFanClubNoStoryText:
	text "Oh… Come back"
	line "when you want to"
	cont "hear my story!"
	
	; text "How disappointing…"

	; para "Come back if you"
	; line "want to listen."
	done

PokemonFanClubChairFinalText:
	text "Hello, <PLAYER>!"

	para "Did you come see"
	line "me about my #-"
	cont "MON again?"

	para "No? Too bad!"
	; para "No? Oh… I had more"
	; line "tales to tell…"
	done

PokemonFanClubBagFullText:
	text "Make room for"
	line "this!"
	done

PokemonFanClubReceptionistText:
	text "Our CHAIRMAN is"
	line "very vocal about"
	cont "#MON."
	done

PokemonFanClubPikachuFanNormalText:
	text "Won't you admire"
	line "my PIKACHU's"
	cont "adorable tail?"
	done

PokemonFanClubPikachuFanBetterText:
	text "Humph! My PIKACHU"
	line "is twice as cute"
	cont "as that one!"
	done

PokemonFanClubSeelFanNormalText:
	text "I just love my"
	line "SEEL!"

	para "It squeals when I"
	line "hug it!"
	done

PokemonFanClubSeelFanBetterText:
	text "Oh dear!"

	para "My SEEL is far"
	line "more attractive!"
	done

PokemonFanClubPikachuText:
	text "PIKACHU: Chu!"
	line "Pikachu!"
	done

PokemonFanClubSeelText:
	text "SEEL: Kyuoo!"
	done

PokemonFanClubListenSignText:
	text "Let's all listen"
	line "politely to other"
	cont "trainers."
	done

PokemonFanClubBraggingSignText:
	text "If someone brags,"
	line "brag right back!"
	done

PokemonFanClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 2
	warp_event  3,  7, VERMILION_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, PokemonFanClubListenSign
	bg_event  6,  0, BGEVENT_READ, PokemonFanClubBraggingSign

	def_object_events
	object_event  6,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubPikachuFanScript, -1
	object_event  1,  3, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubSeelFanScript, -1
	object_event  6,  4, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubPikachuScript, -1
	object_event  1,  4, SPRITE_SEEL, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokemonFanClubSeelScript, -1
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  5,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubReceptionistScript, -1
