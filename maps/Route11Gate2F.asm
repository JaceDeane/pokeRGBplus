	object_const_def
	const ROUTE11GATE2F_OAKS_AIDE
	const ROUTE11GATE2F_YOUNGSTER

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route11Gate2FOaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .ItemfinderDescText
	writetext Route11Gate2FOaksAideHiText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	count_caught
	readvar VAR_DEXCAUGHT
	ifgreater 29, .Aide30Caught ; there is no "ifequal-or-greater" option
	writetext Route11Gate2FOaksAideUhOhText ; Less than 30 Pokémon caught
	waitbutton
	closetext
	end
	
.No
	writetext Route11Gate2FOaksAideComeBackText
	waitbutton
	closetext
	end
	
.Aide30Caught
	writetext Route11Gate2FOaksAideHereYouGoText
	promptbutton
	verbosegiveitem ITEMFINDER
	;iffalse .NoRoom
	setevent EVENT_GOT_ITEMFINDER
	closetext
	end

.ItemfinderDescText:
	writetext Route11Gate2FOaksAideItemfinderDescText
	waitbutton
	closetext
	end

Route11Gate2FYoungsterScript:
	faceplayer
	opentext
	trade NPC_TRADE_TURNER ; TERRI the NIDORINA (RED) / TERRY the NIDORINO (BLUE)
	waitbutton
	closetext
	end

Route11Gate2FLeftBinoculars:
	readvar VAR_FACING
	ifequal UP, .LeftBinocularsText
	jumptext Route11Gate2FBinocularsWrongSideText

.LeftBinocularsText
	checkevent EVENT_BEAT_ROUTE12_SNORLAX
	iftrue .BeatSnorlax
	jumptext Route11Gate2FLeftBinocularsSnorlaxText

.BeatSnorlax
	jumptext Route11Gate2FLeftBinocularsNoSnorlaxText

Route11Gate2FRightBinoculars:
	readvar VAR_FACING
	ifequal UP, .RightBinocularsText
	jumptext Route11Gate2FBinocularsWrongSideText

.RightBinocularsText
	jumptext Route11Gate2FRightBinocularsText

Route11Gate2FOaksAideHiText:
	text "Hi! Remember me?"
	line "I'm PROF.OAK's AIDE!"

	para "If you've caught 30"
	line "kinds of #MON,"

	para "I'm supposed to"
	line "give you an ITEM-"
	cont "FINDER!"

	para "So, <PLAYER>! Have"
	line "you caught at"

	para "least 10 kinds of"
	line "#MON?"
	done

Route11Gate2FOaksAideUhOhText:
	text "Let's see…"

	para "Uh-oh! You have"
	line "caught only @"
	text_decimal wStringBuffer4, 1, 3 ; text_ram wStringBuffer4 (R/B)
	text_start
	cont "kinds of #MON!"

	para "You need 30 kinds"
	line "if you want an"
	cont "ITEMFINDER."
	done

Route11Gate2FOaksAideComeBackText:
	text "Oh. I see."

	para "When you get 30"
	line "kinds, come back"
	cont "for an ITEMFINDER."
	done

Route11Gate2FOaksAideHereYouGoText:
	text "Great! You have"
	line "caught @"
	text_decimal wStringBuffer4, 1, 3 ; text_ram wStringBuffer4 (R/B)
	text " kinds"
	cont "of #MON!"
	
	para "Congratulations!"
	line "Here you go!"
	done

Route11Gate2FOaksAideItemfinderDescText:
	text "There are items on"
	line "the ground that"
	cont "can't be seen."

	para "ITEMFINDER will"
	line "detect an item"
	cont "close to you."

	para "It can't pinpoint"
	line "it, so you have"
	cont "to look yourself!"
	done

Route11Gate2FLeftBinocularsSnorlaxText:
	text "Looked into the"
	line "binoculars."

	para "A big #MON is"
	line "asleep on a road!"
	done

Route11Gate2FLeftBinocularsNoSnorlaxText:
	text "Looked into the"
	line "binoculars."

	para "It's a beautiful"
	line "view!"
	done

Route11Gate2FRightBinocularsText:
	text "Looked into the"
	line "binoculars."

	para "The only way to"
	line "get from CERULEAN"

	para "to LAVENDER is via" ; simplified the wording
	line "the ROCK TUNNEL."
	done

Route11Gate2FBinocularsWrongSideText:
	text "Oops, wrong side."
	done

Route11Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, Route11Gate2FLeftBinoculars
	bg_event  6,  2, BGEVENT_READ, Route11Gate2FRightBinoculars

	def_object_events
	object_event  2,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11Gate2FOaksAideScript, -1
	object_event  4,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11Gate2FYoungsterScript, -1
	; object_event  4,  2, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_ROUTE11GATE2F_YOUNGSTER
	; object_event  2,  6, SPRITE_SCIENTIST, STAY, NONE, TEXT_ROUTE11GATE2F_OAKS_AIDE
