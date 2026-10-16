	object_const_def
	const CELADONGAMECORNER_CLERK1
	const CELADONGAMECORNER_RECEPTIONIST
	const CELADONGAMECORNER_POKEFAN_M
	const CELADONGAMECORNER_BEAUTY
	const CELADONGAMECORNER_FISHING_GURU
	const CELADONGAMECORNER_POKEFAN_F
	const CELADONGAMECORNER_GYM_GUIDE
	const CELADONGAMECORNER_GAMBLER
	const CELADONGAMECORNER_CLERK2
	const CELADONGAMECORNER_GENTLEMAN
	const CELADONGAMECORNER_ROCKET

	; const EVENT_FOUND_ROCKET_HIDEOUT

CeladonGameCorner_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerCoinVendorScript:
	jumpstd GameCornerCoinVendorScript

CeladonGameCornerReceptionistScript:
	;jumptextfaceplayer CeladonGameCornerReceptionistText

CeladonGameCornerPokefanMScript:
	faceplayer
	opentext
	writetext CeladonGameCornerMiddleAgedManText
	waitbutton
	closetext
	turnobject CELADONGAMECORNER_POKEFAN_M, LEFT
	end

CeladonGameCornerBeautyScript:
	faceplayer
	opentext
	writetext CeladonGameCornerBeautyText
	waitbutton
	closetext
	turnobject CELADONGAMECORNER_BEAUTY, LEFT
	end

CeladonGameCornerFishingGuruScript:
	faceplayer
	opentext
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkevent EVENT_GOT_10_COINS
	iftrue .AlreadyGotCoins
	writetext CeladonGameCornerFishingGuruWantToPlayText
	promptbutton
	checkcoins MAX_COINS - 10
	ifequal HAVE_MORE, .NoRoom
	givecoins 10
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonGameCornerReceived20CoinsText
	waitbutton
	setevent EVENT_GOT_10_COINS
	sjump .done

.NoCoinCase:
	writetext CeladonGameCornerForgotCoinCaseText
	waitbutton
	sjump .done

.AlreadyGotCoins:
	writetext CeladonGameCornerFishingGuruWinsComeAndGoText
	waitbutton
	sjump .done

.NoRoom:
	writetext CeladonGameCornerFishingGuruDontNeedMyCoinsText
	waitbutton
.done:
	closetext
	turnobject CELADONGAMECORNER_FISHING_GURU, RIGHT
	end

CeladonGameCornerMiddleAgedWomanScript:
	faceplayer
	opentext
	writetext CeladonGameCornerMiddleAgedWomanText
	waitbutton
	closetext
	turnobject CELADONGAMECORNER_POKEFAN_F, LEFT
	end

; CeladonGameCornerFisherScript:
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_COINS_FROM_GAMBLER_AT_CELADON
	; iftrue .GotCoins
	; writetext CeladonGameCornerFisherText1
	; promptbutton
	; checkitem COIN_CASE
	; iffalse .NoCoinCase
	; checkcoins MAX_COINS - 1
	; ifequal HAVE_MORE, .FullCoinCase
	; getstring STRING_BUFFER_4, .coinname
	; scall .GiveCoins
	; givecoins 18
	; setevent EVENT_GOT_COINS_FROM_GAMBLER_AT_CELADON
; .GotCoins:
	; writetext CeladonGameCornerFisherText2
	; waitbutton
	; closetext
	; turnobject LAST_TALKED, LEFT
	; end

; .GiveCoins:
	; jumpstd ReceiveItemScript
	; end

; .coinname
	; db "COIN@"

; .NoCoinCase:
	; writetext CeladonGameCornerFisherNoCoinCaseText
	; waitbutton
	; closetext
	; turnobject LAST_TALKED, LEFT
	; end

; .FullCoinCase:
	; writetext CeladonGameCornerFisherFullCoinCaseText
	; waitbutton
	; closetext
	; turnobject LAST_TALKED, LEFT
	; end

