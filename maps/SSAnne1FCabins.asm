	object_const_def
	const SSANNE1FROOMS_GENTLEMAN1
	const SSANNE1FROOMS_GENTLEMAN2
	const SSANNE1FROOMS_YOUNGSTER
	const SSANNE1FROOMS_LASS
	const SSANNE1FROOMS_GIRL1
	const SSANNE1FROOMS_POKEFAN_M
	const SSANNE1FROOMS_LITTLE_GIRL
	const SSANNE1FROOMS_WIGGLYTUFF
	const SSANNE1FROOMS_GIRL2
	const SSANNE1FROOMS_TM_BODY_SLAM
	const SSANNE1FROOMS_GENTLEMAN3

SSAnne1FCabins_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGentlemanThomas:
	trainer GENTLEMAN, THOMAS, EVENT_BEAT_GENTLEMAN_THOMAS, GentlemanThomasSeenText, GentlemanThomasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanThomasAfterBattleText
	waitbutton
	closetext
	end

TrainerGentlemanArthur:
	trainer GENTLEMAN, ARTHUR, EVENT_BEAT_GENTLEMAN_ARTHUR, GentlemanArthurSeenText, GentlemanArthurBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanArthurAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterTyler:
	trainer YOUNGSTER, TYLER, EVENT_BEAT_YOUNGSTER_TYLER, YoungsterTylerSeenText, YoungsterTylerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterTylerAfterBattleText
	waitbutton
	closetext
	end

TrainerLassAnn:
	trainer LASS, ANN, EVENT_BEAT_LASS_ANN, LassAnnSeenText, LassAnnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassAnnAfterBattleText
	waitbutton
	closetext
	end

SSAnne1FCabinsGirl1Script:
	jumptextfaceplayer SSAnne1FCabinsGirl1Text

SSAnne1FCabinsPokefanMScript:
	jumptextfaceplayer SSAnne1FCabinsPokefanMText

SSAnne1FCabinsLittleGirlScript:
	jumptextfaceplayer SSAnne1FCabinsLittleGirlText

SSAnne1FCabinsWigglytuff:
	opentext
	writetext SSAnne1FCabinsWigglytuffText
	cry WIGGLYTUFF
	waitbutton
	closetext
	end

SSAnne1FCabinsGirl2Script:
	jumptextfaceplayer SSAnne1FCabinsGirl2Text

SSAnne1FCabinsGentleman3Script:
	jumptextfaceplayer SSAnne1FCabinsGentleman3Text

SSAnne1FCabinsTMBodySlam:
	itemball TM_MUD_SLAP ; TM_BODY_SLAM ; TODO -- TMs

GentlemanThomasSeenText:
	text "I travel alone"
	line "on my journeys!"

	para "My #MON are my"
	line "only friends!"
	done

GentlemanThomasBeatenText:
	text "My… My friends…"
	done

GentlemanThomasAfterBattleText:
	text "You should be"
	line "nice to friends!"
	done

GentlemanArthurSeenText:
	text "You pup! How dare"
	line "you barge in!"
	done

GentlemanArthurBeatenText:
	text "Humph!"
	line "You rude child!"
	done

GentlemanArthurAfterBattleText:
	text "I wish to be left"
	line "alone! Get out!"
	done

YoungsterTylerSeenText:
	text "I love #MON!"
	line "Do you?"
	done

YoungsterTylerBeatenText:
	text "Wow!"
	line "You're great!"
	done

YoungsterTylerAfterBattleText:
	text "Let me be your"
	line "friend, OK?"

	para "Then we can trade"
	line "#MON!"
	done

LassAnnSeenText:
	text "I collected these"
	line "#MON from all"
	cont "around the world!"
	done

LassAnnBeatenText:
	text "Oh no!"

	para "I went around the"
	line "world for these!"
	done

LassAnnAfterBattleText:
	text "You hurt my poor"
	line "worldly #MON!"

	para "I demand that you"
	line "heal them at a"
	cont "#MON CENTER!"
	done

SSAnne1FCabinsGirl1Text:
	text "Waiter, I would"
	line "like a cherry pie"
	cont "please!"
	done

SSAnne1FCabinsPokefanMText:
	text "A cruise is so"
	line "elegant yet cozy!"
	done

SSAnne1FCabinsLittleGirlText:
	text "I always travel"
	line "with WIGGLYTUFF!"
	done

SSAnne1FCabinsGirl2Text:
	text "We are cruising"
	line "around the world."
	done

SSAnne1FCabinsGentleman3Text:
	text "Ssh! I'm a GLOBAL"
	line "POLICE agent!"

	para "I'm on the trail"
	line "of TEAM ROCKET!"
	done

SSAnne1FCabinsWigglytuffText:
	text "WIGGLYTUFF: Puup"
	line "pupuu!"
	done

SSAnne1FCabins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, SS_ANNE_1F, 2
	warp_event 10,  0, SS_ANNE_1F, 3
	warp_event 20,  0, SS_ANNE_1F, 4
	warp_event  0, 10, SS_ANNE_1F, 5
	warp_event 10, 10, SS_ANNE_1F, 6
	warp_event 20, 10, SS_ANNE_1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGentlemanThomas, -1 ; Gentleman1
	object_event 10,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanArthur, -1 ; Gentleman2
	object_event 11, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungsterTyler, -1 ; Youngster8
	object_event 13, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassAnn, -1 ; Lass11
	object_event 22,  3, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FCabinsGirl1Script, -1 ; Woman in FR/LG
	object_event  0, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FCabinsPokefanMScript, -1
	object_event  2, 11, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FCabinsLittleGirlScript, -1
	object_event  3, 11, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne1FCabinsWigglytuff, -1 ; Was SPRITE_CLEFAIRY in Gen I =/= menu icon
	object_event 10, 13, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnne1FCabinsGirl2Script, -1 ; Woman in FR/LG
	object_event 12, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnne1FCabinsTMBodySlam, EVENT_GOT_TM08_BODY_SLAM
	object_event 21, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnne1FCabinsGentleman3Script, -1
