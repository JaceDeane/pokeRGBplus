	object_const_def
	const PEWTERMUSEUMOFSCIENCE1F_RECEPTIONIST
	const PEWTERMUSEUMOFSCIENCE1F_GRAMPS
	const PEWTERMUSEUMOFSCIENCE1F_FOSSIL_SCIENTIST
	const PEWTERMUSEUMOFSCIENCE1F_SCIENTIST
	const PEWTERMUSEUMOFSCIENCE1F_OLD_AMBER

PewterMuseumOfScience1F_MapScripts:
	def_scene_scripts
	scene_script PewterMuseumOfScience1FNoTicketScene, SCENE_PEWTERMUSEUMOFSCIENCE1F_NO_TICKET
	scene_script PewterMuseumOfScience1FHaveTicketScene, SCENE_PEWTERMUSEUMOFSCIENCE1F_HAVE_TICKET

	def_callbacks
	
PewterMuseumOfScience1FNoTicketScene:
	end
	
PewterMuseumOfScience1FHaveTicketScene:
	end

PewterMuseumOfScience1FTicketScript:
	turnobject PEWTERMUSEUMOFSCIENCE1F_RECEPTIONIST, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext PewterMuseumOfScience1FReceptionistComeInText
	special PlaceMoneyTopRight
	yesorno
	iffalse .ComeAgain
	checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .NotEnoughMoney
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 50
	special PlaceMoneyTopRight
	writetext PewterMuseumOfScience1FReceptionistThankYouText
	setmapscene PEWTER_MUSEUM_OF_SCIENCE_1F, SCENE_PEWTERMUSEUMOFSCIENCE1F_HAVE_TICKET
	waitbutton
	closetext
	end

.ComeAgain
	writetext PewterMuseumOfScience1FReceptionistComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, PewterMuseumOfScience1FNoTicketMovement
	end

.NotEnoughMoney
	writetext PewterMuseumOfScience1FReceptionistNotEnoughMoneyText
	waitbutton
	closetext
	applymovement PLAYER, PewterMuseumOfScience1FNoTicketMovement
	end

PewterMuseumOfScience1FReceptionistScript:
	faceplayer
	opentext
	readvar VAR_FACING
	ifequal UP, .PlayerFacingUp
	ifequal RIGHT, .PlayerFacingRight
	writetext PewterMuseumOfScience1FReceptionistDoYouKnowText
	yesorno
	iftrue .Yes
	writetext PewterMuseumOfScience1FReceptionistAmberExplainText
	waitbutton
	closetext
	end

.Yes
	writetext PewterMuseumOfScience1FReceptionistLabSomewhereText
	waitbutton
	closetext
	end

.PlayerFacingUp
	writetext PewterMuseumOfScience1FReceptionistOtherSideText
	waitbutton
	closetext
	end

.PlayerFacingRight
	writetext PewterMuseumOfScience1FReceptionistComeAgainText
	waitbutton
	closetext
	end

PewterMuseumOfScience1FGamblerScript:
	jumptextfaceplayer PewterMuseumOfScience1FGamblerText

PewterMuseumOfScience1FFossilScientistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_AMBER
	iftrue .RecievedAmber
	writetext PewterMuseumOfScience1FFossilScientistTakeThisText
	promptbutton
	verbosegiveitem OLD_AMBER
	iffalse .BagFull
	setevent EVENT_GOT_OLD_AMBER
	writetext PewterMuseumOfScience1FFossilScientistGetOldAmberCheckedText
	waitbutton
	closetext
	end
	
.BagFull
	writetext PewterMuseumOfScience1FFossilScientistNoSpaceText
	waitbutton
	closetext
	end
	
.RecievedAmber
	writetext PewterMuseumOfScience1FFossilScientistGetOldAmberCheckedText
	waitbutton
	closetext
	end
	
PewterMuseumOfScience1FScientistScript:
	jumptextfaceplayer PewterMuseumOfScience1FScientistText

PewterMuseumOfScience1FOldAmberScript:
	opentext
	writetext PewterMuseumOfScience1FOldAmberText
	waitbutton
	closetext
	end