CeladonGymGuideScript:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .GotRainbowBadge
	writetext CeladonGameCornerGymGuideChampInMakingText
	waitbutton
	sjump .done

.GotRainbowBadge
	writetext CeladonGameCornerGymGuideRarePokemonText
	waitbutton
.done
	closetext
	turnobject CELADONGAMECORNER_GYM_GUIDE, LEFT
	end

CeladonGameCornerGamblerScript:
	faceplayer
	opentext
	writetext CeladonGameCornerGamblerText
	waitbutton
	closetext
	turnobject CELADONGAMECORNER_GAMBLER, RIGHT
	end

CeladonGameCornerClerk2Script:
	faceplayer
	opentext
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkevent EVENT_GOT_20_COINS
	iftrue .AlreadyGotCoins
	writetext CeladonGameCornerClerk2WantSomeCoinsText
	promptbutton
	checkcoins MAX_COINS - 20
	ifequal HAVE_MORE, .NoRoom
	givecoins 20
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonGameCornerReceived20CoinsText
	waitbutton
	setevent EVENT_GOT_20_COINS
	sjump .done

.NoCoinCase:
	writetext CeladonGameCornerForgotCoinCaseText
	waitbutton
	sjump .done

.AlreadyGotCoins:
	writetext CeladonGameCornerClerk2INeedMoreCoinsText
	waitbutton
	sjump .done

.NoRoom:
	writetext CeladonGameCornerClerk2YouHaveLotsOfCoinsText
	waitbutton
.done:
	closetext
	turnobject CELADONGAMECORNER_CLERK2, LEFT
	end

CeladonGameCornerGentlemanScript:
	faceplayer
	opentext
	checkitem COIN_CASE
	iffalse .NoCoinCase
	checkevent EVENT_GOT_20_COINS_2
	iftrue .AlreadyGotCoins
	writetext CeladonGameCornerGentlemanThrowingMeOffText
	promptbutton
	checkcoins MAX_COINS - 20
	ifequal HAVE_MORE, .NoRoom
	givecoins 20
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonGameCornerReceived20CoinsText
	waitbutton
	setevent EVENT_GOT_20_COINS_2
	sjump .done

.NoCoinCase:
	writetext CeladonGameCornerForgotCoinCaseText
	waitbutton
	sjump .done

.AlreadyGotCoins:
	writetext CeladonGameCornerGentlemanCloselyWatchTheReelsText
	waitbutton
	sjump .done

.NoRoom:
	writetext CeladonGameCornerGentlemanYouGotYourOwnCoinsText
	waitbutton
.done:
	closetext
	turnobject CELADONGAMECORNER_GENTLEMAN, RIGHT
	end

CeladonGameCornerRocketScript: ; TODO
	faceplayer
	opentext
	;writetext CeladonGameCornerGrampsText
	waitbutton
	closetext
	end

CeladonGameCornerPosterScript:
	jumptext CeladonGameCornerSwitchBehindPosterText
	; TODO


CeladonGameCornerLuckySlotMachineScript:
	random 6
	ifequal 0, CeladonGameCornerSlotMachineScript
	reanchormap
	setval FALSE
	special SlotMachine
	closetext
	end

CeladonGameCornerSlotMachineScript:
	reanchormap
	setval TRUE
	special SlotMachine
	closetext
	end

CeladonGameCornerCardFlipScript:
	reanchormap
	special CardFlip
	closetext
	end

CeladonGameCornerOutOfOrderScript:
	jumptext CeladonGameCornerOutOfOrderText

CeladonGameCornerOutToLunchScript:
	jumptext CeladonGameCornerOutToLunchText

CeladonGameCornerSomeonesKeysScript:
	jumptext CeladonGameCornerSomeonesKeysText

CeladonGameCornerLighterScript:
	jumptext CeladonGameCornerLighterText

CeladonGameCornerSodaCanScript:
	opentext
	writetext CeladonGameCornerSodaCanText
	waitbutton
	special CardFlip
	closetext
	end

