	object_const_def
	const ROUTE22_RIVAL

Route22_MapScripts:
	def_scene_scripts
	scene_script Route22Noop1Scene, SCENE_ROUTE22_NOOP
	scene_script Route22Noop2Scene, SCENE_ROUTE22_RIVAL_BATTLE

	def_callbacks

Route22Noop1Scene:
	;setscene SCENE_ROUTE22_RIVAL_BATTLE ; DEBUG testing
	end

Route22Noop2Scene:
	end
	
Route22RivalBattleScene1:
	moveobject ROUTE22_RIVAL, 25, 4
	;fallthrough
Route22RivalBattleScene2:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear ROUTE22_RIVAL
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement ROUTE22_RIVAL, Route22RivalApproachMovement
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK ;Check whether to load Rival1 or Rival2 version of the Route 22 fight
	iftrue .Fight1
	;checkevent EVENT_GOT_A_POKEMON_FROM_OAK ; Event that triggers the 2nd Rival Fight -- probably beating GIOVANNI
	;iftrue .Fight2
.Fight1
	sjump Route22RivalBattle1Script
	;end
.Fight2
	sjump Route22RivalBattle2Script

Route22RivalBattle1Script:
	opentext
	writetext Route22Rival1BeforeText
	waitbutton
	closetext
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
	iftrue .Squirtle
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
	iftrue .Bulbasaur
	winlosstext Route22Rival1WinText, Route22Rival1LossText
	setlasttalked ROUTE22_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_SQUIRTLE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Squirtle:
	winlosstext Route22Rival1WinText, Route22Rival1LossText
	setlasttalked ROUTE22_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_BULBASAUR
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Bulbasaur:
	winlosstext Route22Rival1WinText, Route22Rival1LossText
	setlasttalked ROUTE22_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_CHARMANDER
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route22Rival1AfterText
	waitbutton
	closetext
	;turnobject PLAYER, LEFT
	;applymovement ROUTE22_RIVAL, Route22RivalLeaveMovement1 ; Top tile 29, 4
	applymovement ROUTE22_RIVAL, Route22RivalLeaveMovement2 ; Bottom tile 29, 5
	;playsound SFX_EXIT_BUILDING
	disappear ROUTE22_RIVAL
	setscene SCENE_ROUTE22_NOOP
	waitsfx
	playmapmusic
	end
	
Route22RivalBattle2Script:
	; TODO
	end

PokemonLeagueEntranceSign:
	jumptext PokemonLeagueEntranceSignText
	
Route22RivalApproachMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Route22RivalLeaveMovement1:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
Route22RivalLeaveMovement2:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

Route22Rival1BeforeText:
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to the"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	cont "have any BADGES!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON"
	cont "get any stronger?"
	done

Route22Rival1WinText:
	text "Awww! You just"
	line "lucked out!"
	done

Route22Rival1AfterText:
	text "I heard that the"
	line "#MON LEAGUE"
	cont "has many tough"
	cont "trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

Route22Rival1LossText:
	text "<RIVAL>: What?"
	line "Why do I have two"
	cont "#MON?"

	para "You should catch"
	cont "some more too!"
	done

Route22Rival2BeforeText:
	text "<RIVAL>: What?"
	line "<PLAYER>! What a"
	cont "surprise to see"
	cont "you here!"

	para "So you're going"
	line "to the #MON"
	cont "LEAGUE?"

	para "You collected all"
	line "the BADGES too?"
	cont "That's cool!"

	para "Then I'll whip you"
	line "<PLAYER> as a warm"
	cont "up for the"
	cont "#MON LEAGUE!"

	para "Come on!"
	done

Route22Rival2WinText:
	text "What!?"

	para "I was just"
	line "careless!"
	done

Route22Rival2AfterText:
	text "That loosened me"
	line "up!"
	
	para "I'm ready for the"
	line "#MON LEAGUE!"

	para "<PLAYER>, you need"
	line "more practice!"

	para "But hey, you know"
	line "that! I'm out of"
	cont "here. Smell ya!"
	done

PokemonLeagueEntranceSignText:
	text "#MON LEAGUE"
	line "Front Gate"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, VICTORY_ROAD_GATE, 1

	def_coord_events
	coord_event  29, 4, SCENE_ROUTE22_RIVAL_BATTLE, Route22RivalBattleScene1
	coord_event  29, 5, SCENE_ROUTE22_RIVAL_BATTLE, Route22RivalBattleScene2

	def_bg_events
	bg_event  7, 11, BGEVENT_READ, PokemonLeagueEntranceSign

	def_object_events
	object_event  25,  5, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	;object_event  25,  5, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route22Rival2Script, -1
	
	; const EVENT_1ST_ROUTE22_RIVAL_BATTLE
	; const EVENT_2ND_ROUTE22_RIVAL_BATTLE
	; const EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE
	; const EVENT_BEAT_ROUTE22_RIVAL_2ND_BATTLE
	; const EVENT_ROUTE22_RIVAL_WANTS_BATTLE
