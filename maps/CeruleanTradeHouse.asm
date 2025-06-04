	object_const_def
	const CERULEANTRADEHOUSE_GRANNY
	const CERULEANTRADEHOUSE_SAGE

CeruleanTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeHouseGrannyScript:
	jumptextfaceplayer CeruleanTradeHouseGrannyText

CeruleanTradeHouseSageScript:
	faceplayer
	opentext
	trade NPC_TRADE_DONTAE ; LOLA the JYNX
	waitbutton
	closetext
	end

CeruleanTradeHouseGrannyText:
	text "My husband likes"
	line "trading #MON."

	para "If you are a"
	line "collector, would"
	cont "you please trade"
	cont "with him?"
	done

CeruleanTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeHouseGrannyScript, -1
	object_event  1,  2, SPRITE_GAMBLER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeHouseSageScript, -1
