	object_const_def
	const CELADONMANSIONROOFHOUSE_HIKER
	const CELADONMANSIONROOFHOUSE_POKEBALL

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofHouseHikerScript:
	jumptextfaceplayer CeladonMansionRoofHouseHikerText

; CeladonMansionRoofHousePharmacistScript:
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_TM03_CURSE
	; iftrue .GotCurse
	; writetext CeladonMansionRoofHousePharmacistIntroText
	; promptbutton
	; checktime NITE
	; iftrue .Night
	; writetext CeladonMansionRoofHousePharmacistNotNightText
	; waitbutton
	; closetext
	; end

; .Night:
	; writetext CeladonMansionRoofHousePharmacistStoryText
	; promptbutton
	; ; verbosegiveitem TM_CURSE
	; iffalse .NoRoom
	; setevent EVENT_GOT_TM03_CURSE
; .GotCurse:
	; writetext CeladonMansionRoofHousePharmacistCurseText
	; waitbutton
; .NoRoom:
	; closetext
	; end

CeladonMansionRoofHouseEeveePokeBall:
	opentext
	getmonname STRING_BUFFER_3, EEVEE
	; readvar VAR_PARTYCOUNT
	; ifequal PARTY_LENGTH, .NoRoomPoke
; Instead of Gen II behaviour, divert to PC if party full (`givepoke` auto directs)
	readvar VAR_BOXSPACE
	ifequal 0, .NoRoomPoke
	disappear LAST_TALKED
	writetext .FoundPokeText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
		setval EEVEE
		special GameCornerPrizeMonCheckDex
	givepoke EEVEE, 25
	setevent EVENT_GOT_EEVEE
	closetext
	end
	
.NoRoomPoke:
	writetext .FoundPokeText
	promptbutton
	writetext .NoRoomPokeText
	waitbutton
	closetext
	end

.FoundPokeText:
	text_far _FoundPokeText
	text_end

.NoRoomPokeText:
	text_far _NoRoomPokeText
	text_end

; Auto backs out if Poke can't be sent to PC or party
	; givepoke EEVEE, 25
	; ifequal 2, .UnableToRecieve

CeladonMansionRoofHouseHikerText:
	text "I know everything"
	line "about the world"

	para "of #MON in"
	line "your GAME BOY!"

	para "Get together with"
	line "your friends and"
	cont "trade #MON!"
	done

CeladonMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHouseHikerScript, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHouseEeveePokeBall, EVENT_GOT_EEVEE
