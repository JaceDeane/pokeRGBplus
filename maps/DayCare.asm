	object_const_def
	const DAYCARE_GENTLEMAN

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks
	; callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

; DayCareEggCheckCallback:
	; checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	; iftrue .PutDayCareLadyOutside
	; clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	; setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	; endcallback

; .PutDayCareLadyOutside:
	; setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	; clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	; endcallback

DayCareGentlemanScript:
	faceplayer
	opentext
	special DayCareMan
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd DifficultBookshelfScript

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_5, 4
	warp_event  3,  7, ROUTE_5, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareGentlemanScript, -1
