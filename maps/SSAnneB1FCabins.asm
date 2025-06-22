	object_const_def
	const SSANNEB1FCABINS_SAILOR1
	const SSANNEB1FCABINS_SAILOR2
	const SSANNEB1FCABINS_SAILOR3
	const SSANNEB1FCABINS_SAILOR4
	const SSANNEB1FCABINS_SAILOR5
	const SSANNEB1FCABINS_FISHER
	const SSANNEB1FCABINS_SUPER_NERD
	const SSANNEB1FCABINS_MACHOKE
	const SSANNEB1FCABINS_ETHER
	const SSANNEB1FCABINS_TM_REST
	const SSANNEB1FCABINS_MAX_POTION

SSAnneB1FCabins_MapScripts:
	def_scene_scripts

	def_callbacks

;

SSAnneB1FCabinsMachokeText:
	text "MACHOKE: Gwoh!"
	line "Goggoh!@"
	text_end

SSAnneB1FCabinsSailor1BattleText:
	text "You know what they"
	line "say about sailors"
	cont "and fighting!"
	done

SSAnneB1FCabinsSailor1EndBattleText:
	text "Right!"
	line "Good fight, mate!"
	prompt

SSAnneB1FCabinsSailor1AfterBattleText:
	text "Haha! Want to be"
	line "a sailor, mate?"
	done

SSAnneB1FCabinsSailor2BattleText:
	text "My sailor's pride"
	line "is at stake!"
	done

SSAnneB1FCabinsSailor2EndBattleText:
	text "Your"
	line "spirit sank me!"
	prompt

SSAnneB1FCabinsSailor2AfterBattleText:
	text "Did you see the"
	line "FISHING GURU in"
	cont "VERMILION CITY?"
	done

SSAnneB1FCabinsSailor3BattleText:
	text "Us sailors have"
	line "#MON too!"
	done

SSAnneB1FCabinsSailor3EndBattleText:
	text "OK, "
	line "you're not bad."
	prompt

SSAnneB1FCabinsSailor3AfterBattleText:
	text "We caught all our"
	line "#MON while"
	cont "out at sea!"
	done

SSAnneB1FCabinsSailor4BattleText:
	text "I like feisty"
	line "kids like you!@"
	text_end

SSAnneB1FCabinsSailor4EndBattleText:
	text "Argh!"
	line "Lost it!"
	prompt

SSAnneB1FCabinsSailor4AfterBattleText:
	text "Sea #MON live"
	line "in deep water."
	cont "You'll need a ROD!"
	done

SSAnneB1FCabinsSailor5BattleText:
	text "Matey, you're"
	line "walking the plank"
	cont "if you lose!"
	done

SSAnneB1FCabinsSailor5EndBattleText:
	text "Argh!"
	line "Beaten by a kid!"
	prompt

SSAnneB1FCabinsSailor5AfterBattleText:
	text "Jellyfish some-"
	line "times drift into"
	cont "the ship."
	done

SSAnneB1FCabinsFisherBattleText:
	text "Hello stranger!"
	line "Stop and chat!"

	para "All my #MON"
	line "are from the sea!"
	done

SSAnneB1FCabinsFisherEndBattleText:
	text "Darn!"
	line "I let that one"
	cont "get away!"
	prompt

SSAnneB1FCabinsFisherAfterBattleText:
	text "I was going to"
	line "make you my"
	cont "assistant too!"
	done

SSAnneB1FCabinsSuperNerdText:
	text "My buddy, MACHOKE,"
	line "is super strong!"

	para "He has enough"
	line "STRENGTH to move"
	cont "big rocks!"
	done


SSAnneB1FCabins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, SS_ANNE_B1F, 5
	warp_event  3,  5, SS_ANNE_B1F, 5
	warp_event 12,  5, SS_ANNE_B1F, 4
	warp_event 13,  5, SS_ANNE_B1F, 4
	warp_event 22,  5, SS_ANNE_B1F, 3
	warp_event 23,  5, SS_ANNE_B1F, 3
	warp_event  2, 15, SS_ANNE_B1F, 2
	warp_event  3, 15, SS_ANNE_B1F, 2
	warp_event 12, 15, SS_ANNE_B1F, 1
	warp_event 13, 15, SS_ANNE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  0, 13, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEB1FROOMS_SAILOR1, OPP_SAILOR, 3
	; object_event  2, 11, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEB1FROOMS_SAILOR2, OPP_SAILOR, 4
	; object_event 12,  3, SPRITE_SAILOR, STAY, LEFT, TEXT_SSANNEB1FROOMS_SAILOR3, OPP_SAILOR, 5
	; object_event 22,  2, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEB1FROOMS_SAILOR4, OPP_SAILOR, 6
	; object_event  0,  2, SPRITE_SAILOR, STAY, RIGHT, TEXT_SSANNEB1FROOMS_SAILOR5, OPP_SAILOR, 7
	; object_event  0,  4, SPRITE_FISHER, STAY, RIGHT, TEXT_SSANNEB1FROOMS_FISHER, OPP_FISHER, 2
	; object_event 10, 13, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_SSANNEB1FROOMS_SUPER_NERD
	; object_event 11, 12, SPRITE_MONSTER, STAY, NONE, TEXT_SSANNEB1FROOMS_MACHOKE
	; object_event 20,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNEB1FROOMS_ETHER, ETHER
	; object_event 10,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNEB1FROOMS_TM_REST, TM_REST
	; object_event 12, 11, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNEB1FROOMS_MAX_POTION, MAX_POTION
