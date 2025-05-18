	object_const_def
	const CERULEANBIKESHOP_CLERK
	const CERULEANBIKESHOP_POKEFAN_F
	const CERULEANBIKESHOP_YOUNGSTER

CeruleanBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBikeShopNoopScene: ; unreferenced
	end

CeruleanBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	checkitem COIN_CASE ; BIKE_VOUCHER ; TODO -- Replace
	iffalse .NoVoucher
	writetext CeruleanBikeShopClerkOhThatsAVoucherText
	promptbutton
	waitsfx
	giveitem BICYCLE
	takeitem COIN_CASE ; BIKE_VOUCHER ; TODO -- Replace
	writetext CeruleanBikeShopExchangedVoucherText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	;setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
	closetext
	end

.GotBicycle:
	writetext CeruleanBikeShopClerkHowDoYouLikeYourBicycleText
	waitbutton
	closetext
	end

.NoVoucher
	special PlaceMoneyTopRight
	writetext CeruleanBikeShopClerkWelcomeText
	waitbutton
	loadmenu CeruleanBikeShopClerkMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Bicycle
	sjump .ComeAgain

.Bicycle:
	writetext CeruleanBikeShopClerkDoYouLikeItText
	yesorno
	iffalse .ComeAgain
	writetext CeruleanBikeShopCantAffordText
	waitbutton
	closetext
	end

.ComeAgain
	writetext CeruleanBikeShopComeAgainText
	waitbutton
	closetext
	end

CeruleanBikeShopClerkMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 19, 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "BICYCLE  ¥1000000@"
	db "CANCEL@"

CeruleanBikeShopPokefanFScript:
	jumptextfaceplayer CeruleanBikeShopPokefanFText

CeruleanBikeShopYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext CeruleanBikeShopYoungsterTheseBikesAreExpensiveText
	waitbutton
	closetext
	end

.GotBicycle:
	writetext CeruleanBikeShopYoungsterCoolBikeText
	waitbutton
	closetext
	end

CeruleanBikeShopJustReleasedCompactBike: ; unreferenced
	jumptext CeruleanBikeShopJustReleasedCompactBikeText

CeruleanBikeShopBicycle:
	jumptext CeruleanBikeShopBicycleText

CeruleanBikeShopClerkIntroText:
	text "…sigh… I moved"
	line "here, but I can't"

	para "sell my BICYCLES."
	line "Why is that?"

	para "Could you ride a"
	line "BICYCLE and adver-"
	cont "tise for me?"
	done

CeruleanBikeShopClerkAgreedText:
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a BICYCLE."
	done

BorrowedABicycle1Text:
	text "<PLAYER> borrowed a"
	line "BICYCLE."
	done

CeruleanBikeShopClerkFirstRateBikesText:
	text "My BICYCLES are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done

CeruleanBikeShopClerkRefusedText:
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done

CeruleanBikeShopJustReleasedCompactBikeText:
	text "Just released!"

	para "First-rate compact"
	line "BICYCLES!"
	done

CeruleanBikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"
	done

; R/B

CeruleanBikeShopClerkWelcomeText:
	text "Hi! Welcome to"
	line "our BIKE SHOP."

	para "Have we got just"
	line "the BIKE for you!"
	done

CeruleanBikeShopClerkDoYouLikeItText:
	text "It's a cool BIKE!"
	line "Do you want it?"
	done

;¥

CeruleanBikeShopCantAffordText:
	text "Sorry! You can't"
	line "afford it!"
	done

CeruleanBikeShopClerkOhThatsAVoucherText:
	text "Oh, that's..."

	para "A BIKE VOUCHER!"

	para "OK! Here you go!"
	done

CeruleanBikeShopExchangedVoucherText:
	text "<PLAYER> exchanged"
	line "the BIKE VOUCHER"
	cont "for a BICYCLE.@"
	done

CeruleanBikeShopComeAgainText:
	text "Come back again"
	line "some time!"
	done

CeruleanBikeShopClerkHowDoYouLikeYourBicycleText:
	text "How do you like"
	line "your new BICYCLE?"

	para "You can take it"
	line "on CYCLING ROAD"
	cont "and in caves!"
	done

CeruleanBikeShopBagFullText:
	text "You better make"
	line "room for this!"
	done

CeruleanBikeShopPokefanFText:
	text "A plain city BIKE"
	line "is good enough"
	cont "for me!"

	para "You can't put a"
	line "shopping basket"
	cont "on an MTB!"
	done

CeruleanBikeShopYoungsterTheseBikesAreExpensiveText:
	text "These BIKES are"
	line "cool, but they're"
	cont "way expensive!"
	done

CeruleanBikeShopYoungsterCoolBikeText:
	text "Wow. Your BIKE is"
	line "really cool!"
	done

CeruleanBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 5
	warp_event  3,  7, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  3,  1, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  2,  2, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  3,  2, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  0,  4, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  1,  4, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  0,  2, BGEVENT_READ, CeruleanBikeShopBicycle
	bg_event  1,  2, BGEVENT_READ, CeruleanBikeShopBicycle

	def_object_events
	object_event  6,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopClerkScript, -1
	object_event  5,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopPokefanFScript, -1
	object_event  1,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopYoungsterScript, -1
