	object_const_def
	const SSANNE2F_WAITER
	const SSANNE2F_RIVAL

SSAnne2F_MapScripts:
	def_scene_scripts
	scene_script SSAnne2FNoopScene, SCENE_SSANNE2F_NOOP
	scene_script SSAnne2FNoopScene, SCENE_SSANNE2F_RIVAL_DEFEATED

	def_callbacks

SSAnne2FNoopScene:
	disappear SSANNE2F_RIVAL ; Ensures the Rival remains unseen if Player blacks out
	end

SSAnne2FRivalBattleSceneLeft:
	special FadeOutMusic
	pause 15
	appear SSANNE2F_RIVAL
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalApproachMovementLeft
	sjump SSAnne2FRivalBattleScript
	
SSAnne2FRivalBattleSceneRight:
	
	special FadeOutMusic
	pause 15
	appear SSANNE2F_RIVAL
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalApproachMovementRight
	turnobject SSANNE2F_RIVAL, RIGHT
	turnobject PLAYER, LEFT
	;fallthrough
SSAnne2FRivalBattleScript:
	opentext
	writetext SSAnne2FRivalText
	waitbutton
	closetext
	checkevent EVENT_GOT_A_SQUIRTLE_FROM_OAK
		iftrue .Squirtle
	checkevent EVENT_GOT_A_BULBASAUR_FROM_OAK
		iftrue .Bulbasaur
	winlosstext SSAnne2FRivalDefeatedText, SSAnne2FRivalVictoryText
	setlasttalked SSANNE2F_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Squirtle:
	winlosstext SSAnne2FRivalDefeatedText, SSAnne2FRivalVictoryText
	setlasttalked SSANNE2F_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_BULBASAUR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Bulbasaur:
	winlosstext SSAnne2FRivalDefeatedText, SSAnne2FRivalVictoryText
	setlasttalked SSANNE2F_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SSAnne2FRivalCutMasterText
	waitbutton
	closetext
	setevent EVENT_BEAT_RIVAL_SS_ANNE_2F
	readvar VAR_XCOORD
		getnum STRING_BUFFER_3
		ifequal 36, .LeftTile
		ifequal 37, .RightTile
.LeftTile
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalLeaveMovementLeft
	sjump .ok
.RightTile
	applymovement SSANNE2F_RIVAL, SSAnne2FRivalLeaveMovementRight
.ok
	disappear SSANNE2F_RIVAL
	setscene SCENE_SSANNE2F_RIVAL_DEFEATED
	waitsfx
	playmapmusic
	end

SSAnne2FWaiterScript:
	jumptextfaceplayer SSAnne2FWaiterText

SSAnne2FRivalApproachMovementRight:
	step DOWN
SSAnne2FRivalApproachMovementLeft:
	step DOWN
	step DOWN
	step DOWN
	step_end

SSAnne2FRivalLeaveMovementLeft:
	step RIGHT
	step DOWN
SSAnne2FRivalLeaveMovementRight:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SSAnne2FWaiterText:
	text "This ship, she is"
	line "a luxury liner"
	cont "for trainers!"

	para "At every port, we"
	line "hold parties with"
	cont "invited trainers!"
	done

SSAnne2FRivalText:
	text "<RIVAL>: Bonjour!"
	line "<PLAYER>!"

	para "Imagine seeing"
	line "you here!"

	para "<PLAYER>, were you"
	line "really invited?"

	para "So, how's your"
	line "#DEX coming?"

	para "I already caught"
	line "40 kinds, pal!"

	para "Different kinds"
	line "are everywhere."

	para "Crawl around in"
	line "grassy areas!"
	
	para "Check 'em out!" ; Added a line to clarify a battle's starting
	done

SSAnne2FRivalDefeatedText:
	text "Humph!"

	para "At least you're"
	line "raising your"
	cont "#MON!"
	done

SSAnne2FRivalVictoryText:
	text "<PLAYER>! What are"
	line "you, seasick?"

	para "You should shape"
	line "up, pal!"
	done

SSAnne2FRivalCutMasterText:
	text "<RIVAL>: I heard"
	line "there was a CUT"
	cont "master on board."

	para "But he was just a"
	line "seasick old man!"

	para "CUT itself is"
	line "really useful."

	para "You should go see"
	line "him! Smell ya!"
	done

SSAnne2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 11, SS_ANNE_2F_CABINS, 1
	warp_event 13, 11, SS_ANNE_2F_CABINS, 3
	warp_event 17, 11, SS_ANNE_2F_CABINS, 5
	warp_event 21, 11, SS_ANNE_2F_CABINS, 7
	warp_event 25, 11, SS_ANNE_2F_CABINS, 9
	warp_event 29, 11, SS_ANNE_2F_CABINS, 11
	warp_event  2,  4, SS_ANNE_1F, 8
	warp_event  2, 13, SS_ANNE_3F, 2
	warp_event 36,  4, SS_ANNE_CAPTAINS_CABIN, 1

	def_coord_events
	coord_event 36,  8, SCENE_SSANNE2F_NOOP, SSAnne2FRivalBattleSceneLeft
	coord_event 37,  8, SCENE_SSANNE2F_NOOP, SSAnne2FRivalBattleSceneRight

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_WAITER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FWaiterScript, -1
	object_event 36,  4, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDDEN_OBJECT
