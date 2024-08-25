	object_const_def
	; const MT_MOON_B2F_DOME_FOSSIL
	; const MT_MOON_B2F_HELIX_FOSSIL
	; const MT_MOON_B2F_ITEM_BALL_HP_UP
	; const MT_MOON_B2F_ITEM_BALL_TM_DYNAMIC_PUNCH
	; const MT_MOON_B2F_SUPER_NERD
	; const MT_MOON_B2F_ROCKET_1
	; const MT_MOON_B2F_ROCKET_2
	; const MT_MOON_B2F_ROCKET_3
	; const MT_MOON_B2F_ROCKET_4

MountMoonB2F_MapScripts:
	def_scene_scripts
	; scene_script MtMoonB2FFossilScene, SCENE_MT_MOON_B2F_FOSSIL
	; scene_script MtMoonB2FTeamRocketScene, SCENE_MT_MOON_B2F_TEAM_ROCKET
	; scene_script MtMoonB2FNoopScene, SCENE_MT_MOON_B2F_NOOP

	def_callbacks
	
; MtMoonB2FFossilScene:
	; end
	
; MtMoonB2FTeamRocketScene:
	; end
	
; MtMoonB2FNoopScene:
	; end
	
; MtMoonB2FTeamRocketScript:
	; playmusic MUSIC_MEET_JESSIE_JAMES
	; opentext
	; writetext MtMoonJessieJamesText1
	; showemote EMOTE_SHOCK, PLAYER, 20
	; pause 15
	; closetext
	; turnobject PLAYER, UP
	; applymovement PLAYER, MtMoonB2F_Player_Steps_Up_Movement
	; appear MT_MOON_B2F_JESSIE
	; applymovement MT_MOON_B2F_JESSIE, MtMoonB2F_Jessie_Movement
	; turnobject MT_MOON_B2F_JESSIE, DOWN
	; appear MT_MOON_B2F_JAMES
	; applymovement MT_MOON_B2F_JAMES, MtMoonB2F_James_Movement
	; opentext
	; writetext MtMoonJessieJamesText2
	; waitbutton
	; closetext
	; winlosstext MtMoonJessieJamesText3, 0
	; loadtrainer TEAM_ROCKET, TEAM_ROCKET1
	; startbattle
	; reloadmap
	; opentext
	; writetext MtMoonJessieJamesText4
	; waitbutton
	; closetext
	; playmusic MUSIC_MEET_JESSIE_JAMES
	; special FadeOutToBlack
	; pause 25
	; special ReloadSpritesNoPalettes
	; disappear MT_MOON_B2F_JAMES
	; disappear MT_MOON_B2F_JESSIE
	; special FadeInFromBlack
	; special RestartMapMusic
	; setevent EVENT_TEAM_ROCKET_APPEARED_MT_MOON
	; setscene SCENE_MT_MOON_B2F_NOOP
	; end
	
; MtMoonB2F_Player_Steps_Up_Movement:
	; step UP
	; step_end
	
; MtMoonB2F_Jessie_Movement:
	; step LEFT
	; step LEFT
	; step LEFT
	; step LEFT
	; step LEFT
	; step LEFT
	; step_end
	
; MtMoonB2F_James_Movement:
	; step LEFT
	; step LEFT
	; step LEFT
	; step LEFT
	; step LEFT
	; step_end
	
; MtMoonB2FDomeFossilScript:
	; opentext
	; writetext MtMoonB2FDomeFossilYouWantText
	; yesorno
	; iffalse .DidNotChooseFossil
	; giveitem DOME_FOSSIL
	; getitemname STRING_BUFFER_3, DOME_FOSSIL
	; writetext MtMoonB2FReceivedFossilText
	; playsound SFX_GET_KEY_ITEM_1
	; waitsfx
	; disappear MT_MOON_B2F_DOME_FOSSIL
	; itemnotify
	; closetext
	; setevent EVENT_GOT_DOME_FOSSIL
	; applymovement MT_MOON_B2F_SUPER_NERD, MtMoonB2F_Super_Nerd_Takes_Helix_Fossil_Movement
	; opentext
	; writetext MtMoonB2FSuperNerdThenThisIsMineText
	; disappear MT_MOON_B2F_HELIX_FOSSIL
	; playsound SFX_GET_KEY_ITEM_1
	; waitsfx
	; closetext
	; end
	
