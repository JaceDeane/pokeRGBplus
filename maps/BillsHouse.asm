	object_const_def
	const BILLSHOUSE_BILL_POKEMON
	const BILLSHOUSE_BILL1
	const BILLSHOUSE_BILL2

BillsHouse_MapScripts:
	def_scene_scripts
	scene_script BillsHouseNoopScene, SCENE_BILLSHOUSE_BILL_IS_A_POKEMON
	scene_script BillsHouseNoopScene, SCENE_BILLSHOUSE_BILL_USED_CELL_SEPARATOR
	scene_script BillsHouseNoopScene, SCENE_BILLSHOUSE_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, BillsHouseBillCallback

BillsHouseNoopScene:
	end

BillsHouseBillCallback:
	checkscene
	ifequal SCENE_BILLSHOUSE_BILL_IS_A_POKEMON, .BillIsAPokemon
	ifequal SCENE_BILLSHOUSE_NOOP, .BillsCollection
	endcallback
	
.BillIsAPokemon
	appear BILLSHOUSE_BILL_POKEMON
	moveobject BILLSHOUSE_BILL1, 1, 2
    endcallback

.BillsCollection
	clearevent EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
	endcallback

BillIsAPokemonScript:
	faceplayer
	opentext
	writetext BillsHouseBillImNotAPokemonText
	yesorno
	iftrue .use_machine
	writetext BillsHouseBillNoYouGottaHelpText
	promptbutton
.use_machine
	writetext BillsHouseBillUseSeparationSystemText
	waitbutton
	closetext
	readvar VAR_XCOORD
		getnum STRING_BUFFER_3
		ifequal 4, .standing_above
	applymovement BILLSHOUSE_BILL_POKEMON, BillsHouseWalkToMachineMovement
	sjump .ok
.standing_above
	applymovement BILLSHOUSE_BILL_POKEMON, BillsHouseWalkAroundPlayerMovement
.ok
	playsound SFX_ENTER_DOOR
	disappear BILLSHOUSE_BILL_POKEMON
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	waitsfx
	end

BillSSTicketScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET
	iftrue .got_ss_ticket
	writetext BillsHouseBillThankYouText
	promptbutton
	verbosegiveitem S_S_TICKET
	iffalse .bag_full
	closetext
	setevent EVENT_GOT_SS_TICKET
	setevent EVENT_USED_CELL_SEPARATOR_ON_BILL
	setscene SCENE_BILLSHOUSE_NOOP
	end

.got_ss_ticket
	writetext BillsHouseBillWhyDontYouGoInsteadOfMeText
	waitbutton
	closetext
	end

.bag_full
	writetext SSTicketNoRoomText
	waitbutton
	closetext
	end

BillCheckOutMyPokemonScript:
	jumptextfaceplayer BillsHouseBillCheckOutMyRarePokemonText
	end

BillsHouseBillsPCScript:
	; jumpstd BillsPCScript
	opentext
	checkevent EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
	iffalse .displayBillsHousePokemonList
	; checkevent EVENT_USED_CELL_SEPARATOR_ON_BILL
	; iftrue .displayBillsHouseMonitorText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .doCellSeparator
; .displayBillsHouseMonitorText
	writetext BillsHouseMonitorText ; Default text
	waitbutton
	closetext
	end

.doCellSeparator
	writetext BillsHouseInitiatedText
	playmusic MUSIC_NONE
	pause 8;16 -- pauses halve from R/B
	playsound SFX_PUSH_BUTTON ; SFX_SWITCH (R/B)
	waitsfx
	closetext
	pause 30;60
	pause 16;32
	playsound SFX_SECOND_PART_OF_ITEMFINDER ; SFX_TINK (R/B)
	waitsfx
	pause 40;80
	playsound SFX_ESCAPE_ROPE ; SFX_SHRINK (R/B)
	waitsfx
	pause 24;48
	playsound SFX_SECOND_PART_OF_ITEMFINDER ; SFX_TINK (R/B)
	waitsfx
	pause 16;32
	playsound SFX_ITEM ; SFX_GET_ITEM_1 (R/B) ; TODO -- Still the G/S fanfare
	waitsfx
	playsound SFX_ENTER_DOOR
	waitsfx
	special RestartMapMusic
	setscene SCENE_BILLSHOUSE_BILL_USED_CELL_SEPARATOR
	clearevent EVENT_USED_CELL_SEPARATOR_ON_BILL
	appear BILLSHOUSE_BILL1
	applymovement BILLSHOUSE_BILL1, BillsHouseExitMachineMovement
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_MET_BILL
	special MetBill ; Changes <BILL> in "SOMEONE's PC" to "BILL's PC"
	end

.displayBillsHousePokemonList
	writetext BillsHousePokemonListText1
	promptbutton
BillsHousePokemonList_LoopScript:
	writetext BillsHousePokemonListText2
.Menu:
	loadmenu BillsHousePokemonListMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Eevee
	ifequal 2, .Flareon
	ifequal 3, .Jolteon
	ifequal 4, .Vaporeon
	ifequal 5, BillsHousePokemonList_LoopScript.Menu
	sjump BillsHousePokemonListCancelScript

.Eevee:
	setval EEVEE
	special ShowPokedexEntry
	sjump BillsHousePokemonList_LoopScript

.Flareon:
	setval FLAREON
	special ShowPokedexEntry
	sjump BillsHousePokemonList_LoopScript

.Jolteon:
	setval JOLTEON
	special ShowPokedexEntry
	sjump BillsHousePokemonList_LoopScript

.Vaporeon:
	setval VAPOREON
	special ShowPokedexEntry
	sjump BillsHousePokemonList_LoopScript