; CeladonCityHiddenPpUp:
	; hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonGameCornerHidden10Coins_1:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_1

CeladonGameCornerHidden10Coins_2:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_2

CeladonGameCornerHidden10Coins_3:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_3

CeladonGameCornerHidden10Coins_4:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_4

CeladonGameCornerHidden10Coins_5:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_5

CeladonGameCornerHidden10Coins_6:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_6

CeladonGameCornerHidden10Coins_7:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_7

CeladonGameCornerHidden10Coins_8:
	hiddencoins 10, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_10_8

CeladonGameCornerHidden20Coins_1:
	hiddencoins 20, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_1

CeladonGameCornerHidden20Coins_2:
	hiddencoins 20, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_20_2

CeladonGameCornerHidden40Coins:
	hiddencoins 40, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_40

CeladonGameCornerHidden100Coins:
	hiddencoins 100, EVENT_CELADON_GAME_CORNER_HIDDEN_COINS_100

CeladonGameCornerUnusedMovementData: ; unreferenced
	step RIGHT
	turn_head LEFT
	step_end

CeladonGameCornerPoster1Text:
	text "Hey!"

	para "Underneath this"
	line "poster…"

	para "There's nothing!"
	done

CeladonGameCornerPoster2Text:
	text "Hey!"

	para "Underneath this"
	line "poster…"

	para "There's nothing!"
	done

CeladonGameCornerLighterText:
	text "There's a lighter"
	line "here."
	done

CeladonGameCornerSodaCanText:
	text "A can of soda…"

	para "Someone must be"
	line "coming back…"

	para "Huh? It's empty!"
	done

CeladonGameCornerReceptionistText:
	text "Welcome!"

	para "You can exchange"
	line "your coins for"

	para "fabulous prizes"
	line "next door."
	done

CeladonGameCornerMiddleAgedManText:
	text "Keep this quiet."

	para "It's rumored that"
	line "this place is run"
	cont "by TEAM ROCKET."
	done

CeladonGameCornerBeautyText:
	text "I think these"
	line "machines have"
	cont "different odds."
	done

CeladonGameCornerFishingGuruWantToPlayText:
	text "Kid, do you want"
	line "to play?"
	done

CeladonGameCornerFishingGuruDontNeedMyCoinsText:
	text "You don't need my"
	line "coins!"
	done

CeladonGameCornerFishingGuruWinsComeAndGoText:
	text "Wins seem to come"
	line "and go."
	done

CeladonGameCornerMiddleAgedWomanText:
	text "I'm having a"
	line "wonderful time!"
	done

CeladonGameCornerGymGuideChampInMakingText:
	text "Hey!"

	para "You have better"
	line "things to do,"
	cont "CHAMP in making!"

	para "CELADON GYM's"
	line "LEADER is ERIKA!"

	para "She uses grass-"
	line "type #MON!"

	para "She might appear"
	line "docile, but don't"
	cont "be fooled!"
	done

CeladonGameCornerGymGuideRarePokemonText:
	text "They offer rare"
	line "#MON here that"

	para "can be exchanged"
	line "for your coins."

	para "But I just can't"
	line "seem to win!"
	done

CeladonGameCornerGamblerText:
	text "Games are scary!"
	line "It's so easy to"
	cont "get hooked!"
	done

CeladonGameCornerClerk2WantSomeCoinsText:
	text "What's up? Want"
	line "some coins?"
	done

CeladonGameCornerClerk2YouHaveLotsOfCoinsText:
	text "You have lots of"
	line "coins!"
	done

CeladonGameCornerClerk2INeedMoreCoinsText:
	text "Darn! I need more"
	line "coins for the"
	cont "#MON I want!"
	done

CeladonGameCornerGentlemanThrowingMeOffText:
	text "Hey, what? You're"
	line "throwing me off!"

	para "Here are some"
	line "coins, shoo!"
	done

