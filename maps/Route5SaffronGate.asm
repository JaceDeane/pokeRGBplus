	object_const_def
	const ROUTE5SAFFRONGATE_OFFICER

Route5SaffronGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route5SaffronGateOfficerScript:
	jumptextfaceplayer _SaffronGateGuardGeeImThirstyText

Route5SaffronGateOfficerText:
	text "You're from JOHTO,"
	line "aren't you?"

	para "How do you like"
	line "KANTO? It's nice,"
	cont "don't you agree?"
	done

;Add these to common text - or a special for the SaffronGuards
_SaffronGateGuardGeeImThirstyText::
	text "I'm on guard duty."
	line "Gee, I'm thirsty,"
	cont "though!"

	para "Oh wait there,"
	line "the road's closed."
	done

_SaffronGateGuardImParchedText::
	text "Whoa, boy!"
	line "I'm parched!"
	cont "..."
	cont "Huh? I can have"
	cont "this drink?"
	cont "Gee, thanks!@"
	text_end

_SaffronGateGuardYouCanGoOnThroughText::
	text_start

	para "..."
	line "Glug glug..."
	cont "..."
	cont "Gulp..."
	cont "If you want to go"
	cont "to SAFFRON CITY..."
	cont "..."
	cont "You can go on"
	cont "through. I'll"
	cont "share this with"
	cont "the other guards!"
	done

_SaffronGateGuardThanksForTheDrinkText::
	text "Hi, thanks for"
	line "the cool drinks!"
	done

Route5SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_5, 2
	warp_event  5,  0, ROUTE_5, 3
	warp_event  4,  7, SAFFRON_CITY, 9
	warp_event  5,  7, SAFFRON_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateOfficerScript, -1
