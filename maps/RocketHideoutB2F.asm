	object_const_def
	const ROCKETHIDEOUTB2F_ROCKET
	const ROCKETHIDEOUTB2F_MOON_STONE
	const ROCKETHIDEOUTB2F_NUGGET
	const ROCKETHIDEOUTB2F_TM_HORN_DRILL
	const ROCKETHIDEOUTB2F_SUPER_POTION

RocketHideoutB2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGrunt13:
	trainer GRUNTM, GRUNTM_13, EVENT_BEAT_ROCKET_GRUNTM_13, TrainerRocketGrunt13SeenText, TrainerRocketGrunt13BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt13AfterBattleText
	waitbutton
	closetext
	end

RocketHideoutB2FMoonStone:
	itemball MOON_STONE

RocketHideoutB2FNugget:
	itemball NUGGET

RocketHideoutB2FTMHornDrill:
	itemball TM_HORN_DRILL

RocketHideoutB2FSuperPotion:
	itemball SUPER_POTION

TrainerRocketGrunt13SeenText:
	text "BOSS said you can"
	line "see GHOSTS with"
	cont "the SILPH SCOPE!"
	done

TrainerRocketGrunt13BeatenText:
	text "I surrender!"
	done

TrainerRocketGrunt13AfterBattleText:
	text "The TEAM ROCKET HQ"
	line "has four basement"
	cont "floors."

	para "Can you reach the"
	line "BOSS?"
	done

RocketHideoutB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  8, ROCKET_HIDEOUT_B1F, 1
	warp_event 21,  8, ROCKET_HIDEOUT_B3F, 1
	warp_event 24, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 21, 22, ROCKET_HIDEOUT_B1F, 4
	warp_event 25, 19, ROCKET_HIDEOUT_ELEVATOR, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 20, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt13, -1
	object_event  1, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FMoonStone, EVENT_ROCKET_HIDEOUT_B2F_MOON_STONE
	object_event 16,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FNugget, EVENT_ROCKET_HIDEOUT_B2F_NUGGET
	object_event  6, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FTMHornDrill, EVENT_GOT_TM07_HORN_DRILL
	object_event  3, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB2FSuperPotion, EVENT_ROCKET_HIDEOUT_B2F_SUPER_POTION
