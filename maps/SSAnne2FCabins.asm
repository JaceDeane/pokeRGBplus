	object_const_def
	const SSANNE2FCABINS_GENTLEMAN1
	const SSANNE2FCABINS_FISHER
	const SSANNE2FCABINS_GENTLEMAN2
	const SSANNE2FCABINS_LASS1
	const SSANNE2FCABINS_GENTLEMAN3
	const SSANNE2FCABINS_MAX_ETHER
	const SSANNE2FCABINS_GENTLEMAN4
	const SSANNE2FCABINS_GRAMPS
	const SSANNE2FCABINS_RARE_CANDY
	const SSANNE2FCABINS_GENTLEMAN5
	const SSANNE2FCABINS_LITTLE_BOY
	const SSANNE2FCABINS_LASS2 ; BRUNETTE_GIRL
	const SSANNE2FCABINS_BEAUTY

SSAnne2FCabins_MapScripts:
	def_scene_scripts

	def_callbacks

;

SSAnne2FCabinsGentleman3Text:
	text "In all my travels"
	line "I've never seen"
	cont "any #MON sleep"
	cont "like this one!"

	para "It was something"
	line "like this!"
	prompt

SSAnne2FCabinsGentleman4Text:
	text "Ah yes, I have"
	line "seen some #MON"
	cont "ferry people"
	cont "across the water!"
	done

SSAnne2FCabinsGrampsText:
	text "#MON can CUT"
	line "down small bushes."
	done

SSAnne2FCabinsGentleman5Text:
	text "Have you gone to"
	line "the SAFARI ZONE"
	cont "in FUCHSIA CITY?"

	para "It had many rare"
	line "kinds of #MON!!"
	done

SSAnne2FCabinsLittleBoyText:
	text "Me and my Daddy"
	line "think the SAFARI"
	cont "ZONE is awesome!"
	done

SSAnne2FCabinsBrunetteGirlText:
	text "The CAPTAIN looked"
	line "really sick and"
	cont "pale!"
	done

SSAnne2FCabinsBeautyText:
	text "I hear many people"
	line "get seasick!"
	done

SSAnne2FCabinsGentleman1BattleText:
	text "Competing against"
	line "the young keeps"
	cont "me youthful."
	done

SSAnne2FCabinsGentleman1EndBattleText:
	text "Good"
	line "fight! Ah, I feel"
	cont "young again!"
	prompt

SSAnne2FCabinsGentleman1AfterBattleText:
	text "15 years ago, I"
	line "would have won!"
	done

SSAnne2FCabinsFisherBattleText:
	text "Check out what I"
	line "fished up!"
	done

SSAnne2FCabinsFisherEndBattleText:
	text "I'm"
	line "all out!"
	prompt

SSAnne2FCabinsFisherAfterBattleText:
	text "Party?"

	para "The cruise ship's"
	line "party should be"
	cont "over by now."
	done

SSAnne2FCabinsGentleman2BattleText:
	text "Which do you like,"
	line "a strong or a"
	cont "rare #MON?"
	done

SSAnne2FCabinsGentleman2EndBattleText:
	text "I must"
	line "salute you!"
	prompt

SSAnne2FCabinsGentleman2AfterBattleText:
	text "I prefer strong"
	line "and rare #MON."
	done

SSAnne2FCabinsCooltrainerFBattleText:
	text "I never saw you"
	line "at the party."
	done

SSAnne2FCabinsCooltrainerFEndBattleText:
	text "Take"
	line "it easy!"
	prompt

SSAnne2FCabinsCooltrainerFAfterBattleText:
	text "Oh, I adore your"
	line "strong #MON!"
	done

SSAnne2FCabins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 1
	warp_event  3,  5, SS_ANNE_2F, 1
	warp_event 12,  5, SS_ANNE_2F, 2
	warp_event 13,  5, SS_ANNE_2F, 2
	warp_event 22,  5, SS_ANNE_2F, 3
	warp_event 23,  5, SS_ANNE_2F, 3
	warp_event  2, 15, SS_ANNE_2F, 4
	warp_event  3, 15, SS_ANNE_2F, 4
	warp_event 12, 15, SS_ANNE_2F, 5
	warp_event 13, 15, SS_ANNE_2F, 5
	warp_event 22, 15, SS_ANNE_2F, 6
	warp_event 23, 15, SS_ANNE_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	; object_event 10,  2, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE2FROOMS_GENTLEMAN1, OPP_GENTLEMAN, 3
	; object_event 13,  4, SPRITE_FISHER, STAY, LEFT, TEXT_SSANNE2FROOMS_FISHER, OPP_FISHER, 1
	; object_event  0, 14, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE2FROOMS_GENTLEMAN2, OPP_GENTLEMAN, 5
	; object_event  2, 11, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_SSANNE2FROOMS_COOLTRAINER_F, OPP_LASS, 12
	; object_event  1,  2, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN3
	; object_event 12,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNE2FROOMS_MAX_ETHER, MAX_ETHER
	; object_event 21,  2, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN4
	; object_event 22,  1, SPRITE_GRAMPS, STAY, DOWN, TEXT_SSANNE2FROOMS_GRAMPS
	; object_event  0, 12, SPRITE_POKE_BALL, STAY, NONE, TEXT_SSANNE2FROOMS_RARE_CANDY, RARE_CANDY
	; object_event 12, 12, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN5
	; object_event 11, 14, SPRITE_LITTLE_BOY, STAY, NONE, TEXT_SSANNE2FROOMS_LITTLE_BOY
	; object_event 22, 12, SPRITE_BRUNETTE_GIRL, STAY, LEFT, TEXT_SSANNE2FROOMS_BRUNETTE_GIRL
	; object_event 20, 12, SPRITE_BEAUTY, STAY, RIGHT, TEXT_SSANNE2FROOMS_BEAUTY
