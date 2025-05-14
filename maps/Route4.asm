	object_const_def
	const ROUTE4_LASS1
	const ROUTE4_LASS2
	const ROUTE4_POKE_BALL

Route4_MapScripts:
	def_scene_scripts

	def_callbacks

Route4LassScript:
	jumptextfaceplayer Route4LassText

TrainerLassCrissy:
	trainer LASS, CRISSY, EVENT_BEAT_LASS_CRISSY, LassCrissySeenText, LassCrissyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCrissyAfterBattleText
	waitbutton
	closetext
	end

MtMoonPokecenterSign:
	jumpstd PokecenterSignScript

MtMoonSign:
	jumptext MtMoonSignText

Route4Sign:
	jumptext Route4SignText

Route4TMWhirlwind:
	itemball TM_MUD_SLAP ; TM_WHIRLWIND ; TODO

Route4HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_4_HIDDEN_ULTRA_BALL

Route4LassText:
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#MON, GEODUDE!"
	done

LassCrissySeenText:
	text "I came to get my"
	line "mushroom #MON!"
	done

LassCrissyBeatenText:
	text "Oh! My cute"
	line "mushroom #MON!"
	prompt

LassCrissyAfterBattleText:
	text "There might not"
	line "be any more"
	cont "mushrooms here."

	para "I think I got"
	line "them all."
	done

MtMoonSignText:
	text "MT.MOON"
	line "Tunnel Entrance"
	done

Route4SignText:
	text "ROUTE 4"
	line "MT.MOON -"
	cont "CERULEAN CITY"
	done

Route4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, MOUNT_MOON_POKECENTER_1F, 1
	warp_event 18,  5, MOUNT_MOON_1F, 1
	warp_event 24,  5, MOUNT_MOON_1F_EXIT, 2

	def_coord_events

	def_bg_events
	bg_event 12,  5, BGEVENT_READ, MtMoonPokecenterSign
	bg_event 17,  7, BGEVENT_READ, MtMoonSign
	bg_event 27,  7, BGEVENT_READ, Route4Sign
	;bg_event 32,  3, BGEVENT_ITEM, Route4HiddenUltraBall

	def_object_events
	object_event  9,  8, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route4LassScript, -1
	object_event 63,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassCrissy, -1
	object_event 57,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4TMWhirlwind, EVENT_GOT_TM_WHIRLWIND
