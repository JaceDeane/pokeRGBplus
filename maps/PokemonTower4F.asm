	object_const_def
	const POKEMONTOWER4F_CHANNELER1
	const POKEMONTOWER4F_CHANNELER2
	const POKEMONTOWER4F_CHANNELER3
	const POKEMONTOWER4F_ELIXER
	const POKEMONTOWER4F_AWAKENING
	const POKEMONTOWER4F_HP_UP

PokemonTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower4FChanneler1BattleText:
	text "GHOST! No!"
	line "Kwaaah!"
	done

PokemonTower4FChanneler1EndBattleText:
	text "Where is the"
	line "GHOST?"
	prompt

PokemonTower4FChanneler1AfterBattleText:
	text "I must have been"
	line "dreaming…"
	done

PokemonTower4FChanneler2BattleText:
	text "Be cursed with me!"
	line "Kwaaah!"
	done

PokemonTower4FChanneler2EndBattleText:
	text "What!"
	prompt

PokemonTower4FChanneler2AfterBattleText:
	text "We can't crack"
	line "the identity of"
	cont "the GHOSTS."
	done

PokemonTower4FChanneler3BattleText:
	text "Huhuhu…"
	line "Beat me not!"
	done

PokemonTower4FChanneler3EndBattleText:
	text "Huh?"
	line "Who? What?"
	prompt

PokemonTower4FChanneler3AfterBattleText:
	text "May the departed"
	line "souls of #MON"
	cont "rest in peace…"
	done


PokemonTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_5F, 1
	warp_event 18,  9, POKEMON_TOWER_3F, 2

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1

	; object_event  5, 10, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER4F_CHANNELER1, OPP_CHANNELER, 9
	; object_event 15,  7, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER4F_CHANNELER2, OPP_CHANNELER, 10
	; object_event 14, 12, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER4F_CHANNELER3, OPP_CHANNELER, 12
	; object_event 12, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER4F_ELIXER, ELIXER
	; object_event  9, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER4F_AWAKENING, AWAKENING
	; object_event 12, 16, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER4F_HP_UP, HP_UP
