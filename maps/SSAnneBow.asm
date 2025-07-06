	object_const_def
	const SSANNEBOW_SUPER_NERD
	const SSANNEBOW_SAILOR1
	const SSANNEBOW_COOLTRAINER_M
	const SSANNEBOW_SAILOR2
	const SSANNEBOW_SAILOR3

SSAnneBow_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSailorEdmond:
	trainer SAILOR, EDMOND, EVENT_BEAT_SAILOR_EDMOND, SailorEdmondSeenText, SailorEdmondBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorEdmondAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorTrevor:
	trainer SAILOR, TREVOR, EVENT_BEAT_SAILOR_TREVOR, SailorTrevorSeenText, SailorTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorTrevorAfterBattleText
	waitbutton
	closetext
	end

SSAnneBowSuperNerdScript:
	jumptextfaceplayer SSAnneBowSuperNerdText

SSAnneBowSailor1Script:
	jumptextfaceplayer SSAnneBowSailor1Text

SSAnneBowCooltrainerMScript:
	jumptextfaceplayer SSAnneBowCooltrainerMText

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

SailorEdmondSeenText:
	text "Hey matey!"

	para "Let's do a little"
	line "jig!"
	done

SailorEdmondBeatenText:
	text "You're impressive!"
	done

SailorEdmondAfterBattleText:
	text "How many kinds of"
	line "#MON do you"
	cont "think there are?"
	done

SailorTrevorSeenText:
	text "Ahoy there!"
	line "Are you seasick?"
	done

SailorTrevorBeatenText:
	text "I was just care-"
	line "less!"
	done

SailorTrevorAfterBattleText:
	text "My Pa said there"
	line "are 100 kinds of"
	cont "#MON."

	para "I think there are"
	line "more."
	done

SSAnneBow_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  8, SS_ANNE_3F, 1
	warp_event 13,  9, SS_ANNE_3F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnneBowSuperNerdScript, -1
	object_event  4, 11, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBowSailor1Script, -1
	object_event  7, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_SCRIPT, 0, SSAnneBowCooltrainerMScript, -1
	object_event  4,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorEdmond, -1  ; Sailor1
	object_event 10, 10, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorTrevor, -1 ; Sailor2
