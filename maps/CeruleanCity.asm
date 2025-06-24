	object_const_def
	const CERULEANCITY_RIVAL
	const CERULEANCITY_ROCKET
	const CERULEANCITY_COOLTRAINER_M
	const CERULEANCITY_SUPER_NERD1
	const CERULEANCITY_SUPER_NERD2
	const CERULEANCITY_GUARD
	const CERULEANCITY_LASS1
	const CERULEANCITY_SLOWBRO
	const CERULEANCITY_LASS2
	const CERULEANCITY_SUPER_NERD3
	; const CERULEANCITY_GUARD2

CeruleanCity_MapScripts:
	def_scene_scripts
	scene_script CeruleanCityNoopScene, SCENE_CERULEANCITY_NOOP
	scene_script CeruleanCityNoopScene, SCENE_CERULEANCITY_RIVAL_DEFEATED
	scene_script CeruleanCityNoopScene, SCENE_CERULEANCITY_ROCKET_DEFEATED

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeruleanCityFlypointCallback
	callback MAPCALLBACK_OBJECTS, CeruleanCityOfficerCallback

CeruleanCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CERULEAN
	endcallback

CeruleanCityOfficerCallback:
	checkmapscene BILLS_HOUSE
	ifequal SCENE_BILLSHOUSE_NOOP, .MoveOfficer
	endcallback

.MoveOfficer
	moveobject CERULEANCITY_GUARD, 28, 12
	endcallback

CeruleanCityNoopScene:
	disappear CERULEANCITY_RIVAL ; Ensures the Rival remains unseen if Player blacks out
	end

CeruleanCityRivalBattleScene1: ; RIGHT
	moveobject CERULEANCITY_RIVAL, 21, 2
	;fallthrough
CeruleanCityRivalBattleScene2: ; LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear CERULEANCITY_RIVAL
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalApproachMovement
	opentext
	writetext CeruleanCityRivalPreBattleText
	waitbutton
	closetext
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
		iftrue .Squirtle
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
		iftrue .Bulbasaur
	winlosstext CeruleanCityRivalWinText, CeruleanCityRivalLossText
	setlasttalked CERULEANCITY_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Squirtle:
	winlosstext CeruleanCityRivalWinText, CeruleanCityRivalLossText
	setlasttalked CERULEANCITY_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_BULBASAUR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Bulbasaur:
	winlosstext CeruleanCityRivalWinText, CeruleanCityRivalLossText
	setlasttalked CERULEANCITY_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	
.AfterBattle:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext CeruleanCityRivalIWentToBillsText
	waitbutton
	closetext
	setevent EVENT_BEAT_RIVAL_CERULEAN
	readvar VAR_XCOORD
		getnum STRING_BUFFER_3
		ifequal 20, .LeftTile
		ifequal 21, .RightTile
.LeftTile
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalLeaveMovement1
	sjump .ok
.RightTile
	applymovement CERULEANCITY_RIVAL, CeruleanCityRivalLeaveMovement2
.ok
	disappear CERULEANCITY_RIVAL
	setscene SCENE_CERULEANCITY_RIVAL_DEFEATED
	waitsfx
	playmapmusic
	end

CeruleanCityRocketScene1:
	turnobject CERULEANCITY_ROCKET, UP
	turnobject PLAYER, DOWN
	sjump _RocketNoticesPlayer

CeruleanCityRocketScene2:
	turnobject CERULEANCITY_ROCKET, DOWN
	turnobject PLAYER, UP
	sjump _RocketNoticesPlayer

CeruleanCityRocketScript: ; Directly talking to the Rocket
	faceplayer