; .DidNotChooseFossil
	; closetext
	; end
	
; MtMoonB2FHelixFossilScript:
	; opentext
	; writetext MtMoonB2FHelixFossilYouWantText
	; yesorno
	; iffalse .DidNotChooseFossil
	; giveitem HELIX_FOSSIL
	; getitemname STRING_BUFFER_3, HELIX_FOSSIL
	; writetext MtMoonB2FReceivedFossilText
	; playsound SFX_GET_KEY_ITEM_1
	; waitsfx
	; disappear MT_MOON_B2F_HELIX_FOSSIL
	; itemnotify
	; closetext
	; setevent EVENT_GOT_HELIX_FOSSIL
	; applymovement MT_MOON_B2F_SUPER_NERD, MtMoonB2F_Super_Nerd_Takes_Dome_Fossil_Movement
	; opentext
	; writetext MtMoonB2FSuperNerdThenThisIsMineText
	; disappear MT_MOON_B2F_DOME_FOSSIL
	; playsound SFX_GET_KEY_ITEM_1
	; waitsfx
	; closetext
	; end
	
; .DidNotChooseFossil
	; closetext
	; end
	
; MtMoonB2F_Super_Nerd_Takes_Helix_Fossil_Movement:
	; slow_step RIGHT
	; slow_step UP
	; step_end
	
; MtMoonB2F_Super_Nerd_Takes_Dome_Fossil_Movement:
	; slow_step UP
	; step_end
	
; MtMoonB2FHPUP:
	; itemball HP_UP
	
; MtMoonB2FDynamicPunch:
	; itemball TM_DYNAMICPUNCH
	
; MtMoonB2FSuperNerdScript1:
	; checkevent EVENT_BEAT_MT_MOON_B2F_SUPER_NERD_MIGUEL
	; iffalse MtMoonB2FSuperNerdScript2
	; faceplayer
	; opentext
	; writetext MtMoonB2FSuperNerdTheresAPokemonLabText
	; waitbutton
	; closetext
	; end
	
; MtMoonB2FSuperNerdScript2:
	; faceplayer
	; opentext
	; writetext MtMoonB2FSuperNerdTheyreBothMineText
	; playmusic MUSIC_MEET_MALE_TRAINER
	; waitbutton
	; closetext
	; winlosstext MtMoonB2FSuperNerdOkIllShareText, 0
	; loadtrainer SUPER_NERD, MIGUEL
	; startbattle
	; reloadmapafterbattle
	; setevent EVENT_BEAT_MT_MOON_B2F_SUPER_NERD_MIGUEL
	; pause 10
	; opentext
	; writetext MtMoonB2fSuperNerdEachTakeOneText
	; waitbutton
	; closetext
	; setscene SCENE_MT_MOON_B2F_TEAM_ROCKET
	; end
	
; MtMoonB2FTrainerRocket1:
	; trainer GRUNTM, ROCKET_1, EVENT_BEAT_MT_MOON_B2F_ROCKET_1, MtMoonB2FRocket1BattleText, MtMoonB2FRocket1EndBattleText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext MtMoonB2FRocket1AfterBattleText
	; waitbutton
	; closetext
	; end
	
; MtMoonB2FTrainerRocket2:
	; trainer GRUNTM, ROCKET_2, EVENT_BEAT_MT_MOON_B2F_ROCKET_2, MtMoonB2FRocket2BattleText, MtMoonB2FRocket2EndBattleText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext MtMoonB2FRocket2AfterBattleText
	; waitbutton
	; closetext
	; end
	
; MtMoonB2FTrainerRocket3:
	; trainer GRUNTM, ROCKET_3, EVENT_BEAT_MT_MOON_B2F_ROCKET_3, MtMoonB2FRocket3BattleText, MtMoonB2FRocket3EndBattleText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext MtMoonB2FRocket3AfterBattleText
	; waitbutton
	; closetext
	; end
	
; MtMoonB2FTrainerRocket4:
	; trainer GRUNTM, ROCKET_4, EVENT_BEAT_MT_MOON_B2F_ROCKET_4, MtMoonB2FRocket4BattleText, MtMoonB2FRocket4EndBattleText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext MtMoonB2FRocket4AfterBattleText
	; waitbutton
	; closetext
	; end
	
