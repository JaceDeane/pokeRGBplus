; Vendor 1
IF DEF(_RED)
	DEF CELADONGAMECORNERPRIZEROOM_ABRA_COINS				EQU 180
	DEF CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS			EQU 500
ELSE
	DEF CELADONGAMECORNERPRIZEROOM_ABRA_COINS				EQU 120
	DEF CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS			EQU 750
ENDC
	DEF CELADONGAMECORNERPRIZEROOM_NIDORINA_NIDORINO_COINS	EQU 1200

; Vendor 2
IF DEF(_RED)
	DEF CELADONGAMECORNERPRIZEROOM_DRATINI_COINS			EQU 2800
	DEF CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS		EQU 5500
	DEF CELADONGAMECORNERPRIZEROOM_PORYGON_COINS			EQU 9999
ELSE
	DEF CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS		EQU 2500
	DEF CELADONGAMECORNERPRIZEROOM_DRATINI_COINS			EQU 4600
	DEF CELADONGAMECORNERPRIZEROOM_PORYGON_COINS			EQU 6500
ENDC

; Vendor 3
	DEF CELADONGAMECORNERPRIZEROOM_TM_DRAGON_RAGE_COINS		EQU 3300
	DEF CELADONGAMECORNERPRIZEROOM_TM_HYPER_BEAM_COINS		EQU 5500
	DEF CELADONGAMECORNERPRIZEROOM_TM_SUBSTITUTE_COINS		EQU 7700

; DEF GOLDENRODGAMECORNER_ABRA_COINS      EQU 100	; Lv5
; DEF GOLDENRODGAMECORNER_CUBONE_COINS    EQU 800	; Lv15
; DEF GOLDENRODGAMECORNER_WOBBUFFET_COINS EQU 1500	; Lv15

	object_const_def
	const CELADONGAMECORNERPRIZEROOM_BALDING_GUY
	const CELADONGAMECORNERPRIZEROOM_GAMBLER

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerPrizeRoomBaldingGuyScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomBaldingGuyText

CeladonGameCornerPrizeRoomGamblerScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomGamblerText

CeladonGameCornerPrizeRoomPokemonVendor1:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_Pokemon1MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Abra
	ifequal 2, .Clefairy
	ifequal 3, .Nidorina_Nidorino
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Abra:
	checkcoins CELADONGAMECORNERPRIZEROOM_ABRA_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, ABRA
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval ABRA
	special GameCornerPrizeMonCheckDex
IF DEF(_RED)
	givepoke ABRA, 9
ELSE
	givepoke ABRA, 6
ENDC
	takecoins CELADONGAMECORNERPRIZEROOM_ABRA_COINS
	sjump .loop

.Clefairy:
	checkcoins CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, CLEFAIRY
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval CLEFAIRY
	special GameCornerPrizeMonCheckDex
IF DEF(_RED)
	givepoke CLEFAIRY, 8
ELSE
	givepoke CLEFAIRY, 12
ENDC
	takecoins CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS
	sjump .loop

.Nidorina_Nidorino:
	checkcoins CELADONGAMECORNERPRIZEROOM_NIDORINA_NIDORINO_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
IF DEF(_RED)
	getmonname STRING_BUFFER_3, NIDORINA
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval NIDORINA
	special GameCornerPrizeMonCheckDex
	givepoke NIDORINA, 17
ELSE
	getmonname STRING_BUFFER_3, NIDORINO
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval NIDORINO
	special GameCornerPrizeMonCheckDex
	givepoke NIDORINO, 17
ENDC
	takecoins CELADONGAMECORNERPRIZEROOM_NIDORINA_NIDORINO_COINS
	sjump .loop

CeladonPrizeRoom_askbuy:
	writetext CeladonPrizeRoom_ConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoom_purchased:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	sjump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_notenoughcoins:
	writetext CeladonPrizeRoom_NotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoom_notenoughroom:
	writetext CeladonPrizeRoom_NotEnoughRoomText
	waitbutton
	closetext
	end

CeladonPrizeRoom_CancelPurchaseScript:
	writetext CeladonPrizeRoom_ComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoCoinCase:
	writetext CeladonPrizeRoom_NoCoinCaseText
	waitbutton
	closetext
	end

CeladonPrizeRoom_Pokemon1MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "ABRA       {d:CELADONGAMECORNERPRIZEROOM_ABRA_COINS}@"
	db "CLEFAIRY   {d:CELADONGAMECORNERPRIZEROOM_CLEFAIRY_COINS}@"
IF DEF(_RED)
	db "NIDORINA   {d:CELADONGAMECORNERPRIZEROOM_NIDORINA_NIDORINO_COINS}@"
ELSE
	db "NIDORINO   {d:CELADONGAMECORNERPRIZEROOM_NIDORINA_NIDORINO_COINS}@"
ENDC
	db "NO THANKS@"

CeladonGameCornerPrizeRoomPokemonVendor2:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_Pokemon2MenuHeader
	verticalmenu
	closewindow
