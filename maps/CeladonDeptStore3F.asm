	object_const_def
	const CELADONDEPTSTORE3F_CLERK
	const CELADONDEPTSTORE3F_GAMEBOY_KID1
	const CELADONDEPTSTORE3F_GAMEBOY_KID2
	const CELADONDEPTSTORE3F_GAMEBOY_KID3
	const CELADONDEPTSTORE3F_LITTLE_BOY

CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_3F
	closetext
	end

CeladonDeptStore3FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore3FYoungsterText

CeladonDeptStore3FGameboyKid1Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid1Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID1, DOWN
	end

CeladonDeptStore3FGameboyKid2Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameboyKid2Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID2, DOWN
	end

CeladonDeptStore3FSuperNerdScript:
	jumptextfaceplayer CeladonDeptStore3FSuperNerdText

CeladonDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText

CeladonDeptStore3FYoungsterText:
	text "I can't decide"
	line "which #MON I"

	para "should use this TM"
	line "on…"
	done

CeladonDeptStore3FGameboyKid1Text:
	text "Uh-oh! I traded my"
	line "#MON without"

	para "removing the UP-"
	line "GRADE from it."
	done

CeladonDeptStore3FGameboyKid2Text:
	text "Yeah! I'm finally"
	line "getting a PORYGON!"

	para "I'm no good at the"
	line "slots, so I could"

	para "never get enough"
	line "coins…"

	para "…Huh?"

	para "The traded PORYGON"
	line "turned into a dif-"
	cont "ferent #MON!"
	done

CeladonDeptStore3FSuperNerdText:
	text "The TM SHOP sells"
	line "some rare moves."
	done


CeladonMart3FClerkTM18PreReceiveText:
	text "Oh, hi! I finally"
	line "finished #MON!"

	para "Not done yet?"

	para "This might be"
	line "useful!"
	done ; prompt

; CeladonMart3FClerkReceivedTM18Text:
	; text "<PLAYER> received"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

CeladonMart3FClerkTM18ExplanationText:
	text "TM18 is COUNTER!"

	para "Not like the one"
	line "I'm leaning on,"
	cont "mind you!"
	done

; CeladonMart3FClerkTM18NoRoomText:
	; text "Your pack is full"
	; line "of items!"
	; done

CeladonMart3FGameBoyKid1Text:
	text "Captured #MON"
	line "are registered"

	para "with an ID No."
	line "and OT, the name"

	para "of the Original"
	line "Trainer that"
	cont "caught it!"
	done

CeladonMart3FGameBoyKid2Text:
	text "All right!"

	para "My buddy's going"
	line "to trade me his"

	para "KANGASKHAN for my"
	line "GRAVELER!"
	done

CeladonMart3FGameBoyKid3Text:
	text "Come on GRAVELER!"

	para "I love GRAVELER!"
	line "I collect them!"

	para "Huh?"

	para "GRAVELER turned"
	line "into a different"
	cont "#MON!"
	done

CeladonMart3FLittleBoyText:
	text "You can identify"
	line "#MON you got"

	para "in trades by"
	line "their ID Numbers!"
	done

CeladonMart3FSNESText:
	text "It's an SNES!"
	done

CeladonMart3FRPGText:
	text "An RPG! There's"
	line "no time for that!"
	done

CeladonMart3FSportsGameText:
	text "A sports game!"
	line "Dad'll like that!"
	done

CeladonMart3FPuzzleGameText:
	text "A puzzle game!"
	line "Looks addictive!"
	done

CeladonMart3FFightingGameText:
	text "A fighting game!"
	line "Looks tough!"
	done

CeladonMart3FCurrentFloorSignText:
	text "3F: TV GAME SHOP"
	done

CeladonMart3FPokemonPosterText:
	text "Red and Blue!"
	line "Both are #MON!"
	done

CeladonDeptStore3FDirectoryText:
	text "3F: TM SHOP"

	para "Make Your #MON"
	line "Stronger!"
	done

CeladonDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, CELADON_DEPT_STORE_2F, 1
	warp_event 12,  1, CELADON_DEPT_STORE_4F, 2
	warp_event  1,  1, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore3FDirectory
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore3FElevatorButton
	
	; bg_event  2,  4, TEXT_CELADONDEPTSTORE3F_SNES1
	; bg_event  3,  4, TEXT_CELADONDEPTSTORE3F_RPG
	; bg_event  5,  4, TEXT_CELADONDEPTSTORE3F_SNES2
	; bg_event  6,  4, TEXT_CELADONDEPTSTORE3F_SPORTS_GAME
	; bg_event  2,  6, TEXT_CELADONDEPTSTORE3F_SNES3
	; bg_event  3,  6, TEXT_CELADONDEPTSTORE3F_PUZZLE_GAME
	; bg_event  5,  6, TEXT_CELADONDEPTSTORE3F_SNES4
	; bg_event  6,  6, TEXT_CELADONDEPTSTORE3F_FIGHTING_GAME
	; bg_event 14,  1, TEXT_CELADONDEPTSTORE3F_CURRENT_FLOOR_SIGN
	; bg_event  4,  1, TEXT_CELADONDEPTSTORE3F_POKEMON_POSTER1
	; bg_event  6,  1, TEXT_CELADONDEPTSTORE3F_POKEMON_POSTER2
	; bg_event 10,  1, TEXT_CELADONDEPTSTORE3F_POKEMON_POSTER3

	def_object_events
	object_event 16,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerkScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FYoungsterScript, -1
	object_event  7,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid1Script, -1
	object_event  8,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameboyKid2Script, -1
	object_event 11,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FSuperNerdScript, -1

	; object_event 16,  5, SPRITE_CLERK, STAY, NONE, TEXT_CELADONDEPTSTORE3F_CLERK
	; object_event 11,  6, SPRITE_GAMEBOY_KID, STAY, RIGHT, TEXT_CELADONDEPTSTORE3F_GAMEBOY_KID1
	; object_event  7,  2, SPRITE_GAMEBOY_KID, STAY, DOWN, TEXT_CELADONDEPTSTORE3F_GAMEBOY_KID2
	; object_event  8,  2, SPRITE_GAMEBOY_KID, STAY, DOWN, TEXT_CELADONDEPTSTORE3F_GAMEBOY_KID3
	; object_event  2,  5, SPRITE_LITTLE_BOY, STAY, UP, TEXT_CELADONDEPTSTORE3F_LITTLE_BOY

