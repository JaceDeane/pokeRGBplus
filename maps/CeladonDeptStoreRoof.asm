DEF CELADONDEPTSTOREROOF_FRESH_WATER_PRICE EQU 200
DEF CELADONDEPTSTOREROOF_SODA_POP_PRICE    EQU 300
DEF CELADONDEPTSTOREROOF_LEMONADE_PRICE    EQU 350

	object_const_def
	const CELADONDEPTSTOREROOF_SUPER_NERD
	const CELADONDEPTSTOREROOF_LITTLE_GIRL

CeladonDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	;callback MAPCALLBACK_TILES, CeladonDeptStoreRoofHideRooftopStairsCallback

; CeladonDeptStoreRoofHideRooftopStairsCallback:
	; changeblock 12, 0, $03 ; wall
	; endcallback

CeladonDeptStoreRoofSuperNerdScript:
	jumptextfaceplayer CeladonDeptStoreRoofSuperNerdText

CeladonDeptStoreRoofLittleGirlScript:
	;TODO
	jumptextfaceplayer CeladonDeptStoreRoofLittleGirlText

CeladonDeptStoreRoofVendingMachine:
	opentext
	writetext CeladonVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	closetext
	end

.FreshWater:
	checkmoney YOUR_MONEY, CELADONDEPTSTOREROOF_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONDEPTSTOREROOF_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, CELADONDEPTSTOREROOF_SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONDEPTSTOREROOF_SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, CELADONDEPTSTOREROOF_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, CELADONDEPTSTOREROOF_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext CeladonClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext CeladonVendingNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext CeladonVendingNoSpaceText
	waitbutton
	sjump .Start

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "FRESH WATER  ¥{d:CELADONDEPTSTOREROOF_FRESH_WATER_PRICE}@"
	db "SODA POP     ¥{d:CELADONDEPTSTOREROOF_SODA_POP_PRICE}@"
	db "LEMONADE     ¥{d:CELADONDEPTSTOREROOF_LEMONADE_PRICE}@"
	db "CANCEL@"

CeladonDeptStoreRoofDirectory:
	jumptext CeladonDeptStoreRoofDirectoryText

CeladonDeptStoreRoofElevatorButton: ; unreferenced
	jumpstd ElevatorButtonScript

CeladonVendingText:
	text "A vending machine!"
	line "Here's the menu."
	done

CeladonClangText:
	text "Clang!"

	para "@"
	text_ram wStringBuffer3
	text_start
	line "popped out."
	done

CeladonVendingNoMoneyText:
	text "Oops, not enough"
	line "money…"
	done

CeladonVendingNoSpaceText:
	text "There's no more"
	line "room for stuff…"
	done

CeladonDeptStoreRoofSuperNerdText:
	text "A vending machine"
	line "with a prize rou-"
	cont "lette…"

	para "You never see"
	line "those anymore."
	done

CeladonDeptStoreRoofLittleGirlText:
	text "Aww! There's no"
	line "games here!"

	para "I wanted to play…"
	done

CeladonDeptStoreRoofDirectoryText:
	text "ROOFTOP SQUARE"
	line "VENDING MACHINES"
	done

CeladonDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  2, CELADON_DEPT_STORE_5F, 2

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_UP, CeladonDeptStoreRoofVendingMachine
	bg_event 11,  1, BGEVENT_UP, CeladonDeptStoreRoofVendingMachine
	bg_event 12,  2, BGEVENT_UP, CeladonDeptStoreRoofVendingMachine
	bg_event 14,  2, BGEVENT_READ, CeladonDeptStoreRoofDirectory

	def_object_events
	object_event 10,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStoreRoofSuperNerdScript, -1
	object_event  5,  5, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStoreRoofLittleGirlScript, -1
