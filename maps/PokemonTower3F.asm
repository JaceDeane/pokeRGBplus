	object_const_def
	const POKEMONTOWER3F_CHANNELER1
	const POKEMONTOWER3F_CHANNELER2
	const POKEMONTOWER3F_CHANNELER3
	const POKEMONTOWER3F_ESCAPE_ROPE

PokemonTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerPatricia: ;5
	trainer CHANNELER, PATRICIA, EVENT_BEAT_CHANNELER_PATRICIA, ChannelerPatriciaSeenText, ChannelerPatriciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerPatriciaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerCarly: ;6
	trainer CHANNELER, CARLY, EVENT_BEAT_CHANNELER_CARLY, ChannelerCarlySeenText, ChannelerCarlyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerCarlyAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerHope: ;8
	trainer CHANNELER, HOPE, EVENT_BEAT_CHANNELER_HOPE, ChannelerHopeSeenText, ChannelerHopeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerHopeAfterBattleText
	waitbutton
	closetext
	end

PokemonTower3FEscapeRope:
	itemball ESCAPE_ROPE

ChannelerPatriciaSeenText:
	text "Urrg… Awaa…"
	line "Huhu… graa…"
	done

ChannelerPatriciaBeatenText:
	text "Hwa!"
	line "I'm saved!"
	done

ChannelerPatriciaAfterBattleText:
	text "The GHOSTS can be"
	line "identified by the"
	cont "SILPH SCOPE."
	done

ChannelerCarlySeenText:
	text "Kekeke…"
	line "Kwaaah!"
	done

ChannelerCarlyBeatenText:
	text "Hmm?"
	line "What am I doing?"
	done

ChannelerCarlyAfterBattleText:
	text "Sorry! I was"
	line "possessed!"
	done

ChannelerHopeSeenText:
	text "Be gone!"
	line "Evil spirit!"
	done

ChannelerHopeBeatenText:
	text "Whew!"
	line "The spirit left!"
	done

ChannelerHopeAfterBattleText:
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
	object_event 12,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerPatricia, -1
	object_event  9,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerCarly, -1
	object_event 10, 13, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerHope, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower3FEscapeRope, EVENT_POKEMON_TOWER_3F_ESCAPE_ROPE