	object_const_def
	const CELADONDEPTSTORE3F_CLERK
	const CELADONDEPTSTORE3F_GAMEBOY_KID1
	const CELADONDEPTSTORE3F_GAMEBOY_KID2
	const CELADONDEPTSTORE3F_GAMEBOY_KID3
	const CELADONDEPTSTORE3F_LITTLE_BOY

CeladonDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore3FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_3F
	closetext
	end

CeladonDeptStore3FClerk2Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM18_COUNTER
	iftrue .AlreadyGotTM
	writetext CeladonDeptStore3FClerkTM18PreReceiveText
	promptbutton
	verbosegiveitem TM_COUNTER
	iffalse .NoRoom
	setevent EVENT_GOT_TM18_COUNTER
	writetext CeladonDeptStore3FClerkTM18ExplanationText
	promptbutton
	writetext CeladonDeptStore3FClerkTM18ComeVisitText
	waitbutton
	sjump .done

.NoRoom:
	writetext CeladonDeptStore3FClerkTM18NoRoomText
	waitbutton
	sjump .done

.AlreadyGotTM:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .BeatenEliteFour
	writetext CeladonDeptStore3FClerkTM18ComeVisitText
	waitbutton
	sjump .done

.BeatenEliteFour:
	pokemart MARTTYPE_STANDARD, MART_CELADON_3F_CLERK2
.done:
	closetext
	end

CeladonDeptStore3FGameBoyKid1Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameBoyKid1Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID1, RIGHT
	end

CeladonDeptStore3FGameBoyKid2Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameBoyKid2Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID2, DOWN
	end

CeladonDeptStore3FGameBoyKid3Script:
	faceplayer
	opentext
	writetext CeladonDeptStore3FGameBoyKid3Text
	waitbutton
	closetext
	turnobject CELADONDEPTSTORE3F_GAMEBOY_KID3, DOWN
	end

CeladonDeptStore3FLittleBoyScript:
	jumptextfaceplayer CeladonDeptStore3FLittleBoyText

CeladonDeptStore3FSNES:
	jumptext CeladonDeptStore3FSNESText

CeladonDeptStore3FRPG:
	jumptext CeladonDeptStore3FRPGText

CeladonDeptStore3FSportsGame:
	jumptext CeladonDeptStore3FSportsGameText

CeladonDeptStore3FPuzzleGame:
	jumptext CeladonDeptStore3FPuzzleGameText

CeladonDeptStore3FFightingGame:
	jumptext CeladonDeptStore3FFightingGameText

CeladonDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore3FDirectory:
	jumptext CeladonDeptStore3FDirectoryText

CeladonDeptStore3FPokemonPoster:
	jumptext CeladonDeptStore3FPokemonPosterText

CeladonDeptStore3FClerkTM18PreReceiveText:
	text "Oh, hi! I finally"
	line "finished #MON!"

	para "Not done yet?"

	para "This might be"
	line "useful!"
	done

CeladonDeptStore3FClerkTM18ExplanationText:
	text "TM18 is COUNTER!"

	para "Not like the one"
	line "I'm leaning on,"
	cont "mind you!"
	done

CeladonDeptStore3FClerkTM18NoRoomText:
	text "Your pack is full"
	line "of items!"
	done

CeladonDeptStore3FClerkTM18ComeVisitText:
	text "Come visit me once"
	line "you beat the game."

	para "I'll sell you some"
	line "extra TMs!"
	done

CeladonDeptStore3FGameBoyKid1Text:
	text "Captured #MON"
	line "are registered"

	para "with an ID No."
	line "and OT, the name"

	para "of the Original"
	line "Trainer that"
	cont "caught it!"
	done

CeladonDeptStore3FGameBoyKid2Text:
	text "All right!"

	para "My buddy's going"
	line "to trade me his"

	para "KANGASKHAN for my"
	line "GRAVELER!"
	done

CeladonDeptStore3FGameBoyKid3Text:
	text "Come on GRAVELER!"

	para "I love GRAVELER!"
	line "I collect them!"

	para "Huh?"

	para "GRAVELER evolved" ; clarity
	line "into a different"
	cont "#MON!"
	done

CeladonDeptStore3FLittleBoyText:
	text "You can identify"
	line "#MON you got"

	para "in trades by"
	line "their ID Numbers."
	done

CeladonDeptStore3FSNESText:
	text "It's an SNES!"
	done

CeladonDeptStore3FRPGText:
	text "An RPG! There's"
	line "no time for that!"
	done

CeladonDeptStore3FSportsGameText:
	text "A sports game!"
	line "Dad'll like that!"
	done

CeladonDeptStore3FPuzzleGameText:
	text "A puzzle game!"
	line "Looks addictive!"
	done

CeladonDeptStore3FFightingGameText:
	text "A fighting game!"
	line "Looks tough!"
	done

CeladonDeptStore3FPokemonPosterText:
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
	bg_event  2,  4, BGEVENT_READ, CeladonDeptStore3FSNES
	bg_event  3,  4, BGEVENT_READ, CeladonDeptStore3FRPG
	bg_event  5,  4, BGEVENT_READ, CeladonDeptStore3FSNES
	bg_event  6,  4, BGEVENT_READ, CeladonDeptStore3FSportsGame
	bg_event  2,  6, BGEVENT_READ, CeladonDeptStore3FSNES
	bg_event  3,  6, BGEVENT_READ, CeladonDeptStore3FPuzzleGame
	bg_event  5,  6, BGEVENT_READ, CeladonDeptStore3FSNES
	bg_event  6,  6, BGEVENT_READ, CeladonDeptStore3FFightingGame
	bg_event 14,  1, BGEVENT_READ, CeladonDeptStore3FDirectory
	bg_event  2,  1, BGEVENT_READ, CeladonDeptStore3FElevatorButton
	bg_event  4,  1, BGEVENT_READ, CeladonDeptStore3FPokemonPoster
	bg_event  6,  1, BGEVENT_READ, CeladonDeptStore3FPokemonPoster
	bg_event 10,  1, BGEVENT_READ, CeladonDeptStore3FPokemonPoster

	def_object_events
	object_event 14,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerk1Script, -1
	object_event 16,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerk2Script, -1	
	object_event 11,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameBoyKid1Script, -1
	object_event  7,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameBoyKid2Script, -1
	object_event  8,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameBoyKid3Script, -1
	object_event  2,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FLittleBoyScript, -1
