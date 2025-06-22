	object_const_def
	const SSANNEBOW_SUPER_NERD
	const SSANNEBOW_SAILOR1
	const SSANNEBOW_COOLTRAINER_M
	const SSANNEBOW_SAILOR2
	const SSANNEBOW_SAILOR3

SSAnneBow_MapScripts:
	def_scene_scripts

	def_callbacks

;

SSAnneBowSuperNerdText:
	text "The party's over."
	line "The ship will be"
	cont "departing soon."
	done

SSAnneBowSailor1Text:
	text "Scrubbing decks"
	line "is hard work!"
	done

SSAnneBowCooltrainerMText:
	text "Urf. I feel ill."

	para "I stepped out to"
	line "get some air."
	done

SSAnneBowSailor2BattleText:
	text "Hey matey!"

	para "Let's do a little"
	line "jig!"
	done

SSAnneBowSailor2EndBattleText:
	text "You're"
	line "impressive!"
	prompt

SSAnneBowSailor2AfterBattleText:
	text "How many kinds of"
	line "#MON do you"
	cont "think there are?"
	done

SSAnneBowSailor3BattleText:
	text "Ahoy there!"
	line "Are you seasick?"
	done

SSAnneBowSailor3EndBattleText:
	text "I was"
	line "just careless!"
	prompt

SSAnneBowSailor3AfterBattleText:
	text "My Pa said there"
	line "are 100 kinds of"
	cont "#MON. I think"
	cont "there are more."
	done

SSAnneBow_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  8, SS_ANNE_3F, 1
	warp_event 13,  9, SS_ANNE_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	; object_event  5,  2, SPRITE_SUPER_NERD, STAY, UP, TEXT_SSANNEBOW_SUPER_NERD
	; object_event  4,  9, SPRITE_SAILOR, STAY, NONE, TEXT_SSANNEBOW_SAILOR1
	; object_event  7, 11, SPRITE_COOLTRAINER_M, STAY, NONE, TEXT_SSANNEBOW_COOLTRAINER_M
	; object_event  4,  4, SPRITE_SAILOR, STAY, DOWN, TEXT_SSANNEBOW_SAILOR2, OPP_SAILOR, 1
	; object_event 10,  8, SPRITE_SAILOR, STAY, UP, TEXT_SSANNEBOW_SAILOR3, OPP_SAILOR, 2
