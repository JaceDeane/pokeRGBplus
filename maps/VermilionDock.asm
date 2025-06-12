	; object_const_def
	; const VERMILIONDOCK_SAILOR1
	; const VERMILIONDOCK_SAILOR2
	; const VERMILIONDOCK_SUPER_NERD

VermilionDock_MapScripts:
	def_scene_scripts
	; scene_script VermilionDockNoopScene,      SCENE_VERMILIONDOCK_ASK_ENTER_SHIP
	; scene_script VermilionDockLeaveShipScene, SCENE_VERMILIONDOCK_LEAVE_SHIP

	def_callbacks
	; callback MAPCALLBACK_NEWMAP, VermilionDockFlypointCallback

; VermilionDockNoopScene:
	; end

; VermilionDockLeaveShipScene:
	; sdefer VermilionDockLeaveShipScript
	; end

; VermilionDockFlypointCallback:
	; setflag ENGINE_FLYPOINT_VERMILION
	; endcallback

; VermilionDockLeaveShipScript:
	; applymovement PLAYER, VermilionDockLeaveFastShipMovement
	; appear VermilionDock_SAILOR1
	; setscene SCENE_VermilionDock_ASK_ENTER_SHIP
	; setevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	; setevent EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	; setevent EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	; clearevent EVENT_OLIVINE_PORT_PASSAGE_POKEFAN_M
	; setevent EVENT_FAST_SHIP_FIRST_TIME
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; blackoutmod VERMILION_CITY
	; end

; VermilionDockSailorAtGangwayScript:
	; faceplayer
	; opentext
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue VermilionDockAlreadyRodeScript
	; writetext VermilionDockDepartingText
	; waitbutton
	; closetext
	; turnobject VermilionDock_SAILOR1, DOWN
	; pause 10
	; playsound SFX_EXIT_BUILDING
	; disappear VermilionDock_SAILOR1
	; waitsfx
	; applymovement PLAYER, VermilionDockEnterFastShipMovement
	; playsound SFX_EXIT_BUILDING
	; special FadeOutToWhite
	; waitsfx
	; setevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	; clearevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	; ; clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	; ; clearevent EVENT_BEAT_BURGLAR_COREY
	; ; clearevent EVENT_BEAT_BUG_CATCHER_KEN
	; ; clearevent EVENT_BEAT_GUITARIST_CLYDE
	; ; clearevent EVENT_BEAT_POKEFANM_JEREMY
	; ; clearevent EVENT_BEAT_POKEFANF_GEORGIA
	; ; clearevent EVENT_BEAT_SAILOR_KENNETH
	; ; clearevent EVENT_BEAT_TEACHER_SHIRLEY
	; ; clearevent EVENT_BEAT_SCHOOLBOY_NATE
	; ; clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	; setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	; appear VermilionDock_SAILOR1
	; setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	; warp FAST_SHIP_1F, 25, 1
	; end

; VermilionDockAlreadyRodeScript:
	; writetext VermilionDockCantBoardText
	; waitbutton
	; closetext
	; end

; VermilionDockWalkUpToShipScript:
	; turnobject VermilionDock_SAILOR2, RIGHT
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue .skip
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	; iftrue .skip
	; turnobject PLAYER, LEFT
	; opentext
	; readvar VAR_WEEKDAY
	; ifequal MONDAY, .NextShipWednesday
	; ifequal TUESDAY, .NextShipWednesday
	; ifequal THURSDAY, .NextShipSunday
	; ifequal FRIDAY, .NextShipSunday
	; ifequal SATURDAY, .NextShipSunday
	; writetext VermilionDockAskBoardingText
	; yesorno
	; iffalse VermilionDockNotRidingMoveAwayScript
	; writetext VermilionDockAskTicketText
	; promptbutton
	; checkitem S_S_TICKET
	; iffalse .NoTicket
	; writetext VermilionDockSSTicketText
	; waitbutton
	; closetext
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	; applymovement PLAYER, VermilionDockApproachFastShipMovement
	; sjump VermilionDockSailorAtGangwayScript

; .NoTicket:
	; writetext VermilionDockNoTicketText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; .NextShipWednesday:
	; writetext VermilionDockSailWednesdayText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; .NextShipSunday:
	; writetext VermilionDockSailSundayText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; .skip:
	; end

; VermilionDockNotRidingScript:
	; writetext VermilionDockComeAgainText
	; waitbutton
	; closetext
	; end

