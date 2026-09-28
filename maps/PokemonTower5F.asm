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
	callback MAPCALLBACK_STEP, PurifiedZoneCallback

PokemonTower5FNoopScene:
	end

PokemonTower5FPurifiedZoneScene:
	end

PurifiedZoneCallback:
	callasm PurifiedZoneCoordCheck
	endcallback

PurifiedZoneCoordCheck:
	ld hl, PurifiedZoneCoords
	call ArePlayerCoordsInArray
	ld a, [wScriptVar]
	and a
	jr z, .outside_zone

	ld de, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; EVENT_IN_PURIFIED_ZONE
	ld b, CHECK_FLAG
	call EventFlagAction ; checkevent
	ld a, c
	and a
	ret nz ; already in Purified Zone

	ld de, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; EVENT_IN_PURIFIED_ZONE
	ld b, SET_FLAG
	call EventFlagAction
	farcall Script_wildoff

	predef HealParty
	call RotateThreePalettesRight
	ld c, 10
	call DelayFrames
	call RotateThreePalettesLeft ; like `FadeInFromWhite`, without the pal0 overwrite
	call UpdateTimePals

	call OpenText
	ld hl, PokemonTower5FPurifiedZoneText
	call PrintText
	call WaitButton
	call HDMATransferTilemapAndAttrmap_Menu
	call CloseText
	ret

.outside_zone ; leaving Zone, enable encounters
	ld de, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; EVENT_IN_PURIFIED_ZONE
	ld b, RESET_FLAG
	call EventFlagAction
	farcall Script_wildon
	ret

PurifiedZoneCoords:
	db 10,  8
	db 11,  8
	db 10,  9
	db 11,  9
	db -1 ; end

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

PokemonTower5FPurifiedZoneText:
	text "Entered the"
	line "purified and"
	cont "protected zone!"

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
	object_event 12,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower5FChannelerScript, -1
	object_event 17,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerTammy, -1
	object_event 14,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerRuth, -1
	object_event  6, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerKarina, -1
	object_event  9, 16, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJanae, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5FNugget, EVENT_POKEMON_TOWER_5F_NUGGET