BillsHousePokemonListCancelScript:
	closetext
	end

BillsHousePokemonListMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y-1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "EEVEE@"
	db "FLAREON@"
	db "JOLTEON@"
	db "VAPOREON@"
	db "CANCEL@"

	; call PrintText
	; xor a
	; ld [wMenuItemOffset], a ; not used
	; ld [wCurrentMenuItem], a
	; ld [wLastMenuItem], a
	; ld a, A_BUTTON | B_BUTTON
	; ld [wMenuWatchedKeys], a
	; ld a, 4
	; ld [wMaxMenuItem], a
	; ld a, 2
	; ld [wTopMenuItemY], a
	; ld a, 1
	; ld [wTopMenuItemX], a
; .billsPokemonLoop
	; ld hl, wStatusFlags5
	; set BIT_NO_TEXT_DELAY, [hl]
	; hlcoord 0, 0
	; ld b, 10
	; ld c, 9
	; call TextBoxBorder
	; hlcoord 2, 2
	; ld de, BillsMonListText
	; call PlaceString
	; ld hl, BillsHousePokemonListText2
	; call PrintText
	; call SaveScreenTilesToBuffer2
	; call HandleMenuInput
	; bit BIT_B_BUTTON, a
	; jr nz, .cancel
	; ld a, [wCurrentMenuItem]
	; add EEVEE
	; cp EEVEE
	; jr z, .displayPokedex
	; cp FLAREON
	; jr z, .displayPokedex
	; cp JOLTEON
	; jr z, .displayPokedex
	; cp VAPOREON
	; jr z, .displayPokedex
	; jr .cancel
; .displayPokedex
	; call DisplayPokedex
	; call LoadScreenTilesFromBuffer2
	; jr .billsPokemonLoop
; .cancel
	; ld hl, wStatusFlags5
	; res BIT_NO_TEXT_DELAY, [hl]
	; call LoadScreenTilesFromBuffer2
	; jp TextScriptEnd

; BillsHousePokemonListText1:
	; text_far _BillsHousePokemonListText1
	; text_end

; BillsMonListText:
	; db   "EEVEE"
	; next "FLAREON"
	; next "JOLTEON"
	; next "VAPOREON"
	; next "CANCEL@"

; BillsHousePokemonListText2:
	; text_far _BillsHousePokemonListText2
	; text_end
	end


BillsHouseWalkToMachineMovement:
	step UP
	step UP
	step UP
	step_end

BillsHouseWalkAroundPlayerMovement:
	step RIGHT
	step UP
	step UP
	step LEFT
	step UP
	step_end

BillsHouseExitMachineMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step_end

BillsHouseBillImNotAPokemonText:
	text "Hiya! I'm a"
	line "#MON…"
	
	para "…No I'm not!"

	para "Call me BILL!"
	
	para "I'm a true blue"
	line "#MANIAC!"
	
	para "Hey!"
	
	para "What's with that"
	line "skeptical look?"

	para "I'm not joshing"
	line "you, I screwed up"
	
	para "an experiment and"
	line "got combined with"
	cont "a #MON!"

	para "So, how about it?"
	line "Help me out here!"
	done

BillsHouseBillUseSeparationSystemText:
	text "When I'm in the"
	line "TELEPORTER, go to"

	para "my PC and run the"
	line "Cell Separation"
	cont "System!"
	done

BillsHouseBillNoYouGottaHelpText:
	text "No!? Come on, you"
	line "gotta help a guy"
	cont "in deep trouble!"

	para "What do you say,"
	line "chief? Please?"
	
	para "OK? All right!"
	done

BillsHouseBillThankYouText:
	text "BILL: Yeehah!"
	line "Thanks, bud! I"
	cont "owe you one!"

	para "So, did you come"
	line "to see my #MON"
	cont "collection?"
	
	para "You didn't?"
	line "That's a bummer."

	para "I've got to thank"
	line "you…"
	
	para "Oh here, maybe"
	line "this'll do."
	done

SSTicketNoRoomText:
	text "You've got too"
	line "much stuff, bud!"
	done

BillsHouseBillWhyDontYouGoInsteadOfMeText:
	text "That cruise ship,"
	line "the S.S.ANNE,"
	
	para "is in VERMILION"
	line "CITY."
	
	para "Its passengers"
	line "are all trainers!"

	para "They invited me"
	line "to their party,"
	
	para "but I can't stand"
	line "fancy do's."
	
	para "Why don't you go"
	line "instead of me?"
	done

BillsHouseBillCheckOutMyRarePokemonText:
	text "BILL: Look, bud,"
	line "just check out"
	
	para "some of my rare"
	line "#MON on my PC!"
	done

BillsHouseMonitorText:
	text "TELEPORTER is"
	line "displayed on the"
	cont "PC monitor."
	done

BillsHouseInitiatedText:
	text "<PLAYER> initiated"
	line "TELEPORTER's Cell"
	cont "Separator!"
	done

BillsHousePokemonListText1:
	text "BILL's favorite"
	line "#MON list!"
	done

BillsHousePokemonListText2:
	text "Which #MON do"
	line "you want to see?"
	done

BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events

	def_bg_events
	bg_event  1,  4, BGEVENT_UP, BillsHouseBillsPCScript

	def_object_events
	object_event  6,  5, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillIsAPokemonScript, EVENT_MET_BILL ; Event resets when re-entering map in R/B
	object_event  4,  4, SPRITE_BILL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillSSTicketScript, EVENT_USED_CELL_SEPARATOR_ON_BILL
	object_event  6,  5, SPRITE_BILL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillCheckOutMyPokemonScript, EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
