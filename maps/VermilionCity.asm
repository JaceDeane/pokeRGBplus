	object_const_def
	const VERMILIONCITY_BEAUTY
	const VERMILIONCITY_GAMBLER1
	const VERMILIONCITY_SAILOR1
	const VERMILIONCITY_GAMBLER2
	const VERMILIONCITY_MACHOP
	const VERMILIONCITY_SAILOR2

VermilionCity_MapScripts:
	def_scene_scripts
	scene_script VermilionCityNoopScene, SCENE_VERMILIONCITY_NOOP
	scene_script VermilionCityPlayerCanPassScene, SCENE_VERMILIONCITY_PLAYER_CAN_PASS
	scene_script VermilionCitySSAnneLeft, SCENE_VERMILIONCITY_SS_ANNE_LEFT

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointCallback

VermilionCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCityNoopScene:
	end

VermilionCityPlayerCanPassScene:
	end

VermilionCitySSAnneLeft:
	applymovement PLAYER, VermilionCityPlayerWalksUpMovement
	applymovement PLAYER, VermilionCityPlayerWalksUpMovement
	setscene SCENE_VERMILIONCITY_NOOP
	end

VermilionCityBeautyScript:
	jumptextfaceplayer VermilionCityBeautyText

VermilionCityGambler1Script:
	faceplayer
	opentext
	checkevent EVENT_SS_ANNE_LEFT
	iftrue .ship_departed
	writetext VermilionCityGambler1DidYouSeeText
	waitbutton
	closetext
	end

.ship_departed:
	writetext VermilionCityGambler1SSAnneDepartedText
	waitbutton
	closetext
	end

VermilionCityTicketCheckScene:
	turnobject VERMILIONCITY_SAILOR1, LEFT
	turnobject PLAYER, RIGHT
	opentext
	checkevent EVENT_SS_ANNE_LEFT
	iffalse VermilionCitySailor1Script.greet_player_and_check_ticket
	writetext VermilionCitySailor1ShipSetSailText
	waitbutton
	closetext
	applymovement PLAYER, VermilionCityPlayerWalksUpMovement
	turnobject VERMILIONCITY_SAILOR1, UP
	end

VermilionCitySailor1Script:
	faceplayer
	opentext
	checkevent EVENT_SS_ANNE_LEFT
	iftrue .ship_departed
	checkscene SCENE_VERMILIONCITY_PLAYER_CAN_PASS
	iftrue .greet_player
	iffalse .greet_player_and_check_ticket
	; readvar VAR_XCOORD
	; getnum STRING_BUFFER_3
	; ifequal 18, .greet_player
	; ifequal 19, .greet_player_and_check_ticket
.greet_player
	writetext VermilionCitySailor1WelcomeToSSAnneText
	waitbutton
	closetext
	end

.greet_player_and_check_ticket
	writetext VermilionCitySailor1DoYouHaveATicketText
	waitbutton
	checkitem S_S_TICKET
	iftrue .player_has_ticket
	writetext VermilionCitySailor1YouNeedATicketText
	waitbutton
	closetext
	readvar VAR_XCOORD
	getnum STRING_BUFFER_3
	ifequal 18, .no_ticket
	end

.no_ticket
	applymovement PLAYER, VermilionCityPlayerWalksUpMovement
	turnobject VERMILIONCITY_SAILOR1, UP
	end

.player_has_ticket
	writetext VermilionCitySailor1FlashedTicketText
	waitbutton
	closetext
	setscene SCENE_VERMILIONCITY_PLAYER_CAN_PASS
	end
	
.ship_departed
	writetext VermilionCitySailor1ShipSetSailText
	waitbutton
	closetext
	end

VermilionMachopOwner:
	jumptextfaceplayer VermilionCityGambler2Text

VermilionMachop:
	opentext
	writetext VermilionCityMachopText
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionCityMachopStompingTheLandFlatText
	waitbutton
	closetext
	end

VermilionCitySailor2Script: ; Disappears after the S.S. ANNE departs
	jumptextfaceplayer VermilionCitySailor2Text

; VermilionSnorlax:
	; opentext
	; special SnorlaxAwake
	; iftrue .Awake
	; writetext VermilionCitySnorlaxSleepingText
	; waitbutton
	; closetext
	; end

; .Awake:
	; writetext VermilionCityRadioNearSnorlaxText
	; pause 15
	; cry SNORLAX
	; closetext
	; loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	; loadwildmon SNORLAX, 50
	; startbattle
	; disappear VERMILIONCITY_BIG_SNORLAX
	; setevent EVENT_FOUGHT_SNORLAX
	; reloadmapafterbattle
	; end

; VermilionGymBadgeGuy:
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
	; iftrue .AlreadyGotItem
	; readvar VAR_BADGES
	; ifequal NUM_BADGES, .AllBadges
	; ifgreater 13, .MostBadges
	; ifgreater 9, .SomeBadges
	; writetext VermilionCityBadgeGuyTrainerText
	; waitbutton
	; closetext
	; end

; .SomeBadges:
	; writetext VermilionCityBadgeGuySomeBadgesText
	; waitbutton
	; closetext
	; end

; .MostBadges:
	; writetext VermilionCityBadgeGuyMostBadgesText
	; waitbutton
	; closetext
	; end

