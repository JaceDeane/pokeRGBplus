	object_const_def
	const BILLSHOUSE_BILL_POKEMON
	const BILLSHOUSE_BILL1
	const BILLSHOUSE_BILL2

BillsHouse_MapScripts:
	def_scene_scripts
	scene_script BillsIsAPokemonScene, SCENE_BILLSHOUSE_BILL_IS_A_POKEMON
	scene_script BillsInTransporterScene, SCENE_BILLSHOUSE_BILL_IN_TRANSPORTER
	scene_script BillsHouseBillExitsMachineScene, SCENE_BILLSHOUSE_BILL_EXITS_MACHINE ; (?)
	scene_script BillsHouseNoopScene, SCENE_BILLSHOUSE_NOOP

	def_callbacks

BillsIsAPokemonScene:
	end

BillsInTransporterScene:
	disappear BILLSHOUSE_BILL_POKEMON
	disappear BILLSHOUSE_BILL1
	; clearevent EVENT_BILL_SAID_USE_CELL_SEPARATOR
	; setscene SCENE_BILLSHOUSE_BILL_IS_A_POKEMON
	end

BillsHouseBillExitsMachineScene: ; Needed (?) Can this be integrated into the PC script?
	; SCENE
	;Bill walks out of machine
	setevent EVENT_MET_BILL
	end

BillsHouseNoopScene:
	end

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
	setscene SCENE_BILLSHOUSE_BILL_IN_TRANSPORTER ; (?)
	setevent EVENT_BILL_SAID_USE_CELL_SEPARATOR
	waitsfx
	end

BillSSTicketScript:
	;
	end

BillCheckOutMyPokemonScript:
	jumptextfaceplayer BillsHouseBillCheckOutMyRarePokemonText
	end

BillsHouseBillsPCScript:
	;jumpstd BillsPCScript
	opentext
	checkevent EVENT_LEFT_BILLS_HOUSE_AFTER_HELPING
	iftrue .displayBillsHousePokemonList
	;checkevent EVENT_USED_CELL_SEPARATOR_ON_BILL
	;iftrue .displayBillsHouseMonitorText
	checkevent EVENT_BILL_SAID_USE_CELL_SEPARATOR
	iftrue .doCellSeparator
;.displayBillsHouseMonitorText
	writetext BillsHouseMonitorText
	waitbutton
	closetext
	end

.doCellSeparator
	writetext BillsHouseInitiatedText
	promptbutton
	closetext
	special FadeOutMusic
	
	; playsound SFX_SECOND_PART_OF_ITEMFINDER
	; SFX_BOOT_PC
	; SFX_CHOOSE_PC_OPTION
	
	pause 16
	playsound SFX_CHOOSE_PC_OPTION ; ???
	;playsound SFX_SWITCH
	waitsfx
	pause 60
	pause 32
	playsound SFX_SECOND_PART_OF_ITEMFINDER ; ??? SFX_TINGLE ? SFX_TWINKLE ?
	; playsound SFX_TINK
	waitsfx
	pause 80
	playsound SFX_ESCAPE_ROPE ; ???
	; playsound SFX_SHRINK
	waitsfx
	pause 48
	playsound SFX_SECOND_PART_OF_ITEMFINDER ; Sounds like PokeBalls being placed
	; playsound SFX_TINK
	waitsfx
	pause 32
	playsound SFX_ITEM ; Still the G/S fanfare
	waitsfx
	playmapmusic
	
	; ld a, SFX_STOP_ALL_MUSIC
	; ld [wNewSoundID], a
	; call PlaySound
	; ld c, 16
	; call DelayFrames
	; ld a, SFX_SWITCH
	; call PlaySound
	; call WaitForSoundToFinish
	; ld c, 60
	; call DelayFrames
	; jp TextScriptEnd
	
	; FALLTHROUGH ; (R/B)
	
	; ld c, 32
	; call DelayFrames
	; ld a, SFX_TINK ; == ???
	; call PlaySound
	; call WaitForSoundToFinish
	; ld c, 80
	; call DelayFrames
	; ld a, SFX_SHRINK ; == ???
	; call PlaySound
	; call WaitForSoundToFinish
	; ld c, 48
	; call DelayFrames
	; ld a, SFX_TINK ; == ???
	; call PlaySound
	; call WaitForSoundToFinish
	; ld c, 32
	; call DelayFrames
	; ld a, SFX_GET_ITEM_1 ; == SFX_ITEM
	; call PlaySound
	; call WaitForSoundToFinish
	; call PlayDefaultMusic
	setevent EVENT_USED_CELL_SEPARATOR_ON_BILL
	end