KabutopsFossilSignScript:
	reanchormap
	trainerpic KABUTOPS_FOSSIL
	waitbutton
	closepokepic
	jumptext KabutopsFossilSignText

AerodactylFossilSignScript:
	reanchormap
	trainerpic AERODACTYL_FOSSIL
	waitbutton
	closepokepic
	jumptext AerodactylFossilSignText

PewterMuseumOfScience1FBookshelf:
	jumpstd PictureBookshelfScript
	
PewterMuseumOfScience1FNoTicketMovement:
	step DOWN
	step_end

PewterMuseumOfScience1FReceptionistComeInText:
	text "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "come in?"
	done

PewterMuseumOfScience1FReceptionistThankYouText:
	text "Right, ¥50!"
	line "Thank you!"
	done

PewterMuseumOfScience1FReceptionistNotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done
	
PewterMuseumOfScience1FReceptionistComeAgainText:
	text "Come again!"
	done

PewterMuseumOfScience1FReceptionistDoYouKnowText:
	text "You can't sneak"
	line "in the back way!"

	para "Oh, whatever!"
	line "Do you know what"
	cont "AMBER is?"
	done

PewterMuseumOfScience1FReceptionistLabSomewhereText:
	text "There's a lab"
	line "somewhere trying"
	cont "to resurrect"
	cont "ancient #MON"
	cont "from AMBER."
	done

PewterMuseumOfScience1FReceptionistAmberExplainText:
	text "AMBER is fossil-"
	line "ized tree sap."
	done

PewterMuseumOfScience1FReceptionistOtherSideText:
	text "Please go to the"
	line "other side!"
	done

PewterMuseumOfScience1FReceptionistTakeTimeText:
	text "Take plenty of"
	line "time to look!"
	done

PewterMuseumOfScience1FGamblerText:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

PewterMuseumOfScience1FFossilScientistTakeThisText:
	text "Ssh! I think that"
	line "this chunk of"
	cont "AMBER contains"
	cont "#MON DNA!"

	para "It would be great"
	line "if #MON could"
	cont "be resurrected"
	cont "from it!"

	para "But, my colleagues"
	line "just ignore me!"

	para "So I have a favor"
	line "to ask!"

	para "Take this to a"
	line "#MON LAB and"
	cont "get it examined!"
	done

PewterMuseumOfScience1FFossilScientistGetOldAmberCheckedText:
	text "Ssh! Get the OLD"
	line "AMBER checked!"
	done

PewterMuseumOfScience1FFossilScientistNoSpaceText:
	text "You don't have"
	line "space for this!"
	done

PewterMuseumOfScience1FScientistText:
	text "We are proud of"
	line "our two fossils of"
	cont "very rare, pre-"
	cont "historic #MON!"
	done

PewterMuseumOfScience1FOldAmberText:
	text "The AMBER is"
	line "clear and gold!"
	done

KabutopsFossilSignText:
	text "KABUTOPS Fossil"
	line "A primitive and"
	cont "rare #MON."
	done
	
AerodactylFossilSignText:
	text "AERODACTYL Fossil"
	line "A primitive and"
	cont "rare #MON."
	done

PewterMuseumOfScience1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7

	def_coord_events
	coord_event  9,  4, SCENE_PEWTERMUSEUMOFSCIENCE1F_NO_TICKET, PewterMuseumOfScience1FTicketScript
	coord_event 10,  4, SCENE_PEWTERMUSEUMOFSCIENCE1F_NO_TICKET, PewterMuseumOfScience1FTicketScript

	def_bg_events
	bg_event  2,  6, BGEVENT_READ, KabutopsFossilSignScript
	bg_event  2,  3, BGEVENT_READ, AerodactylFossilSignScript
	bg_event 12,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf
	bg_event 13,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf
	bg_event 19,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf
	bg_event 18,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf
	bg_event 17,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf
	bg_event 14,  1, BGEVENT_READ, PewterMuseumOfScience1FBookshelf

	def_object_events
	object_event 12,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience1FReceptionistScript, -1
	object_event  1,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience1FGamblerScript, -1
	object_event 15,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience1FFossilScientistScript, -1
	object_event 17,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience1FScientistScript, -1
	object_event 16,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMuseumOfScience1FOldAmberScript, -1
