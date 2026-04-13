	object_const_def
	const POKEMONTOWER2F_RIVAL
	const POKEMONTOWER2F_CHANNELER

PokemonTower2F_MapScripts:
	def_scene_scripts
	scene_script PokemonTower2FNoopScene, SCENE_POKEMONTOWER2F_NOOP
	scene_script PokemonTower2FNoopScene, SCENE_POKEMONTOWER2F_RIVAL_DEFEATED

	def_callbacks

PokemonTower2FNoopScene:
	; disappear POKEMONTOWER2F_RIVAL ; Ensures the Rival remains unseen if Player blacks out
	; Rival initialises visible in R/B
	end

PokemonTower2FRivalBattleSceneLeft:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject POKEMONTOWER2F_RIVAL, DOWN
	turnobject PLAYER, UP
	sjump PokemonTower2FRivalBattleScript
	
PokemonTower2FRivalBattleSceneRight:
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject POKEMONTOWER2F_RIVAL, RIGHT
	turnobject PLAYER, LEFT
	;fallthrough
PokemonTower2FRivalBattleScript:
	opentext
	writetext PokemonTower2FRivalText
	waitbutton
	closetext
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
		iftrue .Squirtle
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
		iftrue .Bulbasaur
	winlosstext PokemonTower2FRivalDefeatedText, PokemonTower2FRivalVictoryText
	setlasttalked POKEMONTOWER2F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Squirtle:
	winlosstext PokemonTower2FRivalDefeatedText, PokemonTower2FRivalVictoryText
	setlasttalked POKEMONTOWER2F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_BULBASAUR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Bulbasaur:
	winlosstext PokemonTower2FRivalDefeatedText, PokemonTower2FRivalVictoryText
	setlasttalked POKEMONTOWER2F_RIVAL
	loadtrainer RIVAL2, RIVAL2_2_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext PokemonTower2FRivalHowsYourDexText
	waitbutton
	closetext
	setevent EVENT_BEAT_POKEMON_TOWER_RIVAL ; We don't check if we've done this…? (R/B does)
	readvar VAR_XCOORD
		getnum STRING_BUFFER_3
		ifequal 14, .LeftTile
		ifequal 15, .RightTile
.LeftTile
	applymovement POKEMONTOWER2F_RIVAL, PokemonTower2FRivalLeaveMovementLeft
	sjump .ok
.RightTile
	applymovement POKEMONTOWER2F_RIVAL, PokemonTower2FRivalLeaveMovementRight
.ok
	disappear POKEMONTOWER2F_RIVAL
	setscene SCENE_POKEMONTOWER2F_RIVAL_DEFEATED
	waitsfx
	playmapmusic
	end

PokemonTower2FChannelerScript:
	jumptextfaceplayer PokemonTower2FChannelerText

PokemonTower2FRivalLeaveMovementLeft:
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end

PokemonTower2FRivalLeaveMovementRight:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

PokemonTower2FRivalText:
	text "<RIVAL>: Hey,"
	line "<PLAYER>! What"
	cont "brings you here?"

	para "Your #MON"
	line "don't look dead!"

	para "I can at least"
	line "make them faint!"

	para "Let's go, pal!"
	done

PokemonTower2FRivalDefeatedText:
	text "What?"
	line "You stinker!"

	para "I took it easy on"
	line "you too!"
	done

PokemonTower2FRivalVictoryText:
	text "<RIVAL>: Well,"
	line "look at all your"
	cont "wimpy #MON!"

	para "Toughen them up a"
	line "bit more!"
	done

PokemonTower2FRivalHowsYourDexText:
	text "How's your #DEX"
	line "coming, pal?"

	para "I just caught a"
	line "CUBONE!"

	para "I can't find the"
	line "grown-up MAROWAK"
	cont "yet!"

	para "I doubt there are"
	line "any left!"
	
	para "Well, I better"
	line "get going!"

	para "I've got a lot to"
	line "accomplish, pal!"

	para "Smell ya later!"
	done

PokemonTower2FChannelerText:
	text "Even we could not"
	line "identify the"
	cont "wayward GHOSTS!"

	para "A SILPH SCOPE"
	line "might be able to"
	cont "unmask them."
	done

PokemonTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_3F, 1
	warp_event 18,  9, POKEMON_TOWER_1F, 3

	def_coord_events
	coord_event 14,  6, SCENE_POKEMONTOWER2F_NOOP, PokemonTower2FRivalBattleSceneLeft
	coord_event 15,  5, SCENE_POKEMONTOWER2F_NOOP, PokemonTower2FRivalBattleSceneRight

	def_bg_events

	def_object_events
	object_event 14,  5, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_POKEMON_TOWER_RIVAL
	object_event  3,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonTower2FChannelerScript, -1