; VermilionDockNotRidingMoveAwayScript:
	; writetext VermilionDockComeAgainText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; VermilionDockSailorScript:
	; faceplayer
	; opentext
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue VermilionDockAlreadyRodeScript
	; readvar VAR_WEEKDAY
	; ifequal MONDAY, .NextShipWednesday
	; ifequal TUESDAY, .NextShipWednesday
	; ifequal THURSDAY, .NextShipSunday
	; ifequal FRIDAY, .NextShipSunday
	; ifequal SATURDAY, .NextShipSunday
	; writetext VermilionDockAskBoardingText
	; yesorno
	; iffalse VermilionDockNotRidingScript
	; writetext VermilionDockAskTicketText
	; promptbutton
	; checkitem S_S_TICKET
	; iffalse .NoTicket
	; writetext VermilionDockSSTicketText
	; waitbutton
	; closetext
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	; applymovement PLAYER, VermilionDockApproachFastShipRightMovement
	; sjump VermilionDockSailorAtGangwayScript

; .NoTicket:
	; writetext VermilionDockNoTicketText
	; waitbutton
	; closetext
	; end

; .NextShipWednesday:
	; writetext VermilionDockSailWednesdayText
	; waitbutton
	; closetext
	; end

; .NextShipSunday:
	; writetext VermilionDockSailSundayText
	; waitbutton
	; closetext
	; end

; VermilionDockSuperNerdScript:
	; faceplayer
	; opentext
	; writetext VermilionDockSuperNerdText
	; waitbutton
	; closetext
	; end

; VermilionDockHiddenIron:
	; hiddenitem IRON, EVENT_VERMILION_PORT_HIDDEN_IRON

; VermilionDockEnterFastShipMovement:
	; step DOWN
	; step_end

; VermilionDockLeaveFastShipMovement:
	; step UP
	; step_end

; VermilionDockCannotEnterFastShipMovement:
	; step RIGHT
	; turn_head LEFT
	; step_end

; VermilionDockApproachFastShipMovement:
	; step DOWN
	; step DOWN
	; step DOWN
	; step DOWN
	; step DOWN
	; step_end

; VermilionDockApproachFastShipRightMovement:
	; step RIGHT
	; step DOWN
	; step DOWN
	; step DOWN
	; step DOWN
	; step DOWN
	; step DOWN
	; step_end

; VermilionDockDepartingText:
	; text "We're departing"
	; line "soon. Please get"
	; cont "on board."
	; done

; VermilionDockCantBoardText:
	; text "Sorry. You can't"
	; line "board now."
	; done

; VermilionDockAskBoardingText:
	; text "Welcome to FAST"
	; line "SHIP S.S.AQUA."

	; para "Will you be board-"
	; line "ing today?"
	; done

; VermilionDockAskTicketText:
	; text "May I see your"
	; line "S.S.TICKET?"
	; done

; VermilionDockComeAgainText:
	; text "We hope to see you"
	; line "again!"
	; done

; VermilionDockSSTicketText:
	; text "<PLAYER> flashed"
	; line "the S.S.TICKET."

	; para "That's it."
	; line "Thank you!"
	; done

; VermilionDockNoTicketText:
	; text "<PLAYER> tried to"
	; line "show the S.S."
	; cont "TICKET…"

	; para "…But no TICKET!"

	; para "Sorry!"
	; line "You may board only"

	; para "if you have an"
	; line "S.S.TICKET."
	; done

; VermilionDockSailWednesdayText:
	; text "The FAST SHIP will"
	; line "sail on Wednesday."
	; done

; VermilionDockSailSundayText:
	; text "The FAST SHIP will"
	; line "sail next Sunday."
	; done

; VermilionDockSuperNerdText:
	; text "You came from"
	; line "JOHTO?"

	; para "I hear many rare"
	; line "#MON live over"
	; cont "there."
	; done

VermilionDock_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  4, VERMILION_CITY, 6
	; warp_event 14,  6, FAST_SHIP_1F, 1

	def_coord_events
	; coord_event  7, 11, SCENE_VERMILIONDOCK_ASK_ENTER_SHIP, VermilionDockWalkUpToShipScript

	def_bg_events
	; bg_event 16, 13, BGEVENT_ITEM, VermilionDockHiddenIron

	def_object_events
	; object_event  7, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionDockSailorAtGangwayScript, EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	; object_event  6, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionDockSailorScript, -1
	; object_event 11, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionDockSuperNerdScript, -1
