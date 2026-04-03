	object_const_def
	const POKEMONTOWER5F_CHANNELER1
	const POKEMONTOWER5F_CHANNELER2
	const POKEMONTOWER5F_CHANNELER3
	const POKEMONTOWER5F_CHANNELER4
	const POKEMONTOWER5F_CHANNELER5
	const POKEMONTOWER5F_NUGGET

PokemonTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower5FChanneler1Text:
	text "Come, child! I"
	line "sealed this space"
	cont "with white magic!"

	para "You can rest here!"
	done

PokemonTower5FChanneler2BattleText:
	text "Give… me…"
	line "your… soul…"
	done

PokemonTower5FChanneler2EndBattleText:
	text "Gasp!"
	prompt

PokemonTower5FChanneler2AfterBattleText:
	text "I was under"
	line "possession!"
	done

PokemonTower5FChanneler3BattleText:
	text "You… shall…"
	line "join… us…"
	done

PokemonTower5FChanneler3EndBattleText:
	text "What a nightmare!"
	prompt

PokemonTower5FChanneler3AfterBattleText:
	text "I was possessed!"
	done

PokemonTower5FChanneler4BattleText:
	text "Zombies!"
	done

PokemonTower5FChanneler4EndBattleText:
	text "Ha?"
	prompt

PokemonTower5FChanneler4AfterBattleText:
	text "I regained my"
	line "senses!"
	done

PokemonTower5FChanneler5BattleText:
	text "Urgah…"
	line "Urff…"
	done

PokemonTower5FChanneler5EndBattleText:
	text "Whoo!"
	prompt

PokemonTower5FChanneler5AfterBattleText:
	text "I fell to evil"
	line "spirits despite"
	cont "my training!"
	done

PokemonTower5FPurifiedZoneText:
	text "Entered purified,"
	line "protected zone!"

	para "<PLAYER>'s #MON"
	line "are fully healed!"
	done

PokemonTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_4F, 1
	warp_event 18,  9, POKEMON_TOWER_6F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1

	; object_event 12,  8, SPRITE_CHANNELER, STAY, NONE, TEXT_POKEMONTOWER5F_CHANNELER1
	; object_event 17,  7, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER5F_CHANNELER2, OPP_CHANNELER, 14
	; object_event 14,  3, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER5F_CHANNELER3, OPP_CHANNELER, 16
	; object_event  6, 10, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER5F_CHANNELER4, OPP_CHANNELER, 17
	; object_event  9, 16, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER5F_CHANNELER5, OPP_CHANNELER, 18
	; object_event  6, 14, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER5F_NUGGET, NUGGET
