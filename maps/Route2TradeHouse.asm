	object_const_def
	const ROUTE2TRADEHOUSE_SUPER_NERD

Route2TradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route2TradeHouseSuperNerdScript:
	faceplayer
	opentext
	trade NPC_TRADE_REYLEY ; MARCEL the MR__MIME
	waitbutton
	closetext
	end

Route2TradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_2, 1
	warp_event  3,  7, ROUTE_2, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2TradeHouseSuperNerdScript, -1
