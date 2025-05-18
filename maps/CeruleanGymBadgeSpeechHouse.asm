	object_const_def
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M

CeruleanGymBadgeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanGymBadgeSpeechHousePokefanMScript:
	faceplayer
	opentext
	writetext CeruleanGymBadgeSpeechHousePokefanMText
	waitbutton
CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page1:
	writetext CeruleanGymBadgeSpeechHousePokefanMWhichBadgeText
.Menu:
	loadmenu GymBadgeSpeechMenuHeader_Page1
	verticalmenu
	closewindow
	ifequal 1, .BoulderBadge
	ifequal 2, .CascadeBadge
	ifequal 3, .ThunderBadge
	ifequal 4, .RainbowBadge
	ifequal 5, CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page2.Menu
	sjump CeruleanGymBadgeSpeechHousePokefanMCancelScript

.BoulderBadge:
	writetext CeruleanGymBadgeSpeechHouseBoulderBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page1

.CascadeBadge:
	writetext CeruleanGymBadgeSpeechHouseCascadeBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page1

.ThunderBadge:
	writetext CeruleanGymBadgeSpeechHouseThunderBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page1

.RainbowBadge:
	writetext CeruleanGymBadgeSpeechHouseRainbowBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page1

CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page2:
	writetext CeruleanGymBadgeSpeechHousePokefanMWhichBadgeText
.Menu:
	loadmenu GymBadgeSpeechMenuHeader_Page2
	verticalmenu
	closewindow
	ifequal 1, .SoulBadge
	ifequal 2, .MarshBadge
	ifequal 3, .VolcanoBadge
	ifequal 4, .EarthBadge
	ifequal 5, CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page1.Menu
	sjump CeruleanGymBadgeSpeechHousePokefanMCancelScript

.SoulBadge:
	writetext CeruleanGymBadgeSpeechHouseSoulBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page2

.MarshBadge:
	writetext CeruleanGymBadgeSpeechHouseMarshBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page2

.VolcanoBadge:
	writetext CeruleanGymBadgeSpeechHouseVolcanoBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page2

.EarthBadge:
	writetext CeruleanGymBadgeSpeechHouseEarthBadgeText
	waitbutton
	sjump CeruleanGymBadgeSpeechHousePokefanM_LoopScript_Page2

CeruleanGymBadgeSpeechHousePokefanMCancelScript:
	writetext CeruleanGymBadgeSpeechHousePokefanMVisitAnyTimeText
	waitbutton
	closetext
	end

GymBadgeSpeechMenuHeader_Page1:
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 1, 19, TEXTBOX_Y
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "BOULDERBADGE@"
	db "CASCADEBADGE@"
	db "THUNDERBADGE@"
	db "RAINBOWBADGE@"
	db "→ NEXT@"
	
GymBadgeSpeechMenuHeader_Page2:
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 1, 19, TEXTBOX_Y
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 5 ; items
	db "SOULBADGE@"
	db "MARSHBADGE@"
	db "VOLCANOBADGE@"
	db "EARTHBADGE@"
	db "← PREVIOUS@"


CeruleanGymBadgeSpeechHousePokefanMText:
	text "#MON BADGES"
	line "are owned only by"
	cont "skilled trainers."

	para "I see you have"
	line "at least one."

	para "Those BADGES have"
	line "amazing secrets!"
	done

CeruleanGymBadgeSpeechHousePokefanMWhichBadgeText:
	text "Now then…"

	para "Which of the 8"
	line "BADGES should I"
	cont "describe?"
	done

CeruleanGymBadgeSpeechHousePokefanMVisitAnyTimeText:
	text "Come visit me any"
	line "time you wish."
	done

CeruleanGymBadgeSpeechHouseBoulderBadgeText:
	text "The ATTACK of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use FLASH any"
	cont "time you desire."
	done

CeruleanGymBadgeSpeechHouseCascadeBadgeText:
	text "#MON up to Lv30"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"

	para "It also lets you"
	line "use CUT outside"
	cont "of battle."
	done

CeruleanGymBadgeSpeechHouseThunderBadgeText:
	text "The SPEED of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use FLY outside"
	cont "of battle."
	done

CeruleanGymBadgeSpeechHouseRainbowBadgeText:
	text "#MON up to Lv50"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"

	para "It also lets you"
	line "use STRENGTH out-"
	cont "side of battle."
	done

CeruleanGymBadgeSpeechHouseSoulBadgeText:
	text "The DEFENSE of all"
	line "#MON increases"
	cont "a little bit."

	para "It also lets you"
	line "use SURF outside"
	cont "of battle."
	done

CeruleanGymBadgeSpeechHouseMarshBadgeText:
	text "#MON up to Lv70"
	line "will obey you."

	para "Any higher, they"
	line "become unruly!"
	done

CeruleanGymBadgeSpeechHouseVolcanoBadgeText:
	text "Your #MON's"
	line "SP.ATK and SP.DEF"
	cont "increase a bit."
	done

CeruleanGymBadgeSpeechHouseEarthBadgeText:
	text "All #MON will"
	line "obey you!"
	done

CeruleanGymBadgeSpeechHouseAskAboutWhichBadgeText:
	text "Ask about which"
	line "GYM BADGE?"
	done

CeruleanGymBadgeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, CERULEAN_CITY, 10
	warp_event  2,  7, CERULEAN_CITY, 9
	warp_event  3,  7, CERULEAN_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