IF DEF(_RED)
	ifequal 1, .Dratini
	ifequal 2, .Scyther
ELSE
	ifequal 1, .Pinsir
	ifequal 2, .Dratini
ENDC
	ifequal 3, .Porygon
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Dratini:
	checkcoins CELADONGAMECORNERPRIZEROOM_DRATINI_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, DRATINI
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval DRATINI
	special GameCornerPrizeMonCheckDex
IF DEF(_RED)
	givepoke DRATINI, 18
ELSE
	givepoke DRATINI, 24
ENDC
	takecoins CELADONGAMECORNERPRIZEROOM_DRATINI_COINS
	sjump .loop

.Scyther:
	checkcoins CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, SCYTHER
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval SCYTHER
	special GameCornerPrizeMonCheckDex
	givepoke SCYTHER, 25
	takecoins CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS
	sjump .loop

.Pinsir:
	checkcoins CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, PINSIR
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval PINSIR
	special GameCornerPrizeMonCheckDex
	givepoke PINSIR, 20
	takecoins CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS
	sjump .loop

.Porygon:
	checkcoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, PORYGON
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval PORYGON
	special GameCornerPrizeMonCheckDex
IF DEF(_RED)
	givepoke PORYGON, 26
ELSE
	givepoke PORYGON, 18
ENDC
	takecoins CELADONGAMECORNERPRIZEROOM_PORYGON_COINS
	sjump .loop

CeladonPrizeRoom_Pokemon2MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
IF DEF(_RED)
	db "DRATINI    {d:CELADONGAMECORNERPRIZEROOM_DRATINI_COINS}@"
	db "SCYTHER    {d:CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS}@"
ELSE
	db "PINSIR     {d:CELADONGAMECORNERPRIZEROOM_SCYTHER_PINSIR_COINS}@"
	db "DRATINI    {d:CELADONGAMECORNERPRIZEROOM_DRATINI_COINS}@"
ENDC
	db "PORYGON    {d:CELADONGAMECORNERPRIZEROOM_PORYGON_COINS}@"
	db "NO THANKS@"

CeladonGameCornerPrizeRoomTMVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
	writetext CeladonPrizeRoom_AskWhichPrizeText
CeladonPrizeRoom_tmcounterloop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_TMMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .DragonRage
	ifequal 2, .HyperBeam
	ifequal 3, .Substitute
	sjump CeladonPrizeRoom_CancelPurchaseScript

.DragonRage:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM_DRAGON_RAGE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_DRAGON_RAGE
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_DRAGON_RAGE
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM_DRAGON_RAGE_COINS
	sjump CeladonPrizeRoom_purchased

.HyperBeam:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM_HYPER_BEAM_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_HYPER_BEAM
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_HYPER_BEAM
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM_HYPER_BEAM_COINS
	sjump CeladonPrizeRoom_purchased

.Substitute:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM_SUBSTITUTE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_SUBSTITUTE
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_SUBSTITUTE
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM_SUBSTITUTE_COINS
	sjump CeladonPrizeRoom_purchased

CeladonPrizeRoom_TMMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "TM23    {d:CELADONGAMECORNERPRIZEROOM_TM_DRAGON_RAGE_COINS}@"
	db "TM15    {d:CELADONGAMECORNERPRIZEROOM_TM_HYPER_BEAM_COINS}@"
	db "TM50    {d:CELADONGAMECORNERPRIZEROOM_TM_SUBSTITUTE_COINS}@"
	db "NO THANKS@"

CeladonPrizeRoom_PrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for prizes."
	done

CeladonPrizeRoom_AskWhichPrizeText:
	text "Which prize do"
	line "you want?"
	done

CeladonPrizeRoom_ConfirmPurchaseText:
	text "So, you want"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

CeladonPrizeRoom_HereYouGoText:
	text "Here you go!"
	done

CeladonPrizeRoom_NotEnoughCoinsText:
	text "Sorry, you need"
	line "more coins."
	done

CeladonPrizeRoom_NotEnoughRoomText:
	text "Oops! You don't"
	line "have enough room."
	done

CeladonPrizeRoom_ComeAgainText:
	text "Oh, fine then."
	done

CeladonPrizeRoom_NoCoinCaseText:
	text "A COIN CASE is"
	line "required!"
	done


CeladonGameCornerPrizeRoomBaldingGuyText:
	text "I sure do fancy"
	line "that PORYGON!"

	para "But it's hard to"
	line "win at the slots!"
	done

CeladonGameCornerPrizeRoomGamblerText:
	text "I had a major"
	line "haul today!"
	done


CeladonGameCornerPrizeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CELADON_CITY, 10
	warp_event  5,  7, CELADON_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor1
	bg_event  4,  2, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor2
	bg_event  6,  2, BGEVENT_READ, CeladonGameCornerPrizeRoomTMVendor

	def_object_events
	object_event  1,  4, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomBaldingGuyScript, -1
	object_event  7,  3, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomGamblerScript, -1
