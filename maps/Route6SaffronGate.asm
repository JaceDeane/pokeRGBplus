	object_const_def
	const ROUTE6SAFFRONGATE_OFFICER

Route6SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route6SaffronGateNoopScene,              SCENE_ROUTE6SAFFRONGATE_NOOP
	scene_script Route6SaffronGateGuardsGivenADrinkScene, SCENE_ROUTE6SAFFRONGATE_GUARDS_GIVEN_A_DRINK

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route6SaffronGateGuardCallback

Route6SaffronGateNoopScene:
	end

Route6SaffronGateGuardsGivenADrinkScene:
	end

Route6SaffronGateGuardCallback:
	checkscene
	ifequal SCENE_ROUTE6SAFFRONGATE_GUARDS_GIVEN_A_DRINK, .given_a_drink
	checkevent EVENT_GAVE_SAFFRON_GUARDS_A_DRINK
	iftrue .given_a_drink
	moveobject ROUTE6SAFFRONGATE_OFFICER, 2, 4
	setval SPRITEMOVEDATA_SPINRANDOM_SLOW
    writemem wMap1ObjectMovement
	endcallback
	
.given_a_drink
	setscene SCENE_ROUTE6SAFFRONGATE_GUARDS_GIVEN_A_DRINK
	moveobject ROUTE6SAFFRONGATE_OFFICER, 0, 4
	setval SPRITEMOVEDATA_STANDING_RIGHT
    writemem wMap1ObjectMovement
    endcallback

Route6SaffronGateGuardScene:
	; fallthrough
	showemote EMOTE_SHOCK, ROUTE6SAFFRONGATE_OFFICER, 15
	turnobject ROUTE6SAFFRONGATE_OFFICER, RIGHT
	turnobject PLAYER, LEFT
Route6SaffronGateOfficerScript:
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
	farwritetext SaffronGateGuardGeeImThirstyText ; Defined in Route5SaffronGate.asm
	waitbutton
	closetext
	applymovement PLAYER, Route6GateMovePlayerDownScript
	end

.have_drink
	farwritetext SaffronGateGuardImParchedText ; Defined in Route5SaffronGate.asm
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
	farwritetext SaffronGateGuardYouCanGoOnThroughText ; Defined in Route5SaffronGate.asm
	waitbutton
	closetext
	setevent EVENT_GAVE_SAFFRON_GUARDS_A_DRINK
	setscene SCENE_ROUTE6SAFFRONGATE_GUARDS_GIVEN_A_DRINK
	end

.thanks_for_drink
	farwritetext SaffronGateGuardThanksForTheDrinkText ; Defined in Route5SaffronGate.asm
	waitbutton
	closetext
	end

Route6GateMovePlayerDownScript:
	step DOWN
	step_end

Route6SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, SAFFRON_CITY, 12
	warp_event  4,  0, SAFFRON_CITY, 13
	warp_event  3,  7, ROUTE_6, 2
	warp_event  4,  7, ROUTE_6, 2

	def_coord_events
	coord_event  3,  4, SCENE_ROUTE6SAFFRONGATE_NOOP, Route6SaffronGateGuardScene
	coord_event  4,  4, SCENE_ROUTE6SAFFRONGATE_NOOP, Route6SaffronGateGuardScene
	coord_event  5,  4, SCENE_ROUTE6SAFFRONGATE_NOOP, Route6SaffronGateGuardScene

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6SaffronGateOfficerScript, -1
