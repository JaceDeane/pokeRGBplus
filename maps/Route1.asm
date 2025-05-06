	object_const_def
	;const ROUTE1_YOUNGSTER
	;const ROUTE1_COOLTRAINER_F
	const ROUTE1_CLERK
	const ROUTE1_YOUNGSTER
	const ROUTE1_FRUIT_TREE

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

; TrainerSchoolboyDanny:
	; trainer SCHOOLBOY, DANNY, EVENT_BEAT_SCHOOLBOY_DANNY, SchoolboyDannySeenText, SchoolboyDannyBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext SchoolboyDannyAfterBattleText
	; waitbutton
	; closetext
	; end

; TrainerCooltrainerfQuinn:
	; trainer COOLTRAINERF, QUINN, EVENT_BEAT_COOLTRAINERF_QUINN, CooltrainerfQuinnSeenText, CooltrainerfQuinnBeatenText, 0, .Script

; .Script:
	; endifjustbattled
	; opentext
	; writetext CooltrainerfQuinnAfterBattleText
	; waitbutton
	; closetext
	; end

Route1Sign:
	jumptext Route1SignText

Route1FruitTree:
	fruittree FRUITTREE_ROUTE_1

; SchoolboyDannySeenText:
	; text "If trainers meet,"
	; line "the first thing to"
	; cont "do is battle."
	; done

; SchoolboyDannyBeatenText:
	; text "Awww… I've got a"
	; line "losing record…"
	; done

; SchoolboyDannyAfterBattleText:
	; text "For trainers, it's"
	; line "a given that we'll"

	; para "battle whenever we"
	; line "meet."
	; done

; CooltrainerfQuinnSeenText:
	; text "You there!"
	; line "Want to battle?"
	; done

; CooltrainerfQuinnBeatenText:
	; text "Down and out…"
	; done

; CooltrainerfQuinnAfterBattleText:
	; text "You're strong."

	; para "You obviously must"
	; line "have trained hard."
	; done
	
Route1ClerkGivePotionScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POTION_SAMPLE
	iftrue .AlsoGotPokeballsText
	writetext Route1ClerkMartSampleText
	verbosegiveitem POTION
	setevent EVENT_GOT_POTION_SAMPLE
	closetext
	end
	
.AlsoGotPokeballsText
	writetext Route1ClerkItemGivenText
	closetext
	end

Route1ClerkMartSampleText::
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	prompt
	end

; Route1Text_1cae8::
	; text "<PLAYER> got"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

Route1ClerkItemGivenText::
	text "We also carry"
	line "# BALLS for"
	cont "catching #MON!"
	done

Route1ClerkNoRoomText::
	text "You have too much"
	line "stuff with you!"
	done
	
Route1YoungsterLedgeScript:
	faceplayer
	opentext
	writetext Route1YoungsterLedgeText
	closetext
	end

Route1YoungsterLedgeText::
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route1Sign

	def_object_events
	;object_event  6, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyDanny, -1
	;object_event 11, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerfQuinn, -1
	object_event  5, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route1ClerkGivePotionScript, -1
	object_event 15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1YoungsterLedgeScript, -1
	object_event  5,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1FruitTree, -1