CeladonGameCornerGentlemanYouGotYourOwnCoinsText:
	text "You've got your"
	line "own coins!"
	done

CeladonGameCornerGentlemanCloselyWatchTheReelsText:
	text "The trick is to"
	line "watch the reels"
	cont "closely!"
	done

CeladonGameCornerReceived10CoinsText:
	text "<PLAYER> received"
	line "10 coins!"
	done

CeladonGameCornerReceived20CoinsText:
	text "<PLAYER> received"
	line "20 coins!"
	done

CeladonGameCornerForgotCoinCaseText:
	text "Oops! Forgot the"
	line "COIN CASE!"
	done

CeladonGameCornerRocketSeenText:
	text "I'm guarding this"
	line "poster!"

	para "Go away, or else!"
	done

CeladonGameCornerRocketBeatenText:
	text "Dang!"
	done

CeladonGameCornerRocketAfterBattleText:
	text "Our hideout might"
	line "be discovered!"
	
	para "I better tell the"
	line "BOSS!"
	done

CeladonGameCornerSwitchBehindPosterText:
	text "Hey!"

	para "A switch behind"
	line "the poster!?"
	cont "Let's push it!"
	done

CeladonGameCornerOutOfOrderText:
	text "'OUT OF ORDER'"
	line "This is broken."
	done

CeladonGameCornerOutToLunchText:
	text "'OUT TO LUNCH'"
	line "This is reserved."
	done

CeladonGameCornerSomeonesKeysText:
	text "Someone's keys!"
	line "They'll be back."
	done

