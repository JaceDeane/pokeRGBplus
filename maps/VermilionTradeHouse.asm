	object_const_def
	const VERMILIONTRADEHOUSE_LITTLE_GIRL

VermilionTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionTradeHouseLittleGirlScript:
	faceplayer
	opentext
	trade NPC_TRADE_ELYSSA ; DUX the FARFETCH_D
	waitbutton
	closetext
	end

VermilionTradeHouseBookshelf:
	jumpstd PictureBookshelfScript

VermilionTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 8
	warp_event  3,  7, VERMILION_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, VermilionTradeHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, VermilionTradeHouseBookshelf

	def_object_events
	object_event  3,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionTradeHouseLittleGirlScript, -1
