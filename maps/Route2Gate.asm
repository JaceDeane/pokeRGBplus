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
	;promptbutton
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	readvar VAR_DEXCAUGHT
	ifgreater 10, .Aide10Caught
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
	waitbutton
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
	line "I'm PROF.OAK's"
	cont "AIDE!"

	para "If you caught 10"
	line "kinds of #MON,"
	cont "I'm supposed to"
	cont "give you an HM05!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least 10 kinds of"
	cont "#MON?"
	done

Route2GateOaksAideUhOhText:
	text "Let's see…"
	line "Uh-oh! You have"
	cont "caught only ";@"
	;text_ram wStringBuffer4
	cont "kinds of #MON!"

	para "You need 10 kinds"
	line "if you want the"
	cont "HM05 FLASH."
	done

Route2GateOaksAideComeBackText:
	text "Oh. I see."

	para "When you get 10"
	line "kinds, come back"
	cont "for HM05 FLASH."
	done

Route2GateOaksAideHereYouGoText:
	text "Great! You have"
	line "caught ";@"
	;text_ram wStringBuffer4
	text " kinds"
	cont "of #MON!"
	
	para "Congratulations!"

	para "Here you go!"
	done

Route2GateOaksAideGotItemText:
	text "<PLAYER> got the"
	line "HM05 FLASH!@"
	done

Route2GateOaksAideFlashExplainText:
	text "The HM FLASH"
	line "lights even the"
	cont "darkest dungeons."
	done

Route2GateYoungsterText:
	text "Once a #MON"
	line "learns FLASH, you"
	cont "can get through"
	cont "ROCK TUNNEL."
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
