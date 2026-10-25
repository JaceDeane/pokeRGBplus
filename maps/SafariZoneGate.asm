	object_const_def
	const SAFARIZONEGATE_SAFARI_ZONE_WORKER_M1 ; Clerk
	const SAFARIZONEGATE_SAFARI_ZONE_WORKER_M2

SafariZoneGate_MapScripts:
	def_scene_scripts
	scene_script SafariZoneGateNoopScene,       SCENE_SAFARIZONEGATE_DEFAULT
	scene_script SafariZoneGateLeaveEarlyScene, SCENE_SAFARIZONEGATE_LEAVE_EARLY

	def_callbacks

SafariZoneGateNoopScene:
	end

SafariZoneGateLeaveEarlyScene:
	sdefer .leaveEarlyScript

.leaveEarlyScript
	applymovement PLAYER, SafariZoneGate_StepDown1Movement
	opentext
	writetext SafariZoneWorker1LeavingEarlyText
	yesorno
	iffalse .notLeaving
	clearflag ENGINE_SAFARI_ZONE
	writetext SafariZoneWorker1GoodHaulComeAgainText
	promptbutton
	writetext SafariZoneWorker1ReturnSafariBallsText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepDown3Movement
	setscene SCENE_SAFARIZONEGATE_DEFAULT
	end

.notLeaving
	writetext SafariZoneWorker1GoodLuckText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepUp1Movement
	warpcheck
	end

SafariZoneGate_RightTriggerScene:
	opentext
	writetext SafariZoneWorker1Text
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	sjump SafariZoneGate_StartSafariGameScript

SafariZoneGate_LeftTriggerScene:
	opentext
	writetext SafariZoneWorker1Text
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepOverMovement
	; fallthrough

SafariZoneGate_StartSafariGameScript:
	opentext
	writetext SafariZoneWorker1WouldYouLikeToJoinText
	special PlaceMoneyTopRight
	yesorno
	iffalse .choseNo
	; check if there is space in the party or PC box
	readvar VAR_PARTYCOUNT
	ifless 6, .skipBox
	readvar VAR_BOXSPACE
	ifequal 0, .noBoxSpace
.skipBox
	; make sure you have enough money
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .notEnoughCash
	; take your money and start the game
	setflag ENGINE_SAFARI_ZONE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	writetext SafariZoneWorker1MoneyPleaseText
	playsound SFX_ITEM
	waitsfx
	writetext SafariZoneWorker1CallYouOnThePAText
	waitbutton
	closetext
	setscene SCENE_SAFARIZONEGATE_LEAVE_EARLY
	special GiveSafariBalls
	applymovement PLAYER, SafariZoneGate_StepUp3Movement
	warpcheck
	end

.choseNo
	writetext SafariZoneWorker1PleaseComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepDown1Movement
	end

.noBoxSpace
	writetext SafariZoneGateBoxFullText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepDown1Movement
	end

.notEnoughCash
	writetext SafariZoneWorker1NotEnoughMoneyText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepDown1Movement
	end

; called as a std_script
SafariZoneOverWarpScript::
	playsound SFX_ENTER_DOOR
	special ClearBGPalettes
	waitsfx
	warpfacing DOWN, SAFARI_ZONE_GATE, 4, 0
	applymovement PLAYER, SafariZoneGate_StepDown1Movement
	opentext
	writetext SafariZoneWorker1GoodHaulComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, SafariZoneGate_StepDown3Movement
	setscene SCENE_SAFARIZONEGATE_DEFAULT
	end

SafariZoneGateWorker2Script:
	faceplayer
	opentext
	writetext SafariZoneWorker2Text
	yesorno
	iffalse .no
	writetext SafariZoneWorker2ExplanationText
	waitbutton
	closetext
	end

.no
	writetext SafariZoneWorker2YoureARegularText
	waitbutton
	closetext
	end

; step over to clerk
SafariZoneGate_StepOverMovement:
	step RIGHT
	step_end

; step out of door, or step away when chosing "No"
SafariZoneGate_StepDown1Movement:
	step DOWN
	step_end

; step back onto door
SafariZoneGate_StepUp1Movement:
	step UP
	step_end

; step away when you leave
SafariZoneGate_StepDown3Movement:
	step DOWN
	step DOWN
	step DOWN
	step_end

; step up to the door to enter
SafariZoneGate_StepUp3Movement:
	step UP
	step UP
	step UP
	step_end

SafariZoneWorker1Text:
	text "Welcome to the"
	line "SAFARI ZONE!"
	done

SafariZoneWorker1WouldYouLikeToJoinText:
	text "For just ¥500,"
	line "you can catch all"

	para "the #MON you"
	line "want in the park!"

	para "Would you like to"
	line "join the hunt?"
	done ; text_end

SafariZoneWorker1MoneyPleaseText:
	text "That'll be ¥500"
	line "please!"

	para "We only use a"
	line "special # BALL"
	cont "here."

	para "<PLAYER> received"
	line "30 SAFARI BALLS!"
	done ; text_end

SafariZoneWorker1CallYouOnThePAText:
	text "We'll call you on"
	line "the PA when you"

	cont "run out of time"
	cont "or SAFARI BALLS!"
	done

SafariZoneWorker1PleaseComeAgainText:
	text "OK! Please come"
	line "again!"
	done

SafariZoneWorker1NotEnoughMoneyText:
	text "Oops! Not enough"
	line "money!"
	done

SafariZoneGateBoxFullText: ; Luna
	text "Uh-oh!"

	para "Both your party"
	line "and your PC BOX"
	cont "are full."

	para "You have no room"
	line "for any #MON"
	cont "you catch."

	para "Please make room"
	line "in your party or"

	para "your PC BOX, then"
	line "come again."
	done

SafariZoneWorker1LeavingEarlyText:
	text "Leaving early?"
	done ; text_end

SafariZoneWorker1ReturnSafariBallsText:
	text "Please return any"
	line "SAFARI BALLS you"
	cont "have left."
	done

SafariZoneWorker1GoodLuckText:
	text "Good luck!"
	done

SafariZoneWorker1GoodHaulComeAgainText:
	text "Did you get a"
	line "good haul?"

	para "Come again!"
	done

SafariZoneWorker2Text:
	text "Hi! Is it your"
	line "first time here?"
	done

SafariZoneWorker2ExplanationText:
	text "The SAFARI ZONE"
	line "has four zones."

	para "Each zone has"
	line "different kinds"
	cont "of #MON."

	para "Use SAFARI BALLS"
	line "to catch them!"

	para "When you run out"
	line "of time or SAFARI"

	para "BALLS, it's game"
	line "over for you!"

	para "Before you go,"
	line "open an unused"

	para "#MON BOX so"
	line "there's room for"
	cont "new #MON!"
	done

SafariZoneWorker2YoureARegularText:
	text "Sorry, you're a"
	line "regular here!"
	done

SafariZoneGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 5
	warp_event  3,  7, FUCHSIA_CITY, 5
	warp_event  2,  0, SAFARI_ZONE_CENTER, 1
	warp_event  3,  0, SAFARI_ZONE_CENTER, 2

	def_coord_events
	coord_event  2,  3, SCENE_SAFARIZONEGATE_DEFAULT, SafariZoneGate_LeftTriggerScene
	coord_event  3,  3, SCENE_SAFARIZONEGATE_DEFAULT, SafariZoneGate_RightTriggerScene

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateWorker2Script, -1
