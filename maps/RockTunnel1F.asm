	object_const_def
	const ROCKTUNNEL1F_HIKER1
	const ROCKTUNNEL1F_HIKER2
	const ROCKTUNNEL1F_HIKER3
	const ROCKTUNNEL1F_SUPER_NERD
	const ROCKTUNNEL1F_LASS1
	const ROCKTUNNEL1F_LASS2
	const ROCKTUNNEL1F_LASS3

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerLenny:
	trainer HIKER, LENNY, EVENT_BEAT_HIKER_LENNY, HikerLennySeenText, HikerLennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerLennyAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerOliver:
	trainer HIKER, OLIVER, EVENT_BEAT_HIKER_OLIVER, HikerOliverSeenText, HikerOliverBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerOliverAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerLucas:
	trainer HIKER, LUCAS, EVENT_BEAT_HIKER_LUCAS, HikerLucasSeenText, HikerLucasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerLucasAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacAshton:
	trainer POKEMANIAC, ASHTON, EVENT_BEAT_POKEMANIAC_ASHTON, PokemaniacAshtonSeenText, PokemaniacAshtonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacAshtonAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerLeah:
	trainer PICNICKER, LEAH, EVENT_BEAT_PICNICKER_LEAH, PicnickerLeahSeenText, PicnickerLeahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerLeahAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerDana:
	trainer PICNICKER, DANA, EVENT_BEAT_PICNICKER_DANA, PicnickerDanaSeenText, PicnickerDanaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerDanaAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerAriana:
	trainer PICNICKER, ARIANA, EVENT_BEAT_PICNICKER_ARIANA, PicnickerArianaSeenText, PicnickerArianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerArianaAfterBattleText
	waitbutton
	closetext
	end

; RockTunnel1FHiddenXAccuracy:
	; hiddenitem X_ACCURACY, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_ACCURACY

; RockTunnel1FHiddenXDefend:
	; hiddenitem X_DEFEND, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_DEFEND

RockTunnel1FSign:
	jumptext RockTunnel1FSignText

HikerLennySeenText:
	text "This tunnel goes"
	line "a long way, kid!"
	done

HikerLennyBeatenText:
	text "D'oh!"
	line "You win!"
	done

HikerLennyAfterBattleText:
	text "Watch for ONIX!"

	para "It can put the"
	line "squeeze on you!"
	done

HikerOliverSeenText:
	text "Hmm. Maybe I'm"
	line "lost in here…"
	done

HikerOliverBeatenText:
	text "Ease up!"

	para "What am I doing?"
	line "Which way is out?"
	done

HikerOliverAfterBattleText: ; clunky way of presenting this text
	text "That sleeping"
	line "#MON on ROUTE"
	cont "12 forced me to"
	cont "take this detour."
	done

HikerLucasSeenText:
	text "Outsiders like"
	line "you need to show"
	cont "me some respect!"
	done

HikerLucasBeatenText:
	text "I give!"
	done

HikerLucasAfterBattleText:
	text "You're talented"
	line "enough to hike!"
	done

PokemaniacAshtonSeenText:
	text "#MON fight!"
	line "Ready, go!"
	done

PokemaniacAshtonBeatenText:
	text "Game over!"
	done

PokemaniacAshtonAfterBattleText:
	text "Oh well, I'll get"
	line "a ZUBAT as I go!"
	done

PicnickerLeahSeenText:
	text "Eek!"

	para "Don't try anything"
	line "funny in the dark!"
	done

PicnickerLeahBeatenText:
	text "It was too dark!"
	done

PicnickerLeahAfterBattleText:
	text "I saw a MACHOP"
	line "in this tunnel!"
	done

PicnickerDanaSeenText:
	text "I came this far"
	line "for #MON!"
	done

PicnickerDanaBeatenText:
	text "I'm out of #MON!"
	done

PicnickerDanaAfterBattleText:
	text "You looked cute"
	line "and harmless!"
	done

PicnickerArianaSeenText:
	text "You have #MON!"
	line "Let's start!"
	done

PicnickerArianaBeatenText:
	text "You play hard!"
	done

PicnickerArianaAfterBattleText:
	text "Whew! I'm all"
	line "sweaty now!"
	done

RockTunnel1FSignText:
	text "ROCK TUNNEL"

	para "CERULEAN CITY -"
	line "LAVENDER TOWN"
	done

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  3, ROCK_TUNNEL_1F_ENTRANCE, 1
	warp_event 15, 33, ROUTE_10, 4
	warp_event 37,  3, ROCK_TUNNEL_B1F, 1
	warp_event  5,  3, ROCK_TUNNEL_B1F, 2
	warp_event 17, 11, ROCK_TUNNEL_B1F, 3
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4

	def_coord_events

	def_bg_events
	bg_event 11, 29, BGEVENT_READ, RockTunnel1FSign
	; bg_event 24,  4, BGEVENT_ITEM, RockTunnel1FHiddenXAccuracy
	; bg_event 21, 15, BGEVENT_ITEM, RockTunnel1FHiddenXDefend

	def_object_events
	object_event  7,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerLenny, -1 ;(12)
	object_event  5, 16, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerOliver, -1 ;(13)
	object_event 17, 15, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerLucas, -1 ;(14)
	object_event 23,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacAshton, -1 ;(7)
	object_event 37, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerLeah, -1 ;(17)
	object_event 22, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerDana, -1 ;(18)
	object_event 32, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerAriana, -1 ;(19)