; MtMoonB2FHiddenEther:
	; hiddenitem ETHER, EVENT_HIDDEN_ETHER_MT_MOON_B2F
	
; MtMoonB2FHiddenMoonStone:
	; hiddenitem MOON_STONE, EVENT_HIDDEN_MOONSTONE_MT_MOON_B2F

MtMoonB2FDomeFossilYouWantText:
	text "You want the"
	line "DOME FOSSIL?"
	done

MtMoonB2FHelixFossilYouWantText:
	text "You want the"
	line "HELIX FOSSIL?"
	done

MtMoonB2FReceivedFossilText:
	text "<PLAYER> got the"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

MtMoonB2FYouHaveNoRoomText:
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

MtMoonB2fSuperNerdEachTakeOneText:
	text "We'll each take"
	line "one!"
	cont "No being greedy!"
	done

MtMoonB2FSuperNerdTheresAPokemonLabText:
	text "Far away, on"
	line "CINNABAR ISLAND,"
	cont "there's a #MON"
	cont "LAB."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

MtMoonB2FSuperNerdThenThisIsMineText:
	text "All right. Then"
	line "this is mine!"
	done

MtMoonB2FRocket1BattleText:
	text "We, TEAM ROCKET,"
	line "are #MON"
	cont "gangsters!"
	done

MtMoonB2FRocket1EndBattleText:
	text "I blew it!"
	done

MtMoonB2FRocket1AfterBattleText:
	text "Darn it all! My"
	line "associates won't"
	cont "stand for this!"
	done

MtMoonB2FRocket2BattleText:
	text "We're pulling a"
	line "big job here!"
	cont "Get lost, kid!"
	done

MtMoonB2FRocket2EndBattleText:
	text "So, you are good."
	done

MtMoonB2FRocket2AfterBattleText:
	text "If you find a"
	line "fossil, give it"
	cont "to me and scram!"
	done

MtMoonB2FRocket3BattleText:
	text "Little kids"
	line "should leave"
	cont "grown-ups alone!"
	done

MtMoonB2FRocket3EndBattleText:
	text "I'm steamed!"
	prompt

MtMoonB2FRocket3AfterBattleText:
	text "#MON lived"
	line "here long before"
	cont "people came."
	done
	
MtMoonB2FRocket4BattleText:
	text "TEAM ROCKET will"
	line "find the fossils,"
	cont "revive and sell"
	cont "them for cash!"
	done

MtMoonB2FRocket4EndBattleText:
	text "Urgh!"
	line "Now I'm mad!"
	prompt

MtMoonB2FRocket4AfterBattleText:
	text "You made me mad!"
	line "TEAM ROCKET will"
	cont "blacklist you!"
	done

MountMoonB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25,  9, MOUNT_MOON_B1F, 2
	warp_event 21, 17, MOUNT_MOON_B1F, 5
	warp_event 15, 27, MOUNT_MOON_B1F, 6
	warp_event  5,  7, MOUNT_MOON_B1F, 7

	def_coord_events
	; coord_event  13,  8, SCENE_MT_MOON_B2F_FOSSIL, MtMoonB2FSuperNerdScript2
	; coord_event  3,   5, SCENE_MT_MOON_B2F_TEAM_ROCKET, MtMoonB2FTeamRocketScript

	def_bg_events
	; bg_event  33, 9,  BGEVENT_ITEM, MtMoonB2FHiddenEther
	; bg_event  18, 12, BGEVENT_ITEM, MtMoonB2FHiddenMoonStone

	def_object_events
	; object_event 12,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FDomeFossilScript, EVENT_GOT_DOME_FOSSIL
	; object_event 13,  6, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonB2FHelixFossilScript, EVENT_GOT_HELIX_FOSSIL
	; object_event 25, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FHPUP, EVENT_MT_MOON_B2F_HP_UP
	; object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonB2FDynamicPunch, EVENT_MT_MOON_B2F_TM_DYNAMIC_PUNCH
	; object_event 12,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonB2FSuperNerdScript1, -1
	; object_event 15, 22, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoonB2FTrainerRocket1, -1
	; object_event 29, 11, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoonB2FTrainerRocket2, -1
	; object_event 29, 17, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, MtMoonB2FTrainerRocket3, -1
	; object_event 11, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, MtMoonB2FTrainerRocket4, -1