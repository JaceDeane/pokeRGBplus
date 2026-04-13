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

TrainerChannelerPaula: ;9
	trainer CHANNELER, PAULA, EVENT_BEAT_CHANNELER_PAULA, ChannelerPaulaSeenText, ChannelerPaulaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerPaulaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerLaurel: ;10
	trainer CHANNELER, LAUREL, EVENT_BEAT_CHANNELER_LAUREL, ChannelerLaurelSeenText, ChannelerLaurelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerLaurelAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerJody: ;12
	trainer CHANNELER, JODY, EVENT_BEAT_CHANNELER_JODY, ChannelerJodySeenText, ChannelerJodyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerJodyAfterBattleText
	waitbutton
	closetext
	end

PokemonTower4FElixer:
	itemball ELIXER

PokemonTower4FAwakening:
	itemball AWAKENING

PokemonTower4FHPUP:
	itemball HP_UP

ChannelerPaulaSeenText:
	text "GHOST! No!"
	line "Kwaaah!"
	done

ChannelerPaulaBeatenText:
	text "Where is the"
	line "GHOST?"
	done

ChannelerPaulaAfterBattleText:
	text "I must have been"
	line "dreaming…"
	done

ChannelerLaurelSeenText:
	text "Be cursed with me!"
	line "Kwaaah!"
	done

ChannelerLaurelBeatenText:
	text "What!"
	done

ChannelerLaurelAfterBattleText:
	text "We can't crack"
	line "the identity of"
	cont "the GHOSTS."
	done

ChannelerJodySeenText:
	text "Huhuhu…"
	line "Beat me not!"
	done

ChannelerJodyBeatenText:
	text "Huh?"
	line "Who? What?"
	done

ChannelerJodyAfterBattleText:
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
	object_event  5, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerPaula, -1
	object_event 15,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerLaurel, -1
	object_event 14, 12, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJody, -1
	object_event 12, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FElixer, EVENT_POKEMON_TOWER_4F_ELIXER
	object_event  9, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FAwakening, EVENT_POKEMON_TOWER_4F_AWAKENING
	object_event 12, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FHPUP, EVENT_POKEMON_TOWER_4F_HP_UP