CeladonGameCorner_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 13, CELADON_CITY, 8
	warp_event 16, 13, CELADON_CITY, 8

	def_coord_events

	def_bg_events
	; bg_event  1,  6, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1,  7, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1,  8, BGEVENT_READ, CeladonGameCornerCardFlipScript
	; bg_event  1,  9, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1, 10, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  1, 11, BGEVENT_LEFT, CeladonGameCornerCardFlipScript
	bg_event  6,  6, BGEVENT_READ, CeladonGameCornerCardFlipScript
	; bg_event  6,  7, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  6,  8, BGEVENT_READ, CeladonGameCornerOutOfOrderScript ;CeladonGameCornerCardFlipScript
	bg_event  6,  9, BGEVENT_READ, CeladonGameCornerSodaCanScript
	bg_event  6, 10, BGEVENT_READ, CeladonGameCornerCardFlipScript
	bg_event  6, 11, BGEVENT_RIGHT, CeladonGameCornerCardFlipScript
	bg_event  7,  6, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	; bg_event  7,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  8, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event  7,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	; bg_event  7, 10, BGEVENT_READ, CeladonGameCornerSlotMachineScript
	bg_event  7, 11, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  6, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  8, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 12, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	; bg_event 12, 11, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  6, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	; bg_event 13,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  8, BGEVENT_READ, CeladonGameCornerOutToLunchScript ;CeladonGameCornerLuckySlotMachineScript
	bg_event 13,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 13, 11, BGEVENT_LEFT, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  6, BGEVENT_READ, CeladonGameCornerSomeonesKeysScript ;CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  7, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18,  8, BGEVENT_READ, CeladonGameCornerLighterScript
	; bg_event 18,  9, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18, 10, BGEVENT_READ, CeladonGameCornerLuckySlotMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, CeladonGameCornerLuckySlotMachineScript
	bg_event  9,  0, BGEVENT_READ, CeladonGameCornerPosterScript
	
	bg_event  0,  4, BGEVENT_COINS, CeladonGameCornerHidden10Coins_1
	bg_event  1, 12, BGEVENT_COINS, CeladonGameCornerHidden10Coins_2
	bg_event  3,  7, BGEVENT_COINS, CeladonGameCornerHidden20Coins_1
	bg_event  3, 10, BGEVENT_COINS, CeladonGameCornerHidden10Coins_3
	bg_event  4,  8, BGEVENT_COINS, CeladonGameCornerHidden10Coins_4
	bg_event  9,  8, BGEVENT_COINS, CeladonGameCornerHidden20Coins_2
	bg_event  9, 11, BGEVENT_COINS, CeladonGameCornerHidden10Coins_5
	bg_event 16, 10, BGEVENT_COINS, CeladonGameCornerHidden10Coins_6
	bg_event 10, 12, BGEVENT_COINS, CeladonGameCornerHidden10Coins_7
	bg_event 11,  3, BGEVENT_COINS, CeladonGameCornerHidden40Coins
	bg_event 15,  4, BGEVENT_COINS, CeladonGameCornerHidden100Coins
	bg_event 12, 11, BGEVENT_COINS, CeladonGameCornerHidden10Coins_8
	
	; hidden_object  0,  8, COIN+10, HiddenCoins
	; hidden_object  1, 16, COIN+10, HiddenCoins
	; hidden_object  3, 11, COIN+20, HiddenCoins
	; hidden_object  3, 14, COIN+10, HiddenCoins
	; hidden_object  4, 12, COIN+10, HiddenCoins
	; hidden_object  9, 12, COIN+20, HiddenCoins
	; hidden_object  9, 15, COIN+10, HiddenCoins
	; hidden_object 16, 14, COIN+10, HiddenCoins
	; hidden_object 10, 16, COIN+10, HiddenCoins
	; hidden_object 11,  7, COIN+40, HiddenCoins
	; hidden_object 15,  8, COIN+100, HiddenCoins
	; hidden_object 12, 15, COIN+10, HiddenCoins

	def_object_events
	object_event  5,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerCoinVendorScript, -1
	object_event  2,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerReceptionistScript, -1
	object_event  2,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPokefanMScript, -1
	object_event  2,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerBeautyScript, -1
	object_event  5,  7, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFishingGuruScript, -1
	object_event  8,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerMiddleAgedWomanScript, -1
	object_event  8, 10, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGymGuideScript, -1
	object_event 11, 11, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGamblerScript, -1
	object_event 14,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerClerk2Script, -1
	object_event 17,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGentlemanScript, -1
	object_event  9,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerRocketScript, -1 ; Rocket (7 R/B)
	; object_event  8, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFisherScript, -1
	; object_event  8, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, NITE, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFisherScript, -1
	
	; object_event  2,  6-4, SPRITE_BEAUTY, STAY, DOWN, TEXT_GAMECORNER_BEAUTY1
	; object_event  5,  6-4, SPRITE_CLERK, STAY, DOWN, TEXT_GAMECORNER_CLERK1
	; object_event  2, 10-4, SPRITE_MIDDLE_AGED_MAN, STAY, LEFT, TEXT_GAMECORNER_MIDDLE_AGED_MAN1
	; object_event  2, 13-4, SPRITE_BEAUTY, STAY, LEFT, TEXT_GAMECORNER_BEAUTY2
	; object_event  5, 11-4, SPRITE_FISHING_GURU, STAY, RIGHT, TEXT_GAMECORNER_FISHING_GURU
	; object_event  8, 11-4, SPRITE_MIDDLE_AGED_WOMAN, STAY, LEFT, TEXT_GAMECORNER_MIDDLE_AGED_WOMAN
	; object_event  8, 14-4, SPRITE_GYM_GUIDE, STAY, LEFT, TEXT_GAMECORNER_GYM_GUIDE
	; object_event 11, 15-4, SPRITE_GAMBLER, STAY, RIGHT, TEXT_GAMECORNER_GAMBLER
	; object_event 14, 11-4, SPRITE_CLERK, STAY, LEFT, TEXT_GAMECORNER_CLERK2
	; object_event 17, 13-4, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_GAMECORNER_GENTLEMAN
	; object_event  9,  5-4, SPRITE_ROCKET, STAY, UP, TEXT_GAMECORNER_ROCKET, OPP_ROCKET, 7
