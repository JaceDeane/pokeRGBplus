	object_const_def
	const MT_MOON_B2F_SUPER_NERD
	const MT_MOON_B2F_ROCKET_1
	const MT_MOON_B2F_ROCKET_2
	const MT_MOON_B2F_ROCKET_3
	const MT_MOON_B2F_ROCKET_4
	const MT_MOON_B2F_DOME_FOSSIL
	const MT_MOON_B2F_HELIX_FOSSIL
	const MT_MOON_B2F_ITEM_BALL_HP_UP
	const MT_MOON_B2F_ITEM_BALL_TM_MEGA_PUNCH

MountMoonB2F_MapScripts:
	def_scene_scripts
	scene_script MtMoonB2FFossilScene, SCENE_MT_MOON_B2F_FOSSIL
	scene_script MtMoonB2FNoopScene, SCENE_MT_MOON_B2F_NOOP

	def_callbacks
	
MtMoonB2FFossilScene:
	end

MtMoonB2FNoopScene:
	end

MtMoonB2FSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SUPER_NERD_MIGUEL
	iffalse .NotBeaten
	checkevent EVENT_GOT_DOME_FOSSIL
	iftrue .FossilTaken
	checkevent EVENT_GOT_HELIX_FOSSIL
	iftrue .FossilTaken
	writetext MtMoonB2FSuperNerdEachTakeOneText
	waitbutton
	closetext
	end

.FossilTaken
	writetext MtMoonB2FSuperNerdTheresAPokemonLabText
	waitbutton
	closetext
	end

.NotBeaten
	showemote EMOTE_SHOCK, MT_MOON_B2F_SUPER_NERD, 15
	writetext MtMoonB2FSuperNerdTheyreBothMineText
	playmusic MUSIC_MALE_TRAINER_ENCOUNTER
	waitbutton
	closetext
	winlosstext MtMoonB2FSuperNerdOkIllShareText, 0
	loadtrainer SUPER_NERD, MIGUEL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_MIGUEL
	setscene SCENE_MT_MOON_B2F_NOOP
	end

MtMoonB2FSuperNerdEvent:
	showemote EMOTE_SHOCK, MT_MOON_B2F_SUPER_NERD, 15
	turnobject PLAYER, LEFT
	opentext
	writetext MtMoonB2FSuperNerdTheyreBothMineText
	playmusic MUSIC_MALE_TRAINER_ENCOUNTER
	waitbutton
	closetext
	winlosstext MtMoonB2FSuperNerdOkIllShareText, 0
	loadtrainer SUPER_NERD, MIGUEL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SUPER_NERD_MIGUEL
	; special FadeOutToBlack
	; pause 25
	; special ReloadSpritesNoPalettes
	; setevent EVENT_TEAM_ROCKET_DISAPPEAR_MT_MOON ; Rocket Grunts don't ever disappear in Gen-I
	; special FadeInFromBlack
	; special RestartMapMusic
	setscene SCENE_MT_MOON_B2F_NOOP
	end

MtMoonB2FDomeFossilScript:
	opentext
	writetext MtMoonB2FDomeFossilYouWantText
	yesorno
	iffalse .DidNotChooseFossil
	verbosegiveitem DOME_FOSSIL
	; getitemname STRING_BUFFER_3, DOME_FOSSIL
	; writetext MtMoonB2FReceivedFossilText
	; playsound SFX_KEY_ITEM
	; waitsfx
	disappear MT_MOON_B2F_DOME_FOSSIL
	; itemnotify
	closetext
	setevent EVENT_GOT_DOME_FOSSIL
	applymovement MT_MOON_B2F_SUPER_NERD, MtMoonB2F_Super_Nerd_Takes_Helix_Fossil_Movement
	opentext
	writetext MtMoonB2FSuperNerdThenThisIsMineText
	disappear MT_MOON_B2F_HELIX_FOSSIL
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	end

.DidNotChooseFossil
	closetext
	end

MtMoonB2FHelixFossilScript:
	opentext
	writetext MtMoonB2FHelixFossilYouWantText
	yesorno
	iffalse .DidNotChooseFossil
	verbosegiveitem HELIX_FOSSIL
	; getitemname STRING_BUFFER_3, HELIX_FOSSIL
	; writetext MtMoonB2FReceivedFossilText
	; playsound SFX_KEY_ITEM
	; waitsfx
	disappear MT_MOON_B2F_HELIX_FOSSIL
	; itemnotify
	closetext
	setevent EVENT_GOT_HELIX_FOSSIL
	applymovement MT_MOON_B2F_SUPER_NERD, MtMoonB2F_Super_Nerd_Takes_Dome_Fossil_Movement
	opentext
	writetext MtMoonB2FSuperNerdThenThisIsMineText
	disappear MT_MOON_B2F_DOME_FOSSIL
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	end

.DidNotChooseFossil
	closetext
	end

MtMoonB2F_Super_Nerd_Takes_Helix_Fossil_Movement:
	slow_step RIGHT
	slow_step UP
	step_end

MtMoonB2F_Super_Nerd_Takes_Dome_Fossil_Movement:
	slow_step UP
	step_end

