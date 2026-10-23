	object_const_def
	const ROUTE12_SNORLAX
	const ROUTE12_FISHER1
	const ROUTE12_FISHER2
	const ROUTE12_COOLTRAINER_M
	const ROUTE12_SUPER_NERD
	const ROUTE12_FISHER3
	const ROUTE12_FISHER4
	const ROUTE12_FISHER5
	const ROUTE12_TM_PAY_DAY
	const ROUTE12_IRON

Route12_MapScripts:
	def_scene_scripts

	def_callbacks

Route12SnorlaxScript:
	opentext
	writetext SleepingSnorlaxText
	checkitem POKE_FLUTE
	iftrue .Fight
	waitbutton
	sjump Route12DidntCatchSnorlax.end

.Fight:
	promptbutton
	writetext UseThePokeFluteText
	yesorno
	iffalse Route12DidntCatchSnorlax.end
	musicfadeout MUSIC_NONE, 1
	farwritetext Text_PlayedPokeFlute
	waitsfx
	playsound SFX_POKEFLUTE
	waitsfx
	closetext
	;fallthrough
PokeFluteSnorlaxRoute12:: ; export (for when you use Poké Flute from pack)
	playmapmusic
	opentext
	writetext SnorlaxWokeUpText
	cry SNORLAX
	promptbutton
	writetext SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 30
	startbattle
	setevent EVENT_BEAT_ROUTE12_SNORLAX
	disappear ROUTE12_SNORLAX
	ifequal DRAW, Route12DidntCatchSnorlax
	reloadmapafterbattle
	end

Route12DidntCatchSnorlax:
	reloadmapafterbattle
	opentext
	writetext SnorlaxCalmedDownText
	waitbutton
.end
	closetext
	end

TrainerFisherNed:
	trainer FISHER, NED, EVENT_BEAT_FISHER_NED, FisherNedSeenText, FisherNedBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherNedAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherChip:
	trainer FISHER, CHIP, EVENT_BEAT_FISHER_CHIP, FisherChipSeenText, FisherChipBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherChipAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperJustin:
	trainer CAMPER, JUSTIN, EVENT_BEAT_CAMPER_JUSTIN, CamperJustinSeenText, CamperJustinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJustinAfterBattleText
	waitbutton
	closetext
	end

TrainerRockerLuca:
	trainer ROCKER, LUCA, EVENT_BEAT_ROCKER_LUCA, RockerLucaSeenText, RockerLucaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RockerLucaAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherHank:
	trainer FISHER, HANK, EVENT_BEAT_FISHER_HANK, FisherHankSeenText, FisherHankBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHankAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherElliot:
	trainer FISHER, ELLIOT, EVENT_BEAT_FISHER_ELLIOT, FisherElliotSeenText, FisherElliotBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherElliotAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherRonald:
	trainer FISHER, RONALD, EVENT_BEAT_FISHER_RONALD, FisherRonaldSeenText, FisherRonaldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherRonaldAfterBattleText
	waitbutton
	closetext
	end

Route12Sign:
	jumptext Route12SignText

FishingSpotSign:
	jumptext FishingSpotSignText

Route12TMPayDay:
	itemball TM_PAY_DAY

Route12Iron:
	itemball IRON

Route12HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_12_HIDDEN_HYPER_POTION

SleepingSnorlaxText::
	text "A sleeping #MON"
	line "blocks the way!"
	done

UseThePokeFluteText::
	text "Want to use the"
	line "# FLUTE?"
	done

SnorlaxWokeUpText::
	text "SNORLAX woke up!"
	done

SnorlaxAttackedText::
	text "It attacked in a"
	line "grumpy rage!"
	done

SnorlaxCalmedDownText::
	text "With a big yawn,"
	line "SNORLAX returned"
	cont "to the mountains!"
	done

FisherNedSeenText:
	text "Yeah! I got a"
	line "bite, here!"
	done

FisherNedBeatenText:
	text "Tch!"
	line "Just a small fry!"
	done

FisherNedAfterBattleText:
	text "Hang on! My line's"
	line "snagged!"
	done

FisherChipSeenText:
	text "Be patient!"

	para "Fishing is a"
	line "waiting game!"
	done

FisherChipBeatenText:
	text "That one got away!"
	done

FisherChipAfterBattleText:
	text "With a better ROD,"
	line "I could catch"
	cont "better #MON!"
	done

CamperJustinSeenText:
	text "Have you found a"
	line "MOON STONE?"
	done

CamperJustinBeatenText:
	text "Oww!"
	done

CamperJustinAfterBattleText:
	text "I could have made"
	line "my #MON evolve"
	cont "with MOON STONE!"
	done

RockerLucaSeenText:
	text "Electricity is my"
	line "specialty!"
	done

RockerLucaBeatenText:
	text "Unplugged!"
	done

RockerLucaAfterBattleText:
	text "Water conducts"
	line "electricity, so"

	para "you should zap"
	line "sea #MON!"
	done

FisherHankSeenText:
	text "The FISHING FOOL"
	line "vs. #MON KID!"
	done

FisherHankBeatenText:
	text "Too much!"
	done

FisherHankAfterBattleText:
	text "You beat me at"
	line "#MON, but I'm"
	cont "good at fishing!"
	done

FisherElliotSeenText:
	text "I'd rather be"
	line "working!"
	done

FisherElliotBeatenText:
	text "It's not easy…"
	done

FisherElliotAfterBattleText:
	text "It's all right."

	para "Losing doesn't"
	line "bug me any more."
	done

FisherRonaldSeenText:
	text "You never know"
	line "what you could"
	cont "catch!"
	done

FisherRonaldBeatenText:
	text "Lost it!"
	done

FisherRonaldAfterBattleText:
	text "I catch MAGIKARP"
	line "all the time, but"
	cont "they're so weak!"
	done

Route12SignText:
	text "ROUTE 12"

	para "NORTH TO LAVENDER"
	line "TOWN"
	done

FishingSpotSignText:
	text "SPORT FISHING AREA"
	done

Route12_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE_1F, 1
	warp_event 11, 15, ROUTE_12_GATE_1F, 2
	warp_event 10, 21, ROUTE_12_GATE_1F, 3
	warp_event 11, 77, ROUTE_12_SUPER_ROD_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_READ, Route12Sign
	bg_event 11, 63, BGEVENT_READ, FishingSpotSign
	bg_event  2, 63, BGEVENT_ITEM, Route12HiddenHyperPotion

	def_object_events
	object_event 10, 62, SPRITE_SNORLAX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, Route12SnorlaxScript, -1
	object_event 14, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisherNed, -1 ; 3
	object_event  5, 39, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisherChip, -1 ; 4
	object_event 11, 92, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperJustin, -1 ; 10 (9 - R/B)
	object_event 14, 76, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerRockerLuca, -1 ; 2
	object_event 12, 40, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFisherHank, -1 ; 5
	object_event  9, 52, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerFisherElliot, -1 ; 6
	object_event  6, 87, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFisherRonald, -1 ; 7
	object_event 14, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12TMPayDay, EVENT_GOT_TM16_PAY_DAY
	object_event  5, 89, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12Iron, EVENT_ROUTE_12_IRON
