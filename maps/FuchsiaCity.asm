	object_const_def
	const FUCHSIACITY_YOUNGSTER1
	const FUCHSIACITY_GAMBLER
	const FUCHSIACITY_ERIK
	const FUCHSIACITY_YOUNGSTER2
	const FUCHSIACITY_CHANSEY
	const FUCHSIACITY_VOLTORB
	const FUCHSIACITY_KANGASKHAN
	const FUCHSIACITY_SLOWPOKE
	const FUCHSIACITY_LAPRAS
	const FUCHSIACITY_FOSSIL

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FuchsiaCityFlypointCallback

FuchsiaCityFlypointCallback:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCityYoungster1Script:
	jumptextfaceplayer FuchsiaCityYoungster1Text

FuchsiaCityGamblerScript:
	jumptextfaceplayer FuchsiaCityGamblerText

FuchsiaCityErikScript:
	jumptextfaceplayer FuchsiaCityErikText

FuchsiaCityYoungster2Script:
	jumptextfaceplayer FuchsiaCityYoungster2Text

SafariZonePokemonScript:
	jumptextfaceplayer FuchsiaCitySafariZonePokemonText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

SafariZoneSign:
	jumptext FuchsiaCitySafariGameSignText

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityWardensHomeSign:
	jumptext FuchsiaCityWardensHomeSignText

SafariZoneOfficeSign:
	jumptext FuchsiaCitySafariZoneZooSignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneChanseySign:
	opentext
	writetext FuchsiaCitySafariZoneChanseySignText
	promptbutton
	setval CHANSEY
	special ShowPokedexEntry
	closetext
	end

SafariZoneVoltorbSign:
	opentext
	writetext FuchsiaCitySafariZoneVoltorbSignText
	promptbutton
	setval VOLTORB
	special ShowPokedexEntry
	closetext
	end

SafariZoneKangaskhanSign:
	opentext
	writetext FuchsiaCitySafariZoneKangaskhanSignText
	promptbutton
	setval KANGASKHAN
	special ShowPokedexEntry
	closetext
	end

SafariZoneSlowpokeSign:
	opentext
	writetext FuchsiaCitySafariZoneSlowpokeSignText
	promptbutton
	setval SLOWPOKE
	special ShowPokedexEntry
	closetext
	end

SafariZoneLaprasSign:
	opentext
	writetext FuchsiaCitySafariZoneLaprasSignText
	promptbutton
	setval LAPRAS
	special ShowPokedexEntry
	closetext
	end

SafariZoneFossilSign:
	opentext
	checkevent EVENT_GOT_DOME_FOSSIL
	iftrue .got_dome_fossil
	checkevent EVENT_GOT_HELIX_FOSSIL
	iftrue .got_helix_fossil
	; if, somehow, the player never gained either
	writetext FuchsiaCitySafariZoneFossilUndeterminedSignText
	waitbutton
	closetext
	end
	
.got_dome_fossil
	getmonname STRING_BUFFER_3, OMANYTE
	setval OMANYTE
	sjump .end

.got_helix_fossil
	getmonname STRING_BUFFER_3, KABUTO
	setval KABUTO
.end
	writetext FuchsiaCitySafariZoneFossilSignText
	promptbutton
	special ShowPokedexEntry
	closetext
	end

; NoLitteringSign:
	; jumptext NoLitteringSignText

; NoLitteringSignText:
	; text "No littering."

	; para "Please take your"
	; line "waste with you."
	; done

FuchsiaCityYoungster1Text:
	text "Did you try the"
	line "SAFARI GAME?"
	
	para "Some #MON can"
	line "only be caught"
	cont "there."
	done

FuchsiaCityGamblerText:
	text "The SAFARI ZONE"
	line "has a zoo in front"
	cont "of the entrance."

	para "Out back is the"
	line "SAFARI GAME for"
	cont "catching #MON."
	done

FuchsiaCityErikText:
	text "ERIK: Where's"
	line "SARA? I said I'd"
	cont "meet her here."
	done

FuchsiaCityYoungster2Text:
	text "That # BALL in"
	line "there is really a"
	cont "#MON."
	done

FuchsiaCitySafariZonePokemonText: ; unreferenced in gameplay
	text "!"
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaCitySafariGameSignText:
	text "SAFARI GAME"
	line "#MON-U-CATCH!"
	done

FuchsiaCityWardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

FuchsiaCitySafariZoneZooSignText:
	text "#MON PARADISE"
	line "SAFARI ZONE"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: KOGA"

	para "The Poisonous"
	line "Ninja Master"
	done

FuchsiaCitySafariZoneChanseySignText:
	text "Name: CHANSEY"

	para "Catching one is"
	line "all up to chance."
	done ; prompt

FuchsiaCitySafariZoneVoltorbSignText:
	text "Name: VOLTORB"

	para "The very image of"
	line "a # BALL."
	done ; prompt

FuchsiaCitySafariZoneKangaskhanSignText:
	text "Name: KANGASKHAN"

	para "A maternal #MON"
	line "that raises its"

	para "young in a pouch"
	line "on its belly."
	done ; prompt

FuchsiaCitySafariZoneSlowpokeSignText:
	text "Name: SLOWPOKE"

	para "Friendly and very"
	line "slow moving."
	done ; prompt

FuchsiaCitySafariZoneLaprasSignText:
	text "Name: LAPRAS"

	para "A.K.A. the king"
	line "of the seas."
	done ; prompt

FuchsiaCitySafariZoneFossilSignText:
	text "Name: @"
	text_ram wStringBuffer3
	text_start

	para "A #MON that"
	line "was resurrected"
	cont "from a fossil."
	done ; prompt

FuchsiaCitySafariZoneFossilUndeterminedSignText: ; unreferenced in gameplay
	text "<……><……><……>"

	para "The sign is faded."
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 1
	warp_event 11, 27, BILLS_GRANDPAS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOUSE, 1
	warp_event 18,  3, SAFARI_ZONE_GATE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event 31, 24, FUCHSIA_GOOD_ROD_HOUSE, 1
	warp_event 31, 27, FUCHSIA_GOOD_ROD_HOUSE, 2

	def_coord_events

	def_bg_events
	; bg_event 15, 23, BGEVENT_READ, FuchsiaCitySign
	bg_event 25, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event 17,  5, BGEVENT_READ, SafariZoneSign ; FuchsiaCitySafariGameSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event 27, 29, BGEVENT_READ, FuchsiaCityWardensHomeSign
	bg_event 21, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 33,  7, BGEVENT_READ, SafariZoneChanseySign
	bg_event 27,  7, BGEVENT_READ, SafariZoneVoltorbSign
	bg_event 13,  7, BGEVENT_READ, SafariZoneKangaskhanSign
	bg_event 31, 13, BGEVENT_READ, SafariZoneSlowpokeSign
	bg_event 13, 15, BGEVENT_READ, SafariZoneLaprasSign
	bg_event  7,  7, BGEVENT_READ, SafariZoneFossilSign

	def_object_events
	object_event 10, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster1Script, -1
	object_event 28, 17, SPRITE_GAMBLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityGamblerScript, -1
	object_event 30, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityErikScript, -1
	object_event 24,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster2Script, -1
	object_event 31,  5, SPRITE_FAIRY, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZonePokemonScript, -1
	object_event 25,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZonePokemonScript, -1
	object_event 12,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZonePokemonScript, -1
	object_event 30, 12, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZonePokemonScript, -1
	object_event  8, 17, SPRITE_LAPRAS_OW, SPRITEMOVEDATA_SWIM_WANDER, 4, 4, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZonePokemonScript, -1
	object_event  6,  5, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZonePokemonScript, -1
