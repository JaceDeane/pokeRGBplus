	object_const_def
	const POKEMONTOWER7F_ROCKET1
	const POKEMONTOWER7F_ROCKET2
	const POKEMONTOWER7F_ROCKET3
	const POKEMONTOWER7F_MR_FUJI

PokemonTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower7FMrFujiRescueText:
	text "MR.FUJI: Heh? You"
	line "came to save me?"

	para "Thank you, but I"
	line "came here of my"
	cont "own free will."

	para "I came to calm"
	line "the soul of"
	cont "CUBONE's mother."

	para "I think MAROWAK's"
	line "spirit has gone"
	cont "to the afterlife."

	para "I must thank you"
	line "for your kind"
	cont "concern!"

	para "Follow me to my"
	line "home, #MON"
	cont "HOUSE at the foot"
	cont "of this tower."
	done

PokemonTower7FRocket1BattleText:
	text "What do you want?"
	line "Why are you here?"
	done

PokemonTower7FRocket1EndBattleText:
	text "I give up!"
	prompt

PokemonTower7FRocket1AfterBattleText:
	text "I'm not going to"
	line "forget this!"
	done

PokemonTower7FRocket2BattleText:
	text "This old guy came"
	line "and complained"

	para "about us harming"
	line "useless #MON!"

	para "We're talking it"
	line "over as adults!"
	done

PokemonTower7FRocket2EndBattleText:
	text "Please!"
	line "No more!"
	prompt

PokemonTower7FRocket2AfterBattleText:
	text "#MON are only"
	line "good for making"
	cont "money!"

	para "Stay out of our"
	line "business!"
	done

PokemonTower7FRocket3BattleText:
	text "You're not saving"
	line "anyone, kid!"
	done

PokemonTower7FRocket3EndBattleText:
	text "Don't fight"
	line "us ROCKETS!"
	prompt

PokemonTower7FRocket3AfterBattleText:
	text "You're not getting"
	line "away with this!"
	done


PokemonTower7F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 16, POKEMON_TOWER_6F, 2

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1
	
	; object_event  9, 11, SPRITE_ROCKET, STAY, RIGHT, TEXT_POKEMONTOWER7F_ROCKET1, OPP_ROCKET, 19
	; object_event 12,  9, SPRITE_ROCKET, STAY, LEFT, TEXT_POKEMONTOWER7F_ROCKET2, OPP_ROCKET, 20
	; object_event  9,  7, SPRITE_ROCKET, STAY, RIGHT, TEXT_POKEMONTOWER7F_ROCKET3, OPP_ROCKET, 21
	; object_event 10,  3, SPRITE_MR_FUJI, STAY, DOWN, TEXT_POKEMONTOWER7F_MR_FUJI
