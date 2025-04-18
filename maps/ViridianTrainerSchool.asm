	object_const_def
	const VIRIDIAN_TRAINER_SCHOOL_POKEFAN_M
	const VIRIDIAN_TRAINER_SCHOOL_LASS

ViridianTrainerSchool_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianTrainerSchoolCooltrainerFScript:
	jumptextfaceplayer ViridianTrainerSchoolCooltrainerFText

ViridianTrainerSchoolLassScript:
	jumptextfaceplayer ViridianTrainerSchoolLassText

ViridianSchoolBlackboard:
	opentext
	writetext ViridianSchoolBlackboardText
	waitbutton
.Loop:
	writetext ViridianSchoolBlackboardText2
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext BlackboardPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext BlackboardParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext BlackboardSleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext BlackboardBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext BlackboardFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

ViridianSchoolNotebook:
	opentext
	writetext ViridianSchoolNotebookText
	yesorno
	iffalse .Done
	writetext ViridianSchoolNotebookText1
	yesorno
	iffalse .Done
	writetext ViridianSchoolNotebookText2
	yesorno
	iffalse .Done
	writetext ViridianSchoolNotebookText3
	waitbutton
	turnobject VIRIDIAN_TRAINER_SCHOOL_LASS, UP
	showemote EMOTE_SHOCK, VIRIDIAN_TRAINER_SCHOOL_LASS, 15
	writetext ViridianTrainerSchoolLassText1
	waitbutton
.Done:
	closetext
	end

ViridianTrainerSchoolCooltrainerFText:
	text "Okay!"

	para "Be sure to read"
	line "the blackboard"
	cont "carefully!"
	done

ViridianTrainerSchoolLassText:
	text "Whew! I'm trying"
	line "to memorize all"
	cont "my notes."
	done
	
ViridianTrainerSchoolLassText1:
	text "Girl: Hey! Don't"
	line "look at my notes!"
	done

ViridianSchoolBlackboardText:
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	done

ViridianSchoolBlackboardText2:
	text "Which heading do"
	line "you want to read?"
	done

BlackboardPoisonText:
	text "When poisoned, a"
	line "#MON's health"
	cont "steadily drops."

	para "Poison lingers"
	line "after battles,"
	
	para "and HP is lost as"
	line "you walk."

	para "Use an ANTIDOTE"
	line "to cure poison!"
	done

BlackboardParalysisText:
	text "Paralysis reduces"
	line "speed and can"
	cont "prevent movement."

	para "Paralysis remains"
	line "after battles."

	para "Use PARLYZ HEAL"
	line "for treatment!"
	done

BlackboardSleepText:
	text "A #MON can't"
	line "attack if it's"
	cont "asleep!"

	para "#MON will stay"
	line "asleep even after"
	cont "battles."

	para "Use AWAKENING to"
	line "wake them up!"
	done

BlackboardBurnText:
	text "A burn causes"
	line "ongoing damage."

	para "It also reduces"
	line "attack power."

	para "Burns remain"
	line "after battles."

	para "Use BURN HEAL to"
	line "cure a burn!"
	done

BlackboardFreezeText:
	text "If frozen, a"
	line "#MON becomes"
	cont "totally immobile!"

	para "It stays frozen"
	line "even after the"
	cont "battle ends."

	para "Use ICE HEAL to"
	line "thaw out #MON!"
	done

ViridianSchoolNotebookText:
	text "Looked at the"
	line "notebook!"

	para "First page…"

	para "# BALLs are"
	line "used to catch"
	cont "#MON."

	para "Up to six #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	
	para "Turn the page?"
	done

ViridianSchoolNotebookText1:
	text "Second page…"

	para "A healthy #MON"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"

	para "Turn the page?"
	done

ViridianSchoolNotebookText2:
	text "Third page…"

	para "#MON trainers"
	line "seek others to"
	cont "engage in #MON"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMS."

	para "Turn the page?"
	done

ViridianSchoolNotebookText3:
	text "Fourth page…"

	para "The goal for"
	line "#MON trainers"
	cont "is to beat the "
	cont "top eight #MON"
	cont "GYM LEADERS."

	para "Do so to earn the"
	line "right to face…"

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	done

ViridianTrainerSchool_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 3
	warp_event  3,  7, VIRIDIAN_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, ViridianSchoolBlackboard
	bg_event  3,  4, BGEVENT_READ, ViridianSchoolNotebook

	def_object_events
	object_event  4,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianTrainerSchoolCooltrainerFScript, -1
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianTrainerSchoolLassScript, -1
