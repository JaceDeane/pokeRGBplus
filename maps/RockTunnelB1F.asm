	object_const_def
	const ROCKTUNNELB1F_LASS1
	const ROCKTUNNELB1F_HIKER1
	const ROCKTUNNELB1F_SUPER_NERD1
	const ROCKTUNNELB1F_SUPER_NERD2
	const ROCKTUNNELB1F_HIKER2
	const ROCKTUNNELB1F_LASS2
	const ROCKTUNNELB1F_HIKER3
	const ROCKTUNNELB1F_SUPER_NERD3

RockTunnelB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPicnickerSofia:
	trainer PICNICKER, SOFIA, EVENT_BEAT_PICNICKER_SOFIA, PicnickerSofiaSeenText, PicnickerSofiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerSofiaAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerDudley:
	trainer HIKER, DUDLEY, EVENT_BEAT_HIKER_DUDLEY, HikerDudleySeenText, HikerDudleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDudleyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacCooper:
	trainer POKEMANIAC, COOPER, EVENT_BEAT_POKEMANIAC_COOPER, PokemaniacCooperSeenText, PokemaniacCooperBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacCooperAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacSteve:
	trainer POKEMANIAC, STEVE, EVENT_BEAT_POKEMANIAC_STEVE, PokemaniacSteveSeenText, PokemaniacSteveBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacSteveAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerAllen:
	trainer HIKER, ALLEN, EVENT_BEAT_HIKER_ALLEN, HikerAllenSeenText, HikerAllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerAllenAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerMartha:
	trainer PICNICKER, MARTHA, EVENT_BEAT_PICNICKER_MARTHA, PicnickerMarthaSeenText, PicnickerMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerMarthaAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerEric:
	trainer HIKER, ERIC, EVENT_BEAT_HIKER_ERIC, HikerEricSeenText, HikerEricBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerEricAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacWinston:
	trainer POKEMANIAC, WINSTON, EVENT_BEAT_POKEMANIAC_WINSTON, PokemaniacWinstonSeenText, PokemaniacWinstonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacWinstonAfterBattleText
	waitbutton
	closetext
	end

; RockTunnelB1FHiddenMaxPotion:
	; hiddenitem MAX_POTION, EVENT_ROCK_TUNNEL_B1F_HIDDEN_MAX_POTION

PicnickerSofiaSeenText:
	text "Hikers leave twigs"
	line "as trail markers."
	done

PicnickerSofiaBeatenText:
	text "Ohhh!"
	line "I did my best!"
	done

PicnickerSofiaAfterBattleText:
	text "I want to go home!"
	done

HikerDudleySeenText:
	text "Hahaha! Can you"
	line "beat my power?"
	done

HikerDudleyBeatenText:
	text "Oops!"
	line "Out-muscled!"
	done

HikerDudleyAfterBattleText:
	text "I go for power"
	line "because I hate"
	cont "thinking!"
	done

PokemaniacCooperSeenText:
	text "You have a"
	line "#DEX?"

	para "I want one too!"
	done

PokemaniacCooperBeatenText:
	text "Shoot!"
	line "I'm so jealous!"
	done

PokemaniacCooperAfterBattleText:
	text "When you finish"
	line "your #DEX, can"
	cont "I have it?"
	done

PokemaniacSteveSeenText:
	text "Do you know about"
	line "costume players?"
	done

PokemaniacSteveBeatenText:
	text "Well, that's that."
	done

PokemaniacSteveAfterBattleText:
	text "Costume players"
	line "dress up as"
	cont "#MON for fun."
	done

HikerAllenSeenText:
	text "My #MON's"
	line "techniques will"
	cont "leave you crying!"
	done

HikerAllenBeatenText:
	text "I give!"

	para "You're a better"
	line "technician!"
	done

HikerAllenAfterBattleText:
	text "In the mountains,"
	line "you'll often find"
	cont "rock-type #MON."
	done

PicnickerMarthaSeenText:
	text "I don't often"
	line "come here, but I"
	cont "will fight you."
	done

PicnickerMarthaBeatenText:
	text "Oh! I lost!"
	done

PicnickerMarthaAfterBattleText:
	text "I like tiny"
	line "#MON, big ones"
	cont "are too scary!"
	done

HikerEricSeenText:
	text "Hit me with your"
	line "best shot!"
	done

HikerEricBeatenText:
	text "Fired away!"
	done

HikerEricAfterBattleText:
	text "I'll raise my"
	line "#MON to beat"
	cont "yours, kid!"
	done

PokemaniacWinstonSeenText:
	text "I draw #MON"
	line "when I'm home."
	done

PokemaniacWinstonBeatenText:
	text "Whew!"
	line "I'm exhausted!"
	done

PokemaniacWinstonAfterBattleText:
	text "I'm an artist,"
	line "not a fighter."
	done

RockTunnelB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 25, ROCK_TUNNEL_1F, 3
	warp_event 27,  3, ROCK_TUNNEL_1F, 4
	warp_event 23, 11, ROCK_TUNNEL_1F, 5
	warp_event  3,  3, ROCK_TUNNEL_1F, 6

	def_coord_events

	def_bg_events
	; bg_event  4, 14, BGEVENT_ITEM, RockTunnelB1FHiddenMaxPotion

	def_object_events
	object_event 11, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerSofia, -1 ;(9)
	object_event  6, 10, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerDudley, -1 ;(9)
	object_event  3,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacCooper, -1 ;(3)
	object_event 20, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacSteve, -1 ;(4)
	object_event 30, 10, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerAllen, -1 ;(10)
	object_event 14, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerMartha, -1 ;(10)
	object_event 33,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerEric, -1 ;(11)
	object_event 26, 30, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacWinston, -1 ;(5)
