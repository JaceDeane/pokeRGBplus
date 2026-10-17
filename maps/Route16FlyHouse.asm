	object_const_def
	const ROUTE16FLYHOUSE_CELEBRITY
	const ROUTE16FLYHOUSE_FEAROW

Route16FlyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FlyHouseCelebrityScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM02_FLY
	iftrue .AlreadyGotItem
	writetext Route16FlyHouseCelebrityText
	promptbutton
	verbosegiveitem HM_FLY
	iffalse .Done
	setevent EVENT_GOT_HM02_FLY
.AlreadyGotItem:
	writetext Route16FlyHouseCelebrityHM02ExplanationText
	waitbutton
.Done:
	closetext
	end

Route16FlyHouseFearowScript:
	faceplayer
	opentext
	writetext Route16FlyHouseFearowText
	cry FEAROW
	waitbutton
	closetext
	end

Route16FlyHouseBookshelf:
	jumpstd PictureBookshelfScript

Route16FlyHouseCelebrityText:
	text "Oh, you found my"
	line "secret retreat!"

	para "Please don't tell"
	line "anyone I'm here."

	para "I'll make it up"
	line "to you with this!"
	done ; prompt

; Route16FlyHouseCelebrityReceivedHM02Text:
	; text "<PLAYER> received"
	; line "HM02!"
	; done ; text_end

Route16FlyHouseCelebrityHM02ExplanationText:
	text "HM02 is FLY."

	para "It will take you"
	line "back to any town."

	para "Put it to good"
	line "use!"
	done

Route16FlyHouseCelebrityHM02NoRoomText:
	text "You don't have any"
	line "room for this."
	done

Route16FlyHouseFearowText:
	; text "FEAROW: Kyueen!"
	text "FEAROW: Feero!"
	done


Route16FlyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_16, 1
	warp_event  3,  7, ROUTE_16, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route16FlyHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route16FlyHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route16FlyHouseCelebrityScript, -1
	object_event  6,  4, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 4, 4, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route16FlyHouseFearowScript, -1
