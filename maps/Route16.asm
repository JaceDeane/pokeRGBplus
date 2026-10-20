	object_const_def
	const ROUTE16_SNORLAX

Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 9, .CanWalk
	readvar VAR_XCOORD
	ifgreater 23, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route16SnorlaxScript:
	checkitem POKE_FLUTE
	iftrue .Fight
	jumptext SleepingSnorlaxText

.Fight:
	opentext
	farwritetext SleepingSnorlaxText
	promptbutton
	farwritetext UseThePokeFluteText
	yesorno
	iffalse Route16DidntUsePokeFluteScript
	musicfadeout MUSIC_NONE, 1
	farwritetext Text_PlayedPokeFlute
	waitsfx
	playsound SFX_POKEFLUTE
	waitsfx
	closetext
PokeFluteSnorlaxRoute16:: ; export (for when you use Poké Flute from pack)
	playmapmusic
	opentext
	farwritetext SnorlaxWokeUpText
	cry SNORLAX
	promptbutton
	farwritetext SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 30
	startbattle
	setevent EVENT_BEAT_ROUTE12_SNORLAX
	disappear ROUTE12_SNORLAX
	ifequal DRAW, Route16DidntCatchSnorlax
	reloadmapafterbattle
	end

Route16DidntUsePokeFluteScript:
	closetext
	end

Route16DidntCatchSnorlax:
	reloadmapafterbattle
	opentext
	farwritetext SnorlaxCalmedDownText
	waitbutton
	closetext
	end

CyclingRoadSign:
	jumptext CyclingRoadSignText

CyclingRoadSignText:
	text "CYCLING ROAD"

	para "DOWNHILL COASTING"
	line "ALL THE WAY!"
	done

Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, ROUTE_16_FLY_HOUSE, 1
	warp_event 17, 10, ROUTE_16_GATE_1F, 1
	warp_event 17, 11, ROUTE_16_GATE_1F, 2
	warp_event 24, 10, ROUTE_16_GATE_1F, 3
	warp_event 24, 11, ROUTE_16_GATE_1F, 4
	warp_event 17,  4, ROUTE_16_NORTH_GATE, 1
	warp_event 17,  5, ROUTE_16_NORTH_GATE, 2
	warp_event 24,  4, ROUTE_16_NORTH_GATE, 3
	warp_event 24,  5, ROUTE_16_NORTH_GATE, 4
	
	def_coord_events

	def_bg_events
	bg_event 27, 11, BGEVENT_READ, CyclingRoadSign

	def_object_events
	object_event 26, 10, SPRITE_SNORLAX, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, Route16SnorlaxScript, -1
