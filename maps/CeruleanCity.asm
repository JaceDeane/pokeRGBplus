	object_const_def
	const CERULEANCITY_RIVAL
	const CERULEANCITY_ROCKET
	const CERULEANCITY_COOLTRAINER_M
	const CERULEANCITY_SUPER_NERD1
	const CERULEANCITY_SUPER_NERD2
	const CERULEANCITY_GUARD1
	const CERULEANCITY_COOLTRAINER_F1
	const CERULEANCITY_SLOWPOKE
	const CERULEANCITY_COOLTRAINER_F2
	const CERULEANCITY_SUPER_NERD3
	const CERULEANCITY_GUARD2

CeruleanCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeruleanCityFlypointCallback

CeruleanCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CERULEAN
	endcallback

; Rival event

CeruleanCityRocketScript:
	faceplayer
	opentext
	writetext CeruleanCityRocketText
	waitbutton
	closetext
	; jump to event
	end

; Rocket event

CeruleanCityCooltrainerMScript:
	jumptextfaceplayer CeruleanCityCooltrainerMText

CeruleanCitySuperNerd1Script:
	jumptextfaceplayer CeruleanCitySuperNerd1Text

CeruleanCitySuperNerd2Script:
	jumptextfaceplayer CeruleanCitySuperNerd2Text

CeruleanCityGuardScript:
	jumptextfaceplayer CeruleanCityGuardText

CeruleanCitySlowbro: ; TODO convert RB event -- Both have random odds (same) of displaying different text
	opentext
	writetext CeruleanCitySlowbroTookASnoozeText
	cry SLOWBRO
	waitbutton
	closetext
	end

CeruleanCityCooltrainerF1Script: ; TODO convert RB event -- Both have random odds (same) of displaying different text
	faceplayer
	opentext
	writetext CeruleanCityCooltrainerF1SlowbroSonicboomText
	waitbutton
	closetext
	turnobject CERULEANCITY_COOLTRAINER_F1, LEFT
	opentext
	writetext CeruleanCityCooltrainerF1SlowbroPunchText
	waitbutton
	closetext
	opentext
	writetext CeruleanCitySlowbroTookASnoozeText
	cry SLOWBRO
	waitbutton
	closetext
	opentext
	writetext CeruleanCityCooltrainerF1SlowbroWithdrawText
	waitbutton
	closetext
	end

; CeruleanCityFisherScript:
	; faceplayer
	; opentext
	; checkevent EVENT_RETURNED_MACHINE_PART
	; iftrue .ReturnedMachinePart
	; checkevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	; iftrue .MetCeruleanRocket
; .ReturnedMachinePart:
	; writetext CeruleanCityFisherText
	; waitbutton
	; closetext
	; end

; .MetCeruleanRocket:
	; writetext CeruleanCityFisherRocketTipText
	; waitbutton
	; closetext
	; end

; CeruleanCityYoungsterScript:
	; faceplayer
	; opentext
	; writetext CeruleanCityYoungsterText1
	; waitbutton
	; closetext
	; checkevent EVENT_FOUND_BERSERK_GENE_IN_CERULEAN_CITY
	; iffalse .BerserkGenePingsItemfinder
	; end

; .BerserkGenePingsItemfinder:
	; waitsfx
	; playsound SFX_SECOND_PART_OF_ITEMFINDER
	; waitsfx
	; playsound SFX_TRANSACTION
	; waitsfx
	; playsound SFX_SECOND_PART_OF_ITEMFINDER
	; waitsfx
	; playsound SFX_TRANSACTION
	; waitsfx
	; playsound SFX_SECOND_PART_OF_ITEMFINDER
	; waitsfx
	; playsound SFX_TRANSACTION
	; waitsfx
	; playsound SFX_SECOND_PART_OF_ITEMFINDER
	; waitsfx
	; playsound SFX_TRANSACTION
	; waitsfx
	; showemote EMOTE_SHOCK, CERULEANCITY_YOUNGSTER, 15
	; turnobject CERULEANCITY_YOUNGSTER, LEFT
	; opentext
	; writetext CeruleanCityYoungsterText2
	; waitbutton
	; closetext
	; end

