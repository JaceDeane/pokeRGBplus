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

TrainerSailorLeonard:
	trainer SAILOR, LEONARD, EVENT_BEAT_SAILOR_LEONARD, SailorLeonardSeenText, SailorLeonardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorLeonardAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorDuncan:
	trainer SAILOR, DUNCAN, EVENT_BEAT_SAILOR_DUNCAN, SailorDuncanSeenText, SailorDuncanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorDuncanAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorHuey:
	trainer SAILOR, HUEY, EVENT_BEAT_SAILOR_HUEY, SailorHueySeenText, SailorHueyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorHueyAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorDylan:
	trainer SAILOR, DYLAN, EVENT_BEAT_SAILOR_DYLAN, SailorDylanSeenText, SailorDylanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorDylanAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorPhillip:
	trainer SAILOR, PHILLIP, EVENT_BEAT_SAILOR_PHILLIP, SailorPhillipSeenText, SailorPhillipBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorPhillipAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherBarny:
	trainer FISHER, BARNY, EVENT_BEAT_FISHER_BARNY, FisherBarnySeenText, FisherBarnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherBarnyAfterBattleText
	waitbutton
	closetext
	end

SSAnneB1FCabinsSuperNerdScript:
	jumptextfaceplayer SSAnneB1FCabinsSuperNerdText

SSAnneB1FCabinsMachoke:
	opentext
	writetext SSAnneB1FCabinsMachokeText
	cry MACHOKE
	waitbutton
	closetext
	end

SSAnneB1FCabinsEther:
	itemball ETHER

SSAnneB1FCabinsTMRest:
	itemball TM_REST

SSAnneB1FCabinsMaxPotion:
	itemball MAX_POTION

SailorLeonardSeenText:
	text "You know what they"
	line "say about sailors"
	cont "and fighting!"
	done

SailorLeonardBeatenText:
	text "Right!"
	line "Good fight, mate!"
	done

SailorLeonardAfterBattleText:
	text "Haha! Want to be"
	line "a sailor, mate?"
	done

SailorDuncanSeenText:
	text "My sailor's pride"
	line "is at stake!"
	done

SailorDuncanBeatenText:
	text "Your spirit sank"
	line "me!"
	done

SailorDuncanAfterBattleText:
	text "Did you see the"
	line "FISHING GURU in"
	cont "VERMILION CITY?"
	done

SailorHueySeenText:
	text "Us sailors have"
	line "#MON too!"
	done

SailorHueyBeatenText:
	text "OK, you're not bad."
	done

SailorHueyAfterBattleText:
	text "We caught all our"
	line "#MON while"
	cont "out at sea!"
	done

SailorDylanSeenText:
	text "I like feisty kids"
	line "like you!"
	done

SailorDylanBeatenText:
	text "Argh!"
	line "Lost it!"
	done

SailorDylanAfterBattleText:
	text "Sea #MON live"
	line "in deep water."

	para "You'll need a ROD!"
	done

SailorPhillipSeenText:
	text "Matey, you're"
	line "walking the plank"
	cont "if you lose!"
	done

SailorPhillipBeatenText:
	text "Argh!"
	line "Beaten by a kid!"
	done

SailorPhillipAfterBattleText: ; Remove reference to real-world jellyfish
	text "TENTACOOL some-"
	line "times drift into"
	cont "the ship."
	done

FisherBarnySeenText:
	text "Hello stranger!"
	line "Stop and chat!"

	para "All my #MON"
	line "are from the sea!"
	done

FisherBarnyBeatenText:
	text "Darn!"

	para "I let that one"
	line "get away!"
	done

FisherBarnyAfterBattleText:
	text "I was going to"
	line "make you my"
	cont "assistant, too!"
	done

SSAnneB1FCabinsSuperNerdText:
	text "My buddy, MACHOKE,"
	line "is super strong!"

	para "He has enough"
	line "STRENGTH to move"
	cont "big rocks!"
	done

SSAnneB1FCabinsMachokeText:
	text "MACHOKE: Gwoh!"
	line "Goggoh!"
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
	object_event  0, 13, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorLeonard, -1 ; Sailor3
	object_event  2, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorDuncan, -1 ; Sailor4
	object_event 12,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorHuey, -1 ; Sailor5
	object_event 22,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorDylan, -1 ; Sailor6
	object_event  0,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSailorPhillip, -1 ; Sailor7
	object_event  0,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerFisherBarny, -1 ; Fisher2
	object_event 10, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneB1FCabinsSuperNerdScript, -1
	object_event 11, 12, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, OBJECTTYPE_SCRIPT, 0, SSAnneB1FCabinsMachoke, -1
	object_event 20,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneB1FCabinsEther, EVENT_SS_ANNE_B1F_CABINS_ETHER
	object_event 10,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneB1FCabinsTMRest, EVENT_GOT_TM44_REST
	object_event 12, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneB1FCabinsMaxPotion, EVENT_SS_ANNE_B1F_CABINS_MAX_POTION