; .AllBadges:
	; writetext VermilionCityBadgeGuyAllBadgesText
	; promptbutton
	; verbosegiveitem HP_UP
	; iffalse .Done
	; setevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
; .AlreadyGotItem:
	; writetext VermilionCityBadgeGuyBattleEdgeText
	; waitbutton
; .Done:
	; closetext
	; end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionCityNoticeSign:
	jumptext VermilionCityNoticeSignText

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionGymSign:
	jumptext VermilionCityGymSignText

VermilionCityHarborSign:
	jumptext VermilionCityHarborSignText

; VermilionCityHiddenFullHeal:
	; hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionCityPlayerWalksUpMovement:
	step UP
	step_end

; VermilionCitySnorlaxSleepingText:
	; text "SNORLAX is snoring"
	; line "peacefully…"
	; done

; VermilionCityRadioNearSnorlaxText:
	; text "The #GEAR was"
	; line "placed near the"
	; cont "sleeping SNORLAX…"

	; para "…"

	; para "SNORLAX woke up!"
	; done

VermilionCityBeautyText:
	text "We're careful"
	line "about pollution!"

	para "We've heard GRIMER"
	line "multiplies in"
	cont "toxic sludge!"
	done

VermilionCityGambler1DidYouSeeText:
	text "Did you see the"
	line "S.S.ANNE moored"
	cont "in the harbor?"
	done

VermilionCityGambler1SSAnneDepartedText:
	text "So, the S.S.ANNE"
	line "has departed!"

	para "She'll be back in"
	line "about a year."
	done

VermilionCitySailor1WelcomeToSSAnneText:
	text "Welcome to the"
	line "S.S.ANNE!"
	done

VermilionCitySailor1DoYouHaveATicketText:
	text "Welcome to the"
	line "S.S.ANNE!"

	para "Excuse me, do you"
	line "have a ticket?"
	done;prompt

VermilionCitySailor1FlashedTicketText:
	text "<PLAYER> flashed"
	line "the S.S.TICKET!"

	para "Great! Welcome to"
	line "the S.S.ANNE!"
	done

VermilionCitySailor1YouNeedATicketText:
	text "<PLAYER> doesn't"
	line "have the needed"
	cont "S.S.TICKET."

	para "Sorry!"

	para "You need a ticket"
	line "to get aboard."
	done

VermilionCitySailor1ShipSetSailText:
	text "The ship set sail."
	done

VermilionCityGambler2Text:
	text "I'm putting up a"
	line "building on this"
	cont "plot of land."

	para "My #MON is"
	line "tamping the land."
	done

VermilionCityMachopText:
	text "MACHOP: Guoh!"
	line "Gogogoh!"
	done

VermilionCityMachopStompingTheLandFlatText:
	text "A MACHOP is"
	line "stomping the land"
	cont "flat."
	done

VermilionCitySailor2Text:
	text "The S.S.ANNE is a"
	line "famous luxury"
	cont "cruise ship."

	para "We visit VERMILION"
	line "once a year."
	done

VermilionCitySignText:
	text "VERMILION CITY"

	para "The Port of"
	line "Exquisite Sunsets"
	done

VermilionCityNoticeSignText:
	text "NOTICE!"

	para "ROUTE 12 may be"
	line "blocked off by a"
	cont "sleeping #MON."

	para "Detour through"
	line "ROCK TUNNEL to"
	cont "LAVENDER TOWN."

	para "VERMILION POLICE"
	done

PokemonFanClubSignText:
	text "#MON FAN CLUB"

	para "All #MON Fans"
	line "Welcome!"
	done

VermilionCityGymSignText:
	text "VERMILION CITY"
	line "#MON GYM"
	cont "LEADER: LT.SURGE"

	para "The Lightning"
	line "American"
	done

VermilionCityHarborSignText:
	text "VERMILION HARBOR"
	line "ENTRANCE"
	done

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  3, VERMILION_POKECENTER_1F, 1
	warp_event  9, 13, POKEMON_FAN_CLUB, 1
	warp_event 23, 13, VERMILION_MART, 1
	warp_event 12, 19, VERMILION_GYM, 1
	warp_event 23, 19, VERMILION_PIDGEY_HOUSE, 1
	warp_event 18, 31, VERMILION_DOCK, 1
	warp_event 19, 31, VERMILION_DOCK, 1
	warp_event 15, 13, VERMILION_TRADE_HOUSE, 1
	warp_event  7,  3, VERMILION_OLD_ROD_HOUSE, 1

	def_coord_events
	coord_event 18, 30, SCENE_VERMILIONCITY_NOOP, VermilionCityTicketCheckScene

	def_bg_events
	bg_event 27,  3, BGEVENT_READ, VermilionCitySign
	bg_event 37, 13, BGEVENT_READ, VermilionCityNoticeSign
	bg_event 24, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 12,  3, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event  7, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event  7, 19, BGEVENT_READ, VermilionGymSign
	bg_event 29, 15, BGEVENT_READ, VermilionCityHarborSign
	; bg_event 14, 19, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 19,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCityBeautyScript, -1
	object_event 14,  6, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityGambler1Script, -1
	object_event 19, 30, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCitySailor1Script, -1
	object_event 30,  7, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1 ; Gambler2
	object_event 29,  9, SPRITE_MACHOP_OW, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 25, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCitySailor2Script, EVENT_SS_ANNE_LEFT
	
	
