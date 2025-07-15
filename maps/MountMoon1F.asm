	object_const_def
	const MT_MOON_1F_TRAINER_HIKER
	const MT_MOON_1F_TRAINER_YOUNGSTER1
	const MT_MOON_1F_TRAINER_LASS1
	const MT_MOON_1F_TRAINER_SUPER_NERD
	const MT_MOON_1F_TRAINER_LASS2
	const MT_MOON_1F_TRAINER_BUG_CATCHER1
	const MT_MOON_1F_TRAINER_BUG_CATCHER2
	const MT_MOON_1F_ITEM_BALL_POTION1
	const MT_MOON_1F_ITEM_BALL_MOON_STONE
	const MT_MOON_1F_ITEM_BALL_RARE_CANDY
	const MT_MOON_1F_ITEM_BALL_ESCAPE_ROPE
	const MT_MOON_1F_ITEM_BALL_POTION2
	const MT_MOON_1F_ITEM_BALL_WATER_GUN

MountMoon1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerHikerMarcos:
	trainer HIKER, MARCOS, EVENT_BEAT_HIKER_MARCOS, TrainerHikerMarcosBattleText, TrainerHikerMarcosEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerHikerMarcosAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJosh:
	trainer YOUNGSTER, JOSH, EVENT_BEAT_YOUNGSTER_JOSH, TrainerYoungsterJoshBattleText, TrainerYoungsterJoshEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerYoungsterJoshAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMiriam:
	trainer LASS, MIRIAM, EVENT_BEAT_LASS_MIRIAM, TrainerLassMiriamBattleText, TrainerLassMiriamEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerLassMiriamAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdJovan:
	trainer SUPER_NERD, JOVAN, EVENT_BEAT_SUPER_NERD_JOVAN, TrainerSuperNerdJovanBattleText, TrainerSuperNerdJovanEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerSuperNerdJovanAfterBattleText
	waitbutton
	closetext
	end

TrainerLassIris:
	trainer LASS, IRIS, EVENT_BEAT_LASS_IRIS, TrainerLassIrisBattleText, TrainerLassIrisEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerLassIrisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherKent:
	trainer BUG_CATCHER, KENT, EVENT_BEAT_BUG_CATCHER_KENT, TrainerBugCatcherKentBattleText, TrainerBugCatcherKentEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerBugCatcherKentAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherRobby:
	trainer BUG_CATCHER, ROBBY, EVENT_BEAT_BUG_CATCHER_ROBBY, TrainerBugCatcherRobbyBattleText, TrainerBugCatcherRobbyEndBattleText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TrainerBugCatcherRobbyAfterBattleText
	waitbutton
	closetext
	end

MtMoon1FZubatSign:
	jumptext MtMoon1FBewareZubatSign

MtMoon1FWaterGun:
	itemball TM_WATER_GUN
	
MtMoon1FPotion1:
	itemball POTION
	
MtMoon1FPotion2:
	itemball POTION
	
MtMoon1FRareCandy:
	itemball RARE_CANDY
	
MtMoon1FEscapeRope:
	itemball ESCAPE_ROPE
	
MtMoon1FMoonStone:
	itemball MOON_STONE
	
TrainerHikerMarcosBattleText:
	text "WHOA! You shocked"
	line "me!"
	
	para "Oh, you're"
	line "just a kid!"
	done

TrainerHikerMarcosEndBattleText:
	text "Wow!"
	line "Shocked again!"
	done

TrainerHikerMarcosAfterBattleText:
	text "Kids like you"
	line "shouldn't be"
	cont "here!"
	done

TrainerYoungsterJoshBattleText:
	text "Did you come to"
	line "explore too?"
	done

TrainerYoungsterJoshEndBattleText:
	text "Losing stinks!"
	done

TrainerYoungsterJoshAfterBattleText:
	text "I came down here"
	line "to show off to"
	cont "girls."
	done

TrainerLassMiriamBattleText:
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

TrainerLassMiriamEndBattleText:
	text "Oh!"
	line "I lost it!"
	done

TrainerLassMiriamAfterBattleText:
	text "How do you get"
	line "out of here?"
	done

TrainerSuperNerdJovanBattleText:
	text "What! Don't sneak"
	line "up on me!"
	done

TrainerSuperNerdJovanEndBattleText:
	text "My #MON"
	line "won't do!"
	done

TrainerSuperNerdJovanAfterBattleText:
	text "I have to find"
	line "stronger #MON."
	done

TrainerLassIrisBattleText:
	text "What? I'm waiting"
	line "for my friends to"
	cont "find me here."
	done

TrainerLassIrisEndBattleText:
	text "I lost?"
	done

TrainerLassIrisAfterBattleText:
	text "I heard there are"
	line "some very rare"
	cont "fossils here."
	done

TrainerBugCatcherKentBattleText:
	text "Suspicious men"
	line "are in the cave."
	
	para "What about you?"
	done

TrainerBugCatcherKentEndBattleText:
	text "You got me!"
	done

TrainerBugCatcherKentAfterBattleText:
	text "I saw them! I'm"
	line "sure they're from"
	cont "TEAM ROCKET!"
	done

TrainerBugCatcherRobbyBattleText:
	text "Go through this"
	line "cave to get to"
	cont "CERULEAN CITY!"
	done

TrainerBugCatcherRobbyEndBattleText:
	text "I lost."
	done

TrainerBugCatcherRobbyAfterBattleText:
	text "ZUBAT is tough!"
	
	para "But, it can be"
	line "useful if you"
	cont "catch one."
	done

MtMoon1FBewareZubatSign:
	text "Beware! ZUBAT is"
	line "a blood sucker!"
	done

MountMoon1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 33, ROUTE_4, 2
	warp_event  5,  5, MOUNT_MOON_B1F, 1
	warp_event 17, 11, MOUNT_MOON_B1F, 3
	warp_event 25, 15, MOUNT_MOON_B1F, 4

	def_coord_events

	def_bg_events
	bg_event   15,  23, BGEVENT_READ, MtMoon1FZubatSign

	def_object_events
	object_event  5,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerHikerMarcos, -1
	object_event 12, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJosh, -1
	object_event 30,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassMiriam, -1
	object_event 24, 31, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdJovan, -1
	object_event 16, 23, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassIris, -1
	object_event  7, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherKent, -1
	object_event 30, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherRobby, -1
	object_event  2, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FPotion1, EVENT_MT_MOON_1F_POTION1
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FMoonStone, EVENT_MT_MOON_1F_MOON_STONE
	object_event 35, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FRareCandy, EVENT_MT_MOON_1F_RARE_CANDY
	object_event 36, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FEscapeRope, EVENT_MT_MOON_1F_ESCAPE_ROPE
	object_event 20, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FPotion2, EVENT_MT_MOON_1F_POTION2
	object_event  5, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoon1FWaterGun, EVENT_GOT_TM12_WATER_GUN