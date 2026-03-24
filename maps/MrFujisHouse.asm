	object_const_def
	const MRFUJISHOUSE_SUPER_NERD
	const MRFUJISHOUSE_LITTLE_GIRL
	const MRFUJISHOUSE_PSYDUCK
	const MRFUJISHOUSE_NIDORINO
	const MRFUJISHOUSE_MR_FUJI
	const MRFUJISHOUSE_POKEDEX

MrFujisHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFujisHouseSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .rescued_fuji
	writetext MrFujisHouseSuperNerdNotHereText
	waitbutton
	closetext
	end

.rescued_fuji:
	writetext MrFujisHouseSuperNerdBeenPrayingText
	waitbutton
	closetext
	end

MrFujisHouseLittleGirlScript:
	faceplayer
	opentext
	checkevent EVENT_RESCUED_MR_FUJI
	iftrue .rescued_fuji
	writetext MrFujisHouseLittleGirlThisIsMrFujisHouseText
	waitbutton
	closetext
	end

.rescued_fuji:
	writetext MrFujisHouseLittleGirlPokemonAreNiceToHugText
	waitbutton
	closetext
	end

MrFujisPsyduck:
	opentext
	writetext MrFujisPsyduckText
	cry PSYDUCK
	waitbutton
	closetext
	end

MrFujisNidorino:
	opentext
	writetext MrFujisNidorinoText
	cry NIDORINO
	waitbutton
	closetext
	end

MrFujisHouseMrFujiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKE_FLUTE
	iftrue .FluteRecieved
	writetext MrFujisHouseMrFujiThisMayHelpText
	promptbutton
	waitsfx
	giveitem POKE_FLUTE
	iffalse .BagFull
	writetext MrFujisHouseReceivedPokeFluteText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_POKE_FLUTE
	writetext MrFujisHouseMrFujiExplainPokeFluteText
	waitbutton
	closetext
	end

.FluteRecieved:
	writetext MrFujisHouseMrFujiFluteGivenText
	waitbutton
	closetext
	end

.BagFull:
	writetext MrFujisHouseBagFullText
	waitbutton
	closetext
	end

MrFujisHouseMagazine:
	jumptext MrFujisHouseMagazineText

MrFujisHouseBookshelf:
	jumpstd DifficultBookshelfScript

MrFujisHouseSuperNerdNotHereText:
	text "That's odd, MR.FUJI"
	line "isn't here."

	para "Where'd he go?"
	done

MrFujisHouseSuperNerdBeenPrayingText:
	text "MR.FUJI had been"
	line "praying alone for"
	cont "CUBONE's mother."
	done

MrFujisHouseLittleGirlThisIsMrFujisHouseText:
	text "This is really"
	line "MR.FUJI's house."

	para "He's really kind!"

	para "He looks after"
	line "abandoned and"
	cont "orphaned #MON!"
	done

MrFujisHouseLittleGirlPokemonAreNiceToHugText:
	text "It's so warm!"

	para "#MON are so"
	line "nice to hug!"
	done

MrFujisPsyduckText:
	text "PSYDUCK: Gwappa?"
	done

MrFujisNidorinoText:
	text "NIDORINO: Gaoo!"
	done

MrFujisHouseMrFujiThisMayHelpText:
	text "MR.FUJI: <PLAYER>."

	para "Your #DEX quest"
	line "may fail without"

	para "love for your"
	line "#MON."

	para "I think this may"
	line "help your quest."
	done

MrFujisHouseReceivedPokeFluteText:
	text "<PLAYER> received"
	line "a # FLUTE!"
	done

MrFujisHouseMrFujiExplainPokeFluteText:
	text "Upon hearing the"
	line "# FLUTE,"

	para "sleeping #MON"
	line "will spring awake."

	para "It works on all"
	line "sleeping #MON."
	done

MrFujisHouseBagFullText:
	text "You must make"
	line "room for this!"
	done

MrFujisHouseMrFujiFluteGivenText:
	text "MR.FUJI: Has my"
	line "FLUTE helped you?"
	done

MrFujisHouseMagazineText:
	text "#MON Monthly"
	line "Grand Prize"
	cont "Drawing!"

	para "The application"
	line "form is…"

	para "Gone! It's been"
	line "clipped out!"
	done

MrFujisHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 2
	warp_event  3,  7, LAVENDER_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrFujisHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MrFujisHouseBookshelf

	def_object_events
	object_event  3,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MrFujisHouseSuperNerdScript, -1
	object_event  6,  3, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouseLittleGirlScript, -1
	object_event  6,  4, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisPsyduck, -1 ;Stays UP in R/B
	object_event  1,  3, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFujisNidorino, -1
	object_event  3,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouseMrFujiScript, EVENT_MR_FUJI
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL_ALIGNED, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrFujisHouseMagazine, -1
