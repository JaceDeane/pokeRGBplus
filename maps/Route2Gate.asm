	object_const_def
	const ROUTE2GATE_OAKS_AIDE
	const ROUTE2GATE_YOUNGSTER

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateOaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .FlashExplainText
	writetext Route2GateOaksAideHiText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	count_caught
	readvar VAR_DEXCAUGHT
	ifgreater 9, .Aide10Caught ; there is no "ifequal-or-greater" option
	writetext Route2GateOaksAideUhOhText ; Less than 10 Pokémon caught
	waitbutton
	closetext
	end
	
.No
	writetext Route2GateOaksAideComeBackText
	waitbutton
	closetext
	end
	
.Aide10Caught
	writetext Route2GateOaksAideHereYouGoText
	promptbutton
	verbosegiveitem HM_FLASH
	;iffalse .NoRoom
	setevent EVENT_GOT_HM05_FLASH
	closetext
	end

.FlashExplainText:
	writetext Route2GateOaksAideFlashExplainText
	waitbutton
	closetext
	end

Route2GateYoungsterScript:
	jumptextfaceplayer Route2GateYoungsterText

Route2GateOaksAideHiText:
	text "Hi! Remember me?"
	line "I'm PROF.OAK's AIDE!"

	para "If you've caught 10"
	line "kinds of #MON,"

	para "I'm supposed to"
	line "give you an HM05!"

	para "So, <PLAYER>! Have"
	line "you caught at"

	para "least 10 kinds of"
	line "#MON?"
	done

Route2GateOaksAideUhOhText:
	text "Let's see…"

	para "Uh-oh! You have"
	line "caught only @"
	text_decimal wStringBuffer4, 1, 3 ; text_ram wStringBuffer4 (R/B)
	text_start
	cont "kinds of #MON!"

	para "You need 10 kinds"
	line "if you want the"
	cont "HM for FLASH."
	done

Route2GateOaksAideComeBackText:
	text "Oh. I see."

	para "When you get 10"
	line "kinds, come back"
	cont "for the FLASH HM."
	done

Route2GateOaksAideHereYouGoText:
	text "Great! You have"
	line "caught @"
	text_decimal wStringBuffer4, 1, 3 ; text_ram wStringBuffer4 (R/B)
	text " kinds"
	cont "of #MON!"
	
	para "Congratulations!"
	line "Here you go!"
	done

; Route2GateOaksAideGotItemText:
	; text "<PLAYER> got the"
	; line "HM05 FLASH!"
	; done

Route2GateOaksAideFlashExplainText:
	text "The HM FLASH"
	line "lights up even the"
	cont "darkest of caves."
	done

Route2GateYoungsterText:
	text "Once a #MON"
	line "learns FLASH, you"

	para "can get through"
	line "ROCK TUNNEL."
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 3
	warp_event  5,  0, ROUTE_2, 4
	warp_event  4,  7, ROUTE_2, 2
	warp_event  5,  7, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateOaksAideScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2GateYoungsterScript, -1
