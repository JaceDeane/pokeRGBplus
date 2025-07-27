	object_const_def
	const ROUTE10_SUPER_NERD1
	const ROUTE10_HIKER1
	const ROUTE10_SUPER_NERD2
	const ROUTE10_LASS1
	const ROUTE10_HIKER2
	const ROUTE10_LASS2

Route10_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacMark:
	trainer POKEMANIAC, MARK, EVENT_BEAT_POKEMANIAC_MARK, PokemaniacMarkSeenText, PokemaniacMarkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMarkAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerClark:
	trainer HIKER, CLARK, EVENT_BEAT_HIKER_CLARK, HikerClarkSeenText, HikerClarkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerClarkAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacHerman:
	trainer POKEMANIAC, HERMAN, EVENT_BEAT_POKEMANIAC_HERMAN, PokemaniacHermanSeenText, PokemaniacHermanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacHermanAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHeidi:
	trainer PICNICKER, HEIDI, EVENT_BEAT_PICNICKER_HEIDI, PicnickerHeidiSeenText, PicnickerHeidiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHeidiAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerTrent:
	trainer HIKER, TRENT, EVENT_BEAT_HIKER_TRENT, HikerTrentSeenText, HikerTrentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTrentAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerCarol:
	trainer PICNICKER, CAROL, EVENT_BEAT_PICNICKER_CAROL, PicnickerCarolSeenText, PicnickerCarolBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerCarolAfterBattleText
	waitbutton
	closetext
	end

RockTunnelSign:
	jumptext RockTunnelSignText

Route10Sign:
	jumptext Route10SignText

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd PokecenterSignScript

PokemaniacMarkSeenText:
	text "Wow, are you a"
	line "#MANIAC too?"

	para "Want to see my"
	line "collection?"
	done

PokemaniacMarkBeatenText:
	text "Humph."
	line "I'm not angry!"
	done

PokemaniacMarkAfterBattleText:
	text "I have more rare"
	line "#MON at home!"
	done

HikerClarkSeenText: ; May be Hiker Jim in G/S
	text "Ha-hahah-ah-ha!"
	done

HikerClarkBeatenText:
	text "Ha-haha!"
	line "Not laughing!"

	para "Ha-hay fever!"
	line "Haha-ha-choo!"
	done

HikerClarkAfterBattleText:
	text "Haha-ha-choo!"
	line "Ha-choo!"
	cont "Snort! Snivel!"
	done

PokemaniacHermanSeenText:
	text "Hi kid, want to"
	line "see my #MON?"
	done

PokemaniacHermanBeatenText:
	text "Oh no!"
	line "My #MON!"
	done

PokemaniacHermanAfterBattleText:
	text "I don't like you"
	line "for beating me!"
	done

PicnickerHeidiSeenText:
	text "I've been to a"
	line "#MON GYM a few"

	para "times, but I've"
	line "lost each time."
	done

PicnickerHeidiBeatenText:
	text "Ohh!"
	line "I blew it again!"
	done

PicnickerHeidiAfterBattleText:
	text "I've noticed some"
	line "#MANIACS prowl-"
	cont "ing around."
	done

HikerTrentSeenText:
	text "Ah! This mountain"
	line "air is delicious!"
	done

HikerTrentBeatenText:
	text "That cleared my"
	line "head!"
	done

HikerTrentAfterBattleText:
	text "I feel bloated on"
	line "mountain air!"
	done

PicnickerCarolSeenText:
	text "I'm feeling a bit"
	line "faint from this"
	cont "tough hike."
	done

PicnickerCarolBeatenText:
	text "I'm not up to it!"
	done

PicnickerCarolAfterBattleText:
	text "The #MON here"
	line "are so chunky!"

	para "There should be a"
	line "pink one, with a"
	cont "floral pattern!"
	done

RockTunnelSignText:
	text "ROCK TUNNEL"
	done

Route10SignText:
	text "ROUTE 10"

	para "CERULEAN CITY -"
	line "LAVENDER TOWN"
	done

PowerPlantSignText:
	text "POWER PLANT"
	done

Route10_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, ROCK_TUNNEL_POKECENTER, 1
	warp_event  8, 17, ROCK_TUNNEL_1F_ENTRANCE, 2
	warp_event  6, 39, POWER_PLANT, 1
	warp_event  8, 53, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
	bg_event  7, 19, BGEVENT_READ, RockTunnelSign
	bg_event 12, 19, BGEVENT_READ, Route10PokecenterSign
	bg_event  9, 55, BGEVENT_READ, Route10Sign
	bg_event  5, 41, BGEVENT_READ, PowerPlantSign

	def_object_events
	object_event 10, 44, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacMark, -1 ;(1)
	object_event  3, 57, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerClark, -1 ;(7)
	object_event 14, 64, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacHerman, -1 ;(2)
	object_event  7, 25, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerHeidi, -1 ;(7)
	object_event  3, 61, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerTrent, -1 ;(8)
	object_event  7, 54, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerCarol, -1 ;(8)