.displayBillsHousePokemonList
	; ld hl, BillsHousePokemonListText1
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

; BillsGrandpa:
	; faceplayer
	; opentext
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue .JustShowedSomething
	; checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	; iftrue .GotThunderstone
	; checkevent EVENT_MET_BILLS_GRANDPA
	; iftrue .MetGrandpa
	; writetext BillsGrandpaIntroText
	; promptbutton
	; setevent EVENT_MET_BILLS_GRANDPA
; .MetGrandpa:
	; checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	; iftrue .ShowedPichu
	; checkevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	; iftrue .ShowedGrowlitheVulpix
	; checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	; iftrue .ShowedStaryu
	; checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	; iftrue .ShowedOddish
	; checkevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	; iftrue .ShowedLickitung
	; writetext BillsGrandpaLickitungText
	; promptbutton
	; writetext BillsGrandpaAskToSeeMonText
	; yesorno
	; iffalse .SaidNo
	; scall .ExcitedToSee
	; special BillsGrandfather
	; iffalse .SaidNo
	; ifnotequal LICKITUNG, .WrongPokemon
	; scall .CorrectPokemon
	; setevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	; sjump .ShowedLickitung

; .GotEverstone:
	; writetext BillsGrandpaOddishText
	; promptbutton
	; writetext BillsGrandpaAskToSeeMonText
	; yesorno
	; iffalse .SaidNo
	; scall .ExcitedToSee
	; special BillsGrandfather
	; iffalse .SaidNo
	; ifnotequal ODDISH, .WrongPokemon
	; scall .CorrectPokemon
	; setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	; sjump .ShowedOddish

; .GotLeafStone:
	; writetext BillsGrandpaStaryuText
	; promptbutton
	; writetext BillsGrandpaAskToSeeMonText
	; yesorno
	; iffalse .SaidNo
	; scall .ExcitedToSee
	; special BillsGrandfather
	; iffalse .SaidNo
	; ifnotequal STARYU, .WrongPokemon
	; scall .CorrectPokemon
	; setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	; sjump .ShowedStaryu

; .GotWaterStone:
	; checkver
	; iftrue .AskVulpix
	; writetext BillsGrandpaGrowlitheText
	; promptbutton
	; writetext BillsGrandpaAskToSeeMonText
	; yesorno
	; iffalse .SaidNo
	; scall .ExcitedToSee
	; special BillsGrandfather
	; iffalse .SaidNo
	; ifnotequal GROWLITHE, .WrongPokemon
	; scall .CorrectPokemon
	; setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	; sjump .ShowedGrowlitheVulpix

; .AskVulpix:
	; writetext BillsGrandpaVulpixText
	; promptbutton
	; writetext BillsGrandpaAskToSeeMonText
	; yesorno
	; iffalse .SaidNo
	; scall .ExcitedToSee
	; special BillsGrandfather
	; iffalse .SaidNo
	; ifnotequal VULPIX, .WrongPokemon
	; scall .CorrectPokemon
	; setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	; sjump .ShowedGrowlitheVulpix

; .GotFireStone:
	; writetext BillsGrandpaPichuText
	; promptbutton
	; writetext BillsGrandpaAskToSeeMonText
	; yesorno
	; iffalse .SaidNo
	; scall .ExcitedToSee
	; special BillsGrandfather
	; iffalse .SaidNo
	; ifnotequal PICHU, .WrongPokemon
	; scall .CorrectPokemon
	; setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	; sjump .ShowedPichu

; .ShowedLickitung:
	; checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	; iftrue .GotEverstone
	; scall .ReceiveItem
	; verbosegiveitem EVERSTONE
	; iffalse .BagFull
	; setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; closetext
	; end

; .ShowedOddish:
	; checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	; iftrue .GotLeafStone
	; scall .ReceiveItem
	; verbosegiveitem LEAF_STONE
	; iffalse .BagFull
	; setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; closetext
	; end

; .ShowedStaryu:
	; checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	; iftrue .GotWaterStone
	; scall .ReceiveItem
	; verbosegiveitem WATER_STONE
	; iffalse .BagFull
	; setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; closetext
	; end

; .ShowedGrowlitheVulpix:
	; checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	; iftrue .GotFireStone
	; scall .ReceiveItem
	; verbosegiveitem FIRE_STONE
	; iffalse .BagFull
	; setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; closetext
	; end

; .ShowedPichu:
	; scall .ReceiveItem
	; verbosegiveitem THUNDERSTONE
	; iffalse .BagFull
	; setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	; closetext
	; end

; .ExcitedToSee:
	; writetext BillsGrandpaExcitedToSeeText
	; promptbutton
	; end

