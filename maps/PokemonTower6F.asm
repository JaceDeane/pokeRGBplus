	object_const_def
	const POKEMONTOWER6F_CHANNELER1
	const POKEMONTOWER6F_CHANNELER2
	const POKEMONTOWER6F_CHANNELER3
	const POKEMONTOWER6F_RARE_CANDY
	const POKEMONTOWER6F_X_ACCURACY

PokemonTower6F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower6FChanneler1BattleText:
	text "Give… me…"
	line "blood…"
	done

PokemonTower6FChanneler1EndBattleText:
	text "Groan!"
	prompt

PokemonTower6FChanneler1AfterBattleText:
	text "I feel anemic"
	line "and weak…"
	done

PokemonTower6FChanneler2BattleText:
	text "Urff… Kwaah!"
	done

PokemonTower6FChanneler2EndBattleText:
	text "Something fell"
	line "out!"
	prompt

PokemonTower6FChanneler2AfterBattleText:
	text "My hair didn't"
	line "fall out!"
	
	para "It was an"
	line "evil spirit!"
	done

PokemonTower6FChanneler3BattleText:
	text "Ke… ke… ke… "
	line "ke… ke… ke!!"
	done

PokemonTower6FChanneler3EndBattleText:
	text "Keee!"
	prompt

PokemonTower6FChanneler3AfterBattleText:
	text "What's going on"
	line "here?"
	done

PokemonTower6FBeGoneText:
	text "Be gone…"
	line "Intruders…"
	done

PokemonTower6FGhostWasCubonesMotherText:
	text "The GHOST was the"
	line "restless soul of"
	cont "CUBONE's mother!"
	done

PokemonTower6FSoulWasCalmedText:
	text "The mother's soul"
	line "was calmed."

	para "It departed to"
	line "the afterlife!"
	done

PokemonTower6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_5F, 2
	warp_event  9, 16, POKEMON_TOWER_7F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1

	; object_event 12, 10, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER6F_CHANNELER1, OPP_CHANNELER, 19
	; object_event  9,  5, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER6F_CHANNELER2, OPP_CHANNELER, 20
	; object_event 16,  5, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER6F_CHANNELER3, OPP_CHANNELER, 21
	; object_event  6,  8, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER6F_RARE_CANDY, RARE_CANDY
	; object_event 14, 14, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER6F_X_ACCURACY, X_ACCURACY
