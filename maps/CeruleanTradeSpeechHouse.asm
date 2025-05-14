	object_const_def
	const CERULEANTRADEHOUSE_GRANNY
	const CERULEANTRADEHOUSE_GRAMPS

CeruleanTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeHouseGrannyScript:
	jumptextfaceplayer CeruleanTradeHouseGrannyText

CeruleanTradeHouseGrampsScript:
	jumptextfaceplayer CeruleanTradeHouseGrampsText

CeruleanTradeHouseRhydonScript:
	opentext
	writetext CeruleanTradeHouseRhydonText
	cry KANGASKHAN
	waitbutton
	closetext
	end

CeruleanTradeHouseZubatScript:
	opentext
	writetext CeruleanTradeHouseZubatText
	cry ZUBAT
	waitbutton
	closetext
	end

CeruleanTradeHouseGrannyText:
	text "My husband lives"
	line "happily with #-"
	cont "MON he got through"
	cont "trades."
	done

CeruleanTradeHouseGrampsText:
	text "Ah… I'm so happy…"
	done

CeruleanTradeHouseRhydonText:
	text "KANGASKHAN: Garu"
	line "garuu."
	done

CeruleanTradeHouseZubatText:
	text "ZUBAT: Zuba zubaa."
	done

CeruleanTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTradeHouseGrannyScript, -1
	object_event  1,  2, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeHouseGrampsScript, -1
