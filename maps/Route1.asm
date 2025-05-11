	object_const_def
	const ROUTE1_CLERK
	const ROUTE1_YOUNGSTER

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

Route1Sign:
	jumptext Route1SignText
	
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
	waitbutton
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
	jumptextfaceplayer Route1YoungsterLedgeText

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
	object_event  5, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route1ClerkGivePotionScript, -1
	object_event 15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1YoungsterLedgeScript, -1
