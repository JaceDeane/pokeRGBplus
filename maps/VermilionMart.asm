	object_const_def
	const VERMILIONMART_CLERK
	const VERMILIONMART_COOLTRAINER_M
	const VERMILIONMART_LASS

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

VermilionMartCooltrainerMScript:
	jumptextfaceplayer VermilionMartCooltrainerMText

VermilionMartLassScript:
	jumptextfaceplayer VermilionMartLassText

VermilionMartCooltrainerMText:
	text "There are evil"
	line "people who will"

	para "use #MON for"
	line "criminal acts."

	para "TEAM ROCKET"
	line "traffics in rare"
	cont "#MON."

	para "They also abandon"
	line "#MON that they"

	para "consider not to"
	line "be popular or"
	cont "useful."
	done

VermilionMartLassText:
	text "I think #MON"
	line "can be good or"

	para "bad. It depends"
	line "on the trainer."
	done

VermilionMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 3
	warp_event  4,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMartClerkScript, -1
	object_event  5,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMartCooltrainerMScript, -1
	object_event  3,  3, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMartLassScript, -1
