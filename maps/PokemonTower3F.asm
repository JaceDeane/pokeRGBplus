	object_const_def
	const POKEMONTOWER3F_CHANNELER1
	const POKEMONTOWER3F_CHANNELER2
	const POKEMONTOWER3F_CHANNELER3
	const POKEMONTOWER3F_ESCAPE_ROPE

PokemonTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerLaurel: ;5
	trainer CHANNELER, LAUREL, EVENT_BEAT_CHANNELER_LAUREL, ChannelerLaurelSeenText, ChannelerLaurelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerLaurelAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerJody: ;6
	trainer CHANNELER, JODY, EVENT_BEAT_CHANNELER_JODY, ChannelerJodySeenText, ChannelerJodyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerJodyAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerRuth: ;8
	trainer CHANNELER, RUTH, EVENT_BEAT_CHANNELER_RUTH, ChannelerRuthSeenText, ChannelerRuthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerRuthAfterBattleText
	waitbutton
	closetext
	end

PokemonTower3FEscapeRope:
	itemball ESCAPE_ROPE

ChannelerLaurelSeenText:
	text "Urrg… Awaa…"
	line "Huhu… graa…"
	done

ChannelerLaurelBeatenText:
	text "Hwa!"
	line "I'm saved!"
	done

ChannelerLaurelAfterBattleText:
	text "The GHOSTS can be"
	line "identified by the"
	cont "SILPH SCOPE."
	done

ChannelerJodySeenText:
	text "Kekeke…"
	line "Kwaaah!"
	done

ChannelerJodyBeatenText:
	text "Hmm?"
	line "What am I doing?"
	done

ChannelerJodyAfterBattleText:
	text "Sorry! I was"
	line "possessed!"
	done

ChannelerRuthSeenText:
	text "Be gone!"
	line "Evil spirit!"
	done

ChannelerRuthBeatenText:
	text "Whew!"
	line "The spirit left!"
	done

ChannelerRuthAfterBattleText:
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
	object_event 12,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerLaurel, -1
	object_event  9,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerJody, -1
	object_event 10, 13, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerRuth, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower3FEscapeRope, EVENT_POKEMON_TOWER_3F_ESCAPE_ROPE

	; object_event 12,  3, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER3F_CHANNELER1, OPP_CHANNELER, 5
	; object_event  9,  8, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER3F_CHANNELER2, OPP_CHANNELER, 6
	; object_event 10, 13, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER3F_CHANNELER3, OPP_CHANNELER, 8
	; object_event 12,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER3F_ESCAPE_ROPE, ESCAPE_ROPE
