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

TrainerGentlemanBrooks:
	trainer GENTLEMAN, BROOKS, EVENT_BEAT_GENTLEMAN_BROOKS, GentlemanBrooksSeenText, GentlemanBrooksBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanBrooksAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherDale:
	trainer FISHER, DALE, EVENT_BEAT_FISHER_DALE, FisherDaleSeenText, FisherDaleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherDaleAfterBattleText
	waitbutton
	closetext
	end

TrainerGentlemanWalter:
	trainer GENTLEMAN, WALTER, EVENT_BEAT_GENTLEMAN_WALTER, GentlemanWalterSeenText, GentlemanWalterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanWalterAfterBattleText
	waitbutton
	closetext
	end

TrainerLassDawn:
	trainer LASS, DAWN, EVENT_BEAT_LASS_DAWN, LassDawnSeenText, LassDawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassDawnAfterBattleText
	waitbutton
	closetext
	end

SSAnne2FCabinsGentleman3Script:
	faceplayer
	opentext
	writetext SSAnne2FCabinsGentleman3Text
	promptbutton
	setval SNORLAX
	special ShowPokedexEntry
	closetext
	end

SSAnne2FCabinsGentleman4Script:
	jumptextfaceplayer SSAnne2FCabinsGentleman4Text

SSAnne2FCabinsGrampsScript:
	jumptextfaceplayer SSAnne2FCabinsGrampsText

SSAnne2FCabinsGentleman5Script:
	jumptextfaceplayer SSAnne2FCabinsGentleman5Text

SSAnne2FCabinsLittleBoyScript:
	jumptextfaceplayer SSAnne2FCabinsLittleBoyText

SSAnne2FCabinsBrunetteGirlScript:
	jumptextfaceplayer SSAnne2FCabinsBrunetteGirlText

SSAnne2FCabinsBeautyScript:
	jumptextfaceplayer SSAnne2FCabinsBeautyText

SSAnne2FCabinsMaxEther:
	itemball MAX_ETHER

SSAnne2FCabinsRareCandy:
	itemball RARE_CANDY

GentlemanBrooksSeenText:
	text "Competing against"
	line "the young keeps"
	cont "me youthful."
	done

GentlemanBrooksBeatenText:
	text "Good fight!"
	
	para "Ah, I feel young"
	line "again!"
	done

GentlemanBrooksAfterBattleText:
	text "15 years ago, I"
	line "would have won!"
	done

FisherDaleSeenText:
	text "Check out what I"
	line "fished up!"
	done

FisherDaleBeatenText:
	text "I'm all out!"
	done

FisherDaleAfterBattleText:
	text "Party?"

	para "The cruise ship's"
	line "party should be"
	cont "over by now."
	done

GentlemanWalterSeenText:
	text "Which do you like,"
	line "a strong or a"
	cont "rare #MON?"
	done

GentlemanWalterBeatenText:
	text "I must salute you!"
	done

GentlemanWalterAfterBattleText:
	text "I prefer strong"
	line "and rare #MON."
	done

LassDawnSeenText:
	text "I never saw you"
	line "at the party."
	done

LassDawnBeatenText:
	text "Take it easy!"
	done

LassDawnAfterBattleText:
	text "Oh, I adore your"
	line "strong #MON!"
	done

SSAnne2FCabinsGentleman3Text:
	text "In all my travels"
	line "I've never seen"

	para "any #MON sleep"
	line "like this one!"

	para "It was something"
	line "like this!"
	done ; prompt

SSAnne2FCabinsGentleman4Text:
	text "Ah yes, I have"
	line "seen some #MON"

	para "ferry people"
	line "across the water!"
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
	line "kinds of #MON!"
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
	object_event 10,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGentlemanBrooks, -1 ; Gentleman3 (R/B same party Vermilion Gym)
	object_event 13,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerFisherDale, -1 ; Fisher1
	object_event  0, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanWalter, -1 ; Gentleman5 (FR/LG as LAMAR)
	object_event  2, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassDawn, -1 ; Lass12
	object_event  1,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsGentleman3Script, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnne2FCabinsMaxEther, EVENT_SS_ANNE_2F_CABINS_MAX_ETHER
	object_event 21,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsGentleman4Script, -1
	object_event 22,  1, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsGrampsScript, -1
	object_event  0, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnne2FCabinsRareCandy, EVENT_SS_ANNE_2F_CABINS_RARE_CANDY
	object_event 12, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsGentleman5Script, -1
	object_event 11, 14, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsLittleBoyScript, -1
	object_event 22, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsBrunetteGirlScript, -1
	object_event 20, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, SSAnne2FCabinsBeautyScript, -1
