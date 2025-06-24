	object_const_def
	const REDSHOUSE2F_CONSOLE
	const REDSHOUSE2F_DOLL_1
	const REDSHOUSE2F_DOLL_2
	const REDSHOUSE2F_BIG_DOLL

RedsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, RedsHouse2FInitializeRoomCallback
	callback MAPCALLBACK_TILES, RedsHouse2FSetUpTileDecorationsCallback

RedsHouse2FInitializeRoomCallback:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	endcallback

RedsHouse2FSetUpTileDecorationsCallback:
	special ToggleMaptileDecorations
	endcallback

	db 0, 0, 0 ; unused

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouseDoll1Script::
	describedecoration DECODESC_LEFT_DOLL

RedsHouseDoll2Script:
	describedecoration DECODESC_RIGHT_DOLL

RedsHouseBigDollScript:
	describedecoration DECODESC_BIG_DOLL

RedsHouseGameConsoleScript:
	describedecoration DECODESC_CONSOLE

RedsHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

RedsHouse2FN64Text: ; unused
	text "<PLAYER> played the"
	line "N64."

	para "…Okay!"
	line "It's time to go!"
	done

RedsHouse2FPCScript:
	opentext
	special PlayersHousePC
	; iftrue .Warp ; debug - TODO
	sjump .Warp ; debug
	closetext
	end
.Warp:
	;debug
	givepoke PIDGEY, 50, BERRY ; debug
	givepoke MEW, 100, BERRY ; debug
	waitsfx ; debug
	playsound SFX_ITEM ; debug
	waitsfx ; debug
	setflag ENGINE_POKEDEX ; debug
	setflag ENGINE_BOULDERBADGE ; debug
	setflag ENGINE_CASCADEBADGE ; debug
	setflag ENGINE_THUNDERBADGE ; debug
	setflag ENGINE_RAINBOWBADGE ; debug
	setflag ENGINE_SOULBADGE ; debug
	setflag ENGINE_MARSHBADGE ; debug
	setflag ENGINE_VOLCANOBADGE ; debug
	setflag ENGINE_EARTHBADGE ; debug
	giveitem HM_CUT ; debug
	giveitem HM_FLY ; debug
	giveitem HM_SURF ; debug
	giveitem HM_STRENGTH ; debug
	giveitem HM_FLASH ; debug
	; warp NONE, 0, 0
	warp VERMILION_CITY, 18, 29
	end

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  1, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	; bg_event  3,  5, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  0,  1, BGEVENT_UP, RedsHouse2FPCScript
	bg_event  5,  0, BGEVENT_IFSET, RedsHousePosterScript

	def_object_events
	object_event  3,  5, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL_ALIGNED, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsHouseGameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  1,  1, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDoll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  2,  1, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseDoll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  3,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PlayersHouseBigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