TrainerRocketGrunt1:
	trainer GRUNTM, GRUNTM_1, EVENT_BEAT_ROCKET_GRUNTM_1, TrainerRocketGrunt1BattleText, TrainerRocketGrunt1EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt1AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt2:
	trainer GRUNTM, GRUNTM_2, EVENT_BEAT_ROCKET_GRUNTM_2, TrainerRocketGrunt2BattleText, TrainerRocketGrunt2EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt2AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt3:
	trainer GRUNTM, GRUNTM_3, EVENT_BEAT_ROCKET_GRUNTM_3, TrainerRocketGrunt3BattleText, TrainerRocketGrunt3EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt3AfterBattleText
	waitbutton
	closetext
	end

TrainerRocketGrunt4:
	trainer GRUNTM, GRUNTM_4, EVENT_BEAT_ROCKET_GRUNTM_4, TrainerRocketGrunt4BattleText, TrainerRocketGrunt4EndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerRocketGrunt4AfterBattleText
	waitbutton
	closetext
	end

MtMoonB2FHPUP:
	itemball HP_UP

MtMoonB2FTMMegaPunch:
	itemball TM_MEGA_PUNCH

MtMoonB2FHiddenEther:
	hiddenitem ETHER, EVENT_MT_MOON_B2F_HIDDEN_ETHER

MtMoonB2FHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_MT_MOON_B2F_HIDDEN_MOONSTONE

MtMoonB2FDomeFossilYouWantText:
	text "You want the"
	line "DOME FOSSIL?"
	done

MtMoonB2FHelixFossilYouWantText:
	text "You want the"
	line "HELIX FOSSIL?"
	done

; MtMoonB2FReceivedFossilText:
	; text "<PLAYER> got the"
	; line "@"
	; text_ram wStringBuffer3
	; text "!"
	; done

MtMoonB2FSuperNerdNoRoomText:
	text "Look, you've got"
	line "no room for this."
	done

MtMoonB2FSuperNerdTheyreBothMineText:
	text "Hey, stop!"

	para "I found these"
	line "fossils! They're"
	cont "both mine!"
	done

MtMoonB2FSuperNerdOkIllShareText:
	text "OK! I'll share!"
	done

MtMoonB2FSuperNerdEachTakeOneText:
	text "We'll each take"
	line "one!"
	
	para "No being greedy!"
	done

MtMoonB2FSuperNerdTheresAPokemonLabText:
	text "Far away, on"
	line "CINNABAR ISLAND,"
	
	para "there's a #MON"
	line "LAB."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

MtMoonB2FSuperNerdThenThisIsMineText:
	text "All right. Then"
	line "this is mine!"
	done

TrainerRocketGrunt1BattleText:
	text "TEAM ROCKET will"
	line "find the fossils,"
	cont "revive and sell"
	cont "them for cash!"
	done

TrainerRocketGrunt1EndBattleText:
	text "Urgh!"
	line "Now I'm mad!"
	done

TrainerRocketGrunt1AfterBattleText:
	text "You made me mad!"
	line "TEAM ROCKET will"
	cont "blacklist you!"
	done

TrainerRocketGrunt2BattleText:
	text "We, TEAM ROCKET,"
	line "are #MON"
	cont "gangsters!"
	done

TrainerRocketGrunt2EndBattleText:
	text "I blew it!"
	done

TrainerRocketGrunt2AfterBattleText:
	text "Darn it all! My"
	line "associates won't"
	cont "stand for this!"
	done

TrainerRocketGrunt3BattleText:
	text "We're pulling a"
	line "big job here!"
	cont "Get lost, kid!"
	done

TrainerRocketGrunt3EndBattleText:
	text "So, you are good."
	done

TrainerRocketGrunt3AfterBattleText:
	text "If you find a"
	line "fossil, give it"
	cont "to me and scram!"
	done

TrainerRocketGrunt4BattleText:
	text "Little kids"
	line "should leave"
	cont "grown-ups alone!"
	done

TrainerRocketGrunt4EndBattleText:
	text "I'm steamed!"
	done

TrainerRocketGrunt4AfterBattleText:
	text "#MON lived"
	line "here long before"
	cont "people came."
	done

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 11, MOUNT_MOON_B1F, 2
	warp_event 23, 19, MOUNT_MOON_B1F, 5
	warp_event 17, 29, MOUNT_MOON_B1F, 6
	warp_event  7,  9, MOUNT_MOON_B1F, 7

	def_coord_events
	coord_event 15, 10, SCENE_MT_MOON_B2F_FOSSIL, MtMoonB2FSuperNerdEvent

	def_bg_events
	bg_event 35, 11, BGEVENT_ITEM, MtMoonB2FHiddenEther
	bg_event 20, 14, BGEVENT_ITEM, MtMoonB2FHiddenMoonStone

	def_object_events
	object_event 14, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonB2FSuperNerdScript, -1
	object_event 13, 18, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt1, -1 ; EVENT_TEAM_ROCKET_DISAPPEAR_MT_MOON
	object_event 17, 24, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt2, -1 ; EVENT_TEAM_ROCKET_DISAPPEAR_MT_MOON
	object_event 31, 13, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt3, -1 ; EVENT_TEAM_ROCKET_DISAPPEAR_MT_MOON
	object_event 31, 19, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRocketGrunt4, -1 ; EVENT_TEAM_ROCKET_DISAPPEAR_MT_MOON
	object_event 14,  8, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FDomeFossilScript, EVENT_GOT_DOME_FOSSIL
	object_event 15,  8, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FHelixFossilScript, EVENT_GOT_HELIX_FOSSIL
	object_event 27, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FHPUP, EVENT_MT_MOON_B2F_HP_UP
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FTMMegaPunch, EVENT_MT_MOON_B2F_TM_MEGA_PUNCH