_RocketNoticesPlayer:
	opentext
	checkevent EVENT_BEAT_ROCKET_GRUNTM_5 ; Here in case player has too many items
	iftrue .beatRocketThief
	writetext CeruleanCityRocketText
	playmusic MUSIC_EVIL_TRAINER_ENCOUNTER
	waitbutton
	closetext
	winlosstext CeruleanCityRocketIGiveUpText, -1
	loadtrainer GRUNTM, GRUNTM_5
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_GRUNTM_5
.beatRocketThief
	writetext CeruleanCityRocketIllReturnTheTMText
	promptbutton
	waitsfx
	giveitem TM_DIG
	iftrue .recieved_item
	writetext CeruleanCityRocketTM28NoRoomText
	waitbutton
	closetext
	end

.recieved_item
	writetext CeruleanCityRocketReceivedTM28Text
	playsound SFX_GET_TM
	waitsfx
	itemnotify
	writetext CeruleanCityRocketIBetterGetMovingText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear CERULEANCITY_ROCKET
	pause 15
	special FadeInFromBlack
	setevent EVENT_CERULEAN_CITY_ROCKET_DONE
	setscene SCENE_CERULEANCITY_ROCKET_DEFEATED
	end

CeruleanCityCooltrainerMScript:
	jumptextfaceplayer CeruleanCityCooltrainerMText

CeruleanCitySuperNerd1Script:
	jumptextfaceplayer CeruleanCitySuperNerd1Text

CeruleanCitySuperNerd2Script:
	jumptextfaceplayer CeruleanCitySuperNerd2Text

CeruleanCityGuardScript:
	jumptextfaceplayer CeruleanCityGuardText

CeruleanCitySlowbro:
	cry SLOWBRO
	opentext
	random 4 ; 25% chance of each dialogue
		ifequal 1, .SecondText
		ifequal 2, .ThirdText
		ifequal 3, .FourthText
	writetext CeruleanCitySlowbroTookASnoozeText
	sjump .end

.SecondText
	writetext CeruleanCitySlowbroIsLoafingAroundText
	sjump .end

.ThirdText
	writetext CeruleanCitySlowbroTurnedAwayText
	sjump .end

.FourthText
	writetext CeruleanCitySlowbroIgnoredOrdersText
.end
	waitbutton
	closetext
	end

CeruleanCityLass1Script:
	opentext
	random 3 ; 33.3% chance of each dialogue
		ifequal 1, .SecondText
		ifequal 2, .ThirdText
	writetext CeruleanCityLass1SlowbroSonicboomText
	promptbutton
	closetext
	showemote EMOTE_QUESTION, CERULEANCITY_SLOWBRO, 15
	cry SLOWBRO
	opentext
	writetext CeruleanCityLass1SlowbroSonicboom2Text
	waitbutton
	closetext
	end

.SecondText
	writetext CeruleanCityLass1SlowbroPunchText
	promptbutton
	closetext
	showemote EMOTE_QUESTION, CERULEANCITY_SLOWBRO, 15
	cry SLOWBRO
	opentext
	writetext CeruleanCityLass1SlowbroPunch2Text
	waitbutton
	closetext
	end

.ThirdText
	writetext CeruleanCityLass1SlowbroWithdrawText
	promptbutton
	closetext
	showemote EMOTE_QUESTION, CERULEANCITY_SLOWBRO, 15
	cry SLOWBRO
	opentext
	writetext CeruleanCityLass1SlowbroWithdraw2Text
	waitbutton
	closetext
	readvar VAR_XCOORD
		getnum STRING_BUFFER_3
		ifequal 29, .Below
		ifequal 30, .Right
.Below
	turnobject CERULEANCITY_LASS1, DOWN
	sjump .end
.Right
	turnobject CERULEANCITY_LASS1, RIGHT
.end
	opentext
	writetext CeruleanCityLass1SlowbroWithdraw3Text
	waitbutton
	closetext
	turnobject CERULEANCITY_LASS1, LEFT
	end

CeruleanCityLass2Script:
	jumptextfaceplayer CeruleanCityLass2Text

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

CeruleanCityRivalApproachMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end

CeruleanCityRivalLeaveMovement1:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
CeruleanCityRivalLeaveMovement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

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

CeruleanCityRivalWinText:
	text "Hey!"
	line "Take it easy!"
	cont "You won already!"
	done