; .SaidNo:
	; writetext BillsGrandpaYouDontHaveItTextText
	; waitbutton
	; closetext
	; end

; .CorrectPokemon:
	; writetext BillsGrandpaShownPokemonText
	; promptbutton
	; end

; .ReceiveItem:
	; writetext BillsGrandpaTokenOfAppreciationText
	; promptbutton
	; end

; .JustShowedSomething:
	; writetext BillsGrandpaComeAgainText
	; waitbutton
	; closetext
	; end

; .GotThunderstone:
	; writetext BillsGrandpaShownAllThePokemonText
	; waitbutton
	; closetext
	; end

; .WrongPokemon:
	; writetext BillsGrandpaWrongPokemonText
	; waitbutton
	; closetext
	; end

; .BagFull:
	; closetext
	; end

; BillsGrandpaIntroText:
	; text "Hm? You know BILL?"
	; line "He's my grandson."

	; para "He's in JOHTO. He"
	; line "does something"

	; para "with PCs, so I'm"
	; line "house-sitting."
	; done

; BillsGrandpaAskToSeeMonText:
	; text "If you have that"
	; line "#MON, may I see"
	; cont "it, please?"
	; done

; BillsGrandpaExcitedToSeeText:
	; text "You will show me?"
	; line "How good of you!"
	; done

; BillsGrandpaYouDontHaveItTextText:
	; text "You don't have it?"
	; line "That's too bad…"
	; done

; BillsGrandpaShownPokemonText:
	; text "Ah, so that is"
	; line "@"
	; text_ram wStringBuffer3
	; text "?"

	; para "Isn't it cute!"
	; line "That's so kind of"
	; cont "you."
	; done

; BillsGrandpaTokenOfAppreciationText:
	; text "Thanks!"

	; para "This is a token of"
	; line "my appreciation."
	; done

; BillsGrandpaComeAgainText:
	; text "Come visit again"
	; line "sometime."
	; done

; BillsGrandpaShownAllThePokemonText:
	; text "Thanks for showing"
	; line "me so many cute"
	; cont "#MON."

	; para "I really enjoyed"
	; line "myself. I'm glad"

	; para "I've lived such a"
	; line "long life."
	; done

; BillsGrandpaWrongPokemonText:
	; text "Hm?"

	; para "That's not the"
	; line "#MON that I was"
	; cont "told about."
	; done

; BillsGrandpaLickitungText:
	; text "My grandson BILL"
	; line "told me about a"

	; para "#MON that has a"
	; line "long tongue."
	; done

; BillsGrandpaOddishText:
	; text "Ah, my grandson"
	; line "mentioned a round,"

	; para "green #MON that"
	; line "has leaves growing"
	; cont "on its head."
	; done

; BillsGrandpaStaryuText:
	; text "Do you know of a"
	; line "sea #MON that"

	; para "has a red sphere"
	; line "in its body?"

	; para "You know, the one"
	; line "that's shaped like"
	; cont "a star?"

	; para "I heard that it"
	; line "appears at night."

	; para "I would surely"
	; line "like to see it."
	; done

; BillsGrandpaGrowlitheText:
	; text "BILL told me about"
	; line "a #MON that is"

	; para "very loyal to its"
	; line "trainer."

	; para "It's supposed to"
	; line "ROAR well."
	; done

; BillsGrandpaVulpixText:
	; text "I heard about a"
	; line "cute #MON that"
	; cont "has six tails."

	; para "I would love to"
	; line "hug a cute #MON"
	; cont "like that."
	; done

; BillsGrandpaPichuText:
	; text "Do you know that"
	; line "hugely popular"
	; cont "#MON?"

	; para "The #MON that"
	; line "has a yellow body"
	; cont "and red cheeks."

	; para "I would love to"
	; line "see what it looks"

	; para "like before it"
	; line "evolves."
	; done

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
	line "you..."
	
	para "Oh here, maybe"
	line "this'll do."
	done ; prompt

; SSTicketReceivedText:
	; text "<PLAYER> received"
	; line "an @"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

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
	done ; prompt

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
	;BILLS PC -- before and after
	bg_event  1,  4, BGEVENT_UP, BillsHouseBillsPCScript

	def_object_events
	object_event  6,  5, SPRITE_FAIRY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillIsAPokemonScript, -1;EVENT_BILL_SAID_USE_CELL_SEPARATOR ; Script should be initialised -- or does it reset every time in R/B?
	object_event  4,  4, SPRITE_BILL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillSSTicketScript, EVENT_MET_BILL_2 ; ***
	object_event  6,  5, SPRITE_BILL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillCheckOutMyPokemonScript, EVENT_MET_BILL_2 ; ***
