	object_const_def
	const POKEMONTOWER7F_ROCKET1
	const POKEMONTOWER7F_ROCKET2
	const POKEMONTOWER7F_ROCKET3
	const POKEMONTOWER7F_MR_FUJI

PokemonTower7F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower7FMrFujiScript:
	faceplayer
	opentext
	writetext PokemonTower7FMrFujiRescueText
	waitbutton
	closetext
	setevent EVENT_RESCUED_MR_FUJI
	; setevent EVENT_RESCUED_MR_FUJI_2 ; unchecked anywhere in R/B

	; ld a, HS_MR_FUJIS_HOUSE_MR_FUJI
	; ld [wMissableObjectIndex], a
	; predef ShowObject

	; ld a, HS_SAFFRON_CITY_E
	; ld [wMissableObjectIndex], a
	; predef HideObject

	; ld a, HS_SAFFRON_CITY_F
	; ld [wMissableObjectIndex], a
	; predef ShowObject

	; ld a, SPRITE_FACING_UP
	; ld [wSpritePlayerStateData1FacingDirection], a
	; ld a, MR_FUJIS_HOUSE
	; ldh [hWarpDestinationMap], a
	
	special FadeOutToWhite ; same as SLOWPOKE_WELL event in G/S
	special HealParty ; same as SLOWPOKE_WELL event in G/S
	pause 15
	warpfacing UP, MR_FUJIS_HOUSE, 3, 2
	end

TrainerRocketGrunt19:
	trainer GRUNTM, GRUNTM_19, EVENT_BEAT_ROCKET_GRUNTM_19, TrainerRocketGrunt19BattleText, TrainerRocketGrunt19EndBattleText, 0, .Script

.Script:
	; endifjustbattled
	opentext
	writetext TrainerRocketGrunt19AfterBattleText
	waitbutton
	closetext
	readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal  9, .RightDown
        ifequal 10, .DownRight
		ifequal 11, .ExitDown
        ifequal 12, .ExitDown
.RightDown
	applymovement POKEMONTOWER7F_ROCKET1, PokemonTower7FRocket1ExitRightDownMovement
	sjump .ok
.DownRight
	applymovement POKEMONTOWER7F_ROCKET1, PokemonTower7FRocket1ExitDownRightMovement
	sjump .ok
.ExitDown
	applymovement POKEMONTOWER7F_ROCKET1, PokemonTower7FRocketExitDownMovement
.ok
	disappear POKEMONTOWER7F_ROCKET1
	end

TrainerRocketGrunt20:
	trainer GRUNTM, GRUNTM_20, EVENT_BEAT_ROCKET_GRUNTM_20, TrainerRocketGrunt20BattleText, TrainerRocketGrunt20EndBattleText, 0, .Script

.Script:
	; endifjustbattled
	opentext
	writetext TrainerRocketGrunt20AfterBattleText
	waitbutton
	closetext
	readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal  9, .ExitDown
        ifequal 10, .ExitDown
		ifequal 11, .DownLeft
        ifequal 12, .LeftDown
.LeftDown
	applymovement POKEMONTOWER7F_ROCKET2, PokemonTower7FRocket2ExitLeftDownMovement
	sjump .ok
.DownLeft
	applymovement POKEMONTOWER7F_ROCKET2, PokemonTower7FRocket2ExitDownLeftMovement
	sjump .ok
.ExitDown
	applymovement POKEMONTOWER7F_ROCKET2, PokemonTower7FRocketExitDownMovement
.ok
	disappear POKEMONTOWER7F_ROCKET2
	end

TrainerRocketGrunt21:
	trainer GRUNTM, GRUNTM_21, EVENT_BEAT_ROCKET_GRUNTM_21, TrainerRocketGrunt21BattleText, TrainerRocketGrunt21EndBattleText, 0, .Script

.Script:
	; endifjustbattled
	opentext
	writetext TrainerRocketGrunt21AfterBattleText
	waitbutton
	closetext
	readvar VAR_XCOORD
        getnum STRING_BUFFER_3
        ifequal  9, .RightDown
        ifequal 10, .ExitDown
		ifequal 11, .ExitDown
        ifequal 12, .ExitDown
.RightDown
	applymovement POKEMONTOWER7F_ROCKET3, PokemonTower7FRocket3ExitRightDownMovement
	sjump .ok
.ExitDown
	applymovement POKEMONTOWER7F_ROCKET3, PokemonTower7FRocketExitDownMovement
.ok
	disappear POKEMONTOWER7F_ROCKET3
	end

PokemonTower7FRocket1ExitRightDownMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end

PokemonTower7FRocket1ExitDownRightMovement:
	step DOWN
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7FRocketExitDownMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7FRocket2ExitLeftDownMovement:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PokemonTower7FRocket2ExitDownLeftMovement:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step_end

PokemonTower7FRocket3ExitRightDownMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

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

TrainerRocketGrunt19BattleText:
	text "What do you want?"
	line "Why are you here?"
	done

TrainerRocketGrunt19EndBattleText:
	text "I give up!"
	done

TrainerRocketGrunt19AfterBattleText:
	text "I'm not going to"
	line "forget this!"
	done

TrainerRocketGrunt20BattleText:
	text "This old guy came"
	line "and complained"

	para "about us harming"
	line "useless #MON!"

	para "We're talking it"
	line "over as adults!"
	done

TrainerRocketGrunt20EndBattleText:
	text "Please!"
	line "No more!"
	done

TrainerRocketGrunt20AfterBattleText:
	text "#MON are only"
	line "good for making"
	cont "money!"

	para "Stay out of our"
	line "business!"
	done

TrainerRocketGrunt21BattleText:
	text "You're not saving"
	line "anyone, kid!"
	done

TrainerRocketGrunt21EndBattleText:
	text "Don't fight"
	line "us ROCKETS!"
	done

TrainerRocketGrunt21AfterBattleText:
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
	object_event  9, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt19, EVENT_BEAT_ROCKET_GRUNTM_19
	object_event 12,  9, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt20, EVENT_BEAT_ROCKET_GRUNTM_20
	object_event  9,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRocketGrunt21, EVENT_BEAT_ROCKET_GRUNTM_21
	object_event 10,  3, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PokemonTower7FMrFujiScript, EVENT_RESCUED_MR_FUJI
