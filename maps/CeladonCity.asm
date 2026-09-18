	object_const_def
	const CELADONCITY_LITTLE_GIRL
	const CELADONCITY_GRAMPS1
	const CELADONCITY_GIRL
	const CELADONCITY_GRAMPS2
	const CELADONCITY_GRAMPS3
	const CELADONCITY_FISHER
	const CELADONCITY_POLIWRATH
	const CELADONCITY_ROCKET1
	const CELADONCITY_ROCKET2

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeladonCityFlypointCallback

CeladonCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCityLittleGirlScript:
	jumptextfaceplayer CeladonCityLittleGirlText
	
CeladonCityGramps1Script:
	jumptext CeladonCityGramps1Text ; Do not faceplayer

CeladonCityGirlScript:
	jumptextfaceplayer CeladonCityGirlText

CeladonCityGramps2Script:
	jumptextfaceplayer CeladonCityGramps2Text

CeladonCityGramps3Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM41_SOFTBOILED
	iftrue .AlreadyGotItem
	writetext CeladonCityGramps3Text
	promptbutton
	verbosegiveitem TM_SOFTBOILED
	iffalse .Done
	setevent EVENT_GOT_TM41_SOFTBOILED
.AlreadyGotItem:
	writetext CeladonCityGramps3TM41ExplanationText
	waitbutton
.Done:
	closetext
	end

CeladonCityFisherScript:
	jumptextfaceplayer CeladonCityFisherText

CeladonCityPoliwrath:
	opentext
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	waitbutton
	closetext
	end

CeladonCityRocket1Script:
	jumptextfaceplayer CeladonCityRocket1Text

CeladonCityRocket2Script:
	jumptextfaceplayer CeladonCityRocket2Text

CeladonCityTrainerTips1:
	jumptext CeladonCityTrainerTips1Text

CeladonCitySign:
	jumptext CeladonCitySignText

CeladonCityPokecenterSign:
	jumpstd PokecenterSignScript

CeladonGymSign:
	jumptext CeladonGymSignText

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText

CeladonCityTrainerTips2:
	jumptext CeladonCityTrainerTips2Text

CeladonCityPrizeExchangeSign:
	jumptext CeladonCityPrizeExchangeSignText

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText

; CeladonCityHiddenPpUp:
	; hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonCityLittleGirlText:
	text "I got my KOFFING"
	line "in CINNABAR!"

	para "It's nice, but it"
	line "breathes poison"
	cont "when it's angry!"
	done

CeladonCityGramps1Text:
	text "Nihihi! This GYM"
	line "is great! Only"

	para "girls are allowed" ; says women in Gen I, but girls is more accurate
	line "here!"
	done

CeladonCityGirlText:
	text "The GAME CORNER"
	line "is bad for our"
	cont "city's image!"
	done

CeladonCityGramps2Text:
	text "Moan! I blew it"
	line "all at the slots!"

	para "I knew I should"
	line "have cashed in my"
	cont "coins for prizes!"
	done

CeladonCityGramps3Text:
	text "Hello, there!"

	para "I've seen you,"
	line "but I never had a"
	cont "chance to talk!"

	para "Here's a gift for"
	line "dropping by!"
	done ; prompt

; CeladonCityGramps3ReceivedTM41Text:
	; text "<PLAYER> received"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

CeladonCityGramps3TM41ExplanationText:
	text "TM41 teaches"
	line "SOFTBOILED!"

	para "Only one #MON"
	line "can use it!"

	para "That #MON is"
	line "CHANSEY!"
	done

; CeladonCityGramps3TM41NoRoomText:
	; text "Oh, your pack is"
	; line "full of items!"
	; done

CeladonCityFisherText:
	text "This is my trusted"
	line "pal, POLIWRATH!"

	para "It evolved from"
	line "POLIWHIRL when I"

	para "used a WATER STONE"
	line "on it!"
	done

CeladonCityPoliwrathText:
	text "POLIWRATH: Ribi"
	line "ribit!"
	done

CeladonCityRocket1Text:
	text "What are you"
	line "staring at?"
	done

CeladonCityRocket2Text:
	text "Keep out of TEAM"
	line "ROCKET's way!"
	done

