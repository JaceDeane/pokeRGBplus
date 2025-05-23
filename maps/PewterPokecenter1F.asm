	object_const_def
	const PEWTERPOKECENTER1F_NURSE
	const PEWTERPOKECENTER1F_LINK_RECEPTIONIST
	const PEWTERPOKECENTER1F_SITTING_GUY
	const PEWTERPOKECENTER1F_TEACHER
	const PEWTERPOKECENTER1F_JIGGLYPUFF
	const PEWTERPOKECENTER1F_BUG_CATCHER
	const PEWTERPOKECENTER1F_CHRIS

PewterPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
PewterPokecenter1FLinkReceptionistScript:
	; Create new "jumpstd" for LinkReceptionistScript
	jumpstd PokecenterNurseScript

PewterPokecenter1FGentlemanScript:
	jumptextfaceplayer PewterPokecenter1FGentlemanText

PewterJigglypuff:
	opentext
	writetext PewterJigglypuffText ; Text stays up during the event
	cry JIGGLYPUFF
	musicfadeout MUSIC_NONE, 8
	pause 24
	playmusic MUSIC_JIGGLYPUFFS_SONG
	setval SPRITEMOVEDATA_STANDING_DOWN
    writemem wMap5ObjectMovement
	variablesprite SPRITE_JIGGLYPUFF_PEWTER, SPRITE_JIGGLYPUFF_OW
	special LoadUsedSpritesGFX
	applymovement PEWTERPOKECENTER1F_JIGGLYPUFF, PewterJigglypuffSpinMovement ; Jigglypuff spins 4x times
	applymovement PEWTERPOKECENTER1F_JIGGLYPUFF, PewterJigglypuffSpinMovement
	applymovement PEWTERPOKECENTER1F_JIGGLYPUFF, PewterJigglypuffSpinMovement
	applymovement PEWTERPOKECENTER1F_JIGGLYPUFF, PewterJigglypuffSpinMovement
	pause 24 ; Allow music to end
	musicfadeout MUSIC_POKEMON_CENTER, 8
	closetext
	turnobject PEWTERPOKECENTER1F_JIGGLYPUFF, DOWN
	variablesprite SPRITE_JIGGLYPUFF_PEWTER, SPRITE_JIGGLYPUFF
	special LoadUsedSpritesGFX
	setval SPRITEMOVEDATA_POKEMON
    writemem wMap5ObjectMovement
	end
	
PewterJigglypuffSpinMovement:
	turn_head DOWN
	step_sleep 12
	turn_head LEFT
	step_sleep 12
	turn_head UP
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	step_end

PewterPokecenter1FSittingGuyScript:
	jumptextfaceplayer PewterPokecenter1FSittingGuyText

PewterPokecenter1FGentlemanText:
	text "What!?"

	para "TEAM ROCKET is"
	line "at MT.MOON? Huh?"
	
	para "I'm on the phone!"

	para "Scram!"
	done

PewterJigglypuffText:
	text "JIGGLYPUFF: Puu"
	line "pupuu!"
	done
	
PewterPokecenter1FSittingGuyText:
	text "Yawn!"

	para "When JIGGLYPUFF"
	line "sings, #MON"
	cont "get drowsy…"

	para "…Me too…"
	line "Snore…"
	done

PewterPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 4
	warp_event  4,  7, PEWTER_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FLinkReceptionistScript, -1
	object_event  0,  4, SPRITE_SITTING_GUY, SPRITEMOVEDATA_SITTING, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FSittingGuyScript, -1
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FGentlemanScript, -1
	object_event  1,  3, SPRITE_JIGGLYPUFF_PEWTER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterJigglypuff, -1
