	object_const_def
	const POKEMONTOWER6F_CHANNELER1
	const POKEMONTOWER6F_CHANNELER2
	const POKEMONTOWER6F_CHANNELER3
	const POKEMONTOWER6F_RARE_CANDY
	const POKEMONTOWER6F_X_ACCURACY

PokemonTower6F_MapScripts:
	def_scene_scripts
	scene_script PokemonTower6FNoopScene, SCENE_POKEMONTOWER6F_GHOST
	scene_script PokemonTower6FNoopScene, SCENE_POKEMONTOWER6F_GHOST_DEPARTED

	def_callbacks

PokemonTower6FNoopScene:
	end

MarowakBattleScript:
	; checkevent EVENT_BEAT_GHOST_MAROWAK
		; iftrue .beaten_ghost
	opentext
	writetext PokemonTower6FBeGoneText
	waitbutton
	closetext
	special FadeOutToWhite
	cry MAROWAK
	special FadeInFromWhite
	setlasttalked -1
	loadvar VAR_BATTLETYPE, BATTLETYPE_GHOST
	loadwildmon MAROWAK, 30
	startbattle
	ifequal WIN, BeatenGhost ;check if defeated
	reloadmapafterbattle
	applymovement PLAYER, StepRight
	giveitem SILPH_SCOPE ; debug
	end

BeatenGhost:
	reloadmapafterbattle
	setevent EVENT_BEAT_GHOST_MAROWAK
	opentext
	writetext PokemonTower6FGhostWasCubonesMotherText
	waitbutton
	cry MAROWAK
	writetext PokemonTower6FSoulWasCalmedText
	waitbutton
	closetext
	setscene SCENE_POKEMONTOWER6F_GHOST_DEPARTED
	end

TrainerChannelerAngelica: ;19
	trainer CHANNELER, ANGELICA, EVENT_BEAT_CHANNELER_ANGELICA, ChannelerAngelicaSeenText, ChannelerAngelicaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerAngelicaBeatenText
	waitbutton
	closetext
	end

TrainerChannelerEmilia: ;20
	trainer CHANNELER, EMILIA, EVENT_BEAT_CHANNELER_EMILIA, ChannelerEmiliaSeenText, ChannelerEmiliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerEmiliaBeatenText
	waitbutton
	closetext
	end

TrainerChannelerJennifer: ;21
	trainer CHANNELER, JENNIFER, EVENT_BEAT_CHANNELER_JENNIFER, ChannelerJenniferSeenText, ChannelerJenniferBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerJenniferBeatenText
	waitbutton
	closetext
	end

PokemonTower6FRareCandy:
	itemball RARE_CANDY

PokemonTower6FXAccuracy:
	itemball X_ACCURACY

StepRight:
	step RIGHT
	step_end

ChannelerAngelicaSeenText:
	text "Give… me…"
	line "blood…"
	done

ChannelerAngelicaBeatenText:
	text "Groan!"
	done

ChannelerAngelicaAfterBattleText:
	text "I feel anemic"
	line "and weak…"
	done

ChannelerEmiliaSeenText:
	text "Urff… Kwaah!"
	done

ChannelerEmiliaBeatenText:
	text "Something fell"
	line "out!"
	done

ChannelerEmiliaAfterBattleText:
	text "My hair didn't"
	line "fall out!"
	
	para "It was an"
	line "evil spirit!"
	done

ChannelerJenniferSeenText:
	text "Ke… ke… ke… "
	line "ke… ke… ke!!"
	done

ChannelerJenniferBeatenText:
	text "Keee!"
	done

ChannelerJenniferAfterBattleText:
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
	coord_event 10, 16, SCENE_POKEMONTOWER6F_GHOST, MarowakBattleScript

	def_bg_events

	def_object_events
	object_event 12, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerAngelica, -1
	object_event  9,  5, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerEmilia, -1
	object_event 16,  5, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJennifer, -1
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FRareCandy, EVENT_POKEMON_TOWER_6F_RARE_CANDY
	object_event 14, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FXAccuracy, EVENT_POKEMON_TOWER_6F_X_ACCURACY
