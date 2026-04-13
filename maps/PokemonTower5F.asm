	object_const_def
	const POKEMONTOWER5F_CHANNELER1
	const POKEMONTOWER5F_CHANNELER2
	const POKEMONTOWER5F_CHANNELER3
	const POKEMONTOWER5F_CHANNELER4
	const POKEMONTOWER5F_CHANNELER5
	const POKEMONTOWER5F_NUGGET

PokemonTower5F_MapScripts:
	def_scene_scripts
	scene_script PokemonTower5FNoopScene, SCENE_POKEMONTOWER5F_NOOP
	scene_script PokemonTower5FPurifiedZoneScene, SCENE_POKEMONTOWER5F_PURIFIEDZONE

	def_callbacks
	; callback MAPCALLBACK_OBJECTS, PureZoneCallback

PokemonTower5FNoopScene:
	end

PokemonTower5FPurifiedZoneScene:
	end

PureZoneCallback:
	; call CheckCurrentMapCoordEvents
	; jr c, .in_purified_zone
	checkevent EVENT_IN_PURIFIED_ZONE
	iftrue .in_purified_zone
	
	ld hl, wEnabledPlayerEvents ; EnableWildEncounters
	set 4, [hl]
	clearevent EVENT_IN_PURIFIED_ZONE
	endcallback

.in_purified_zone
	endcallback

PurifiedZoneScript:
	checkevent EVENT_IN_PURIFIED_ZONE
	iffalse .entering_zone
	; do nothing
	end

.entering_zone
	setevent EVENT_IN_PURIFIED_ZONE
	ld hl, wEnabledPlayerEvents ; DisableWildEncounters
	res 4, [hl]
	special HealParty
	special FadeOutToWhite
	pause 6 ; 2x (DelayFrames3)
	special FadeInFromWhite
	opentext
	writetext PokemonTower5FPurifiedZoneText
	waitbutton
	closetext
	end

PokemonTower5FChannelerScript:
	jumptextfaceplayer PokemonTower5FChannelerText

TrainerChannelerTammy: ;14
	trainer CHANNELER, TAMMY, EVENT_BEAT_CHANNELER_TAMMY, ChannelerTammySeenText, ChannelerTammyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerTammyBeatenText
	waitbutton
	closetext
	end

TrainerChannelerRuth: ;16
	trainer CHANNELER, RUTH, EVENT_BEAT_CHANNELER_RUTH, ChannelerRuthSeenText, ChannelerRuthBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerRuthBeatenText
	waitbutton
	closetext
	end

TrainerChannelerKarina: ;17
	trainer CHANNELER, KARINA, EVENT_BEAT_CHANNELER_KARINA, ChannelerKarinaSeenText, ChannelerKarinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerKarinaBeatenText
	waitbutton
	closetext
	end

TrainerChannelerJanae: ;18
	trainer CHANNELER, JANAE, EVENT_BEAT_CHANNELER_JANAE, ChannelerJanaeSeenText, ChannelerJanaeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChannelerJanaeBeatenText
	waitbutton
	closetext
	end

PokemonTower5FNugget:
	itemball NUGGET

PokemonTower5FChannelerText:
	text "Come, child! I've"
	line "sealed this space"
	cont "with white magic!"

	para "You can rest here!"
	done

ChannelerTammySeenText:
	text "Give… me…"
	line "your… soul…"
	done

ChannelerTammyBeatenText:
	text "Gasp!"
	done

ChannelerTammyAfterBattleText:
	text "I was under"
	line "possession!"
	done

ChannelerRuthSeenText:
	text "You… shall…"
	line "join… us…"
	done

ChannelerRuthBeatenText:
	text "What a nightmare!"
	done

ChannelerRuthAfterBattleText:
	text "I was possessed!"
	done

ChannelerKarinaSeenText:
	text "Zombies!"
	done

ChannelerKarinaBeatenText:
	text "Ha?"
	done

ChannelerKarinaAfterBattleText:
	text "I regained my"
	line "senses!"
	done

ChannelerJanaeSeenText:
	text "Urgah…"
	line "Urff…"
	done

ChannelerJanaeBeatenText:
	text "Whoo!"
	done

ChannelerJanaeAfterBattleText:
	text "I fell to evil"
	line "spirits despite"
	cont "my training!"
	done

PokemonTower5FPurifiedZoneText: ; Syntax
	text "Entered the"
	line "purified and pro-"
	cont "tected zone!"

	para "<PLAYER>'s #MON"
	line "are fully healed!"
	done

PokemonTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_4F, 1
	warp_event 18,  9, POKEMON_TOWER_6F, 1

	def_coord_events
	coord_event 10,  8, SCENE_POKEMONTOWER5F_NOOP, PurifiedZoneScript
	coord_event 11,  8, SCENE_POKEMONTOWER5F_NOOP, PurifiedZoneScript
	coord_event 10,  9, SCENE_POKEMONTOWER5F_NOOP, PurifiedZoneScript
	coord_event 11,  9, SCENE_POKEMONTOWER5F_NOOP, PurifiedZoneScript

	def_bg_events

	def_object_events
	object_event 12,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower5FChannelerScript, -1
	object_event 17,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerTammy, -1
	object_event 14,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerRuth, -1
	object_event  6, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerKarina, -1
	object_event  9, 16, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJanae, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5FNugget, EVENT_POKEMON_TOWER_5F_NUGGET