CeruleanCityRivalLossText:
	text "Heh!"
	line "You're no match"
	cont "for my genius!"
	done

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
	line "It's not your yard!"
	
	para "Huh? Me?"

	para "I'm an innocent"
	line "bystander! Don't"
	cont "you believe me?"
	done

CeruleanCityRocketIGiveUpText:
	text "Stop!"

	para "I give up! I'll"
	line "leave quietly!"
	done

CeruleanCityRocketIllReturnTheTMText:
	text "OK! I'll return"
	line "the TM I stole!"
	done

CeruleanCityRocketReceivedTM28Text:
	text "<PLAYER> recovered"
	line "TM28!"
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

CeruleanCityLass1SlowbroSonicboomText:
	text "OK! SLOWBRO!"
	line "Use SONICBOOM!"
	done

CeruleanCityLass1SlowbroSonicboom2Text:
	text "Come on SLOWBRO,"
	line "pay attention!"
	done

CeruleanCityLass1SlowbroPunchText:
	text "SLOWBRO, punch!"
	done

CeruleanCityLass1SlowbroPunch2Text:
	text "No! You blew it"
	line "again!"
	done

CeruleanCityLass1SlowbroWithdrawText:
	text "SLOWBRO, WITHDRAW!"
	done

CeruleanCityLass1SlowbroWithdraw2Text:
	text "No! That's wrong!"
	done
	
CeruleanCityLass1SlowbroWithdraw3Text:
	text "It's so hard to"
	line "control #MON!"

	para "Your #MON's"
	line "obedience depends"

	para "on your abilities"
	line "as a trainer!"
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

CeruleanCityLass2Text:
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
	
	warp_event 27, 11, CERULEAN_TRASHED_HOUSE, 1
	warp_event 13, 15, CERULEAN_TRADE_HOUSE, 1
	warp_event 19, 17, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 13, 25, CERULEAN_BIKE_SHOP, 1
	warp_event 25, 25, CERULEAN_MART, 1
	warp_event  4, 11, CERULEAN_POKECENTER_1F, 1 ; CERULEAN_CAVE_1F
	warp_event 27,  9, CERULEAN_TRASHED_HOUSE, 3
	warp_event  9, 11, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 2
	warp_event  9,  9, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1

	def_coord_events
	coord_event  20,  6, SCENE_CERULEANCITY_NOOP, CeruleanCityRivalBattleScene2
	coord_event  21,  6, SCENE_CERULEANCITY_NOOP, CeruleanCityRivalBattleScene1
	coord_event  30,  7, SCENE_CERULEANCITY_RIVAL_DEFEATED, CeruleanCityRocketScene1
	coord_event  30,  9, SCENE_CERULEANCITY_RIVAL_DEFEATED, CeruleanCityRocketScene2

	def_bg_events
	bg_event 23, 19, BGEVENT_READ, CeruleanCitySign
	bg_event 17, 29, BGEVENT_READ, CeruleanTrainerTipsSign
	bg_event 26, 25, BGEVENT_READ, CeruleanCityMartSign
	bg_event 20, 17, BGEVENT_READ, CeruleanCityPokecenterSign
	bg_event 11, 25, BGEVENT_READ, CeruleanBikeShopSign
	bg_event 27, 21, BGEVENT_READ, CeruleanGymSign

	def_object_events
	object_event 20,  2, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDDEN_OBJECT
	object_event 30,  8, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityRocketScript, EVENT_CERULEAN_CITY_ROCKET_DONE
	object_event 31, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCityCooltrainerMScript, -1
	object_event 15, 18, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd1Script, -1
	object_event  9, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd2Script, -1
	object_event 27, 12, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityGuardScript, -1
	object_event 29, 26, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCityLass1Script, -1
	object_event 28, 26, SPRITE_SLOWPOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCitySlowbro, -1
	object_event  9, 27, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanCityLass2Script, -1
	object_event  4, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanCitySuperNerd3Script, -1
	; object_event 28, 13, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCityGuardScript, -1
