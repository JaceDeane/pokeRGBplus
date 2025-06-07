	object_const_def
	const ROUTE5SAFFRONGATE_OFFICER

Route5SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route5SaffronGateNoopScene,              SCENE_ROUTE5SAFFRONGATE_NOOP
	scene_script Route5SaffronGateGuardsGivenADrinkScene, SCENE_ROUTE5SAFFRONGATE_GUARDS_GIVEN_A_DRINK

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route5SaffronGateGuardCallback

Route5SaffronGateNoopScene:
	end

Route5SaffronGateGuardsGivenADrinkScene:
	end

Route5SaffronGateGuardCallback:
	checkscene
	ifequal SCENE_ROUTE5SAFFRONGATE_GUARDS_GIVEN_A_DRINK, .given_a_drink
	checkevent EVENT_GAVE_SAFFRON_GUARDS_A_DRINK
	iftrue .given_a_drink
	moveobject ROUTE5SAFFRONGATE_OFFICER, 2, 4
	setval SPRITEMOVEDATA_SPINRANDOM_SLOW
    writemem wMap1ObjectMovement
	endcallback
	
.given_a_drink
	setscene SCENE_ROUTE5SAFFRONGATE_GUARDS_GIVEN_A_DRINK
	moveobject ROUTE5SAFFRONGATE_OFFICER, 0, 4
	setval SPRITEMOVEDATA_STANDING_RIGHT
    writemem wMap1ObjectMovement
    endcallback

Route5SaffronGateGuardScene:
	; fallthrough
	showemote EMOTE_SHOCK, ROUTE5SAFFRONGATE_OFFICER, 15
	turnobject ROUTE5SAFFRONGATE_OFFICER, RIGHT
	turnobject PLAYER, LEFT
Route5SaffronGateOfficerScript:
	; jumpstd SaffronGateGuardsScript
	faceplayer
	opentext
	checkevent EVENT_GAVE_SAFFRON_GUARDS_A_DRINK
	iftrue .thanks_for_drink
	checkitem FRESH_WATER
	iftrue .have_drink
	checkitem SODA_POP
	iftrue .have_drink
	checkitem LEMONADE
	iftrue .have_drink
	writetext SaffronGateGuardGeeImThirstyText
	waitbutton
	closetext
	applymovement PLAYER, Route5GateMovePlayerUpScript
	end

.have_drink
	writetext SaffronGateGuardImParchedText
	waitbutton
	closetext
	waitsfx
	playsound SFX_FULL_HEAL ; what SFX plays here, or should?
	waitsfx
	opentext
	checkitem FRESH_WATER
	iftrue .remove_fresh_water
	checkitem SODA_POP
	iftrue .remove_soda_pop
	checkitem LEMONADE
	iftrue .remove_lemonade
	
.remove_fresh_water
	takeitem FRESH_WATER
	sjump .item_taken

.remove_soda_pop
	takeitem SODA_POP
	sjump .item_taken

.remove_lemonade
	takeitem LEMONADE
	; fallthrough
.item_taken
	writetext SaffronGateGuardYouCanGoOnThroughText
	waitbutton
	closetext
	setevent EVENT_GAVE_SAFFRON_GUARDS_A_DRINK
	setscene SCENE_ROUTE5SAFFRONGATE_GUARDS_GIVEN_A_DRINK
	end

.thanks_for_drink
	writetext SaffronGateGuardThanksForTheDrinkText
	waitbutton
	closetext
	end

Route5GateMovePlayerUpScript:
	step UP
	step_end

;Add these to common text/std_text - or a special/std_scripts for the SaffronGuards
SaffronGateGuardGeeImThirstyText:
	text "I'm on guard duty."

	para "Gee, I'm thirsty,"
	line "though!"

	para "Oh wait there,"
	line "the road's closed."
	done

SaffronGateGuardImParchedText:
	text "Whoa, boy!"
	line "I'm parched!"

	para "<……> <……>"

	para "Huh? I can have"
	line "this drink?"
	cont "Gee, thanks!"
	done

SaffronGateGuardYouCanGoOnThroughText:
	text "<……> <……>"
	line "Glug glug…"

	para "<……> <……>"
	line "Gulp…"

	para "If you want to go"
	line "to SAFFRON CITY…"
	cont "<……> <……>"

	para "You can go on"
	line "through."

	para "I'll share this"
	line "with the other"
	cont "guards!"
	done

SaffronGateGuardThanksForTheDrinkText:
	text "Hi, thanks for"
	line "the cool drinks!"
	done

Route5SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_5, 2
	warp_event  4,  0, ROUTE_5, 3
	warp_event  3,  7, SAFFRON_CITY, 9
	warp_event  4,  7, SAFFRON_CITY, 9

	def_coord_events
	coord_event  3,  4, SCENE_ROUTE5SAFFRONGATE_NOOP, Route5SaffronGateGuardScene
	coord_event  4,  4, SCENE_ROUTE5SAFFRONGATE_NOOP, Route5SaffronGateGuardScene
	coord_event  5,  4, SCENE_ROUTE5SAFFRONGATE_NOOP, Route5SaffronGateGuardScene

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateOfficerScript, -1
