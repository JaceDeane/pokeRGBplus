	object_const_def
	const BLUESHOUSE_DAISY
	const BLUESHOUSE_TOWN_MAP

BluesHouse_MapScripts:
	def_scene_scripts
	scene_script BluesHouseNoop1Scene, SCENE_BLUES_HOUSE_NOOP
	scene_script BluesHouseNoop2Scene, SCENE_BLUES_HOUSE_NOOP2

	def_callbacks
	callback MAPCALLBACK_TILES, BluesHouseDaisyCallback ; Does this matter whether the callback is for tiles or objects...? 

BluesHouseNoop1Scene:
	end

BluesHouseNoop2Scene:
	end

BluesHouseDaisyCallback:
	checkscene
	ifequal SCENE_BLUES_HOUSE_NOOP2, .DaisyWander
	endcallback
	
.DaisyWander
	moveobject BLUESHOUSE_DAISY, 6, 4
	setval SPRITEMOVEDATA_WALK_UP_DOWN
    writemem wMap1ObjectMovement
    endcallback


DaisyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX
	iftrue .OfferTownMap
	checkmapscene OAKS_LAB
	ifequal SCENE_OAKSLAB_NOOP, .BluesOutCatchingMon
	writetext BluesHouseDaisyRivalAtLabText
	waitbutton
	closetext
	turnobject BLUESHOUSE_DAISY, RIGHT
	end
	
.BluesOutCatchingMon
	writetext BluesHouseDaisyRivalCatchingMonText
	waitbutton
	closetext
	turnobject BLUESHOUSE_DAISY, RIGHT
	end
	
.OfferTownMap
	checkevent EVENT_GOT_TOWN_MAP
	iftrue .PokemonAreLivingThings
	writetext BluesHouseDaisyOfferMapText
	waitbutton
	disappear BLUESHOUSE_TOWN_MAP
	verbosegiveitem TOWN_MAP
	writetext BluesHouseDaisyUseMapText
	waitbutton
	closetext
	turnobject BLUESHOUSE_DAISY, RIGHT
	setevent EVENT_GOT_TOWN_MAP
	setscene SCENE_BLUES_HOUSE_NOOP2
	end
	
.PokemonAreLivingThings
	writetext BluesHouseDaisyWalkingText
	waitbutton
	closetext
	end

; DaisyScript:
	; faceplayer
	; opentext
	; readvar VAR_HOUR
	; ifequal 15, .ThreePM
	; writetext DaisyHelloText
	; waitbutton
	; closetext
	; end

; .ThreePM:
	; checkflag ENGINE_DAISYS_GROOMING
	; iftrue .AlreadyGroomedMon
	; writetext DaisyOfferGroomingText
	; yesorno
	; iffalse .Refused
	; writetext DaisyWhichMonText
	; waitbutton
	; special DaisysGrooming
	; ifequal $0, .Refused
	; ifequal $1, .CantGroomEgg
	; setflag ENGINE_DAISYS_GROOMING
	; writetext DaisyAlrightText
	; waitbutton
	; closetext
	; special FadeOutToWhite
	; playmusic MUSIC_HEAL
	; pause 60
	; special FadeInFromWhite
	; special RestartMapMusic
	; opentext
	; writetext GroomedMonLooksContentText
	; special PlayCurMonCry
	; promptbutton
	; writetext DaisyAllDoneText
	; waitbutton
	; closetext
	; end

; .AlreadyGroomedMon:
	; writetext DaisyAlreadyGroomedText
	; waitbutton
	; closetext
	; end

; .Refused:
	; writetext DaisyRefusedText
	; waitbutton
	; closetext
	; end

; .CantGroomEgg:
	; writetext DaisyCantGroomEggText
	; waitbutton
	; closetext
	; end
	
TownMapScript:
	jumptext BluesHouseTownMapScriptText

BluesHouseDaisyRivalAtLabText:
	text "Hi <PLAYER>!"
	line "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

BluesHouseDaisyRivalCatchingMonText:
	text "Hi <PLAYER>!"
	line "<RIVAL> is out"
	cont "catching #MON!"
	done

BluesHouseDaisyOfferMapText:
	text "Grandpa asked you"
	line "to run an errand?"
	
	para "Here, this will"
	line "help you!"
	done

BluesHouseDaisyBagFullText: ; Unused
	text "You have too much"
	line "stuff with you."
	done

BluesHouseDaisyUseMapText:
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

BluesHouseDaisyWalkingText:
	text "#MON are living"
	line "things! If they"
	cont "get tired, give"
	cont "them a rest!"
	done

; DaisyHelloText:
	; text "DAISY: Hi! My kid"
	; line "brother is the GYM"

	; para "LEADER in VIRIDIAN"
	; line "CITY."

	; para "But he goes out"
	; line "of town so often,"

	; para "it causes problems"
	; line "for the trainers."
	; done

; DaisyOfferGroomingText:
	; text "DAISY: Hi! Good"
	; line "timing. I'm about"
	; cont "to have some tea."

	; para "Would you like to"
	; line "join me?"

	; para "Oh, your #MON"
	; line "are a bit dirty."

	; para "Would you like me"
	; line "to groom one?"
	; done

; DaisyWhichMonText:
	; text "DAISY: Which one"
	; line "should I groom?"
	; done

; DaisyAlrightText:
	; text "DAISY: OK, I'll"
	; line "get it looking"
	; cont "nice in no time."
	; done

; GroomedMonLooksContentText:
	; text_ram wStringBuffer3
	; text " looks"
	; line "content."
	; done

; DaisyAllDoneText:
	; text "DAISY: There you"
	; line "go! All done."

	; para "See? Doesn't it"
	; line "look nice?"

	; para "It's such a cute"
	; line "#MON."
	; done

; DaisyAlreadyGroomedText:
	; text "DAISY: I always"
	; line "have tea around"

	; para "this time. Come"
	; line "join me."
	; done

; DaisyRefusedText:
	; text "DAISY: You don't"
	; line "want to have one"

	; para "groomed? OK, we'll"
	; line "just have tea."
	; done

; DaisyCantGroomEggText:
	; text "DAISY: Oh, sorry."
	; line "I honestly can't"
	; cont "groom an EGG."
	; done
	
BluesHouseTownMapScriptText:
	text "It's a big map!"
	line "This is useful!"
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TownMapScript, EVENT_GOT_TOWN_MAP