CeruleanCityCooltrainerF2Script:
	jumptextfaceplayer CeruleanCityCooltrainerF2Text

CeruleanCitySuperNerd3Script:
	jumptextfaceplayer CeruleanCitySuperNerd3Text

CeruleanCitySign:
	jumptext CeruleanCitySignText

CeruleanTrainerTipsSign:
	jumptext CeruleanTrainerTipsSignText

CeruleanCityMartSign:
	jumpstd MartSignScript

CeruleanCityPokecenterSign:
	jumpstd PokecenterSignScript

CeruleanBikeShopSign:
	jumptext CeruleanBikeShopSignText

CeruleanGymSign:
	jumptext CeruleanGymSignText

CeruleanCityRivalPreBattleText:
	text "<RIVAL>: Yo!"
	line "<PLAYER>!"

	para "You're still"
	line "struggling along"
	cont "back here?"

	para "I'm doing great!"
	line "I caught a bunch"
	cont "of strong and"
	cont "smart #MON!"

	para "Here, let me see"
	line "what you caught,"
	cont "<PLAYER>!"
	done

CeruleanCityRivalDefeatedText:
	text "Hey!"
	line "Take it easy!"
	cont "You won already!"
	prompt

CeruleanCityRivalVictoryText:
	text "Heh!"
	line "You're no match"
	cont "for my genius!"
	prompt

CeruleanCityRivalIWentToBillsText:
	text "<RIVAL>: Hey,"
	line "guess what?"

	para "I went to BILL's"
	line "and got him to"
	cont "show me his rare"
	cont "#MON!"

	para "That added a lot"
	line "of pages to my"
	cont "#DEX!"

	para "After all, BILL's"
	line "world famous as a"
	cont "#MANIAC!"

	para "He invented the"
	line "#MON Storage"
	cont "System on PC!"

	para "Since you're using"
	line "his system, go"
	cont "thank him!"

	para "Well, I better"
	line "get rolling!"
	cont "Smell ya later!"
	done

CeruleanCityRocketText:
	text "Hey! Stay out!"
	line "It's not your"
	cont "yard! Huh? Me?"

	para "I'm an innocent"
	line "bystander! Don't"
	cont "you believe me?"
	done

CeruleanCityRocketReceivedTM28Text:
	text "<PLAYER> recovered"
	line "TM28 DIG!"
	done

CeruleanCityRocketIBetterGetMovingText:
	text "I better get"
	line "moving! Bye!"
	done

CeruleanCityRocketTM28NoRoomText:
	text "Make room for"
	line "this!"

	para "I can't run until"
	line "I give it to you!"
	done

CeruleanCityRocketIGiveUpText:
	text "Stop!"
	line "I give up! I'll"
	cont "leave quietly!"
	done

CeruleanCityRocketIllReturnTheTMText:
	text "OK! I'll return"
	line "the TM I stole!"
	done

CeruleanCityCooltrainerMText:
	text "You're a trainer"
	line "too? Collecting,"
	cont "fighting, it's a"
	cont "tough life."
	done

CeruleanCitySuperNerd1Text:
	text "That bush in"
	line "front of the shop"
	cont "is in the way."

	para "There might be a"
	line "way around."
	done

CeruleanCitySuperNerd2Text:
	text "You're making an"
	line "encyclopedia on"
	cont "#MON? That"
	cont "sounds amusing."
	done

CeruleanCityGuardText:
	text "The people here"
	line "were robbed."

	para "It's obvious that"
	line "TEAM ROCKET is"
	cont "behind this most"
	cont "heinous crime!"

	para "Even our POLICE"
	line "force has trouble"
	cont "with the ROCKETS!"
	done

CeruleanCityCooltrainerF1SlowbroSonicboomText:
	text "OK! SLOWBRO!"
	line "Use SONICBOOM!"
	cont "Come on, SLOWBRO"
	cont "pay attention!"
	done