CeladonCityTrainerTips1Text:
	text "TRAINER TIPS"

	para "X ACCURACY boosts"
	line "the accuracy of"
	cont "a #MON's moves!"

	para "DIRE HIT jacks up"
	line "the likelihood of"
	cont "critical hits!"

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCitySignText:
	text "CELADON CITY"

	para "The City of"
	line "Rainbow Dreams"
	done

CeladonGymSignText:
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"

	para "The Nature-Loving"
	line "Princess"
	done

CeladonCityMansionSignText:
	text "CELADON MANSION"
	done

CeladonCityDeptStoreSignText:
	text "Find What You"
	line "Need at CELADON"
	cont "DEPT.STORE!"
	done

CeladonCityTrainerTips2Text:
	text "TRAINER TIPS"

	para "GUARD SPEC."
	line "protects #MON"

	para "against SPECIAL"
	line "attacks such as"
	cont "fire and water."

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCityPrizeExchangeSignText:
	text "Coins Exchanged"
	line "for Prizes!--"
	cont "PRIZE EXCHANGE"
	done

CeladonCityGameCornerSignText:
	text "ROCKET GAME CORNER"

	para "The Playground"
	line "for Grown-ups!"
	done

CeladonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	; warp_event  8, 13, CELADON_DEPT_STORE_1F, 1
	; warp_event 24,  9, CELADON_MANSION_1F, 1
	; warp_event 24,  3, CELADON_MANSION_1F, 3
	; warp_event 25,  3, CELADON_MANSION_1F, 3
	; warp_event 41,  9, CELADON_POKECENTER_1F, 1
	; warp_event 28, 19, CELADON_GAME_CORNER, 1
	; warp_event 33, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	; warp_event 12, 27, CELADON_GYM, 1
	; warp_event 31, 27, CELADON_CAFE, 1
	
	warp_event  8, 13, CELADON_DEPT_STORE_1F, 1 ;CELADON_MART_1F (R/B)
	warp_event 10, 13, CELADON_DEPT_STORE_1F, 3 ;CELADON_MART_1F (R/B)
	warp_event 24,  9, CELADON_MANSION_1F, 1
	warp_event 24,  3, CELADON_MANSION_1F, 3
	warp_event 25,  3, CELADON_MANSION_1F, 3
	warp_event 41,  9, CELADON_POKECENTER_1F, 1
	warp_event 12, 27, CELADON_GYM, 1
	warp_event 28, 19, CELADON_GAME_CORNER, 1 ;GAME_CORNER (R/B)
	warp_event 39, 19, CELADON_DEPT_STORE_1F, 1 ;unused R/B (5F)
	warp_event 33, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1 ;GAME_CORNER_PRIZE_ROOM (R/B)
	warp_event 31, 27, CELADON_CAFE, 1 ;CELADON_DINER (R/B)
	; warp_event 35, 27, CELADON_CHIEF_HOUSE, 1
	; warp_event 43, 27, CELADON_HOTEL, 1

	def_coord_events

	def_bg_events
	bg_event 27, 15, BGEVENT_READ, CeladonCityTrainerTips1
	bg_event 19, 15, BGEVENT_READ, CeladonCitySign
	bg_event 42,  9, BGEVENT_READ, CeladonCityPokecenterSign
	bg_event 13, 29, BGEVENT_READ, CeladonGymSign
	bg_event 21,  9, BGEVENT_READ, CeladonCityMansionSign
	bg_event 12, 13, BGEVENT_READ, CeladonCityDeptStoreSign
	bg_event 39, 21, BGEVENT_READ, CeladonCityTrainerTips2
	bg_event 33, 21, BGEVENT_READ, CeladonCityPrizeExchangeSign
	bg_event 27, 21, BGEVENT_READ, CeladonCityGameCornerSign
	; bg_event 48, 15, BGEVENT_ITEM, CeladonCityHiddenPpUp

	def_object_events
	object_event  8, 17, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityLittleGirlScript, -1
	object_event 11, 28, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps1Script, -1
	object_event 14, 19, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityGirlScript, -1
	object_event 25, 22, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps2Script, -1
	object_event 22, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps3Script, -1
	object_event 32, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityFisherScript, -1
	object_event 30, 12, SPRITE_POLIWAG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityPoliwrath, -1
	object_event 32, 29, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityRocket1Script, -1
	object_event 42, 14, SPRITE_ROCKET, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCityRocket2Script, -1