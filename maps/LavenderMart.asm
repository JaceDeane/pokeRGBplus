	object_const_def
	const LAVENDERMART_CLERK
	const LAVENDERMART_BALDING_GUY
	const LAVENDERMART_COOLTRAINER_M

LavenderMart_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_LAVENDER
	closetext
	end

LavenderMartBaldingGuyScript:
	jumptextfaceplayer LavenderMartBaldingGuyText

LavenderMartCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .rescued_fuji
	writetext LavenderMartCooltrainerMReviveText
	waitbutton
	closetext
	end

.rescued_fuji:
	writetext LavenderMartCooltrainerMNuggetText
	waitbutton
	closetext
	end

LavenderMartBaldingGuyText:
	text "I'm searching for"
	line "items that raise"

	para "the stats of"
	line "#MON during a"
	cont "single battle."

	para "X ATTACK, X"
	line "DEFEND, X SPEED"

	para "and X SPECIAL are"
	line "what I'm after."

	para "Do you know where"
	line "I can get them?"
	done

LavenderMartCooltrainerMReviveText:
	text "You know REVIVE?"

	para "It revives any"
	line "fainted #MON!"
	done

LavenderMartCooltrainerMNuggetText:
	text "I found a NUGGET"
	line "in the mountains."

	para "I thought it was"
	line "useless, but it"
	cont "sold for ¥5000!"
	done

LavenderMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 5
	warp_event  3,  7, LAVENDER_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartClerkScript, -1
	object_event  3,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderMartBaldingGuyScript, -1
	object_event  7,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderMartCooltrainerMScript, -1
