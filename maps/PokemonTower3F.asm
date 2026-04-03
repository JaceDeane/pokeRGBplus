	object_const_def
	const POKEMONTOWER3F_CHANNELER1
	const POKEMONTOWER3F_CHANNELER2
	const POKEMONTOWER3F_CHANNELER3
	const POKEMONTOWER3F_ESCAPE_ROPE

PokemonTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower3FChanneler1BattleText:
	text "Urrg… Awaa…"
	line "Huhu… graa…"
	done

PokemonTower3FChanneler1EndBattleText:
	text "Hwa!"
	line "I'm saved!"
	prompt

PokemonTower3FChanneler1AfterBattleText:
	text "The GHOSTS can be"
	line "identified by the"
	cont "SILPH SCOPE."
	done

PokemonTower3FChanneler2BattleText:
	text "Kekeke…"
	line "Kwaaah!"
	done

PokemonTower3FChanneler2EndBattleText:
	text "Hmm?"
	line "What am I doing?"
	prompt

PokemonTower3FChanneler2AfterBattleText:
	text "Sorry! I was"
	line "possessed!"
	done

PokemonTower3FChanneler3BattleText:
	text "Be gone!"
	line "Evil spirit!"
	done

PokemonTower3FChanneler3EndBattleText:
	text "Whew!"
	line "The spirit left!"
	prompt

PokemonTower3FChanneler3AfterBattleText:
	text "My friends were"
	line "possessed too!"
	done

PokemonTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_2F, 1
	warp_event 18,  9, POKEMON_TOWER_4F, 2

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1

	; object_event 12,  3, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER3F_CHANNELER1, OPP_CHANNELER, 5
	; object_event  9,  8, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER3F_CHANNELER2, OPP_CHANNELER, 6
	; object_event 10, 13, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER3F_CHANNELER3, OPP_CHANNELER, 8
	; object_event 12,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER3F_ESCAPE_ROPE, ESCAPE_ROPE
