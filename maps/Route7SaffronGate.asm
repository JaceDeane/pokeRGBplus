	object_const_def
	const ROUTE7SAFFRONGATE_OFFICER

Route7SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route7SaffronGateNoopScene,              SCENE_ROUTE7SAFFRONGATE_NOOP
	scene_script Route7SaffronGateGuardsGivenADrinkScene, SCENE_ROUTE7SAFFRONGATE_GUARDS_GIVEN_A_DRINK

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route7SaffronGateGuardCallback

Route7SaffronGateNoopScene:
	end

Route7SaffronGateGuardsGivenADrinkScene:
	end

Route7SaffronGateGuardCallback:
	checkscene
	ifequal SCENE_ROUTE7SAFFRONGATE_GUARDS_GIVEN_A_DRINK, .given_a_drink
	checkevent EVENT_GAVE_SAFFRON_GUARDS_A_DRINK
	iftrue .given_a_drink
	moveobject ROUTE7SAFFRONGATE_OFFICER, 5, 2
	setval SPRITEMOVEDATA_SPINRANDOM_SLOW
    writemem wMap1ObjectMovement
	endcallback
	
.given_a_drink
	setscene SCENE_ROUTE7SAFFRONGATE_GUARDS_GIVEN_A_DRINK
	moveobject ROUTE7SAFFRONGATE_OFFICER, 5, 2
	setval SPRITEMOVEDATA_STANDING_DOWN
    writemem wMap1ObjectMovement
    endcallback

Route7SaffronGateGuardScene:
	; fallthrough
	showemote EMOTE_SHOCK, ROUTE7SAFFRONGATE_OFFICER, 15
	turnobject ROUTE7SAFFRONGATE_OFFICER, DOWN
	turnobject PLAYER, UP
Route7SaffronGateOfficerScript:
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
	applymovement PLAYER, Route7GateMovePlayerLeftScript
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
	setscene SCENE_ROUTE7SAFFRONGATE_GUARDS_GIVEN_A_DRINK
	end

.thanks_for_drink
	farwritetext SaffronGateGuardThanksForTheDrinkText ; Defined in Route5SaffronGate.asm
	waitbutton
	closetext
	end

Route7GateMovePlayerLeftScript:
	step LEFT
	step_end

Route7SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_7, 1
	warp_event  0,  5, ROUTE_7, 2
	warp_event  9,  4, SAFFRON_CITY, 10
	warp_event  9,  5, SAFFRON_CITY, 11

	def_coord_events
	coord_event  5,  4, SCENE_ROUTE7SAFFRONGATE_NOOP, Route7SaffronGateGuardScene
	coord_event  5,  5, SCENE_ROUTE7SAFFRONGATE_NOOP, Route7SaffronGateGuardScene

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route7SaffronGateOfficerScript, -1
