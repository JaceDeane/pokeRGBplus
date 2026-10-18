	object_const_def
	const ROCKETHIDEOUTB3F_ROCKET1
	const ROCKETHIDEOUTB3F_ROCKET2
	const ROCKETHIDEOUTB3F_TM_DOUBLE_EDGE
	const ROCKETHIDEOUTB3F_RARE_CANDY

RocketHideoutB3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerRocketGrunt14:
	trainer GRUNTM, GRUNTM_14, EVENT_BEAT_ROCKET_GRUNTM_14, TrainerRocketGrunt14SeenText, TrainerRocketGrunt14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt14AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt15:
	trainer GRUNTM, GRUNTM_15, EVENT_BEAT_ROCKET_GRUNTM_15, TrainerRocketGrunt15SeenText, TrainerRocketGrunt15BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt15AfterBattleText
	waitbutton
	closetext
	end

RocketHideoutB3FTMDoubleEdge:
	itemball TM_DOUBLE_EDGE

RocketHideoutB3FRareCandy:
	itemball RARE_CANDY

TrainerRocketGrunt14SeenText:
	text "Stop meddling in"
	line "TEAM ROCKET's"
	cont "affairs!"
	done

TrainerRocketGrunt14BeatenText:
	text "Oof!"
	line "Taken down!"
	done

TrainerRocketGrunt14AfterBattleText:
	text "SILPH SCOPE?"

	para "Oh, the machine"
	line "the BOSS stole?"

	para "It's here somewhere."
	done

TrainerRocketGrunt15SeenText:
	text "We got word from"
	line "upstairs that you"
	cont "were coming!"
	done

TrainerRocketGrunt15BeatenText:
	text "What? I lost?"
	line "No!"
	done

TrainerRocketGrunt15AfterBattleText:
	text "Go ahead and go!"

	para "But you need the"
	line "LIFT KEY to run"
	cont "the elevator!"
	done

RocketHideoutB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  6, ROCKET_HIDEOUT_B2F, 2
	warp_event 19, 18, ROCKET_HIDEOUT_B4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 22, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRocketGrunt14, -1
	object_event 26, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt15, -1
	object_event 26, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FTMDoubleEdge, EVENT_GOT_TM10_DOUBLE_EDGE
	object_event 20, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB3FRareCandy, EVENT_ROCKET_HIDEOUT_B3F_RARE_CANDY
