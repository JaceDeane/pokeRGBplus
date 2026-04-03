	object_const_def
	const POKEMONTOWER2F_RIVAL
	const POKEMONTOWER2F_CHANNELER

PokemonTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower2FRivalWhatBringsYouHereText:
	text "<RIVAL>: Hey,"
	line "<PLAYER>! What"
	cont "brings you here?"

	para "Your #MON"
	line "don't look dead!"

	para "I can at least"
	line "make them faint!"

	para "Let's go, pal!"
	done

PokemonTower2FRivalDefeatedText:
	text "What?"
	line "You stinker!"

	para "I took it easy on"
	line "you too!"
	prompt

PokemonTower2FRivalVictoryText:
	text "<RIVAL>: Well,"
	line "look at all your"
	cont "wimpy #MON!"

	para "Toughen them up a"
	line "bit more!"
	prompt

PokemonTower2FRivalHowsYourDexText:
	text "How's your #DEX"
	line "coming, pal?"

	para "I just caught a"
	line "CUBONE!"

	para "I can't find the"
	line "grown-up MAROWAK"
	cont "yet!"

	para "I doubt there are"
	line "any left!"
	
	para "Well, I better"
	line "get going!"

	para "I've got a lot to"
	line "accomplish, pal!"

	para "Smell ya later!"
	done

PokemonTower2FChannelerText:
	text "Even we could not"
	line "identify the"
	cont "wayward GHOSTS!"

	para "A SILPH SCOPE"
	line "might be able to"
	cont "unmask them."
	done


PokemonTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_3F, 1
	warp_event 18,  9, POKEMON_TOWER_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1
	
	; object_event 14,  5, SPRITE_BLUE, STAY, NONE, TEXT_POKEMONTOWER2F_RIVAL
	; object_event  3,  7, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER2F_CHANNELER