CeruleanCityCooltrainerF1SlowbroPunchText:
	text "SLOWBRO, punch!"
	
	para "No! You blew it"
	line "again!"
	done

CeruleanCityCooltrainerF1SlowbroWithdrawText:
	text "SLOWBRO, WITHDRAW!"
	
	para "No! That's wrong!"

	para "It's so hard to"
	line "control #MON!"

	para "Your #MON's"
	line "obedience depends"
	cont "on your abilities"
	cont "as a trainer!"
	done

CeruleanCitySlowbroTookASnoozeText:
	text "SLOWBRO took a"
	line "snooze…"
	done

CeruleanCitySlowbroIsLoafingAroundText:
	text "SLOWBRO is"
	line "loafing around…"
	done

CeruleanCitySlowbroTurnedAwayText:
	text "SLOWBRO turned"
	line "away…"
	done

CeruleanCitySlowbroIgnoredOrdersText:
	text "SLOWBRO"
	line "ignored orders…"
	done

CeruleanCityCooltrainerF2Text:
	text "I want a bright"
	line "red BICYCLE!"

	para "I'll keep it at"
	line "home, so it won't"
	cont "get dirty!"
	done

CeruleanCitySuperNerd3Text:
	text "This is CERULEAN"
	line "CAVE! Horribly"
	cont "strong #MON"
	cont "live in there!"

	para "The #MON LEAGUE"
	line "CHAMPION is the"
	cont "only person who"
	cont "is allowed in!"
	done

CeruleanCitySignText:
	text "CERULEAN CITY"

	para "A Mysterious Blue"
	line "Aura Surrounds It"
	done

CeruleanTrainerTipsSignText:
	text "TRAINER TIPS"

	para "Pressing B Button"
	line "during evolution"
	cont "cancels the whole"
	cont "process."
	done

CeruleanBikeShopSignText:
	text "Grass and caves"
	line "handled easily!"
	cont "BIKE SHOP"
	done

CeruleanGymSignText:
	text "CERULEAN CITY"
	line "#MON GYM"
	cont "LEADER: MISTY"

	para "The Tomboyish"
	line "Mermaid!"
	done

CeruleanCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	
	warp_event 27, 11, CERULEAN_POLICE_STATION, 1 ; CERULEAN_TRASHED_HOUSE
	warp_event 13, 15, CERULEAN_TRADE_HOUSE, 1
	warp_event 19, 17, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 13, 25, CERULEAN_POKECENTER_1F, 1 ; CERULEAN_BIKE_SHOP
	warp_event 25, 25, CERULEAN_MART, 1
	warp_event  4, 11, CERULEAN_POKECENTER_1F, 1 ; CERULEAN_CAVE_1F
	warp_event 27,  9, CERULEAN_POKECENTER_1F, 3 ; CERULEAN_TRASHED_HOUSE
	warp_event  9, 11, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 2
	warp_event  9,  9, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 23, 19, BGEVENT_READ, CeruleanCitySign
	bg_event 17, 29, BGEVENT_READ, CeruleanTrainerTipsSign
	bg_event 26, 25, BGEVENT_READ, CeruleanCityMartSign
	bg_event 20, 17, BGEVENT_READ, CeruleanCityPokecenterSign
	bg_event 11, 25, BGEVENT_READ, CeruleanBikeShopSign
	bg_event 27, 21, BGEVENT_READ, CeruleanGymSign

	def_object_events
	object_event 20,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDDEN_OBJECT
	object_event 30,  8, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityRocketScript, -1
	object_event 31, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerMScript, -1
	object_event 15, 18, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd1Script, -1
	object_event  9, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd2Script, -1
	object_event 28, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityGuardScript, -1
	object_event 29, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerF1Script, -1
	object_event 28, 26, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCitySlowbro, -1
	object_event  9, 27, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerF2Script, -1
	object_event  4, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd3Script, -1
	object_event 27, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityGuardScript, -1
